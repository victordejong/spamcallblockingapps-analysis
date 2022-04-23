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
import com.callapp.contacts.api.helper.pinterest.PinterestHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.api.helper.vk.VKHelper;
import com.callapp.contacts.api.helper.vk.VKUser;
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

    /* renamed from: a  reason: collision with root package name */
    public UserProfileEvents f14944a;

    /* renamed from: c  reason: collision with root package name */
    private final Phone f14946c = PhoneManager.get().a("0123");

    /* renamed from: b  reason: collision with root package name */
    public final Object f14945b = new Object();

    /* renamed from: d  reason: collision with root package name */
    private Long f14947d = null;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/UserProfileManager$UserProfileEvents.class */
    public interface UserProfileEvents {
        void onUserFieldChanged(ContactField contactField);
    }

    private long a(boolean z) {
        Long l;
        if (!z && (l = this.f14947d) != null) {
            return l.longValue();
        }
        Phone userPhone = getUserPhone();
        if (userPhone == null) {
            return 0L;
        }
        try {
            this.f14947d = Long.valueOf(DeviceIdLoader.a(userPhone, 0));
        } catch (DeviceIdLoader.OperationFailedException e) {
            CLog.a(UserProfileManager.class, e);
            this.f14947d = 0L;
        }
        return this.f14947d.longValue();
    }

    public static boolean a(StringPref stringPref, String str) {
        r7 = false;
        boolean z = false;
        if (stringPref != null) {
            if (StringUtils.a((CharSequence) str)) {
                z = false;
            } else {
                String str2 = stringPref.get();
                if (!StringUtils.a((CharSequence) str2)) {
                    if (!b(stringPref, str)) {
                        str = str2 + "#@#" + str;
                    } else {
                        str = str2;
                        stringPref.set(str);
                    }
                }
                z = true;
                stringPref.set(str);
            }
        }
        return z;
    }

    public static int b() {
        return Prefs.ax.length;
    }

    private static boolean b(StringPref stringPref, String str) {
        String str2 = stringPref.get();
        if (StringUtils.a((CharSequence) str2)) {
            return false;
        }
        for (String str3 : str2.split("#@#")) {
            if (StringUtils.b(str3, str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(String str) {
        return StringUtils.b((CharSequence) str) && b(Prefs.aC, str);
    }

    private static void c(StringPref stringPref, String str) {
        String str2 = stringPref.get();
        if (!(StringUtils.a((CharSequence) str2) || StringUtils.a((CharSequence) str))) {
            String[] split = str2.split("#@#");
            if (split.length != 0) {
                String str3 = "";
                for (String str4 : split) {
                    str3 = str3;
                    if (!StringUtils.b((Object) str4, (Object) str)) {
                        str3 = str3 + "#@#" + str4;
                    }
                }
                Prefs.aC.set(str3.replace("#@#", ""));
            }
        }
    }

    public static boolean c(String str) {
        return StringUtils.b((CharSequence) str) && b(Prefs.aD, str);
    }

    public static UserProfileManager get() {
        return Singletons.get().getUserProfileManager();
    }

    private Phone getBestNonVerifiedPhone() {
        String str = Prefs.aR.get();
        if (StringUtils.b((CharSequence) str) && str.startsWith("+")) {
            return PhoneManager.get().a(Prefs.aR.get());
        }
        String str2 = Prefs.ao.get();
        if (StringUtils.b((CharSequence) str2)) {
            return PhoneManager.get().a(str2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        Phone userVerifiedPhone = getUserVerifiedPhone();
        if (userVerifiedPhone != null) {
            Phone bestNonVerifiedPhone = getBestNonVerifiedPhone();
            Phone phone = bestNonVerifiedPhone;
            if (bestNonVerifiedPhone == null) {
                phone = getFallbackPhone();
            }
            ChosenContactPhoto a2 = ChosenContactPhotoManager.a(getUserDeviceId(), phone);
            if (a2 != null && StringUtils.b((CharSequence) a2.getUrl())) {
                long j = 0;
                try {
                    j = DeviceIdLoader.a(phone, 0);
                } catch (DeviceIdLoader.OperationFailedException e) {
                    CLog.a(UserProfileManager.class, e);
                }
                ChosenContactPhotoManager.b(j, phone);
                ChosenContactPhotoManager.a(a(true), userVerifiedPhone, a2.getDataSource(), a2.getUrl());
            }
        }
    }

    public final void a(int i) {
        DataSource userChosenImageDataSource = getUserChosenImageDataSource();
        if (userChosenImageDataSource != null && userChosenImageDataSource.dbCode == i) {
            ChosenContactPhotoManager.b(getUserDeviceId(), getUserPhoneOrFallbackPhone());
        }
    }

    public final void a(ContactField contactField) {
        synchronized (this.f14945b) {
            UserProfileEvents userProfileEvents = this.f14944a;
            if (userProfileEvents != null) {
                userProfileEvents.onUserFieldChanged(contactField);
            }
        }
    }

    public final void a(final ProfilePictureView profilePictureView, final boolean z) {
        new Task() { // from class: com.callapp.contacts.manager.UserProfileManager.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                final String userProfileImageUrl = UserProfileManager.get().getUserProfileImageUrl();
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.manager.UserProfileManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (StringUtils.b((CharSequence) userProfileImageUrl)) {
                            ProfilePictureView profilePictureView2 = profilePictureView;
                            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(userProfileImageUrl);
                            glideRequestBuilder.l = true;
                            glideRequestBuilder.p = z;
                            profilePictureView2.a(glideRequestBuilder.b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), ThemeUtils.getColor(2131100140)));
                            return;
                        }
                        profilePictureView.setDefaultProfilePic();
                    }
                });
            }
        }.execute();
    }

    public final boolean a(DataSource dataSource, String str) {
        if (dataSource == null || !StringUtils.b((CharSequence) str)) {
            return false;
        }
        ChosenContactPhotoManager.a(getUserDeviceId(), getUserPhoneOrFallbackPhone(), dataSource, str);
        a(ContactField.photoUrl);
        return true;
    }

    public final boolean a(Phone phone) {
        return phone != null && StringUtils.a(phone, getUserVerifiedPhone());
    }

    public final boolean a(String str) {
        if (StringUtils.a((CharSequence) str)) {
            return false;
        }
        boolean z = false;
        if (JSONEmail.isValidEmail(str)) {
            z = false;
            if (PrefsUtils.a(Prefs.ax, str)) {
                z = true;
            }
        }
        if (z) {
            c(Prefs.aC, str);
            a(ContactField.emails);
        }
        return z;
    }

    public final boolean b(Phone phone) {
        return this.f14946c.equals(phone);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    public JSONDate getBirthdate() {
        return Prefs.aA.get();
    }

    public Phone getFallbackPhone() {
        return this.f14946c;
    }

    public String getUserAddress() {
        return Prefs.au.get();
    }

    public DataSource getUserChosenImageDataSource() {
        ChosenContactPhoto a2 = ChosenContactPhotoManager.a(getUserDeviceId(), getUserPhoneOrFallbackPhone());
        if (a2 != null) {
            return a2.getDataSource();
        }
        return null;
    }

    public String getUserDefinition() {
        return Prefs.av.get();
    }

    public long getUserDeviceId() {
        return a(false);
    }

    public List<String> getUserEmails() {
        Account[] accounts;
        if (Prefs.ay.get().booleanValue()) {
            Pattern pattern = Patterns.EMAIL_ADDRESS;
            for (Account account : AccountManager.get(CallAppApplication.get()).getAccounts()) {
                if (pattern.matcher(account.name).matches()) {
                    String str = account.name;
                    if (StringUtils.b((CharSequence) new JSONEmail(str, 3).getEmail())) {
                        a(str);
                    }
                }
            }
            Prefs.ay.set(Boolean.FALSE);
        }
        return PrefsUtils.a(Prefs.ax);
    }

    public String getUserFirstName() {
        return Prefs.ar.get();
    }

    public String getUserFullName() {
        String str = Prefs.ar.get();
        String str2 = Prefs.as.get();
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
        return Prefs.as.get();
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
        ChosenContactPhoto a2 = ChosenContactPhotoManager.a(getUserDeviceId(), getUserPhoneOrFallbackPhone());
        if (a2 != null && StringUtils.b((CharSequence) a2.getUrl())) {
            return a2.getUrl();
        }
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
                            str = FacebookHelper.get().k(loggedInUser.getId());
                            FacebookHelper.get();
                        }
                    } else if (apiConstantNetworkId == 7) {
                        String g = InstagramHelper.get().g(remoteAccountHelper.getCurrentUserId());
                        str = null;
                        if (!InstagramHelper.get().a(g)) {
                            str = g;
                        }
                    } else if (apiConstantNetworkId == 4) {
                        str = TwitterHelper.get().l(remoteAccountHelper.getCurrentUserId());
                    } else if (apiConstantNetworkId == 5) {
                        str = GoogleHelper.get().getProfileImageUrl();
                        GoogleHelper.get();
                    } else if (apiConstantNetworkId == 9) {
                        PinterestHelper.get();
                        remoteAccountHelper.getCurrentUserId();
                        PinterestHelper.get();
                        StringUtils.c((String) null, "default");
                        str = null;
                    } else if (apiConstantNetworkId != 10) {
                        str = null;
                    } else {
                        String g2 = remoteAccountHelper.g(remoteAccountHelper.getCurrentUserId());
                        str = null;
                        if (!VKHelper.get().a(g2)) {
                            str = g2;
                        }
                    }
                }
            }
            if (StringUtils.b((CharSequence) str)) {
                ChosenContactPhotoManager.a(getUserDeviceId(), getUserPhoneOrFallbackPhone(), DataSource.getDataSource(remoteAccountHelper.getApiConstantNetworkId()), str);
                return str;
            }
        }
        return null;
    }

    public String getUserProfileName() {
        String str;
        VKUser k;
        String userFullName = getUserFullName();
        if (StringUtils.b((CharSequence) userFullName)) {
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
                        if (((VKHelper) remoteAccountHelper).k(null) != null) {
                            str = k.getFirstName() + org.apache.commons.lang3.StringUtils.SPACE + k.getLastName();
                        }
                    }
                }
            }
        } while (!StringUtils.b((CharSequence) str));
        return str;
    }

    public Phone getUserVerifiedPhone() {
        String str = Prefs.aF.get();
        if (StringUtils.a((CharSequence) str)) {
            return null;
        }
        return PhoneManager.get().a(str);
    }

    public List<String> getUserWebsites() {
        return PrefsUtils.a(Prefs.aw);
    }

    public String getUserYoutubeChannel() {
        return Prefs.aB.get();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }

    public void setBirthdate(JSONDate jSONDate) {
        if (Calendar.getInstance().getTime().after(jSONDate.toCalendar().getTime())) {
            Prefs.aA.set(jSONDate);
            a(ContactField.birthday);
        }
    }

    public void setUserAddress(String str) {
        Prefs.au.set(str);
        a(ContactField.addresses);
    }

    public void setUserDefinition(String str) {
        Prefs.av.set(str);
        a(ContactField.userDefinition);
    }

    public void setUserFullName(String str) {
        if (!StringUtils.a((CharSequence) str)) {
            String str2 = null;
            int indexOf = str.indexOf(org.apache.commons.lang3.StringUtils.SPACE);
            String str3 = str;
            if (indexOf > 0) {
                str3 = str.substring(0, indexOf);
                str2 = str.substring(indexOf + 1);
            }
            Prefs.ar.set(str3);
            Prefs.as.set(str2);
            a(ContactField.fullName);
        }
    }
}
