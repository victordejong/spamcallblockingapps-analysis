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
        public final void a(View view) {
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
            updateCardData(contactData.getPhone().e(), Activities.getString(2131888139), 2131100209, null);
        } else if (!Prefs.aT.get().booleanValue() || UserProfileManager.get().a(contactData.getPhone())) {
            updateCardData(Activities.getString(2131888138), Activities.getString(2131888137), 2131100108, this.verifyPhoneClickListener);
        } else {
            updateCardData(contactData.getPhone().e(), Activities.getString(2131888137), 2131100108, this.verifyPhoneClickListener);
        }
    }

    private void updateCardData(String str, String str2, int i, View.OnClickListener onClickListener) {
        SimpleCardListObject.Builder a2 = new SimpleCardListObject.Builder().a(2131231835);
        a2.j = 2131100140;
        a2.l = 2131231959;
        a2.o = i;
        a2.f11918d = str;
        a2.g = str2;
        a2.i = 2131099914;
        a2.f11916b = onClickListener;
        updateCardData((VerifyPhoneNumberCard) a2.a(this), false);
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public SimpleLayoutViewHolder<SimpleCardListObject> onCreateViewHolder(ViewGroup viewGroup) {
        return new SimpleLayoutViewHolder<>(viewGroup);
    }

    public void verifyNumber(Activity activity) {
        PhoneVerifierManager.get();
        PhoneVerifierManager.a(activity, false);
    }
}
