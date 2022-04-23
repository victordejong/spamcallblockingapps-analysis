package com.callapp.contacts.api.helper.vk;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.loader.social.SearchIsNotAvailableExecption;
import com.callapp.contacts.loader.social.UserNotFoundException;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.model.Friend;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.PackageUtils;
import com.callapp.contacts.util.UpdateUserProfileUtil;
import com.callapp.contacts.util.http.HttpRequest;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.webview.AuthWebViewDialog;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.vk.api.sdk.a.a;
import com.vk.api.sdk.a.b;
import com.vk.api.sdk.a.f;
import com.vk.api.sdk.e.h;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/vk/VKHelper.class */
public class VKHelper extends RemoteAccountHelper {

    /* renamed from: d  reason: collision with root package name */
    private List<f> f14249d = new ArrayList(Arrays.asList(f.FRIENDS, f.OFFLINE, f.PHOTOS, f.VIDEO, f.STATUS, f.WALL, f.MESSAGES, f.EMAIL, f.GROUPS));

    /* renamed from: c  reason: collision with root package name */
    public b f14248c = new b() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.2
        @Override // com.vk.api.sdk.a.b
        public final void a() {
            VKHelper.this.b();
        }

        @Override // com.vk.api.sdk.a.b
        public final void a(a aVar) {
            if (aVar != null && StringUtils.b((CharSequence) aVar.f35940b)) {
                Prefs.fJ.set(aVar.f35940b);
            }
            VKHelper.this.d();
            VKHelper.this.a();
        }
    };

    public VKHelper() {
        com.vk.api.sdk.b.a(new p() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.1
        });
        com.vk.api.sdk.b.a(CallAppApplication.get());
    }

    public static boolean a(Activity activity, String str, Runnable runnable) {
        if (!HttpUtils.a()) {
            FeedbackManager.a(activity);
            return false;
        } else if (get().isNativeAppInstalled()) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse("vkontakte://profile/".concat(String.valueOf(str))));
            if (!Activities.a(intent)) {
                return false;
            }
            Activities.b(activity, intent);
            return true;
        } else {
            Activities.a(activity, m(str), runnable);
            return true;
        }
    }

    public static VKHelper get() {
        return Singletons.get().getVKHelper();
    }

    private String getAuthorizationUrl() {
        return String.format(Locale.US, "https://oauth.vk.com/authorize?client_id=%s&scope=%s&redirect_uri=%s&display=mobile&v=%s&response_type=token&revoke=%d", Integer.valueOf(CallAppApplication.get().getResources().getInteger(2131427335)), TextUtils.join(",", this.f14249d), "https://oauth.vk.com/blank.html", com.vk.api.sdk.b.c(), 1);
    }

    public static String l(String str) {
        return "https://vk.com/".concat(String.valueOf(str));
    }

    private static String m(String str) {
        return "https://vk.com/id".concat(String.valueOf(str));
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final JSONSocialNetworkID a(ContactData contactData) {
        return contactData.getVKId();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final HttpRequest a(HttpRequest httpRequest) {
        String currentUserId = getCurrentUserId();
        HttpRequest httpRequest2 = httpRequest;
        if (currentUserId != null) {
            httpRequest2 = httpRequest;
            if (httpRequest == null) {
                httpRequest2 = UpdateUserProfileUtil.a();
            }
            UpdateUserProfileUtil.d(httpRequest2, currentUserId);
        }
        return httpRequest2;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final <T> T a(RemoteAccountHelper.SocialCallable<T> socialCallable, boolean z) {
        try {
            return socialCallable.a();
        } catch (RuntimeException e) {
            CLog.a(VKHelper.class, e.getMessage());
            return null;
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> a(final String str, boolean z) {
        return (List) a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.7
            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: b */
            public List<PersonData> a() {
                ArrayList arrayList;
                Exception e;
                com.vk.api.sdk.d.b bVar = new com.vk.api.sdk.d.b("friends.getMutual", "5.90");
                bVar.a("target_uid", str);
                bVar.a("count", 500);
                try {
                    JSONObject jSONObject = (JSONObject) com.vk.api.sdk.b.a(bVar);
                    arrayList = null;
                    if (jSONObject != null) {
                        String jSONArray = jSONObject.optJSONArray(Payload.RESPONSE).toString();
                        String a2 = StringUtils.a(jSONArray, 1, jSONArray.length() - 1);
                        arrayList = null;
                        if (StringUtils.b((CharSequence) a2)) {
                            List<VKUser> list = (List) com.vk.api.sdk.b.a(new VKUsersCommand(new int[]{Integer.valueOf(a2).intValue()}));
                            arrayList = null;
                            if (CollectionUtils.b(list)) {
                                arrayList = new ArrayList();
                                try {
                                    for (VKUser vKUser : list) {
                                        arrayList.add(new PersonData(10, String.valueOf(vKUser.getId()), vKUser.getFirstName(), StringUtils.b((CharSequence) vKUser.getScreenName()) ? VKHelper.l(vKUser.getScreenName()) : "", vKUser.getPhoto()));
                                    }
                                    arrayList = arrayList;
                                } catch (VKApiException e2) {
                                    e = e2;
                                    CLog.a(VKHelper.class, e.getMessage());
                                    return arrayList;
                                } catch (IOException e3) {
                                    e = e3;
                                    CLog.a(VKHelper.class, e.getMessage());
                                    return arrayList;
                                } catch (InterruptedException e4) {
                                    e = e4;
                                    CLog.a(VKHelper.class, e.getMessage());
                                    return arrayList;
                                }
                            }
                        }
                    }
                } catch (VKApiException e5) {
                    e = e5;
                    arrayList = null;
                } catch (IOException e6) {
                    e = e6;
                    arrayList = null;
                } catch (InterruptedException e7) {
                    e = e7;
                    arrayList = null;
                }
                return arrayList;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "vk_mutualfriends_" + str;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427411;
            }
        }, (Class<Object>) List.class, true, false, z ? RemoteAccountHelper.SocialCacheMode.onlyFromCache : RemoteAccountHelper.SocialCacheMode.standard);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final Map<String, Friend> a(boolean z, boolean z2) {
        List<VKUser> friends = getFriends();
        if (!CollectionUtils.b(friends)) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(friends.size());
        for (VKUser vKUser : friends) {
            String vKUser2 = vKUser.toString();
            String str = vKUser2;
            if (z) {
                str = vKUser2;
                if (StringUtils.b((CharSequence) vKUser2)) {
                    str = vKUser2.toLowerCase();
                }
            }
            String valueOf = String.valueOf(vKUser.getId());
            hashMap.put(valueOf, new Friend(valueOf, str, null));
        }
        return hashMap;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(Activity activity) {
        if (isLoggedIn()) {
            a();
        } else if (isNativeAppInstalled()) {
            com.vk.api.sdk.b.a(activity, this.f14249d);
        } else {
            PopupManager.get().a(activity, new AuthWebViewDialog(activity, getAuthorizationUrl(), new DialogInterface.OnCancelListener() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.3
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    VKHelper.this.c();
                }
            }, this));
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(Activity activity, String str, Runnable runnable, OutcomeListener outcomeListener) {
        a(outcomeListener, a(activity, str, runnable));
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(ContactData contactData, JSONSocialNetworkID jSONSocialNetworkID) {
        contactData.getDeviceData().setVKId(jSONSocialNetworkID);
        contactData.updateVKId();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean a(String str) {
        return StringUtils.a((CharSequence) str) || StringUtils.c(str, "vk.com/images/camera_");
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void b(String str) {
        Intent intent = new Intent("com.vk.auth-token");
        String substring = str.substring(str.indexOf("#") + 1);
        intent.putExtra("extra-token-data", substring);
        Map<String, String> a2 = h.a(substring);
        if (com.vk.api.sdk.b.a(282, (a2 == null || (!a2.containsKey("error") && !a2.containsKey("cancel"))) ? -1 : 0, intent, this.f14248c)) {
            d();
            a();
            return;
        }
        c();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> c(final String str, boolean z) throws SearchIsNotAvailableExecption {
        return (List) a(new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.5
            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: b */
            public List<PersonData> a() {
                ArrayList arrayList;
                Exception e;
                com.vk.api.sdk.d.b bVar = new com.vk.api.sdk.d.b("users.search", "5.90");
                bVar.a("q", str);
                bVar.a("fields", "uid,first_name,last_name,verified,blacklisted,bdate,city,country,home_town,photo_100,photo_max_orig,lists,has_mobile,contacts,site,education,status,connections,exports,about");
                try {
                    JSONObject jSONObject = (JSONObject) com.vk.api.sdk.b.a(bVar);
                    arrayList = null;
                    if (jSONObject != null) {
                        JSONObject optJSONObject = jSONObject.optJSONObject(Payload.RESPONSE);
                        arrayList = null;
                        if (optJSONObject != null) {
                            JSONArray optJSONArray = optJSONObject.optJSONArray("items");
                            arrayList = null;
                            if (optJSONArray != null) {
                                arrayList = new ArrayList();
                                for (int i = 0; i < optJSONArray.length(); i++) {
                                    try {
                                        JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                                        String optString = optJSONObject2.optString("id");
                                        if (StringUtils.b((CharSequence) optString)) {
                                            String str2 = optJSONObject2.optString("first_name") + org.apache.commons.lang3.StringUtils.SPACE + optJSONObject2.optString("last_name");
                                            if (StringUtils.b((CharSequence) str2)) {
                                                String optString2 = optJSONObject2.optString("screen_name");
                                                arrayList.add(new PersonData(10, optString, str2, StringUtils.b((CharSequence) optString2) ? VKHelper.l(optString2) : "", optJSONObject2.optString("photo_max_orig")));
                                            }
                                        }
                                    } catch (VKApiException e2) {
                                        e = e2;
                                        CLog.a(VKHelper.class, e.getMessage());
                                        return arrayList;
                                    } catch (IOException e3) {
                                        e = e3;
                                        CLog.a(VKHelper.class, e.getMessage());
                                        return arrayList;
                                    } catch (InterruptedException e4) {
                                        e = e4;
                                        CLog.a(VKHelper.class, e.getMessage());
                                        return arrayList;
                                    }
                                }
                                arrayList = arrayList;
                            }
                        }
                    }
                } catch (VKApiException e5) {
                    e = e5;
                    arrayList = null;
                } catch (IOException e6) {
                    e = e6;
                    arrayList = null;
                } catch (InterruptedException e7) {
                    e = e7;
                    arrayList = null;
                }
                return arrayList;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "vk_user_search_" + str;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427413;
            }
        }, List.class);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void e() {
        com.vk.api.sdk.b.a();
        CacheManager.get().a(List.class, "vk_myFriends_sorted");
        CacheManager.get().a(VKUser.class, "vk_user_");
        UserProfileManager.get().a(1);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String f(String str) throws UserNotFoundException, QuotaReachedException {
        VKUser k = k(str);
        if (k == null) {
            return null;
        }
        if (StringUtils.b((CharSequence) k.getFirstName())) {
            if (!StringUtils.b((CharSequence) k.getLastName())) {
                return k.getFirstName();
            }
            return k.getFirstName() + org.apache.commons.lang3.StringUtils.SPACE + k.getLastName();
        } else if (StringUtils.b((CharSequence) k.getLastName())) {
            return k.getLastName();
        } else {
            return null;
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String g(String str) throws UserNotFoundException, QuotaReachedException {
        VKUser k = k(str);
        if (k == null || !StringUtils.b((CharSequence) k.getPhoto())) {
            return null;
        }
        return k.getPhoto();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public int getApiConstantNetworkId() {
        return 10;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getCurrentUserId() {
        String str = null;
        VKUser k = k(null);
        if (k != null) {
            str = String.valueOf(k.getId());
        }
        return str;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public DataSource getDataSource() {
        return DataSource.vk;
    }

    public List<VKUser> getFriends() {
        return (List) a(new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.8
            private static List<VKUser> b() {
                ArrayList arrayList;
                try {
                    List list = (List) com.vk.api.sdk.b.a(new com.vk.a.a.a.a());
                    arrayList = null;
                    if (CollectionUtils.b(list)) {
                        arrayList = new ArrayList(list);
                    }
                } catch (VKApiException | IOException | InterruptedException e) {
                    CLog.a(VKHelper.class, e.getMessage());
                    arrayList = null;
                }
                return arrayList;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public final /* synthetic */ List a() {
                return b();
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "vk_myFriends_sorted";
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427410;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getRefreshInterval() {
                return 2131427409;
            }
        }, List.class);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public long getFriendsCount() {
        List<VKUser> friends = getFriends();
        if (CollectionUtils.b(friends)) {
            return friends.size();
        }
        return 0L;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public List<PersonData> getFriendsListAsPersonData() {
        List<VKUser> friends = getFriends();
        if (!CollectionUtils.b(friends)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(friends.size());
        for (VKUser vKUser : friends) {
            arrayList.add(new PersonData(vKUser));
        }
        return arrayList;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getName() {
        return "VK";
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getUserName() {
        return f(null);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String h(String str) throws UserNotFoundException, QuotaReachedException {
        return g(str);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String i(String str) {
        if (StringUtils.a((CharSequence) str) || !str.contains("vk.com")) {
            return null;
        }
        String a2 = a(str, RegexUtils.a("(?:http:\\/\\/)?(?:www.)?vk.com\\/(?:(?:\\w)*#!\\/)?([\\w\\-\\.]*)?"));
        if (!StringUtils.e(a2.toLowerCase(), "id")) {
            return null;
        }
        String replaceFirst = a2.replaceFirst("id", "");
        if (StringUtils.g(replaceFirst)) {
            return replaceFirst;
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean i() {
        com.vk.api.sdk.d.b bVar = new com.vk.api.sdk.d.b("groups.join", "5.90");
        bVar.a("group_id", "125324054");
        try {
            com.vk.api.sdk.b.a(bVar);
            return true;
        } catch (VKApiException | IOException | InterruptedException e) {
            return true;
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isLoggedIn() {
        return com.vk.api.sdk.b.b();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isNativeAppInstalled() {
        return PackageUtils.a(CallAppApplication.get(), "com.vkontakte.android");
    }

    public final VKUser k(final String str) {
        return (VKUser) a(new RemoteAccountHelper.SocialCallable<VKUser>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.4
            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: b */
            public VKUser a() {
                List list;
                try {
                    list = StringUtils.a((CharSequence) str) ? (List) com.vk.api.sdk.b.a(new VKUsersCommand()) : (List) com.vk.api.sdk.b.a(new VKUsersCommand(new int[]{Integer.valueOf(str).intValue()}));
                } catch (VKApiException | IOException | InterruptedException e) {
                    CLog.a(VKHelper.class, e);
                    list = null;
                }
                return (VKUser) list.get(0);
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "vk_user_" + str;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427412;
            }
        }, VKUser.class);
    }
}
