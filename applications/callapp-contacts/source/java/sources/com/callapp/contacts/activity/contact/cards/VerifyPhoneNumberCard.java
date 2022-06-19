package com.callapp.contacts.activity.contact.cards;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.activity.EditUserProfileActivity;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCard;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.PhoneVerifierManager;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard.class */
public class VerifyPhoneNumberCard extends SimpleCard<SimpleCardListObject, SimpleLayoutViewHolder<SimpleCardListObject>> {
    private DefaultInterfaceImplUtils.ClickListener verifyPhoneClickListener = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.cards.VerifyPhoneNumberCard.1
        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
        /* renamed from: a */
        public final void mo26371a(View view) {
            EditUserProfileActivity.trackUserProfileEvent("Clicked on verify user number card");
            VerifyPhoneNumberCard verifyPhoneNumberCard = VerifyPhoneNumberCard.this;
            verifyPhoneNumberCard.verifyNumber((Activity) verifyPhoneNumberCard.presentersContainer.getRealContext());
        }
    };

    public VerifyPhoneNumberCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
    }

    private void updateCardData(ContactData contactData) {
        if (contactData.getPhone().equals(UserProfileManager.get().getUserVerifiedPhone())) {
            updateCardData(contactData.getPhone().m26087e(), Activities.getString(2131888139), 2131100209, null);
        } else if (!Prefs.f26243aT.get().booleanValue() || UserProfileManager.get().m28462a(contactData.getPhone())) {
            updateCardData(Activities.getString(2131888138), Activities.getString(2131888137), 2131100108, this.verifyPhoneClickListener);
        } else {
            updateCardData(contactData.getPhone().m26087e(), Activities.getString(2131888137), 2131100108, this.verifyPhoneClickListener);
        }
    }

    private void updateCardData(String str, String str2, int i, View.OnClickListener onClickListener) {
        SimpleCardListObject.Builder m31089a = new SimpleCardListObject.Builder().m31089a(2131231835);
        m31089a.f21527j = 2131100140;
        m31089a.f21529l = 2131231959;
        m31089a.f21532o = i;
        m31089a.f21521d = str;
        m31089a.f21524g = str2;
        m31089a.f21526i = 2131099914;
        m31089a.f21519b = onClickListener;
        updateCardData((VerifyPhoneNumberCard) m31089a.m31087a(this), false);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phones, ContactField.phone);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 10;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.phone)) {
            updateCardData(contactData);
            showCard(true);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public SimpleLayoutViewHolder<SimpleCardListObject> onCreateViewHolder(ViewGroup viewGroup) {
        return new SimpleLayoutViewHolder<>(viewGroup);
    }

    public void verifyNumber(Activity activity) {
        PhoneVerifierManager.get();
        PhoneVerifierManager.m28522a(activity, false);
    }
}
