describe ManageIQ::Providers::Azure::CloudManager::RefreshWorker do
  context "EMS with children" do
    let(:ems) { FactoryBot.create(:ems_azure) }

    it ".queue_name_for_ems" do
      queue_name = described_class.queue_name_for_ems(ems)
      expect(queue_name.count).to eq(2)
      expect(queue_name.sort).to  eq(queue_name)
    end
  end
end
