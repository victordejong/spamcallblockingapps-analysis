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
    /* renamed from: a */
    private boolean m29175a(Activity activity, String str, Runnable runnable, boolean z) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return false;
        }
        if (!HttpUtils.m26985a()) {
            FeedbackManager.m28675a(activity);
            return false;
        }
        if (z ? m29173a(activity, str) : m29171b(activity, str)) {
            return true;
        }
        if (!z) {
            str = m29169k(str);
        }
        if (!StringUtils.m26045b((CharSequence) str)) {
            return false;
        }
        String m29167m = m29167m(str);
        if (!StringUtils.m26045b((CharSequence) m29167m)) {
            return false;
        }
        Activities.m27677a(activity, m29167m, runnable);
        return true;
    }

    /* renamed from: a */
    private static boolean m29174a(Context context, Uri uri) {
        if (isInstagramAppInstalled()) {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            intent.setPackage("com.instagram.android");
            try {
                return Activities.m27685a(context, intent);
            } catch (ActivityNotFoundException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m29173a(Context context, String str) {
        return m29174a(context, Uri.parse(m29167m(str)));
    }

    /* renamed from: b */
    private static boolean m29171b(Context context, String str) {
        return m29174a(context, Uri.parse("http://www.instagram.com/_uid/".concat(String.valueOf(str))));
    }

    public static InstagramHelper get() {
        return Singletons.get().getInstagramHelper();
    }

    public static boolean isInstagramAppInstalled() {
        return Activities.m27665a(Constants.INSTAGRAM_INTENT_COMPONENT_NAME);
    }

    /* renamed from: k */
    private String m29169k(String str) {
        User m29166n = m29166n(str);
        if (m29166n != null) {
            return m29166n.getUsername();
        }
        return null;
    }

    /* renamed from: l */
    private JSONMinimalInstagramData m29168l(final String str) {
        return (JSONMinimalInstagramData) m29249a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<JSONMinimalInstagramData>() { // from class: com.callapp.contacts.api.helper.instagram.InstagramHelper.1
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            /* renamed from: a */
            public final /* synthetic */ JSONMinimalInstagramData mo29086a() {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(AccessToken.USER_ID_KEY, str);
                jsonObject.addProperty("include_reel", Boolean.TRUE);
                String str2 = "https://www.instagram.com/graphql/query/?query_hash=c9100bf9110dd6361671f113dd02e7d6&variables=" + jsonObject.toString();
                ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(JSONMinimalInstagramData.class);
                HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(str2);
                httpRequestParamsBuilder.f28294d = CallAppRemoteConfigManager.get().m28703a("webViewUserAgent");
                httpRequestParamsBuilder.f28293c = classParserHttpResponseHandler;
                HttpUtils.m26971b(httpRequestParamsBuilder.m26994a());
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

    /* renamed from: m */
    private static String m29167m(String str) {
        return "https://www.instagram.com/".concat(String.valueOf(str));
    }

    /* renamed from: n */
    private User m29166n(String str) {
        User user;
        Reel reel;
        JSONMinimalInstagramData m29168l = m29168l(str);
        if (m29168l == null || m29168l.getData() == null || (user = m29168l.getData().getUser()) == null || (reel = user.getReel()) == null) {
            return null;
        }
        return reel.getUser();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final JSONSocialNetworkID mo29108a(ContactData contactData) {
        return contactData.getInstagramId();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final HttpRequest mo29106a(HttpRequest httpRequest) {
        return httpRequest;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final <T> T mo29110a(RemoteAccountHelper.SocialCallable<T> socialCallable, boolean z) {
        return socialCallable.mo29086a();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final List<PersonData> mo29104a(String str, boolean z) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final Map<String, Friend> mo29103a(boolean z, boolean z2) {
        return Collections.emptyMap();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29113a(Activity activity) {
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29111a(Activity activity, String str, Runnable runnable, OutcomeListener outcomeListener) {
        m29248a(outcomeListener, m29172b(activity, str, runnable));
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29107a(ContactData contactData, JSONSocialNetworkID jSONSocialNetworkID) {
        contactData.getDeviceData().setInstagramId(jSONSocialNetworkID);
        contactData.updateInstagramId();
    }

    /* renamed from: a */
    public final boolean m29176a(Activity activity, String str, Runnable runnable) {
        return m29175a(activity, str, runnable, true);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final boolean mo29105a(String str) {
        return StringUtils.m26059a((CharSequence) str) || str.contains(VASAds.ANONYMOUS_USER_KEY) || StringUtils.m26030e(str, "https://igcdn-photos-e-a.akamaihd.net/hphotos");
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: b */
    public final void mo26204b(String str) {
    }

    /* renamed from: b */
    public final boolean m29172b(Activity activity, String str, Runnable runnable) {
        return m29175a(activity, str, runnable, false);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: c */
    public final List<PersonData> mo29102c(String str, boolean z) throws SearchIsNotAvailableExecption {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: e */
    public final void mo29101e() {
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: f */
    public final String mo29100f(String str) {
        final String m29169k = m29169k(str);
        if (StringUtils.m26045b((CharSequence) m29169k)) {
            JSONFullInstagramData jSONFullInstagramData = (JSONFullInstagramData) m29249a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<JSONFullInstagramData>() { // from class: com.callapp.contacts.api.helper.instagram.InstagramHelper.2
                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
                /* renamed from: a */
                public final /* synthetic */ JSONFullInstagramData mo29086a() {
                    ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(JSONFullInstagramData.class);
                    HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder("https://www.instagram.com/" + m29169k + "/?__a=1");
                    httpRequestParamsBuilder.f28294d = CallAppRemoteConfigManager.get().m28703a("webViewUserAgent");
                    httpRequestParamsBuilder.f28293c = classParserHttpResponseHandler;
                    HttpUtils.m26971b(httpRequestParamsBuilder.m26994a());
                    return (JSONFullInstagramData) classParserHttpResponseHandler.getResult();
                }

                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
                public String getCacheKey() {
                    return String.format("instagram_user_%s", m29169k);
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
            if (user == null) {
                return null;
            }
            return user.getFullName();
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: f */
    public final boolean mo29163f() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: g */
    public final String mo29099g(String str) {
        User m29166n = m29166n(str);
        if (m29166n != null) {
            return m29166n.getProfilePicUrl();
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
    /* renamed from: h */
    public final String mo29098h(String str) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: h */
    public final boolean mo29170h() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: i */
    public final String mo29096i(String str) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: i */
    public final boolean mo29097i() {
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
