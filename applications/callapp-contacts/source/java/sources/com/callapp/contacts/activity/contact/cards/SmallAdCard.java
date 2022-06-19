package com.callapp.contacts.activity.contact.cards;

import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.ViewBinder;
import java.util.EnumSet;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/SmallAdCard.class */
public abstract class SmallAdCard extends AdCard {
    public SmallAdCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558531);
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected int getAdLayoutResourceId(int i) {
        return AdUtils.getSmallCardAdLayoutResourceId(i);
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected EnumSet<RequestParameters.NativeAdAsset> getCardDesiredAssets(AdSettings adSettings) {
        return AdUtils.m27278a(adSettings);
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected ViewBinder getCardViewBinder(AdSettings adSettings) {
        return AdUtils.m27263b(adSettings);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean shouldHideCardOnThemeChange() {
        return false;
    }
}
