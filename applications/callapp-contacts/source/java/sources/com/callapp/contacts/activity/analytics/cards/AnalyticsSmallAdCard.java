package com.callapp.contacts.activity.analytics.cards;

import com.callapp.contacts.activity.contact.cards.AdCard;
import com.callapp.contacts.activity.contact.cards.SmallAdCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.interfaces.CardShowingAdEvent;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.task.Task;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/AnalyticsSmallAdCard.class */
public class AnalyticsSmallAdCard extends SmallAdCard {
    public AnalyticsSmallAdCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public String getExperimentRemoteConfigName() {
        return "InsightsSmallExperiments";
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public String getMultiSizeAdUnitIdRemoteConfigName() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public String getMultiSizeBiddingConfigurationRemoteConfigName() {
        return CallAppRemoteConfigManager.f25624l;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public String getPreferencesRemoteConfigName() {
        return "InsightsSmallAdCardPreferences";
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 11;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public void onAdLoaded() {
        new Task() { // from class: com.callapp.contacts.activity.analytics.cards.AnalyticsSmallAdCard.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                AnalyticsSmallAdCard.this.getPresentersContainer().getEventBus().m29046a((EventType<L, EventType<CardShowingAdEvent, AdCard>>) CardShowingAdEvent.f23112a, (EventType<CardShowingAdEvent, AdCard>) AnalyticsSmallAdCard.this, false);
            }
        }.execute();
    }
}
