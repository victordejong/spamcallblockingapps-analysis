package com.callapp.contacts.activity.contact.cards;

import android.view.ViewGroup;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.AdCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ads.JSONAdPreferences;
import com.mopub.mobileads.MoPubView;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/CDSmallAdCard.class */
public class CDSmallAdCard extends SmallAdCard {
    public CDSmallAdCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
    }

    /* JADX INFO: Access modifiers changed from: private */
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
        return CallAppRemoteConfigManager.f14815b;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected String getMultiSizeBiddingConfigurationRemoteConfigName() {
        return CallAppRemoteConfigManager.j;
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
            if (adPreferences != null) {
                return adPreferences.getPriorityContact();
            }
            return 60;
        } else if (adPreferences != null) {
            return adPreferences.getPriorityNonContact();
        } else {
            return 15;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    public void onBindViewHolder(AdCard.AdViewHolder adViewHolder) {
        super.onBindViewHolder(adViewHolder);
        if ((this.currentAd instanceof MoPubView) && this.container != null && this.adSettings != null && this.adSettings.getAdAnimation() == 5) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.CDSmallAdCard.1
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
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldShowAd() {
        /*
            r5 = this;
            r0 = r5
            com.callapp.contacts.util.ads.JSONAdPreferences r0 = r0.getAdPreferences()
            if (r0 == 0) goto L_0x000c
            r0 = r5
            boolean r0 = super.shouldShowAd()
            return r0
        L_0x000c:
            com.callapp.contacts.manager.CallAppRemoteConfigManager r0 = com.callapp.contacts.manager.CallAppRemoteConfigManager.get()
            java.lang.String r1 = "SmallAdCardShowInterval"
            long r0 = r0.b(r1)
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0021
            r0 = 2
            r8 = r0
        L_0x0021:
            r0 = r8
            r1 = 1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x003f
            com.callapp.contacts.manager.preferences.prefs.LongPref r0 = com.callapp.contacts.manager.preferences.Prefs.cA
            java.lang.Object r0 = r0.get()
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r1 = r8
            long r0 = r0 % r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003d
            goto L_0x003f
        L_0x003d:
            r0 = 0
            return r0
        L_0x003f:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.cards.CDSmallAdCard.shouldShowAd():boolean");
    }
}
