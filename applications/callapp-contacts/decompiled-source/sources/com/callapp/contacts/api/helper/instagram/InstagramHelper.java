package com.callapp.contacts.api.helper.instagram;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.instagram.fulljsondata.JSONFullInstagramData;
import com.callapp.contacts.api.helper.instagram.minimaljsondata.JSONMinimalInstagramData;
import com.callapp.contacts.api.helper.instagram.minimaljsondata.Reel;
import com.callapp.contacts.api.helper.instagram.minimaljsondata.User;
import com.callapp.contacts.loader.social.SearchIsNotAvailableExecption;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.Friend;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.http.HttpRequest;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.serializer.string.ClassParserHttpResponseHandler;
import com.callapp.framework.util.StringUtils;
import com.facebook.AccessToken;
import com.google.gson.JsonObject;
import com.verizon.ads.VASAds;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instagram/InstagramHelper.class */
public class InstagramHelper extends RemoteAccountHelper {
    private boolean a(Activity activity, String str, Runnable runnable, boolean z) {
        if (StringUtils.a((CharSequence) str)) {
            return false;
        }
        if (HttpUtils.a()) {
            if (z ? a(activity, str) : b(activity, str)) {
                return true;
            }
            if (!z) {
                str = k(str);
            }
            if (!StringUtils.b((CharSequence) str)) {
                return false;
            }
            String m = m(str);
            if (!StringUtils.b((CharSequence) m)) {
                return false;
            }
            Activities.a(activity, m, runnable);
            return true;
        }
        FeedbackManager.a(activity);
        return false;
    }

    private static boolean a(Context context, Uri uri) {
        if (!isInstagramAppInstalled()) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setPackage("com.instagram.android");
        try {
            return Activities.a(context, intent);
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    private static boolean a(Context context, String str) {
        return a(context, Uri.parse(m(str)));
    }

    private static boolean b(Context context, String str) {
        return a(context, Uri.parse("http://www.instagram.com/_uid/".concat(String.valueOf(str))));
    }

    public static InstagramHelper get() {
        return Singletons.get().getInstagramHelper();
    }

    public static boolean isInstagramAppInstalled() {
        return Activities.a(Constants.INSTAGRAM_INTENT_COMPONENT_NAME);
    }

    private String k(String str) {
        User n = n(str);
        if (n != null) {
            return n.getUsername();
        }
        return null;
    }

    private JSONMinimalInstagramData l(final String str) {
        return (JSONMinimalInstagramData) a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<JSONMinimalInstagramData>() { // from class: com.callapp.contacts.api.helper.instagram.InstagramHelper.1
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public final /* synthetic */ JSONMinimalInstagramData a() {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(AccessToken.USER_ID_KEY, str);
                jsonObject.addProperty("include_reel", Boolean.TRUE);
                String str2 = "https://www.instagram.com/graphql/query/?query_hash=c9100bf9110dd6361671f113dd02e7d6&variables=" + jsonObject.toString();
                ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(JSONMinimalInstagramData.class);
                HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(str2);
                httpRequestParamsBuilder.f16229d = CallAppRemoteConfigManager.get().a("webViewUserAgent");
                httpRequestParamsBuilder.f16228c = classParserHttpResponseHandler;
                HttpUtils.b(httpRequestParamsBuilder.a());
                return (JSONMinimalInstagramData) classParserHttpResponseHandler.getResult();
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return String.format("instagram_user_%s", str);
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427368;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getRefreshInterval() {
                return 2131427369;
            }
        }, (Class<Object>) JSONMinimalInstagramData.class, false, false, RemoteAccountHelper.SocialCacheMode.standard);
    }

    private static String m(String str) {
        return "https://www.instagram.com/".concat(String.valueOf(str));
    }

    private User n(String str) {
        User user;
        Reel reel;
        JSONMinimalInstagramData l = l(str);
        if (l == null || l.getData() == null || (user = l.getData().getUser()) == null || (reel = user.getReel()) == null) {
            return null;
        }
        return reel.getUser();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final JSONSocialNetworkID a(ContactData contactData) {
        return contactData.getInstagramId();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final HttpRequest a(HttpRequest httpRequest) {
        return httpRequest;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final <T> T a(RemoteAccountHelper.SocialCallable<T> socialCallable, boolean z) {
        return socialCallable.a();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> a(String str, boolean z) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final Map<String, Friend> a(boolean z, boolean z2) {
        return Collections.emptyMap();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(Activity activity) {
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(Activity activity, String str, Runnable runnable, OutcomeListener outcomeListener) {
        a(outcomeListener, b(activity, str, runnable));
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(ContactData contactData, JSONSocialNetworkID jSONSocialNetworkID) {
        contactData.getDeviceData().setInstagramId(jSONSocialNetworkID);
        contactData.updateInstagramId();
    }

    public final boolean a(Activity activity, String str, Runnable runnable) {
        return a(activity, str, runnable, true);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean a(String str) {
        return StringUtils.a((CharSequence) str) || str.contains(VASAds.ANONYMOUS_USER_KEY) || StringUtils.e(str, "https://igcdn-photos-e-a.akamaihd.net/hphotos");
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void b(String str) {
    }

    public final boolean b(Activity activity, String str, Runnable runnable) {
        return a(activity, str, runnable, false);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> c(String str, boolean z) throws SearchIsNotAvailableExecption {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void e() {
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String f(String str) {
        final String k = k(str);
        if (!StringUtils.b((CharSequence) k)) {
            return null;
        }
        JSONFullInstagramData jSONFullInstagramData = (JSONFullInstagramData) a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<JSONFullInstagramData>() { // from class: com.callapp.contacts.api.helper.instagram.InstagramHelper.2
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public final /* synthetic */ JSONFullInstagramData a() {
                ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(JSONFullInstagramData.class);
                HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder("https://www.instagram.com/" + k + "/?__a=1");
                httpRequestParamsBuilder.f16229d = CallAppRemoteConfigManager.get().a("webViewUserAgent");
                httpRequestParamsBuilder.f16228c = classParserHttpResponseHandler;
                HttpUtils.b(httpRequestParamsBuilder.a());
                return (JSONFullInstagramData) classParserHttpResponseHandler.getResult();
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return String.format("instagram_user_%s", k);
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427368;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getRefreshInterval() {
                return 2131427369;
            }
        }, (Class<Object>) JSONFullInstagramData.class, false, false, RemoteAccountHelper.SocialCacheMode.standard);
        com.callapp.contacts.api.helper.instagram.fulljsondata.User user = (jSONFullInstagramData == null || jSONFullInstagramData.getGraphql() == null) ? null : jSONFullInstagramData.getGraphql().getUser();
        if (user != null) {
            return user.getFullName();
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean f() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String g(String str) {
        User n = n(str);
        if (n != null) {
            return n.getProfilePicUrl();
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public int getApiConstantNetworkId() {
        return 7;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getCurrentUserId() {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public DataSource getDataSource() {
        return DataSource.instagram;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public long getFriendsCount() {
        return 0L;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public List<PersonData> getFriendsListAsPersonData() {
        return Collections.emptyList();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getName() {
        return "Instagram";
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getUserName() {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String h(String str) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean h() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String i(String str) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean i() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isLoggedIn() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isNativeAppInstalled() {
        return isInstagramAppInstalled();
    }
}
