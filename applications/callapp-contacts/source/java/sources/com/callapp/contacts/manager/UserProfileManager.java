package com.callapp.contacts.manager;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.util.Patterns;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONFBUserOrPage;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.api.helper.instagram.InstagramHelper;
import com.callapp.contacts.api.helper.p237vk.VKHelper;
import com.callapp.contacts.api.helper.p237vk.VKUser;
import com.callapp.contacts.api.helper.pinterest.PinterestHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.loader.ChosenContactPhotoManager;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.PrefsUtils;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.objectbox.ChosenContactPhoto;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.LocaleUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/UserProfileManager.class */
public class UserProfileManager implements ManagedLifecycle {

    /* renamed from: a */
    public UserProfileEvents f25851a;

    /* renamed from: c */
    private final Phone f25853c = PhoneManager.get().m28239a("0123");

    /* renamed from: b */
    public final Object f25852b = new Object();

    /* renamed from: d */
    private Long f25854d = null;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/UserProfileManager$UserProfileEvents.class */
    public interface UserProfileEvents {
        void onUserFieldChanged(ContactField contactField);
    }

    /* renamed from: a */
    private long m28460a(boolean z) {
        Long l;
        if (z || (l = this.f25854d) == null) {
            Phone userPhone = getUserPhone();
            if (userPhone == null) {
                return 0L;
            }
            try {
                this.f25854d = Long.valueOf(DeviceIdLoader.m28854a(userPhone, 0));
            } catch (DeviceIdLoader.OperationFailedException e) {
                CLog.m27609a(UserProfileManager.class, e);
                this.f25854d = 0L;
            }
            return this.f25854d.longValue();
        }
        return l.longValue();
    }

    /* renamed from: a */
    public static boolean m28466a(StringPref stringPref, String str) {
        boolean z = false;
        if (stringPref != null) {
            if (StringUtils.m26059a((CharSequence) str)) {
                z = false;
            } else {
                String str2 = stringPref.get();
                if (!StringUtils.m26059a((CharSequence) str2)) {
                    if (!m28458b(stringPref, str)) {
                        str = str2 + "#@#" + str;
                    } else {
                        str = str2;
                        z = false;
                        stringPref.set(str);
                    }
                }
                z = true;
                stringPref.set(str);
            }
        }
        return z;
    }

    /* renamed from: b */
    public static int m28459b() {
        return Prefs.f26273ax.length;
    }

    /* renamed from: b */
    private static boolean m28458b(StringPref stringPref, String str) {
        String str2 = stringPref.get();
        if (StringUtils.m26059a((CharSequence) str2)) {
            return false;
        }
        for (String str3 : str2.split("#@#")) {
            if (StringUtils.m26042b(str3, str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m28456b(String str) {
        return StringUtils.m26045b((CharSequence) str) && m28458b(Prefs.f26226aC, str);
    }

    /* renamed from: c */
    private static void m28455c(StringPref stringPref, String str) {
        String str2 = stringPref.get();
        if (StringUtils.m26059a((CharSequence) str2) || StringUtils.m26059a((CharSequence) str)) {
            return;
        }
        String[] split = str2.split("#@#");
        if (split.length == 0) {
            return;
        }
        int length = split.length;
        int i = 0;
        String str3 = "";
        while (true) {
            String str4 = str3;
            if (i >= length) {
                Prefs.f26226aC.set(str4.replace("#@#", ""));
                return;
            }
            String str5 = split[i];
            String str6 = str4;
            if (!StringUtils.m26044b((Object) str5, (Object) str)) {
                str6 = str4 + "#@#" + str5;
            }
            i++;
            str3 = str6;
        }
    }

    /* renamed from: c */
    public static boolean m28454c(String str) {
        return StringUtils.m26045b((CharSequence) str) && m28458b(Prefs.f26227aD, str);
    }

    public static UserProfileManager get() {
        return Singletons.get().getUserProfileManager();
    }

    private Phone getBestNonVerifiedPhone() {
        String str = Prefs.f26241aR.get();
        if (!StringUtils.m26045b((CharSequence) str) || !str.startsWith("+")) {
            String str2 = Prefs.f26264ao.get();
            if (!StringUtils.m26045b((CharSequence) str2)) {
                return null;
            }
            return PhoneManager.get().m28239a(str2);
        }
        return PhoneManager.get().m28239a(Prefs.f26241aR.get());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* renamed from: a */
    public final void m28468a() {
        Phone userVerifiedPhone = getUserVerifiedPhone();
        if (userVerifiedPhone != null) {
            Phone bestNonVerifiedPhone = getBestNonVerifiedPhone();
            Phone phone = bestNonVerifiedPhone;
            if (bestNonVerifiedPhone == null) {
                phone = getFallbackPhone();
            }
            ChosenContactPhoto m28956a = ChosenContactPhotoManager.m28956a(getUserDeviceId(), phone);
            if (m28956a == null || !StringUtils.m26045b((CharSequence) m28956a.getUrl())) {
                return;
            }
            ?? r11 = false;
            try {
                r11 = DeviceIdLoader.m28854a(phone, 0);
            } catch (DeviceIdLoader.OperationFailedException e) {
                CLog.m27609a(UserProfileManager.class, e);
            }
            ChosenContactPhotoManager.m28954b(r11 == true ? 1L : 0L, phone);
            ChosenContactPhotoManager.m28955a(m28460a(true), userVerifiedPhone, m28956a.getDataSource(), m28956a.getUrl());
        }
    }

    /* renamed from: a */
    public final void m28467a(int i) {
        DataSource userChosenImageDataSource = getUserChosenImageDataSource();
        if (userChosenImageDataSource == null || userChosenImageDataSource.dbCode != i) {
            return;
        }
        ChosenContactPhotoManager.m28954b(getUserDeviceId(), getUserPhoneOrFallbackPhone());
    }

    /* renamed from: a */
    public final void m28465a(ContactField contactField) {
        synchronized (this.f25852b) {
            UserProfileEvents userProfileEvents = this.f25851a;
            if (userProfileEvents != null) {
                userProfileEvents.onUserFieldChanged(contactField);
            }
        }
    }

    /* renamed from: a */
    public final void m28463a(final ProfilePictureView profilePictureView, final boolean z) {
        new Task() { // from class: com.callapp.contacts.manager.UserProfileManager.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                final String userProfileImageUrl = UserProfileManager.get().getUserProfileImageUrl();
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.manager.UserProfileManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!StringUtils.m26045b((CharSequence) userProfileImageUrl)) {
                            profilePictureView.setDefaultProfilePic();
                            return;
                        }
                        ProfilePictureView profilePictureView2 = profilePictureView;
                        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(userProfileImageUrl);
                        glideRequestBuilder.f28246l = true;
                        glideRequestBuilder.f28250p = z;
                        profilePictureView2.m26684a(glideRequestBuilder.m27018b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), ThemeUtils.getColor(2131100140)));
                    }
                });
            }
        }.execute();
    }

    /* renamed from: a */
    public final boolean m28464a(DataSource dataSource, String str) {
        if (dataSource != null && StringUtils.m26045b((CharSequence) str)) {
            ChosenContactPhotoManager.m28955a(getUserDeviceId(), getUserPhoneOrFallbackPhone(), dataSource, str);
            m28465a(ContactField.photoUrl);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m28462a(Phone phone) {
        return phone != null && StringUtils.m26057a(phone, getUserVerifiedPhone());
    }

    /* renamed from: a */
    public final boolean m28461a(String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return false;
        }
        boolean z = false;
        if (JSONEmail.isValidEmail(str)) {
            z = false;
            if (PrefsUtils.m28174a(Prefs.f26273ax, str)) {
                z = true;
            }
        }
        if (z) {
            m28455c(Prefs.f26226aC, str);
            m28465a(ContactField.emails);
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m28457b(Phone phone) {
        return this.f25853c.equals(phone);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    public JSONDate getBirthdate() {
        return Prefs.f26224aA.get();
    }

    public Phone getFallbackPhone() {
        return this.f25853c;
    }

    public String getUserAddress() {
        return Prefs.f26270au.get();
    }

    public DataSource getUserChosenImageDataSource() {
        ChosenContactPhoto m28956a = ChosenContactPhotoManager.m28956a(getUserDeviceId(), getUserPhoneOrFallbackPhone());
        if (m28956a != null) {
            return m28956a.getDataSource();
        }
        return null;
    }

    public String getUserDefinition() {
        return Prefs.f26271av.get();
    }

    public long getUserDeviceId() {
        return m28460a(false);
    }

    public List<String> getUserEmails() {
        Account[] accounts;
        if (Prefs.f26274ay.get().booleanValue()) {
            Pattern pattern = Patterns.EMAIL_ADDRESS;
            for (Account account : AccountManager.get(CallAppApplication.get()).getAccounts()) {
                if (pattern.matcher(account.name).matches()) {
                    String str = account.name;
                    if (StringUtils.m26045b((CharSequence) new JSONEmail(str, 3).getEmail())) {
                        m28461a(str);
                    }
                }
            }
            Prefs.f26274ay.set(Boolean.FALSE);
        }
        return PrefsUtils.m28175a(Prefs.f26273ax);
    }

    public String getUserFirstName() {
        return Prefs.f26267ar.get();
    }

    public String getUserFullName() {
        String str = Prefs.f26267ar.get();
        String str2 = Prefs.f26268as.get();
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        String str4 = str2;
        if (str2 == null) {
            str4 = "";
        }
        return (str3 + org.apache.commons.lang3.StringUtils.SPACE + str4).trim();
    }

    public String getUserLastName() {
        return Prefs.f26268as.get();
    }

    public Phone getUserPhone() {
        Phone userVerifiedPhone = getUserVerifiedPhone();
        return userVerifiedPhone != null ? userVerifiedPhone : getBestNonVerifiedPhone();
    }

    public Phone getUserPhoneOrFallbackPhone() {
        Phone userPhone = getUserPhone();
        Phone phone = userPhone;
        if (userPhone == null) {
            phone = getFallbackPhone();
        }
        return phone;
    }

    public String getUserProfileImageUrl() {
        String str;
        ChosenContactPhoto m28956a = ChosenContactPhotoManager.m28956a(getUserDeviceId(), getUserPhoneOrFallbackPhone());
        if (m28956a == null || !StringUtils.m26045b((CharSequence) m28956a.getUrl())) {
            FacebookHelper facebookHelper = FacebookHelper.get();
            VKHelper vKHelper = VKHelper.get();
            GoogleHelper googleHelper = GoogleHelper.get();
            for (int i = 0; i < 3; i++) {
                RemoteAccountHelper remoteAccountHelper = new RemoteAccountHelper[]{facebookHelper, vKHelper, googleHelper}[i];
                if (remoteAccountHelper == null) {
                    str = null;
                } else {
                    str = null;
                    if (remoteAccountHelper.isLoggedIn()) {
                        int apiConstantNetworkId = remoteAccountHelper.getApiConstantNetworkId();
                        if (apiConstantNetworkId == 1) {
                            JSONFBUserOrPage loggedInUser = FacebookHelper.get().getLoggedInUser();
                            str = null;
                            if (loggedInUser != null) {
                                str = FacebookHelper.get().m29205k(loggedInUser.getId());
                                FacebookHelper.get();
                            }
                        } else if (apiConstantNetworkId == 7) {
                            String mo29099g = InstagramHelper.get().mo29099g(remoteAccountHelper.getCurrentUserId());
                            str = null;
                            if (!InstagramHelper.get().mo29105a(mo29099g)) {
                                str = mo29099g;
                            }
                        } else if (apiConstantNetworkId == 4) {
                            str = TwitterHelper.get().m29131l(remoteAccountHelper.getCurrentUserId());
                        } else if (apiConstantNetworkId == 5) {
                            str = GoogleHelper.get().getProfileImageUrl();
                            GoogleHelper.get();
                        } else if (apiConstantNetworkId == 9) {
                            PinterestHelper.get();
                            remoteAccountHelper.getCurrentUserId();
                            PinterestHelper.get();
                            StringUtils.m26037c((String) null, "default");
                            str = null;
                        } else if (apiConstantNetworkId != 10) {
                            str = null;
                        } else {
                            String mo29099g2 = remoteAccountHelper.mo29099g(remoteAccountHelper.getCurrentUserId());
                            str = null;
                            if (!VKHelper.get().mo29105a(mo29099g2)) {
                                str = mo29099g2;
                            }
                        }
                    }
                }
                if (StringUtils.m26045b((CharSequence) str)) {
                    ChosenContactPhotoManager.m28955a(getUserDeviceId(), getUserPhoneOrFallbackPhone(), DataSource.getDataSource(remoteAccountHelper.getApiConstantNetworkId()), str);
                    return str;
                }
            }
            return null;
        }
        return m28956a.getUrl();
    }

    public String getUserProfileName() {
        String str;
        VKUser m29095k;
        String userFullName = getUserFullName();
        if (StringUtils.m26045b((CharSequence) userFullName)) {
            return userFullName;
        }
        ArrayList arrayList = new ArrayList();
        if (LocaleUtils.isRussianUser()) {
            arrayList.add(VKHelper.get());
        }
        arrayList.add(FacebookHelper.get());
        arrayList.add(GoogleHelper.get());
        Iterator it2 = arrayList.iterator();
        do {
            str = null;
            if (!it2.hasNext()) {
                break;
            }
            RemoteAccountHelper remoteAccountHelper = (RemoteAccountHelper) it2.next();
            if (remoteAccountHelper == null) {
                str = null;
            } else {
                str = null;
                if (remoteAccountHelper.isLoggedIn()) {
                    int apiConstantNetworkId = remoteAccountHelper.getApiConstantNetworkId();
                    if (apiConstantNetworkId == 1) {
                        JSONFBUserOrPage loggedInUser = FacebookHelper.get().getLoggedInUser();
                        str = null;
                        if (loggedInUser != null) {
                            str = loggedInUser.getName();
                        }
                    } else if (apiConstantNetworkId == 5) {
                        str = ((GoogleHelper) remoteAccountHelper).getDisplayName();
                    } else if (apiConstantNetworkId != 10) {
                        str = null;
                    } else {
                        str = null;
                        if (((VKHelper) remoteAccountHelper).m29095k(null) != null) {
                            str = m29095k.getFirstName() + org.apache.commons.lang3.StringUtils.SPACE + m29095k.getLastName();
                        }
                    }
                }
            }
        } while (!StringUtils.m26045b((CharSequence) str));
        return str;
    }

    public Phone getUserVerifiedPhone() {
        String str = Prefs.f26229aF.get();
        if (StringUtils.m26059a((CharSequence) str)) {
            return null;
        }
        return PhoneManager.get().m28239a(str);
    }

    public List<String> getUserWebsites() {
        return PrefsUtils.m28175a(Prefs.f26272aw);
    }

    public String getUserYoutubeChannel() {
        return Prefs.f26225aB.get();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }

    public void setBirthdate(JSONDate jSONDate) {
        if (Calendar.getInstance().getTime().after(jSONDate.toCalendar().getTime())) {
            Prefs.f26224aA.set(jSONDate);
            m28465a(ContactField.birthday);
        }
    }

    public void setUserAddress(String str) {
        Prefs.f26270au.set(str);
        m28465a(ContactField.addresses);
    }

    public void setUserDefinition(String str) {
        Prefs.f26271av.set(str);
        m28465a(ContactField.userDefinition);
    }

    public void setUserFullName(String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return;
        }
        String str2 = null;
        int indexOf = str.indexOf(org.apache.commons.lang3.StringUtils.SPACE);
        String str3 = str;
        if (indexOf > 0) {
            str3 = str.substring(0, indexOf);
            str2 = str.substring(indexOf + 1);
        }
        Prefs.f26267ar.set(str3);
        Prefs.f26268as.set(str2);
        m28465a(ContactField.fullName);
    }
}
