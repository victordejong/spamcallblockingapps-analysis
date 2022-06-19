package com.callapp.contacts.activity.analytics.cards;

import com.callapp.contacts.activity.contact.cards.AdCard;
import com.callapp.contacts.activity.contact.cards.CDSmallAdCard;
import com.callapp.contacts.activity.contact.cards.ShowAdWhenAnalyticsExtand;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.interfaces.CardShowingAdEvent;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.ads.AdUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard.class */
public class CDAnalyticsAdCard extends CDSmallAdCard implements ShowAdWhenAnalyticsExtand {
    private int priority;

    public CDAnalyticsAdCard(PresentersContainer presentersContainer, int i) {
        super(presentersContainer);
        presentersContainer.getEventBus().m29048a(ShowAdWhenAnalyticsExtand.f21236a, this);
        this.priority = i;
    }

    @Override // com.callapp.contacts.activity.contact.cards.CDSmallAdCard, com.callapp.contacts.activity.contact.cards.AdCard
    public String getExperimentRemoteConfigName() {
        return "CDAnalyticsSmallExperiments";
    }

    @Override // com.callapp.contacts.activity.contact.cards.CDSmallAdCard, com.callapp.contacts.activity.contact.cards.AdCard
    public String getMultiSizeAdUnitIdRemoteConfigName() {
        return CallAppRemoteConfigManager.f25615c;
    }

    @Override // com.callapp.contacts.activity.contact.cards.CDSmallAdCard, com.callapp.contacts.activity.contact.cards.AdCard
    public String getMultiSizeBiddingConfigurationRemoteConfigName() {
        return CallAppRemoteConfigManager.f25623k;
    }

    @Override // com.callapp.contacts.activity.contact.cards.CDSmallAdCard, com.callapp.contacts.activity.contact.cards.AdCard
    public String getPreferencesRemoteConfigName() {
        return "CDAnalyticsSmallAdCardPreferences";
    }

    @Override // com.callapp.contacts.activity.contact.cards.CDSmallAdCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return this.priority;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public boolean loadAdOnContactChange() {
        return false;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public void onAdLoaded() {
        new Task() { // from class: com.callapp.contacts.activity.analytics.cards.CDAnalyticsAdCard.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                CDAnalyticsAdCard.this.getPresentersContainer().getEventBus().m29046a((EventType<L, EventType<CardShowingAdEvent, AdCard>>) CardShowingAdEvent.f23112a, (EventType<CardShowingAdEvent, AdCard>) CDAnalyticsAdCard.this, false);
            }
        }.execute();
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        this.presentersContainer.getEventBus().m29045b(ShowAdWhenAnalyticsExtand.f21236a, this);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.contact.cards.ShowAdWhenAnalyticsExtand
    public void onShowAd() {
        if (!this.isDestroyed) {
            new Task() { // from class: com.callapp.contacts.activity.analytics.cards.CDAnalyticsAdCard.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    CDAnalyticsAdCard.this.tryLoadingAd();
                }
            }.execute();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.CDSmallAdCard, com.callapp.contacts.activity.contact.cards.AdCard
    public boolean shouldShowAd() {
        return super.shouldShowAd() && !AdUtils.m27275a(AdUtils.AdsLimitForNewUsers.ANALYTICS_CARD);
    }
}
