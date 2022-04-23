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
import it.gmariotti.cardslib.library.a.b;
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
                public final void a() {
                    ContactInfoCard.this.setFooterData(null);
                }

                @Override // com.callapp.contacts.activity.contact.cards.GoogleMapsCard.GoogleMapCardListener
                public final void a(GoogleMapsCard googleMapsCard2) {
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
        if (StringUtils.b((CharSequence) str)) {
            str3 = str.trim().replace("http://", "").replace("https://", "").toLowerCase();
        }
        String str4 = str3;
        if (StringUtils.b((CharSequence) str3)) {
            int length = str3.length() - 1;
            str4 = str3;
            if (StringUtils.a(Character.valueOf(str3.charAt(length)), "/")) {
                str4 = str3.substring(0, length);
            }
            this.cleanUrlsMap.put(str, str4);
        }
        return str4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openViewLocationActivity(Context context, CharSequence charSequence) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=".concat(String.valueOf(charSequence))));
        if (Activities.a(intent)) {
            intent.addFlags(Activities.getIntentFlagForNewDocument());
            Activities.a(context, intent);
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
            if (CollectionUtils.b(visibleEmails)) {
                for (final JSONEmail jSONEmail : visibleEmails) {
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.4
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            AndroidUtils.a(view, 1);
                            AnalyticsManager.get().a("Gmail info icon pressed", false, ContactInfoCard.this.presentersContainer);
                            MemoryContactItem memoryContactItem = new MemoryContactItem();
                            memoryContactItem.displayName = jSONEmail.getEmail();
                            ((EmailAction) ActionsManager.get().a(EmailAction.class)).a(ContactInfoCard.this.presentersContainer.getRealContext(), contactData, (ContactData) memoryContactItem);
                        }
                    };
                    SimpleCardListObject.Builder builder = new SimpleCardListObject.Builder();
                    builder.f11918d = jSONEmail.getEmail();
                    builder.j = 2131100140;
                    builder.f11916b = onClickListener;
                    SimpleCardListObject.Builder a2 = builder.a(2131231645);
                    a2.k = onClickListener;
                    if (this.lastEmailOffset != 0) {
                        a2.w = 4;
                    }
                    this.data.put(Integer.valueOf(this.lastEmailOffset + 0), a2.a(this));
                    this.lastEmailOffset++;
                }
            }
        }
        if (set.contains(ContactField.addresses)) {
            this.data.remove(Integer.valueOf((int) ADDRESS_POSITION));
            JSONAddress address = contactData.getAddress();
            if (address != null) {
                final String fullAddress = address.getFullAddress();
                if (StringUtils.b((CharSequence) fullAddress)) {
                    String city = StringUtils.b((CharSequence) address.getCity()) ? address.getCity() : "";
                    View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            AndroidUtils.a(view, 1);
                            AnalyticsManager.get().a("Address presenter pressed icon", false, ContactInfoCard.this.presentersContainer);
                            if (!StringUtils.b((CharSequence) fullAddress)) {
                                return;
                            }
                            if (HttpUtils.a()) {
                                ContactInfoCard contactInfoCard = ContactInfoCard.this;
                                contactInfoCard.openViewLocationActivity(contactInfoCard.presentersContainer.getRealContext(), fullAddress);
                                return;
                            }
                            FeedbackManager.a(ContactInfoCard.this.presentersContainer.getRealContext());
                        }
                    };
                    SimpleCardListObject.Builder builder2 = new SimpleCardListObject.Builder();
                    builder2.f11918d = StringUtils.a(fullAddress, new char[0]);
                    builder2.g = city;
                    SimpleCardListObject.Builder a3 = builder2.a(2131231692);
                    a3.j = 2131100140;
                    a3.k = onClickListener2;
                    a3.f11916b = onClickListener2;
                    this.data.put(Integer.valueOf((int) ADDRESS_POSITION), a3.a(this));
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
                            AndroidUtils.a(view, 1);
                            AnalyticsManager.get().a(Constants.BIRTHDAY, "Clicked on Birthday notification");
                            Intent flags = new Intent(CallAppApplication.get(), PostBirthdayActivity.class).setFlags(67108864);
                            JSONSocialNetworkID facebookId = contactData.getFacebookId();
                            if (facebookId != null && StringUtils.b((CharSequence) facebookId.getId())) {
                                flags.putExtra("FB_ID_EXTRA", facebookId.getId());
                            }
                            long deviceId = contactData.getDeviceId();
                            if (deviceId > 0) {
                                flags.putExtra(ChooseSocialProfileActivity.CONTACT_ID_EXTRA, deviceId);
                                flags.putExtra("PHONE_EXTRA", contactData.getPhone().a());
                            }
                            Activities.a(ContactInfoCard.this.presentersContainer.getRealContext(), flags);
                        }
                    }
                };
                SimpleCardListObject.Builder builder3 = new SimpleCardListObject.Builder();
                builder3.f11918d = DateUtils.a(birthday.toCalendar().getTimeInMillis(), false).toString();
                SimpleCardListObject.Builder a4 = builder3.a(2131231473);
                a4.k = onClickListener3;
                a4.f11916b = onClickListener3;
                this.data.put(1000, a4.a(this));
            }
        }
        if (set.contains(ContactField.websites)) {
            this.cleanUrlsMap.clear();
            for (int i2 = 0; i2 < this.lastWebsiteOffset; i2++) {
                this.data.remove(Integer.valueOf(i2 + 2000));
            }
            this.lastWebsiteOffset = 0;
            Collection<JSONWebsite> websites = contactData.getWebsites();
            if (CollectionUtils.b(websites)) {
                for (final JSONWebsite jSONWebsite : websites) {
                    View.OnClickListener onClickListener4 = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            AndroidUtils.a(view, 1);
                            AnalyticsManager.get().a("Website clicked", false, ContactInfoCard.this.presentersContainer);
                            Activities.b(ContactInfoCard.this.presentersContainer.getRealContext(), jSONWebsite.getWebsiteUrl());
                        }
                    };
                    SimpleCardListObject.Builder builder4 = new SimpleCardListObject.Builder();
                    builder4.f11918d = jSONWebsite.getWebsiteUrl();
                    SimpleCardListObject.Builder a5 = builder4.a(2131231739);
                    a5.j = 2131100140;
                    a5.k = onClickListener4;
                    a5.f11916b = onClickListener4;
                    if (this.lastWebsiteOffset != 0) {
                        a5.w = 4;
                    }
                    String cleanUrl = getCleanUrl(jSONWebsite.getWebsiteUrl());
                    int i3 = 2000;
                    while (true) {
                        if (i3 >= this.lastWebsiteOffset + 2000) {
                            z = false;
                            break;
                        } else if (StringUtils.b(getCleanUrl(this.data.get(Integer.valueOf(i3)).getTitle()), cleanUrl)) {
                            z = true;
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (!z) {
                        this.data.put(Integer.valueOf(this.lastWebsiteOffset + 2000), a5.a(this));
                        this.lastWebsiteOffset++;
                    }
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

    @Override // it.gmariotti.cardslib.library.a.b
    public b.d getOnExpandAnimatorEndListener() {
        AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Contact info card expanded");
        return super.getOnExpandAnimatorEndListener();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 80;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean hideWhenExceedMaxCards() {
        this.shouldStartHidden = true;
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.2
            @Override // java.lang.Runnable
            public void run() {
                ContactInfoCard.this.hideCard();
            }
        });
        return true;
    }

    @Override // it.gmariotti.cardslib.library.a.b
    public boolean isSwipeable() {
        return false;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        synchronized (this.expandedListDataLock) {
            if (!this.presentersContainer.a(contactData) && !contactData.isVoiceMail()) {
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
                    if (CollectionUtils.b(values)) {
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
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.3
            @Override // java.lang.Runnable
            public void run() {
                if (!z) {
                    ContactInfoCard.this.setOnCollapseAnimatorEndListener(new b.AbstractC0596b() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.3.2
                        @Override // it.gmariotti.cardslib.library.a.b.AbstractC0596b
                        public final void a() {
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
                    ContactInfoCard.this.setOnExpandAnimatorEndListener(new b.d() { // from class: com.callapp.contacts.activity.contact.cards.ContactInfoCard.3.1
                        @Override // it.gmariotti.cardslib.library.a.b.d
                        public final void a() {
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
