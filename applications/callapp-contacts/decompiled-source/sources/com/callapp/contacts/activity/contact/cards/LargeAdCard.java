package com.callapp.contacts.activity.contact.cards;

import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.ViewBinder;
import java.util.EnumSet;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/LargeAdCard.class */
public abstract class LargeAdCard extends AdCard {
    public LargeAdCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558530);
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected int getAdLayoutResourceId(int i) {
        return 2131558529;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected EnumSet<RequestParameters.NativeAdAsset> getCardDesiredAssets(AdSettings adSettings) {
        return AdUtils.f15996b;
    }

    @Override // com.callapp.contacts.activity.contact.cards.AdCard
    protected ViewBinder getCardViewBinder(AdSettings adSettings) {
        ViewBinder.Builder callToActionId = new ViewBinder.Builder(adSettings.getAdLayoutResourceId()).mainImageId(2131363356).iconImageId(2131363355).titleId(2131363360).textId(2131363359).privacyInformationIconImageId(2131363357).callToActionId(2131363351);
        if (adSettings.getAdLayoutResourceId() == 2131558529) {
            callToActionId.titleId(2131363362);
        }
        return callToActionId.build();
    }
}
