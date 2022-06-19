package com.callapp.contacts.activity.fragments;

import android.accounts.Account;
import android.provider.ContactsContract;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONFBUserOrPage;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.event.Callback;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.RowVisitor;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.DeviceDataLoader;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import com.google.api.client.googleapis.extensions.android.p382a.C15287a;
import com.twitter.sdk.android.core.models.User;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fragments/UserProfileHelper.class */
public class UserProfileHelper {

    /* renamed from: a */
    private String f23050a;

    /* renamed from: b */
    private String f23051b;

    /* renamed from: c */
    private String f23052c;

    /* renamed from: d */
    private String f23053d;

    /* renamed from: e */
    private String f23054e;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails.class */
    public static final class ICSProfileUserDetails {

        /* renamed from: a */
        String f23057a;

        /* renamed from: b */
        String f23058b;

        /* renamed from: c */
        String f23059c;

        private ICSProfileUserDetails() {
        }
    }

    /* renamed from: b */
    private boolean m30252b() {
        return StringUtils.m26045b((CharSequence) this.f23052c) && StringUtils.m26045b((CharSequence) this.f23050a) && StringUtils.m26045b((CharSequence) this.f23051b);
    }

    /* renamed from: c */
    private void m30251c() {
        String email = getEmail();
        String firstName = getFirstName();
        String lastName = getLastName();
        String bio = getBio();
        String address = getAddress();
        Prefs.f26266aq.set(email);
        Prefs.f26267ar.set(firstName);
        Prefs.f26268as.set(lastName);
        Prefs.f26269at.set(bio);
        Prefs.f26270au.set(address);
    }

    /* renamed from: a */
    public final void m30255a() {
        User loggedInUser;
        JSONFBUserOrPage loggedInUser2;
        Account[] m9165a;
        String str = Prefs.f26267ar.get();
        if (StringUtils.m26045b((CharSequence) str)) {
            this.f23050a = str;
        }
        String str2 = Prefs.f26268as.get();
        if (StringUtils.m26045b((CharSequence) str2)) {
            this.f23051b = str2;
        }
        String str3 = Prefs.f26266aq.get();
        if (StringUtils.m26045b((CharSequence) str3)) {
            this.f23052c = str3;
        }
        String str4 = Prefs.f26269at.get();
        if (StringUtils.m26045b((CharSequence) str4)) {
            this.f23053d = str4;
        }
        String str5 = Prefs.f26270au.get();
        if (StringUtils.m26045b((CharSequence) str5)) {
            setAddress(str5);
        }
        if (!m30252b()) {
            try {
                if (FacebookHelper.get().isLoggedIn() && (loggedInUser2 = FacebookHelper.get().getLoggedInUser()) != null) {
                    if (StringUtils.m26059a((CharSequence) this.f23050a) && StringUtils.m26045b((CharSequence) loggedInUser2.getFirstName())) {
                        setFirstName(loggedInUser2.getFirstName());
                    }
                    if (StringUtils.m26059a((CharSequence) this.f23051b) && StringUtils.m26045b((CharSequence) loggedInUser2.getLastName())) {
                        setLastName(loggedInUser2.getLastName());
                    }
                    if (StringUtils.m26059a((CharSequence) this.f23052c) && StringUtils.m26045b((CharSequence) loggedInUser2.getEmail())) {
                        setEmail(loggedInUser2.getEmail());
                    }
                }
                if (!m30252b()) {
                    if (GoogleHelper.get().isLoggedIn()) {
                        setFullNameIfEmpty(GoogleHelper.get().getDisplayName());
                        if (StringUtils.m26059a((CharSequence) this.f23052c)) {
                            setEmail(GoogleHelper.get().getUserName());
                        }
                    }
                    if (!m30252b()) {
                        if (TwitterHelper.get().isLoggedIn() && (loggedInUser = TwitterHelper.get().getLoggedInUser()) != null && StringUtils.m26045b((CharSequence) loggedInUser.name)) {
                            setFullNameIfEmpty(loggedInUser.name);
                        }
                        m30252b();
                    }
                }
            } catch (Exception e) {
                CLog.m27608a(getClass(), e, "Error fetching user profile data from social networks");
            }
        }
        if (m30252b()) {
            m30251c();
            return;
        }
        final ICSProfileUserDetails iCSProfileUserDetails = new ICSProfileUserDetails();
        iCSProfileUserDetails.f23057a = (String) new ContentQuery(ContactsContract.Profile.CONTENT_URI).m29008c("display_name").m29025a((RowCallback<RowCallback<String>>) new RowCallback<String>() { // from class: com.callapp.contacts.activity.fragments.UserProfileHelper.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ String onRow(RowContext rowContext) {
                String m29002a = rowContext.m29002a("display_name");
                return (!StringUtils.m26045b((CharSequence) m29002a) || !RegexUtils.m31883r(m29002a)) ? "" : m29002a;
            }
        }, (RowCallback<String>) null);
        new ContentQuery(ContactsContract.Profile.CONTENT_URI).m29021a("entities").m29008c("mimetype").m29008c("is_primary").m29008c("data1").m29008c("data1").m29008c("display_name").m29024a(new RowVisitor() { // from class: com.callapp.contacts.activity.fragments.UserProfileHelper.2
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public final void onRow(RowContext rowContext) {
                String m29002a = rowContext.m29002a("mimetype");
                if ("vnd.android.cursor.item/email_v2".equals(m29002a)) {
                    boolean m29001b = rowContext.m29001b("is_primary");
                    if (!StringUtils.m26059a((CharSequence) iCSProfileUserDetails.f23058b) && !m29001b) {
                        return;
                    }
                    iCSProfileUserDetails.f23058b = rowContext.m29002a("data1");
                } else if (!"vnd.android.cursor.item/name".equals(m29002a)) {
                    if (!"vnd.android.cursor.item/phone_v2".equals(m29002a) || !StringUtils.m26059a((CharSequence) iCSProfileUserDetails.f23059c)) {
                        return;
                    }
                    iCSProfileUserDetails.f23059c = rowContext.m29002a("data1");
                } else if (!StringUtils.m26059a((CharSequence) iCSProfileUserDetails.f23057a)) {
                } else {
                    String m29002a2 = rowContext.m29002a("display_name");
                    if (!StringUtils.m26045b((CharSequence) m29002a2) || !RegexUtils.m31883r(m29002a2)) {
                        return;
                    }
                    iCSProfileUserDetails.f23057a = m29002a2;
                }
            }
        });
        if (StringUtils.m26045b((CharSequence) iCSProfileUserDetails.f23057a)) {
            setFullNameIfEmpty(iCSProfileUserDetails.f23057a);
        }
        if (StringUtils.m26045b((CharSequence) iCSProfileUserDetails.f23058b) && StringUtils.m26059a((CharSequence) getEmail())) {
            setEmail(iCSProfileUserDetails.f23058b);
        }
        if (m30252b()) {
            m30251c();
            return;
        }
        if (StringUtils.m26059a((CharSequence) this.f23052c) && (m9165a = new C15287a(CallAppApplication.get()).m9165a()) != null) {
            for (Account account : m9165a) {
                String str6 = account.name;
                this.f23052c = str6;
                if (str6.endsWith("@gmail.com")) {
                    break;
                }
            }
        }
        if (!m30252b()) {
            String str7 = Prefs.f26264ao.get();
            if (StringUtils.m26045b((CharSequence) str7) && Prefs.f26242aS.get().booleanValue() && StringUtils.m26045b((CharSequence) str7)) {
                new ContactLoader().addFields(ContactField.fullName, ContactField.emails).addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).setLoadCallback(new Callback<ContactData>() { // from class: com.callapp.contacts.activity.fragments.UserProfileHelper.3
                    @Override // com.callapp.contacts.event.Callback
                    /* renamed from: a */
                    public final /* synthetic */ void mo28871a(ContactData contactData) {
                        ContactData contactData2 = contactData;
                        UserProfileHelper.this.setFullNameIfEmpty(contactData2.getFullName());
                        if (!StringUtils.m26059a((CharSequence) UserProfileHelper.this.f23052c) || contactData2.getEmails().isEmpty()) {
                            return;
                        }
                        JSONEmail next = contactData2.getEmails().iterator().next();
                        UserProfileHelper.this.f23052c = next.getEmail();
                    }

                    @Override // com.callapp.contacts.event.Callback
                    /* renamed from: a */
                    public final /* bridge */ /* synthetic */ void mo28870a(ContactData contactData, Exception exc) {
                    }
                }).load(str7);
            }
        }
        m30251c();
    }

    public String getAddress() {
        return this.f23054e;
    }

    public String getBio() {
        return this.f23053d;
    }

    public String getEmail() {
        return this.f23052c;
    }

    public String getFirstName() {
        return this.f23050a;
    }

    public String getLastName() {
        return this.f23051b;
    }

    public void setAddress(String str) {
        this.f23054e = str;
    }

    public void setEmail(String str) {
        this.f23052c = str;
    }

    public void setFirstName(String str) {
        this.f23050a = str;
    }

    public void setFullNameIfEmpty(String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            String str2 = null;
            int indexOf = str.indexOf(org.apache.commons.lang3.StringUtils.SPACE);
            String str3 = str;
            if (indexOf > 0) {
                str3 = str.substring(0, indexOf);
                str2 = str.substring(indexOf + 1);
            }
            if (StringUtils.m26059a((CharSequence) this.f23050a)) {
                this.f23050a = str3;
            }
            if (!StringUtils.m26059a((CharSequence) this.f23051b)) {
                return;
            }
            this.f23051b = str2;
        }
    }

    public void setLastName(String str) {
        this.f23051b = str;
    }
}
