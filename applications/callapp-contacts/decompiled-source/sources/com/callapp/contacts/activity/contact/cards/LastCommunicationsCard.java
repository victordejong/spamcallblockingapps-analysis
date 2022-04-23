package com.callapp.contacts.activity.contact.cards;

import android.view.View;
import com.callapp.common.util.SerializablePair;
import com.callapp.contacts.action.local.EmailAction;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard;
import com.callapp.contacts.api.helper.gmail.GmailManager;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.GmailEmailData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/LastCommunicationsCard.class */
public class LastCommunicationsCard extends SimpleExpandableCard {
    private int iconsColor;

    public LastCommunicationsCard(MultiCardContainer multiCardContainer) {
        super(multiCardContainer);
    }

    private ArrayList<SimpleCardListObject> getDataList(final ContactData contactData) {
        if (this.iconsColor == 0) {
            this.iconsColor = ThemeUtils.a(getContext(), 2131100140);
        }
        SerializablePair<Date, SerializablePair<String, String>> lastSms = contactData.getLastSms();
        ArrayList<SimpleCardListObject> arrayList = new ArrayList<>();
        if (lastSms != null) {
            String str = lastSms.f10398b.f10397a;
            if (StringUtils.b((CharSequence) str)) {
                final Phone a2 = PhoneManager.get().a(lastSms.f10398b.f10398b);
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.LastCommunicationsCard.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        AndroidUtils.a(view, 1);
                        AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Last communication card clicked", "SMS info pressed");
                        if (a2.isValid()) {
                            SmsUtils.c(LastCommunicationsCard.this.presentersContainer.getRealContext(), a2, null);
                        }
                    }
                };
                String str2 = (String) DateUtils.c(lastSms.f10397a);
                SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
                builder.f11918d = str;
                builder.g = str2;
                SimpleCardListObject.Builder a3 = builder.a(2131231896);
                a3.j = 2131100140;
                a3.k = onClickListener;
                a3.f11916b = onClickListener;
                arrayList.add(a3.a(this));
            }
        }
        GmailEmailData gmailEmailData = contactData.getGmailEmailData();
        if (gmailEmailData != null) {
            String str3 = "";
            String subject = StringUtils.b((CharSequence) gmailEmailData.getSubject()) ? gmailEmailData.getSubject() : StringUtils.b((CharSequence) gmailEmailData.getSnippet()) ? gmailEmailData.getSnippet() : "";
            if (StringUtils.b((CharSequence) subject)) {
                SimpleCardListObject.Builder builder2 = new SimpleCardListObject.Builder();
                builder2.f11918d = subject;
                if (gmailEmailData.getInternalDate() != 0) {
                    str3 = (String) DateUtils.c(new Date(gmailEmailData.getInternalDate()));
                }
                builder2.g = str3;
                SimpleCardListObject.Builder a4 = builder2.a(2131231645);
                a4.j = 2131100140;
                a4.k = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.LastCommunicationsCard.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        AndroidUtils.a(view, 1);
                        AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Last communication card clicked", "Gmail info pressed");
                        ((EmailAction) ActionsManager.get().a(EmailAction.class)).a(LastCommunicationsCard.this.presentersContainer.getRealContext(), contactData);
                    }
                };
                a4.f11916b = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.LastCommunicationsCard.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        AndroidUtils.a(view, 1);
                        AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Last communication card clicked", "Gmail info pressed");
                        if (HttpUtils.a()) {
                            GmailEmailData gmailEmailData2 = contactData.getGmailEmailData();
                            if (gmailEmailData2 != null && StringUtils.b((CharSequence) gmailEmailData2.getThreadId())) {
                                Activities.c(LastCommunicationsCard.this.presentersContainer.getRealContext(), GmailManager.a(gmailEmailData2.getThreadId()));
                                return;
                            }
                            return;
                        }
                        FeedbackManager.a(LastCommunicationsCard.this.presentersContainer.getRealContext());
                    }
                };
                arrayList.add(a4.a(this));
            }
        }
        return arrayList;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard
    public boolean autoExpand() {
        return true;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.lastSms, ContactField.gmailData, ContactField.emails);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 85;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (this.presentersContainer.a(contactData)) {
            hideCard();
            return;
        }
        ArrayList<SimpleCardListObject> dataList = getDataList(contactData);
        if (CollectionUtils.b(dataList)) {
            updateCardData(dataList);
            showCard(false);
            return;
        }
        hideCard();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
