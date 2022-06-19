package com.callapp.contacts.activity.contact.cards;

import android.view.ViewGroup;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.AdCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ads.JSONAdPreferences;
import com.mopub.mobileads.MoPubView;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CDSmallAdCard.class */
public class CDSmallAdCard extends SmallAdCard {
    public CDSmallAdCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
    }

    public void blinkAnimation(final ViewGroup viewGroup, final int i) {
        if (i > 0) {
            viewGroup.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CDSmallAdCard.2
                @Override // java.lang.Runnable
                public void run() {
                    viewGroup.setBackgroundColor(ThemeUtils.getColor(i % 2 == 0 ? 2131099686 : 2131100051));
                    CDSmallAdCard.this.blinkAnimation(viewGroup, i - 1);
                }
            }, 500L);
        } else {
            viewGroup.setBackgroundColor(ThemeUtils.getColor(2131099686));
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected String getExperimentRemoteConfigName() {
        return "CDSmallExperiments";
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected String getMultiSizeAdUnitIdRemoteConfigName() {
        return CallAppRemoteConfigManager.f25614b;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected String getMultiSizeBiddingConfigurationRemoteConfigName() {
        return CallAppRemoteConfigManager.f25622j;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected String getPreferencesRemoteConfigName() {
        return "CDSmallAdCardPreferences";
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        JSONAdPreferences adPreferences = getAdPreferences();
        ContactData contact = this.presentersContainer.getContact();
        if (contact == null || contact.isContactInDevice()) {
            if (adPreferences == null) {
                return 60;
            }
            return adPreferences.getPriorityContact();
        } else if (adPreferences == null) {
            return 15;
        } else {
            return adPreferences.getPriorityNonContact();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public void onBindViewHolder(AdCard.AdViewHolder adViewHolder) {
        super.onBindViewHolder(adViewHolder);
        if (!(this.currentAd instanceof MoPubView) || this.container == null || this.adSettings == null || this.adSettings.getAdAnimation() != 5) {
            return;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CDSmallAdCard.1
            @Override // java.lang.Runnable
            public void run() {
                CDSmallAdCard.this.container.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CDSmallAdCard.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CDSmallAdCard.this.blinkAnimation(CDSmallAdCard.this.container, 15);
                    }
                }, 1000L);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public boolean shouldShowAd() {
        if (getAdPreferences() != null) {
            return super.shouldShowAd();
        }
        ?? m28699b = CallAppRemoteConfigManager.get().m28699b("SmallAdCardShowInterval");
        char c = m28699b;
        if (m28699b == 0) {
            c = 2;
        }
        return c == 1 || Prefs.f26330cA.get().longValue() % c == 0;
    }
}
