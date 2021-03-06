package com.callapp.contacts.activity.contact.cards;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.C0790b;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.birthday.PostBirthdayActivity;
import com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCard;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Calendar;
import java.util.Date;
import java.util.EnumSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/BirthdayCard.class */
public class BirthdayCard extends SimpleCard<SimpleCardListObject, SimpleLayoutViewHolder<SimpleCardListObject>> {
    private String birthdayText;

    public BirthdayCard(PresentersContainer presentersContainer) {
        super(presentersContainer);
    }

    private String getBirthdayText(ContactData contactData) {
        JSONDate birthday = contactData.getBirthday();
        String str = null;
        if (birthday == null) {
            return null;
        }
        Calendar calendar = birthday.toCalendar();
        Date time = calendar.getTime();
        Calendar m27138a = DateUtils.m27138a();
        m27138a.set(1, calendar.get(1));
        Date time2 = m27138a.getTime();
        m27138a.add(5, -7);
        Date time3 = m27138a.getTime();
        m27138a.add(5, 17);
        if (time.after(time3) && time.before(m27138a.getTime())) {
            long round = Math.round(DateUtils.m27124a(time2, time, TimeUnit.SECONDS) / 86400.0d);
            int i = (round > 0L ? 1 : (round == 0L ? 0 : -1));
            if (i == 0) {
                str = Activities.m27697a(2131886321, StringUtils.m26049a(contactData.getFirstName(), new char[0]), Activities.getString(2131887907).toLowerCase());
            } else if (i > 0) {
                str = Activities.m27697a(2131886321, StringUtils.m26049a(contactData.getFirstName(), new char[0]), round == 1 ? Activities.getString(2131886336) : Activities.m27697a(2131886338, Long.valueOf(round)));
            } else {
                str = Activities.m27697a(2131886322, StringUtils.m26049a(contactData.getFirstName(), new char[0]), round == -1 ? Activities.getString(2131886339) : Activities.m27697a(2131886337, Long.valueOf(Math.abs(round))));
            }
        }
        return str;
    }

    private void setInitialCardDetails() {
        SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
        builder.f21518a = C0790b.m44502a(CallAppApplication.get(), 2131230969);
        builder.f21521d = this.birthdayText;
        builder.f21522e = 2131951858;
        builder.f21524g = Activities.getString(2131886320);
        builder.f21540w = 4;
        SimpleCardListObject.Builder m31089a = builder.m31089a(2131231645);
        m31089a.f21519b = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.BirthdayCard.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "Birthday card clicked");
                ContactData contact = BirthdayCard.this.getPresentersContainer().getContact();
                if (contact.isContactInDevice() || FacebookHelper.get().getCurrentUserId() != null) {
                    Intent flags = new Intent(CallAppApplication.get(), PostBirthdayActivity.class).setFlags(67108864);
                    JSONSocialNetworkID facebookId = contact.getFacebookId();
                    if (facebookId != null && StringUtils.m26045b((CharSequence) facebookId.getId())) {
                        flags.putExtra("FB_ID_EXTRA", facebookId.getId());
                    }
                    long deviceId = contact.getDeviceId();
                    if (deviceId > 0) {
                        flags.putExtra(ChooseSocialProfileActivity.CONTACT_ID_EXTRA, deviceId);
                        flags.putExtra("PHONE_EXTRA", contact.getPhone().m26101a());
                    }
                    Activities.m27685a(BirthdayCard.this.presentersContainer.getRealContext(), flags);
                }
            }
        };
        m31089a.f21525h = 2131951896;
        updateCardData((BirthdayCard) m31089a.m31087a(this), true);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return getContext().getResources().getDimensionPixelSize(2131165275);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.birthday);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 20;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        String birthdayText = getBirthdayText(contactData);
        this.birthdayText = birthdayText;
        if (!StringUtils.m26045b((CharSequence) birthdayText) || this.presentersContainer.mo30920a(contactData) || contactData.isVoiceMail()) {
            hideCard();
            return;
        }
        setInitialCardDetails();
        showCard(true);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public SimpleLayoutViewHolder<SimpleCardListObject> onCreateViewHolder(ViewGroup viewGroup) {
        return new SimpleLayoutViewHolder<>(viewGroup);
    }
}
