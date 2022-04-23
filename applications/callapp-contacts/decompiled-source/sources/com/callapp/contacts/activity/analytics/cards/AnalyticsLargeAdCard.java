package com.callapp.contacts.activity.analytics.cards;

import com.callapp.contacts.activity.contact.cards.AdCard;
import com.callapp.contacts.activity.contact.cards.LargeAdCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.interfaces.CardShowingAdEvent;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.task.Task;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/AnalyticsLargeAdCard.class */
public class AnalyticsLargeAdCard extends LargeAdCard {
    public AnalyticsLargeAdCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public String getExperimentRemoteConfigName() {
        return "InsightsBigExperiments";
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public String getMultiSizeAdUnitIdRemoteConfigName() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public String getMultiSizeBiddingConfigurationRemoteConfigName() {
        return CallAppRemoteConfigManager.m;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public String getPreferencesRemoteConfigName() {
        return "InsightsBigAdCardPreferences";
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 51;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public void onAdLoaded() {
        new Task() { // from class: com.callapp.contacts.activity.analytics.cards.AnalyticsLargeAdCard.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                AnalyticsLargeAdCard.this.getPresentersContainer().getEventBus().a((EventType<L, EventType<CardShowingAdEvent, AdCard>>) CardShowingAdEvent.f12939a, (EventType<CardShowingAdEvent, AdCard>) AnalyticsLargeAdCard.this, false);
            }
        }.execute();
    }
}
