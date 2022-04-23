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
import com.google.api.client.googleapis.extensions.android.a.a;
import com.twitter.sdk.android.core.models.User;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fragments/UserProfileHelper.class */
public class UserProfileHelper {

    /* renamed from: a  reason: collision with root package name */
    private String f12891a;

    /* renamed from: b  reason: collision with root package name */
    private String f12892b;

    /* renamed from: c  reason: collision with root package name */
    private String f12893c;

    /* renamed from: d  reason: collision with root package name */
    private String f12894d;
    private String e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails.class */
    public static final class ICSProfileUserDetails {

        /* renamed from: a  reason: collision with root package name */
        String f12897a;

        /* renamed from: b  reason: collision with root package name */
        String f12898b;

        /* renamed from: c  reason: collision with root package name */
        String f12899c;

        private ICSProfileUserDetails() {
        }
    }

    private boolean b() {
        return StringUtils.b((CharSequence) this.f12893c) && StringUtils.b((CharSequence) this.f12891a) && StringUtils.b((CharSequence) this.f12892b);
    }

    private void c() {
        String email = getEmail();
        String firstName = getFirstName();
        String lastName = getLastName();
        String bio = getBio();
        String address = getAddress();
        Prefs.aq.set(email);
        Prefs.ar.set(firstName);
        Prefs.as.set(lastName);
        Prefs.at.set(bio);
        Prefs.au.set(address);
    }

    public final void a() {
        User loggedInUser;
        JSONFBUserOrPage loggedInUser2;
        Account[] a2;
        String str = Prefs.ar.get();
        if (StringUtils.b((CharSequence) str)) {
            this.f12891a = str;
        }
        String str2 = Prefs.as.get();
        if (StringUtils.b((CharSequence) str2)) {
            this.f12892b = str2;
        }
        String str3 = Prefs.aq.get();
        if (StringUtils.b((CharSequence) str3)) {
            this.f12893c = str3;
        }
        String str4 = Prefs.at.get();
        if (StringUtils.b((CharSequence) str4)) {
            this.f12894d = str4;
        }
        String str5 = Prefs.au.get();
        if (StringUtils.b((CharSequence) str5)) {
            setAddress(str5);
        }
        if (!b()) {
            try {
                if (FacebookHelper.get().isLoggedIn() && (loggedInUser2 = FacebookHelper.get().getLoggedInUser()) != null) {
                    if (StringUtils.a((CharSequence) this.f12891a) && StringUtils.b((CharSequence) loggedInUser2.getFirstName())) {
                        setFirstName(loggedInUser2.getFirstName());
                    }
                    if (StringUtils.a((CharSequence) this.f12892b) && StringUtils.b((CharSequence) loggedInUser2.getLastName())) {
                        setLastName(loggedInUser2.getLastName());
                    }
                    if (StringUtils.a((CharSequence) this.f12893c) && StringUtils.b((CharSequence) loggedInUser2.getEmail())) {
                        setEmail(loggedInUser2.getEmail());
                    }
                }
                if (!b()) {
                    if (GoogleHelper.get().isLoggedIn()) {
                        setFullNameIfEmpty(GoogleHelper.get().getDisplayName());
                        if (StringUtils.a((CharSequence) this.f12893c)) {
                            setEmail(GoogleHelper.get().getUserName());
                        }
                    }
                    if (!b()) {
                        if (TwitterHelper.get().isLoggedIn() && (loggedInUser = TwitterHelper.get().getLoggedInUser()) != null && StringUtils.b((CharSequence) loggedInUser.name)) {
                            setFullNameIfEmpty(loggedInUser.name);
                        }
                        b();
                    }
                }
            } catch (Exception e) {
                CLog.a(getClass(), e, "Error fetching user profile data from social networks");
            }
        }
        if (b()) {
            c();
            return;
        }
        final ICSProfileUserDetails iCSProfileUserDetails = new ICSProfileUserDetails();
        iCSProfileUserDetails.f12897a = (String) new ContentQuery(ContactsContract.Profile.CONTENT_URI).c("display_name").a((RowCallback<RowCallback<String>>) new RowCallback<String>() { // from class: com.callapp.contacts.activity.fragments.UserProfileHelper.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ String onRow(RowContext rowContext) {
                String a3 = rowContext.a("display_name");
                return (!StringUtils.b((CharSequence) a3) || !RegexUtils.r(a3)) ? "" : a3;
            }
        }, (RowCallback<String>) null);
        new ContentQuery(ContactsContract.Profile.CONTENT_URI).a("entities").c("mimetype").c("is_primary").c("data1").c("data1").c("display_name").a(new RowVisitor() { // from class: com.callapp.contacts.activity.fragments.UserProfileHelper.2
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public final void onRow(RowContext rowContext) {
                String a3 = rowContext.a("mimetype");
                if ("vnd.android.cursor.item/email_v2".equals(a3)) {
                    boolean b2 = rowContext.b("is_primary");
                    if (StringUtils.a((CharSequence) ICSProfileUserDetails.this.f12898b) || b2) {
                        ICSProfileUserDetails.this.f12898b = rowContext.a("data1");
                    }
                } else if ("vnd.android.cursor.item/name".equals(a3)) {
                    if (StringUtils.a((CharSequence) ICSProfileUserDetails.this.f12897a)) {
                        String a4 = rowContext.a("display_name");
                        if (StringUtils.b((CharSequence) a4) && RegexUtils.r(a4)) {
                            ICSProfileUserDetails.this.f12897a = a4;
                        }
                    }
                } else if ("vnd.android.cursor.item/phone_v2".equals(a3) && StringUtils.a((CharSequence) ICSProfileUserDetails.this.f12899c)) {
                    ICSProfileUserDetails.this.f12899c = rowContext.a("data1");
                }
            }
        });
        if (StringUtils.b((CharSequence) iCSProfileUserDetails.f12897a)) {
            setFullNameIfEmpty(iCSProfileUserDetails.f12897a);
        }
        if (StringUtils.b((CharSequence) iCSProfileUserDetails.f12898b) && StringUtils.a((CharSequence) getEmail())) {
            setEmail(iCSProfileUserDetails.f12898b);
        }
        if (b()) {
            c();
            return;
        }
        if (StringUtils.a((CharSequence) this.f12893c) && (a2 = new a(CallAppApplication.get()).a()) != null) {
            for (Account account : a2) {
                String str6 = account.name;
                this.f12893c = str6;
                if (str6.endsWith("@gmail.com")) {
                    break;
                }
            }
        }
        if (!b()) {
            String str7 = Prefs.ao.get();
            if (StringUtils.b((CharSequence) str7) && Prefs.aS.get().booleanValue() && StringUtils.b((CharSequence) str7)) {
                new ContactLoader().addFields(ContactField.fullName, ContactField.emails).addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).setLoadCallback(new Callback<ContactData>() { // from class: com.callapp.contacts.activity.fragments.UserProfileHelper.3
                    @Override // com.callapp.contacts.event.Callback
                    public final /* synthetic */ void a(ContactData contactData) {
                        ContactData contactData2 = contactData;
                        UserProfileHelper.this.setFullNameIfEmpty(contactData2.getFullName());
                        if (StringUtils.a((CharSequence) UserProfileHelper.this.f12893c) && !contactData2.getEmails().isEmpty()) {
                            JSONEmail next = contactData2.getEmails().iterator().next();
                            UserProfileHelper.this.f12893c = next.getEmail();
                        }
                    }

                    @Override // com.callapp.contacts.event.Callback
                    public final /* bridge */ /* synthetic */ void a(ContactData contactData, Exception exc) {
                    }
                }).load(str7);
            }
        }
        c();
    }

    public String getAddress() {
        return this.e;
    }

    public String getBio() {
        return this.f12894d;
    }

    public String getEmail() {
        return this.f12893c;
    }

    public String getFirstName() {
        return this.f12891a;
    }

    public String getLastName() {
        return this.f12892b;
    }

    public void setAddress(String str) {
        this.e = str;
    }

    public void setEmail(String str) {
        this.f12893c = str;
    }

    public void setFirstName(String str) {
        this.f12891a = str;
    }

    public void setFullNameIfEmpty(String str) {
        if (StringUtils.b((CharSequence) str)) {
            String str2 = null;
            int indexOf = str.indexOf(org.apache.commons.lang3.StringUtils.SPACE);
            String str3 = str;
            if (indexOf > 0) {
                str3 = str.substring(0, indexOf);
                str2 = str.substring(indexOf + 1);
            }
            if (StringUtils.a((CharSequence) this.f12891a)) {
                this.f12891a = str3;
            }
            if (StringUtils.a((CharSequence) this.f12892b)) {
                this.f12892b = str2;
            }
        }
    }

    public void setLastName(String str) {
        this.f12892b = str;
    }
}
