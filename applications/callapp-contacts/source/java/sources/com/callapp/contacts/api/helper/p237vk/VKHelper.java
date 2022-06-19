package com.callapp.contacts.api.helper.p237vk;

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
import com.p488vk.api.sdk.AbstractC17711p;
import com.p488vk.api.sdk.C17601b;
import com.p488vk.api.sdk.exceptions.VKApiException;
import com.p488vk.api.sdk.p492a.AbstractC17593b;
import com.p488vk.api.sdk.p492a.C17591a;
import com.p488vk.api.sdk.p492a.EnumC17600f;
import com.p488vk.api.sdk.p495d.C17648b;
import com.p488vk.api.sdk.p496e.C17676h;
import com.p488vk.p489a.p490a.p491a.C17586a;
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
/* renamed from: com.callapp.contacts.api.helper.vk.VKHelper */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/vk/VKHelper.class */
public class VKHelper extends RemoteAccountHelper {

    /* renamed from: d */
    private List<EnumC17600f> f24920d = new ArrayList(Arrays.asList(EnumC17600f.FRIENDS, EnumC17600f.OFFLINE, EnumC17600f.PHOTOS, EnumC17600f.VIDEO, EnumC17600f.STATUS, EnumC17600f.WALL, EnumC17600f.MESSAGES, EnumC17600f.EMAIL, EnumC17600f.GROUPS));

    /* renamed from: c */
    public AbstractC17593b f24919c = new AbstractC17593b() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.2
        @Override // com.p488vk.api.sdk.p492a.AbstractC17593b
        /* renamed from: a */
        public final void mo4899a() {
            VKHelper.this.mo26205b();
        }

        @Override // com.p488vk.api.sdk.p492a.AbstractC17593b
        /* renamed from: a */
        public final void mo4898a(C17591a c17591a) {
            if (c17591a != null && StringUtils.m26045b((CharSequence) c17591a.f62315b)) {
                Prefs.f26498fJ.set(c17591a.f62315b);
            }
            VKHelper.this.m29237d();
            VKHelper.this.mo26206a();
        }
    };

    public VKHelper() {
        C17601b.m4886a(new AbstractC17711p() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.1
        });
        C17601b.m4888a(CallAppApplication.get());
    }

    /* renamed from: a */
    public static boolean m29112a(Activity activity, String str, Runnable runnable) {
        if (!HttpUtils.m26985a()) {
            FeedbackManager.m28675a(activity);
            return false;
        } else if (!get().isNativeAppInstalled()) {
            Activities.m27677a(activity, m29093m(str), runnable);
            return true;
        } else {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse("vkontakte://profile/".concat(String.valueOf(str))));
            if (!Activities.m27672a(intent)) {
                return false;
            }
            Activities.m27656b(activity, intent);
            return true;
        }
    }

    public static VKHelper get() {
        return Singletons.get().getVKHelper();
    }

    private String getAuthorizationUrl() {
        return String.format(Locale.US, "https://oauth.vk.com/authorize?client_id=%s&scope=%s&redirect_uri=%s&display=mobile&v=%s&response_type=token&revoke=%d", Integer.valueOf(CallAppApplication.get().getResources().getInteger(2131427335)), TextUtils.join(",", this.f24920d), "https://oauth.vk.com/blank.html", C17601b.m4882c(), 1);
    }

    /* renamed from: l */
    public static String m29094l(String str) {
        return "https://vk.com/".concat(String.valueOf(str));
    }

    /* renamed from: m */
    private static String m29093m(String str) {
        return "https://vk.com/id".concat(String.valueOf(str));
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final JSONSocialNetworkID mo29108a(ContactData contactData) {
        return contactData.getVKId();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final HttpRequest mo29106a(HttpRequest httpRequest) {
        String currentUserId = getCurrentUserId();
        HttpRequest httpRequest2 = httpRequest;
        if (currentUserId != null) {
            httpRequest2 = httpRequest;
            if (httpRequest == null) {
                httpRequest2 = UpdateUserProfileUtil.m27363a();
            }
            UpdateUserProfileUtil.m27351d(httpRequest2, currentUserId);
        }
        return httpRequest2;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final <T> T mo29110a(RemoteAccountHelper.SocialCallable<T> socialCallable, boolean z) {
        try {
            return socialCallable.mo29086a();
        } catch (RuntimeException e) {
            CLog.m27611a(VKHelper.class, e.getMessage());
            return null;
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final List<PersonData> mo29104a(final String str, boolean z) {
        return (List) m29249a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.7
            /* renamed from: b */
            public List<PersonData> mo29086a() {
                ArrayList arrayList;
                ArrayList arrayList2;
                Exception e;
                C17648b c17648b = new C17648b("friends.getMutual", "5.90");
                c17648b.m4851a("target_uid", str);
                c17648b.m4852a("count", 500);
                try {
                    JSONObject jSONObject = (JSONObject) C17601b.m4887a(c17648b);
                    arrayList = null;
                    if (jSONObject != null) {
                        String jSONArray = jSONObject.optJSONArray(Payload.RESPONSE).toString();
                        String m26054a = StringUtils.m26054a(jSONArray, 1, jSONArray.length() - 1);
                        arrayList = null;
                        if (StringUtils.m26045b((CharSequence) m26054a)) {
                            List<VKUser> list = (List) C17601b.m4887a(new VKUsersCommand(new int[]{Integer.valueOf(m26054a).intValue()}));
                            arrayList = null;
                            if (CollectionUtils.m26068b(list)) {
                                arrayList2 = new ArrayList();
                                try {
                                    for (VKUser vKUser : list) {
                                        arrayList2.add(new PersonData(10, String.valueOf(vKUser.getId()), vKUser.getFirstName(), StringUtils.m26045b((CharSequence) vKUser.getScreenName()) ? VKHelper.m29094l(vKUser.getScreenName()) : "", vKUser.getPhoto()));
                                    }
                                    arrayList = arrayList2;
                                } catch (VKApiException e2) {
                                    e = e2;
                                    CLog.m27611a(VKHelper.class, e.getMessage());
                                    arrayList = arrayList2;
                                    return arrayList;
                                } catch (IOException e3) {
                                    e = e3;
                                    CLog.m27611a(VKHelper.class, e.getMessage());
                                    arrayList = arrayList2;
                                    return arrayList;
                                } catch (InterruptedException e4) {
                                    e = e4;
                                    CLog.m27611a(VKHelper.class, e.getMessage());
                                    arrayList = arrayList2;
                                    return arrayList;
                                }
                            }
                        }
                    }
                } catch (VKApiException e5) {
                    e = e5;
                    arrayList2 = null;
                } catch (IOException e6) {
                    e = e6;
                    arrayList2 = null;
                } catch (InterruptedException e7) {
                    e = e7;
                    arrayList2 = null;
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
    /* renamed from: a */
    public final Map<String, Friend> mo29103a(boolean z, boolean z2) {
        List<VKUser> friends = getFriends();
        if (CollectionUtils.m26068b(friends)) {
            HashMap hashMap = new HashMap(friends.size());
            for (VKUser vKUser : friends) {
                String vKUser2 = vKUser.toString();
                String str = vKUser2;
                if (z) {
                    str = vKUser2;
                    if (StringUtils.m26045b((CharSequence) vKUser2)) {
                        str = vKUser2.toLowerCase();
                    }
                }
                String valueOf = String.valueOf(vKUser.getId());
                hashMap.put(valueOf, new Friend(valueOf, str, null));
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29113a(Activity activity) {
        if (isLoggedIn()) {
            mo26206a();
        } else if (isNativeAppInstalled()) {
            C17601b.m4889a(activity, this.f24920d);
        } else {
            PopupManager.get().m28209a(activity, new AuthWebViewDialog(activity, getAuthorizationUrl(), new DialogInterface.OnCancelListener() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.3
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    VKHelper.this.mo26203c();
                }
            }, this));
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29111a(Activity activity, String str, Runnable runnable, OutcomeListener outcomeListener) {
        m29248a(outcomeListener, m29112a(activity, str, runnable));
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29107a(ContactData contactData, JSONSocialNetworkID jSONSocialNetworkID) {
        contactData.getDeviceData().setVKId(jSONSocialNetworkID);
        contactData.updateVKId();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final boolean mo29105a(String str) {
        return StringUtils.m26059a((CharSequence) str) || StringUtils.m26037c(str, "vk.com/images/camera_");
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: b */
    public final void mo26204b(String str) {
        Intent intent = new Intent("com.vk.auth-token");
        String substring = str.substring(str.indexOf("#") + 1);
        intent.putExtra("extra-token-data", substring);
        Map<String, String> m4836a = C17676h.m4836a(substring);
        if (!C17601b.m4890a(282, (m4836a == null || (!m4836a.containsKey("error") && !m4836a.containsKey("cancel"))) ? -1 : 0, intent, this.f24919c)) {
            mo26203c();
            return;
        }
        m29237d();
        mo26206a();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: c */
    public final List<PersonData> mo29102c(final String str, boolean z) throws SearchIsNotAvailableExecption {
        return (List) m29251a(new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.5
            /* renamed from: b */
            public List<PersonData> mo29086a() {
                ArrayList arrayList;
                ArrayList arrayList2;
                Exception e;
                C17648b c17648b = new C17648b("users.search", "5.90");
                c17648b.m4851a("q", str);
                c17648b.m4851a("fields", "uid,first_name,last_name,verified,blacklisted,bdate,city,country,home_town,photo_100,photo_max_orig,lists,has_mobile,contacts,site,education,status,connections,exports,about");
                try {
                    JSONObject jSONObject = (JSONObject) C17601b.m4887a(c17648b);
                    arrayList = null;
                    if (jSONObject != null) {
                        JSONObject optJSONObject = jSONObject.optJSONObject(Payload.RESPONSE);
                        arrayList = null;
                        if (optJSONObject != null) {
                            JSONArray optJSONArray = optJSONObject.optJSONArray("items");
                            arrayList = null;
                            if (optJSONArray != null) {
                                arrayList2 = new ArrayList();
                                for (int i = 0; i < optJSONArray.length(); i++) {
                                    try {
                                        JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                                        String optString = optJSONObject2.optString("id");
                                        if (StringUtils.m26045b((CharSequence) optString)) {
                                            String str2 = optJSONObject2.optString("first_name") + org.apache.commons.lang3.StringUtils.SPACE + optJSONObject2.optString("last_name");
                                            if (StringUtils.m26045b((CharSequence) str2)) {
                                                String optString2 = optJSONObject2.optString("screen_name");
                                                arrayList2.add(new PersonData(10, optString, str2, StringUtils.m26045b((CharSequence) optString2) ? VKHelper.m29094l(optString2) : "", optJSONObject2.optString("photo_max_orig")));
                                            }
                                        }
                                    } catch (VKApiException e2) {
                                        e = e2;
                                        CLog.m27611a(VKHelper.class, e.getMessage());
                                        arrayList = arrayList2;
                                        return arrayList;
                                    } catch (IOException e3) {
                                        e = e3;
                                        CLog.m27611a(VKHelper.class, e.getMessage());
                                        arrayList = arrayList2;
                                        return arrayList;
                                    } catch (InterruptedException e4) {
                                        e = e4;
                                        CLog.m27611a(VKHelper.class, e.getMessage());
                                        arrayList = arrayList2;
                                        return arrayList;
                                    }
                                }
                                arrayList = arrayList2;
                            }
                        }
                    }
                } catch (VKApiException e5) {
                    e = e5;
                    arrayList2 = null;
                } catch (IOException e6) {
                    e = e6;
                    arrayList2 = null;
                } catch (InterruptedException e7) {
                    e = e7;
                    arrayList2 = null;
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
    /* renamed from: e */
    public final void mo29101e() {
        C17601b.m4891a();
        CacheManager.get().m28390a(List.class, "vk_myFriends_sorted");
        CacheManager.get().m28390a(VKUser.class, "vk_user_");
        UserProfileManager.get().m28467a(1);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: f */
    public final String mo29100f(String str) throws UserNotFoundException, QuotaReachedException {
        VKUser m29095k = m29095k(str);
        if (m29095k != null) {
            if (!StringUtils.m26045b((CharSequence) m29095k.getFirstName())) {
                if (!StringUtils.m26045b((CharSequence) m29095k.getLastName())) {
                    return null;
                }
                return m29095k.getLastName();
            } else if (!StringUtils.m26045b((CharSequence) m29095k.getLastName())) {
                return m29095k.getFirstName();
            } else {
                return m29095k.getFirstName() + org.apache.commons.lang3.StringUtils.SPACE + m29095k.getLastName();
            }
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: g */
    public final String mo29099g(String str) throws UserNotFoundException, QuotaReachedException {
        VKUser m29095k = m29095k(str);
        if (m29095k == null || !StringUtils.m26045b((CharSequence) m29095k.getPhoto())) {
            return null;
        }
        return m29095k.getPhoto();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public int getApiConstantNetworkId() {
        return 10;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getCurrentUserId() {
        String str = null;
        VKUser m29095k = m29095k(null);
        if (m29095k != null) {
            str = String.valueOf(m29095k.getId());
        }
        return str;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public DataSource getDataSource() {
        return DataSource.vk;
    }

    public List<VKUser> getFriends() {
        return (List) m29251a(new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.8
            /* renamed from: b */
            private static List<VKUser> m29087b() {
                ArrayList arrayList;
                try {
                    List list = (List) C17601b.m4887a(new C17586a());
                    arrayList = null;
                    if (CollectionUtils.m26068b(list)) {
                        arrayList = new ArrayList(list);
                    }
                } catch (VKApiException | IOException | InterruptedException e) {
                    CLog.m27611a(VKHelper.class, e.getMessage());
                    arrayList = null;
                }
                return arrayList;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            /* renamed from: a */
            public final /* synthetic */ List mo29086a() {
                return m29087b();
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
        if (CollectionUtils.m26068b(friends)) {
            return friends.size();
        }
        return 0L;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public List<PersonData> getFriendsListAsPersonData() {
        List<VKUser> friends = getFriends();
        if (CollectionUtils.m26068b(friends)) {
            ArrayList arrayList = new ArrayList(friends.size());
            for (VKUser vKUser : friends) {
                arrayList.add(new PersonData(vKUser));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getName() {
        return "VK";
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getUserName() {
        return mo29100f(null);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: h */
    public final String mo29098h(String str) throws UserNotFoundException, QuotaReachedException {
        return mo29099g(str);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: i */
    public final String mo29096i(String str) {
        if (StringUtils.m26059a((CharSequence) str) || !str.contains("vk.com")) {
            return null;
        }
        String a = m29243a(str, RegexUtils.m31910a("(?:http:\\/\\/)?(?:www.)?vk.com\\/(?:(?:\\w)*#!\\/)?([\\w\\-\\.]*)?"));
        if (!StringUtils.m26030e(a.toLowerCase(), "id")) {
            return null;
        }
        String replaceFirst = a.replaceFirst("id", "");
        if (!StringUtils.m26026g(replaceFirst)) {
            return null;
        }
        return replaceFirst;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: i */
    public final boolean mo29097i() {
        C17648b c17648b = new C17648b("groups.join", "5.90");
        c17648b.m4851a("group_id", "125324054");
        try {
            C17601b.m4887a(c17648b);
            return true;
        } catch (VKApiException | IOException | InterruptedException e) {
            return true;
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isLoggedIn() {
        return C17601b.m4885b();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isNativeAppInstalled() {
        return PackageUtils.m27437a(CallAppApplication.get(), "com.vkontakte.android");
    }

    /* renamed from: k */
    public final VKUser m29095k(final String str) {
        return (VKUser) m29251a(new RemoteAccountHelper.SocialCallable<VKUser>() { // from class: com.callapp.contacts.api.helper.vk.VKHelper.4
            /* renamed from: b */
            public VKUser mo29086a() {
                List list;
                try {
                    list = StringUtils.m26059a((CharSequence) str) ? (List) C17601b.m4887a(new VKUsersCommand()) : (List) C17601b.m4887a(new VKUsersCommand(new int[]{Integer.valueOf(str).intValue()}));
                } catch (VKApiException | IOException | InterruptedException e) {
                    CLog.m27609a(VKHelper.class, e);
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
