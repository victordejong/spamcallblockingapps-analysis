package com.callapp.contacts.activity.contact.cards;

import android.graphics.PorterDuff;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.common.util.Objects;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCard;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.IncognitoCallManager;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ConferenceCard.class */
public class ConferenceCard extends SimpleCard<SimpleCardListObject, SimpleLayoutViewHolder<SimpleCardListObject>> implements CallStateListener {
    private final CallData callData;
    private final ContactData contactData;

    public ConferenceCard(PresentersContainer presentersContainer, CallData callData) {
        super(presentersContainer);
        this.callData = callData;
        this.contactData = PhoneStateManager.get().getContactDataByCallData(callData);
        presentersContainer.addCallStateListener(this);
        showCard(false);
    }

    private void updateCardData(ContactData contactData, final CallData callData) {
        int i;
        int i2 = ThemeUtils.isThemeLight() ? 2131099918 : 2131100228;
        int i3 = ThemeUtils.isThemeLight() ? 2131099919 : 2131099917;
        boolean z = IncognitoCallManager.get().isIncognito(contactData) || this.presentersContainer.a(contactData);
        String b2 = z ? callData.getNumber().b() : StringUtils.a(contactData.getNameOrNumber(), new char[0]);
        Integer num = null;
        String thumbnailUrl = z ? null : contactData.getThumbnailUrl();
        if (StringUtils.a((CharSequence) thumbnailUrl)) {
            thumbnailUrl = ImageUtils.getResourceUri(2131232143);
            Integer valueOf = Integer.valueOf(ThemeUtils.a(CallAppApplication.get(), 2131099786));
            if (contactData.isVoiceMail()) {
                thumbnailUrl = ImageUtils.getResourceUri(2131231612);
            }
            i = -1;
            num = valueOf;
            if (contactData.isUnknownNumber()) {
                thumbnailUrl = ImageUtils.getResourceUri(2131231610);
                i = -1;
                num = valueOf;
            }
        } else {
            num = null;
            i = 0;
        }
        if (this.presentersContainer.a(contactData)) {
            thumbnailUrl = ImageUtils.getResourceUri(2131232150);
            i = 0;
        }
        SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
        builder.f11918d = b2;
        builder.f = 2131100140;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        builder.r = thumbnailUrl;
        builder.s = b2;
        builder.x = num;
        builder.y = i;
        builder.z = mode;
        builder.w = 8;
        builder.u = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards._$$Lambda$ConferenceCard$Y188s0ERPwGa8jm83E7p_9ksbpk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConferenceCard.this.lambda$updateCardData$0$ConferenceCard(callData, view);
            }
        };
        builder.v = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards._$$Lambda$ConferenceCard$HFmFu3jeQK2pewFvx4lUio2Hz3Q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneStateManager.get().separateCall(CallData.this);
            }
        };
        builder.F = 0;
        builder.A = 8;
        builder.E = 0;
        builder.n = 2131231956;
        builder.B = 0;
        builder.m = 2131231646;
        builder.p = 2131099675;
        builder.C = true;
        builder.g = contactData.getPhone().e();
        if (!PhoneStateManager.get().isAllCallsInConference() || callData.getState().isOnHold()) {
            builder.D = false;
            builder.q = i3;
        } else {
            builder.D = true;
            builder.q = i2;
        }
        updateCardData((ConferenceCard) builder.a(this), false);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return getContext().getResources().getDimensionPixelSize(2131165411);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.CONFERENCE_CALL_FIELDS;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 10;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean isCardLockedWhenScreenIsLocked() {
        return false;
    }

    public /* synthetic */ void lambda$updateCardData$0$ConferenceCard(CallData callData, View view) {
        PhoneManager.get();
        PhoneManager.a(callData);
        hideCard();
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        if (!callData.getCallId().equals(this.callData.getCallId())) {
            return;
        }
        if (callData.getState().isDisconnected()) {
            hideCard();
            return;
        }
        updateCardData(this.contactData, callData);
        showCard(true);
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (Objects.a(contactData, this.contactData) && !this.callData.getState().isDisconnected()) {
            updateCardData(contactData, this.callData);
            showCard(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public SimpleLayoutViewHolder<SimpleCardListObject> onCreateViewHolder(ViewGroup viewGroup) {
        return new SimpleLayoutViewHolder<>(viewGroup);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
