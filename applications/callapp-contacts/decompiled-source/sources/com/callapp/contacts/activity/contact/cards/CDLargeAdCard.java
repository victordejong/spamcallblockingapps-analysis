package com.callapp.contacts.activity.contact.cards;

import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.interfaces.CardShowingAdEvent;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.ads.JSONAdPreferences;
import com.explorestack.protobuf.openrtb.LossReason;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CDLargeAdCard.class */
public class CDLargeAdCard extends LargeAdCard {
    public CDLargeAdCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected String getExperimentRemoteConfigName() {
        return "CDLargeExperiments";
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected String getMultiSizeAdUnitIdRemoteConfigName() {
        return CallAppRemoteConfigManager.f14814a;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected String getMultiSizeBiddingConfigurationRemoteConfigName() {
        return CallAppRemoteConfigManager.i;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected String getPreferencesRemoteConfigName() {
        return "CDLargeAdCardPreferences";
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        JSONAdPreferences adPreferences = getAdPreferences();
        ContactData contact = this.presentersContainer.getContact();
        return (contact == null || contact.isContactInDevice()) ? adPreferences != null ? adPreferences.getPriorityContact() : LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE : adPreferences != null ? adPreferences.getPriorityNonContact() : LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected void onAdLoaded() {
        new Task() { // from class: com.callapp.contacts.activity.contact.cards.CDLargeAdCard.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                CDLargeAdCard.this.getPresentersContainer().getEventBus().a((EventType<L, EventType<CardShowingAdEvent, AdCard>>) CardShowingAdEvent.f12939a, (EventType<CardShowingAdEvent, AdCard>) CDLargeAdCard.this, false);
            }
        }.execute();
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard, com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (this.presentersContainer.a(contactData)) {
            hideCard();
        } else {
            super.onContactChanged(contactData, set);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public boolean shouldShowAd() {
        return getAdPreferences() != null ? super.shouldShowAd() : !this.presentersContainer.getContact().isContactInDevice();
    }
}
