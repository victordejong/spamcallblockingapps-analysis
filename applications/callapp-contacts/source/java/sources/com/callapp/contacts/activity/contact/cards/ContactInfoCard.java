package com.callapp.contacts.activity.contact.cards;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.local.EmailAction;
import com.callapp.contacts.activity.birthday.PostBirthdayActivity;
import com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity;
import com.callapp.contacts.activity.contact.cards.GoogleMapsCard;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import it.gmariotti.cardslib.library.p510a.C18073b;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ContactInfoCard.class */
public class ContactInfoCard extends SimpleExpandableCard {
    private static final int ADDRESS_POSITION = 3000;
    private static final int BIRTHDAY_POSITION = 1000;
    private static final int EMAIL_ADD_POSITION = 0;
    private static final int WEBSITE_POSITION = 2000;
    private Map<String, String> cleanUrlsMap = new HashMap();
    private Map<Integer, SimpleCardListObject> data = new TreeMap();
    private int lastEmailOffset = 0;
    private int lastWebsiteOffset = 0;
    private MultiCardContainer multiCardContainer;
    private boolean shouldAutoExpand;

    public ContactInfoCard(MultiCardContainer multiCardContainer, GoogleMapsCard googleMapsCard) {
        super(multiCardContainer);
        this.multiCardContainer = multiCardContainer;
        if (googleMapsCard != null) {
            googleMapsCard.setGoogleMapsCard(new GoogleMapsCard.GoogleMapCardListener() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.1
                @Override // com.callapp.contacts.activity.contact.cards.GoogleMapsCard.GoogleMapCardListener
                /* renamed from: a */
                public final void mo31234a() {
                    ContactInfoCard.this.setFooterData(null);
                }

                @Override // com.callapp.contacts.activity.contact.cards.GoogleMapsCard.GoogleMapCardListener
                /* renamed from: a */
                public final void mo31233a(GoogleMapsCard googleMapsCard2) {
                    ContactInfoCard.this.setFooterData(new SimpleExpandableCard.FooterData(googleMapsCard2));
                }
            });
        }
    }

    private String getCleanUrl(String str) {
        String str2 = this.cleanUrlsMap.get(str);
        if (str2 != null) {
            return str2;
        }
        String str3 = "";
        if (StringUtils.m26045b((CharSequence) str)) {
            str3 = str.trim().replace("http://", "").replace("https://", "").toLowerCase();
        }
        String str4 = str3;
        if (StringUtils.m26045b((CharSequence) str3)) {
            int length = str3.length() - 1;
            str4 = str3;
            if (StringUtils.m26057a(Character.valueOf(str3.charAt(length)), "/")) {
                str4 = str3.substring(0, length);
            }
            this.cleanUrlsMap.put(str, str4);
        }
        return str4;
    }

    public void openViewLocationActivity(Context context, CharSequence charSequence) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=".concat(String.valueOf(charSequence))));
        if (Activities.m27672a(intent)) {
            intent.addFlags(Activities.getIntentFlagForNewDocument());
            Activities.m27685a(context, intent);
        }
    }

    private void refreshListData(final ContactData contactData, Set<ContactField> set) {
        boolean z;
        if (set.contains(ContactField.emails)) {
            for (int i = 0; i < this.lastEmailOffset; i++) {
                this.data.remove(Integer.valueOf(i + 0));
            }
            this.lastEmailOffset = 0;
            Collection<JSONEmail> visibleEmails = contactData.getVisibleEmails();
            if (CollectionUtils.m26068b(visibleEmails)) {
                for (final JSONEmail jSONEmail : visibleEmails) {
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.4
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            AndroidUtils.m27630a(view, 1);
                            AnalyticsManager.get().m28442a("Gmail info icon pressed", false, ContactInfoCard.this.presentersContainer);
                            MemoryContactItem memoryContactItem = new MemoryContactItem();
                            memoryContactItem.displayName = jSONEmail.getEmail();
                            ((EmailAction) ActionsManager.get().m28766a(EmailAction.class)).m31838a(ContactInfoCard.this.presentersContainer.getRealContext(), contactData, (ContactData) memoryContactItem);
                        }
                    };
                    SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
                    builder.f21521d = jSONEmail.getEmail();
                    builder.f21527j = 2131100140;
                    builder.f21519b = onClickListener;
                    SimpleCardListObject.Builder m31089a = builder.m31089a(2131231645);
                    m31089a.f21528k = onClickListener;
                    if (this.lastEmailOffset != 0) {
                        m31089a.f21540w = 4;
                    }
                    this.data.put(Integer.valueOf(this.lastEmailOffset + 0), m31089a.m31087a(this));
                    this.lastEmailOffset++;
                }
            }
        }
        if (set.contains(ContactField.addresses)) {
            this.data.remove(Integer.valueOf((int) ADDRESS_POSITION));
            JSONAddress address = contactData.getAddress();
            if (address != null) {
                final String fullAddress = address.getFullAddress();
                if (StringUtils.m26045b((CharSequence) fullAddress)) {
                    String city = StringUtils.m26045b((CharSequence) address.getCity()) ? address.getCity() : "";
                    View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            AndroidUtils.m27630a(view, 1);
                            AnalyticsManager.get().m28442a("Address presenter pressed icon", false, ContactInfoCard.this.presentersContainer);
                            if (StringUtils.m26045b((CharSequence) fullAddress)) {
                                if (!HttpUtils.m26985a()) {
                                    FeedbackManager.m28675a(ContactInfoCard.this.presentersContainer.getRealContext());
                                    return;
                                }
                                ContactInfoCard contactInfoCard = ContactInfoCard.this;
                                contactInfoCard.openViewLocationActivity(contactInfoCard.presentersContainer.getRealContext(), fullAddress);
                            }
                        }
                    };
                    SimpleCardListObject.Builder builder2 = new SimpleCardListObject.Builder();
                    builder2.f21521d = StringUtils.m26049a(fullAddress, new char[0]);
                    builder2.f21524g = city;
                    SimpleCardListObject.Builder m31089a2 = builder2.m31089a(2131231692);
                    m31089a2.f21527j = 2131100140;
                    m31089a2.f21528k = onClickListener2;
                    m31089a2.f21519b = onClickListener2;
                    this.data.put(Integer.valueOf((int) ADDRESS_POSITION), m31089a2.m31087a(this));
                }
            }
        }
        if (set.contains(ContactField.birthday)) {
            this.data.remove(1000);
            JSONDate birthday = contactData.getBirthday();
            if (birthday != null) {
                View.OnClickListener onClickListener3 = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (contactData.isContactInDevice() || FacebookHelper.get().getCurrentUserId() != null) {
                            AndroidUtils.m27630a(view, 1);
                            AnalyticsManager.get().m28450a(Constants.BIRTHDAY, "Clicked on Birthday notification");
                            Intent flags = new Intent(CallAppApplication.get(), PostBirthdayActivity.class).setFlags(67108864);
                            JSONSocialNetworkID facebookId = contactData.getFacebookId();
                            if (facebookId != null && StringUtils.m26045b((CharSequence) facebookId.getId())) {
                                flags.putExtra("FB_ID_EXTRA", facebookId.getId());
                            }
                            long deviceId = contactData.getDeviceId();
                            if (deviceId > 0) {
                                flags.putExtra(ChooseSocialProfileActivity.CONTACT_ID_EXTRA, deviceId);
                                flags.putExtra("PHONE_EXTRA", contactData.getPhone().m26101a());
                            }
                            Activities.m27685a(ContactInfoCard.this.presentersContainer.getRealContext(), flags);
                        }
                    }
                };
                SimpleCardListObject.Builder builder3 = new SimpleCardListObject.Builder();
                builder3.f21521d = DateUtils.m27133a(birthday.toCalendar().getTimeInMillis(), false).toString();
                SimpleCardListObject.Builder m31089a3 = builder3.m31089a(2131231473);
                m31089a3.f21528k = onClickListener3;
                m31089a3.f21519b = onClickListener3;
                this.data.put(1000, m31089a3.m31087a(this));
            }
        }
        if (set.contains(ContactField.websites)) {
            this.cleanUrlsMap.clear();
            for (int i2 = 0; i2 < this.lastWebsiteOffset; i2++) {
                this.data.remove(Integer.valueOf(i2 + 2000));
            }
            this.lastWebsiteOffset = 0;
            Collection<JSONWebsite> websites = contactData.getWebsites();
            if (!CollectionUtils.m26068b(websites)) {
                return;
            }
            for (final JSONWebsite jSONWebsite : websites) {
                View.OnClickListener onClickListener4 = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.7
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        AndroidUtils.m27630a(view, 1);
                        AnalyticsManager.get().m28442a("Website clicked", false, ContactInfoCard.this.presentersContainer);
                        Activities.m27655b(ContactInfoCard.this.presentersContainer.getRealContext(), jSONWebsite.getWebsiteUrl());
                    }
                };
                SimpleCardListObject.Builder builder4 = new SimpleCardListObject.Builder();
                builder4.f21521d = jSONWebsite.getWebsiteUrl();
                SimpleCardListObject.Builder m31089a4 = builder4.m31089a(2131231739);
                m31089a4.f21527j = 2131100140;
                m31089a4.f21528k = onClickListener4;
                m31089a4.f21519b = onClickListener4;
                if (this.lastWebsiteOffset != 0) {
                    m31089a4.f21540w = 4;
                }
                String cleanUrl = getCleanUrl(jSONWebsite.getWebsiteUrl());
                int i3 = 2000;
                while (true) {
                    if (i3 >= this.lastWebsiteOffset + 2000) {
                        z = false;
                        break;
                    } else if (StringUtils.m26042b(getCleanUrl(this.data.get(Integer.valueOf(i3)).getTitle()), cleanUrl)) {
                        z = true;
                        break;
                    } else {
                        i3++;
                    }
                }
                if (!z) {
                    this.data.put(Integer.valueOf(this.lastWebsiteOffset + 2000), m31089a4.m31087a(this));
                    this.lastWebsiteOffset++;
                }
            }
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard
    public boolean autoExpand() {
        return this.shouldAutoExpand;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.emails, ContactField.websites, ContactField.birthday, ContactField.addresses, ContactField.newContact);
    }

    @Override // it.gmariotti.cardslib.library.p510a.C18073b
    public C18073b.AbstractC18077d getOnExpandAnimatorEndListener() {
        AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "Contact info card expanded");
        return super.getOnExpandAnimatorEndListener();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 80;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean hideWhenExceedMaxCards() {
        this.shouldStartHidden = true;
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.2
            @Override // java.lang.Runnable
            public void run() {
                ContactInfoCard.this.hideCard();
            }
        });
        return true;
    }

    @Override // it.gmariotti.cardslib.library.p510a.C18073b
    public boolean isSwipeable() {
        return false;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        synchronized (this.expandedListDataLock) {
            if (!this.presentersContainer.mo30920a(contactData) && !contactData.isVoiceMail()) {
                if (set.contains(ContactField.newContact)) {
                    this.shouldStartHidden = false;
                    this.shouldAutoExpand = false;
                    this.data.clear();
                    hideCard();
                }
                refreshListData(contactData, set);
                Collection<SimpleCardListObject> values = this.data.values();
                updateCardData((Collection) values, true);
                if (!this.shouldStartHidden) {
                    if (CollectionUtils.m26068b(values)) {
                        showCard(false);
                    } else {
                        hideCard();
                    }
                }
                return;
            }
            hideCard();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onMultiCardExpended(final boolean z) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.3
            @Override // java.lang.Runnable
            public void run() {
                if (!z) {
                    ContactInfoCard.this.setOnCollapseAnimatorEndListener(new C18073b.AbstractC18075b() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.3.2
                        @Override // it.gmariotti.cardslib.library.p510a.C18073b.AbstractC18075b
                        /* renamed from: a */
                        public final void mo4485a() {
                            if (ContactInfoCard.this.shouldStartHidden) {
                                ContactInfoCard.this.hideCard();
                            }
                            ContactInfoCard.this.multiCardContainer.onAnimatorEndListener();
                        }
                    });
                    ContactInfoCard.this.doCollapse();
                } else if (ContactInfoCard.this.shouldStartHidden) {
                    ContactInfoCard.this.shouldAutoExpand = true;
                    ContactInfoCard.this.showCard(true);
                } else {
                    ContactInfoCard.this.setOnExpandAnimatorEndListener(new C18073b.AbstractC18077d() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.3.1
                        @Override // it.gmariotti.cardslib.library.p510a.C18073b.AbstractC18077d
                        /* renamed from: a */
                        public final void mo4484a() {
                            ContactInfoCard.this.multiCardContainer.onAnimatorEndListener();
                        }
                    });
                    ContactInfoCard.this.doExpand();
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showExpendFooter() {
        return super.showShouldExpandButton() || getFooterData() != null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.simple.SimpleExpandableCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }
}
