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
            this.iconsColor = ThemeUtils.m27386a(getContext(), 2131100140);
        }
        SerializablePair<Date, SerializablePair<String, String>> lastSms = contactData.getLastSms();
        ArrayList<SimpleCardListObject> arrayList = new ArrayList<>();
        if (lastSms != null) {
            String str = lastSms.f19155b.f19154a;
            if (StringUtils.m26045b((CharSequence) str)) {
                final Phone m28239a = PhoneManager.get().m28239a(lastSms.f19155b.f19155b);
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.LastCommunicationsCard.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        AndroidUtils.m27630a(view, 1);
                        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Last communication card clicked", "SMS info pressed");
                        if (m28239a.isValid()) {
                            SmsUtils.m27391c(LastCommunicationsCard.this.presentersContainer.getRealContext(), m28239a, null);
                        }
                    }
                };
                String str2 = (String) DateUtils.m27117c(lastSms.f19154a);
                SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
                builder.f21521d = str;
                builder.f21524g = str2;
                SimpleCardListObject.Builder m31089a = builder.m31089a(2131231896);
                m31089a.f21527j = 2131100140;
                m31089a.f21528k = onClickListener;
                m31089a.f21519b = onClickListener;
                arrayList.add(m31089a.m31087a(this));
            }
        }
        GmailEmailData gmailEmailData = contactData.getGmailEmailData();
        if (gmailEmailData != null) {
            String subject = StringUtils.m26045b((CharSequence) gmailEmailData.getSubject()) ? gmailEmailData.getSubject() : StringUtils.m26045b((CharSequence) gmailEmailData.getSnippet()) ? gmailEmailData.getSnippet() : "";
            if (StringUtils.m26045b((CharSequence) subject)) {
                SimpleCardListObject.Builder builder2 = new SimpleCardListObject.Builder();
                builder2.f21521d = subject;
                builder2.f21524g = gmailEmailData.getInternalDate() == 0 ? "" : (String) DateUtils.m27117c(new Date(gmailEmailData.getInternalDate()));
                SimpleCardListObject.Builder m31089a2 = builder2.m31089a(2131231645);
                m31089a2.f21527j = 2131100140;
                m31089a2.f21528k = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.LastCommunicationsCard.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        AndroidUtils.m27630a(view, 1);
                        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Last communication card clicked", "Gmail info pressed");
                        ((EmailAction) ActionsManager.get().m28766a(EmailAction.class)).m31839a(LastCommunicationsCard.this.presentersContainer.getRealContext(), contactData);
                    }
                };
                m31089a2.f21519b = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.LastCommunicationsCard.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        AndroidUtils.m27630a(view, 1);
                        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Last communication card clicked", "Gmail info pressed");
                        if (!HttpUtils.m26985a()) {
                            FeedbackManager.m28675a(LastCommunicationsCard.this.presentersContainer.getRealContext());
                            return;
                        }
                        GmailEmailData gmailEmailData2 = contactData.getGmailEmailData();
                        if (gmailEmailData2 == null || !StringUtils.m26045b((CharSequence) gmailEmailData2.getThreadId())) {
                            return;
                        }
                        Activities.m27646c(LastCommunicationsCard.this.presentersContainer.getRealContext(), GmailManager.m29187a(gmailEmailData2.getThreadId()));
                    }
                };
                arrayList.add(m31089a2.m31087a(this));
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
        if (this.presentersContainer.mo30920a(contactData)) {
            hideCard();
            return;
        }
        ArrayList<SimpleCardListObject> dataList = getDataList(contactData);
        if (!CollectionUtils.m26068b(dataList)) {
            hideCard();
            return;
        }
        updateCardData(dataList);
        showCard(false);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
