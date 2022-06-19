package com.callapp.contacts.api.helper.facebook;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Pair;
import com.appsflyer.internal.referrer.Payload;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.LazyHeaders;
import com.callapp.common.model.json.JSONFBEntity;
import com.callapp.common.model.json.JSONFBHour;
import com.callapp.common.model.json.JSONFBUserOrPage;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.Lists;
import com.callapp.common.util.RegexUtils;
import com.callapp.common.util.UrlUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.external.ExternalSourcesUtils;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.loader.social.UserNotFoundException;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.Friend;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.UsageCounter;
import com.callapp.contacts.model.UsageCounterDataManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.UpdateUserProfileUtil;
import com.callapp.contacts.util.http.HttpRequest;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.serializer.string.ClassParserHttpResponseHandler;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.contacts.util.serializer.string.Serializer;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.facebook.AbstractC10179e;
import com.facebook.AbstractC10180f;
import com.facebook.AccessToken;
import com.facebook.C10181g;
import com.facebook.EnumC10352k;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.Profile;
import com.facebook.internal.C10263c;
import com.facebook.login.C10388g;
import com.facebook.login.C10394h;
import com.facebook.login.LoginClient;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import io.bidmachine.protobuf.EventTypeExtended;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.regex.Matcher;
import kotlin.jvm.internal.C18524p;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/facebook/FacebookHelper.class */
public class FacebookHelper extends RemoteAccountHelper implements AbstractC10180f<C10394h> {

    /* renamed from: d */
    private static final List<Integer> f24806d = Lists.m31916a(4, 9, 17, 18, 341, Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_COLLAPSE_VALUE));

    /* renamed from: e */
    private static final List<Integer> f24807e = Lists.m31916a(21, 100);

    /* renamed from: g */
    private static final ArrayList<String> f24808g = Lists.m31916a("public_profile", "user_posts", "user_friends", "user_link", "user_birthday", "user_likes", "user_photos", "user_videos", "email");

    /* renamed from: c */
    public AbstractC10179e f24809c;

    /* renamed from: f */
    private final String f24810f = "id,name,about,awards,category,company_overview,connected_instagram_account,cover,current_location,description,display_subtext,emails,general_info,hours,instagram_business_account,link,location,overall_star_rating,phone,price_range,single_line_address,website,whatsapp_number";

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl.class */
    public class ProfileImageUrl {

        /* renamed from: a */
        public String f24841a;

        /* renamed from: b */
        public String f24842b;

        private ProfileImageUrl() {
            FacebookHelper.this = r4;
        }
    }

    public FacebookHelper() {
        if (!CallAppApplication.get().isUnitTestMode()) {
            C10181g.m23302a(new String[0]);
            if (Prefs.f26657n.get().booleanValue()) {
                C10181g.m23295d();
            }
        }
        this.f24809c = new C10263c();
    }

    /* renamed from: a */
    static /* synthetic */ JSONFBUserOrPage m29223a(FacebookHelper facebookHelper, String str) {
        JSONFBUserOrPage jSONFBUserOrPage;
        if (StringUtils.m26045b((CharSequence) str)) {
            JSONFBUserOrPage jSONFBUserOrPage2 = (JSONFBUserOrPage) Parser.m26915a(str, JSONFBUserOrPage.class);
            facebookHelper.m29227a(jSONFBUserOrPage2);
            jSONFBUserOrPage = jSONFBUserOrPage2;
        } else {
            jSONFBUserOrPage = null;
        }
        return jSONFBUserOrPage;
    }

    /* renamed from: a */
    static /* synthetic */ List m29222a(FacebookHelper facebookHelper, JSONObject jSONObject) {
        List list;
        if (jSONObject != null) {
            String optString = jSONObject.optString("data");
            if (StringUtils.m26045b((CharSequence) optString)) {
                List list2 = (List) Parser.m26916a(optString, Serializer.getJSONObjectMapper().getTypeFactory().constructCollectionType(ArrayList.class, JSONFBUserOrPage.class));
                list = list2;
                if (CollectionUtils.m26068b(list2)) {
                    Iterator it2 = list2.iterator();
                    while (true) {
                        list = list2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        facebookHelper.m29227a((JSONFBUserOrPage) it2.next());
                    }
                }
                return list;
            }
        }
        list = null;
        return list;
    }

    /* renamed from: a */
    private void m29227a(JSONFBUserOrPage jSONFBUserOrPage) {
        JsonNode rawHours;
        if (jSONFBUserOrPage == null || (rawHours = jSONFBUserOrPage.getRawHours()) == null) {
            return;
        }
        List<JSONFBHour> list = (List) Parser.m26916a(rawHours.toString(), Serializer.getJSONObjectMapper().getTypeFactory().constructCollectionType(ArrayList.class, JSONFBHour.class));
        ArrayList arrayList = list;
        if (list == null) {
            Map map = (Map) Parser.m26920a(rawHours, new TypeReference<HashMap<String, String>>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.14
            });
            arrayList = list;
            if (map != null) {
                ArrayList arrayList2 = new ArrayList();
                Iterator it2 = map.entrySet().iterator();
                while (true) {
                    arrayList = arrayList2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it2.next();
                    JSONFBHour jSONFBHour = new JSONFBHour();
                    jSONFBHour.setKey((String) entry.getKey());
                    jSONFBHour.setValue((String) entry.getValue());
                    arrayList2.add(jSONFBHour);
                }
            }
        }
        jSONFBUserOrPage.setJsonfbHoursList(arrayList);
    }

    /* renamed from: a */
    private static boolean m29228a(Context context, String str, Runnable runnable, String str2) {
        boolean z;
        if (HttpUtils.m26985a()) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2 + str));
            if (Activities.m27672a(intent)) {
                intent.addFlags(Activities.getIntentFlagForNewDocument());
                Activities.m27685a(context, intent);
            } else {
                Activities.m27677a(context, "https://facebook.com/".concat(String.valueOf(str)), runnable);
            }
            z = true;
        } else {
            FeedbackManager.m28675a(context);
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    static /* synthetic */ Pair m29215b(FacebookHelper facebookHelper, String str) {
        boolean z;
        String str2;
        Date date;
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,description,updated_time,created_time");
        bundle.putInt("limit", 10);
        JSONObject jSONObject = GraphRequest.m23796a(new GraphRequest(AccessToken.getCurrentAccessToken(), str + "/videos/uploaded", bundle, EnumC10352k.GET, null, "v4.0")).f33959a;
        if (jSONObject != null) {
            JSONArray optJSONArray = jSONObject.optJSONArray("data");
            if (optJSONArray != null) {
                int i = 0;
                while (true) {
                    if (i >= optJSONArray.length()) {
                        break;
                    }
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        str2 = optJSONObject.optString("description");
                        if (StringUtils.m26045b((CharSequence) str2)) {
                            String optString = optJSONObject.optString("created_time");
                            if (StringUtils.m26045b((CharSequence) optString)) {
                                date = m29212b((Date) null, optString);
                                if (date != null) {
                                    z = true;
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                    i++;
                }
            }
            date = null;
            str2 = null;
            z = true;
        } else {
            date = null;
            str2 = null;
            z = false;
        }
        Date date2 = date;
        String str3 = str2;
        if (!z) {
            bundle.clear();
            bundle.putString("fields", "name,created_time");
            bundle.putInt("limit", 10);
            JSONObject jSONObject2 = GraphRequest.m23796a(new GraphRequest(AccessToken.getCurrentAccessToken(), str + "/photos/uploaded", bundle, EnumC10352k.GET, null, "v4.0")).f33959a;
            date2 = date;
            str3 = str2;
            if (jSONObject2 != null) {
                JSONArray optJSONArray2 = jSONObject2.optJSONArray("data");
                date2 = date;
                str3 = str2;
                if (optJSONArray2 != null) {
                    int i2 = 0;
                    while (true) {
                        date2 = date;
                        str3 = str2;
                        if (i2 >= optJSONArray2.length()) {
                            break;
                        }
                        JSONObject optJSONObject2 = optJSONArray2.optJSONObject(i2);
                        if (optJSONObject2 != null) {
                            String optString2 = optJSONObject2.optString("name");
                            if (StringUtils.m26045b((CharSequence) optString2)) {
                                String optString3 = optJSONObject2.optString("created_time");
                                if (StringUtils.m26045b((CharSequence) optString3)) {
                                    Date m29212b = m29212b(date, optString3);
                                    date2 = date;
                                    str3 = str2;
                                    if (m29212b != null) {
                                        date2 = m29212b;
                                        str3 = optString2;
                                    }
                                }
                            } else {
                                continue;
                            }
                        }
                        i2++;
                    }
                }
            }
        }
        return Pair.create(str3, date2);
    }

    /* renamed from: b */
    public static Date m29212b(Date date, String str) {
        try {
            Date m26034d = StringUtils.m26034d(str);
            if (m26034d == null) {
                return null;
            }
            if (date == null) {
                return m26034d;
            }
            if (!date.before(m26034d)) {
                return null;
            }
            return m26034d;
        } catch (ParseException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m29219b(Context context, String str, Runnable runnable) {
        return m29228a(context, str, runnable, "fb://page/");
    }

    public static FacebookHelper get() {
        return Singletons.get().getFacebookHelper();
    }

    private String getAuthorizationHeaderValue() {
        StringBuilder sb = new StringBuilder("Bearer ");
        sb.append(isLoggedIn() ? AccessToken.getCurrentAccessToken().getToken() : CallAppRemoteConfigManager.get().m28703a("facebookAccessToken"));
        return sb.toString();
    }

    /* renamed from: n */
    private static void m29201n() {
        CacheManager.get().m28390a(List.class, "fb_myFriends_sorted");
        CacheManager.get().m28390a(JSONFBUserOrPage.class, "fb_user_me_true");
        UserProfileManager.get().m28467a(1);
    }

    /* renamed from: n */
    public static boolean m29200n(String str) {
        return CollectionUtils.m26073a(AccessToken.getCurrentAccessToken().getPermissions(), str);
    }

    /* renamed from: q */
    private ProfileImageUrl m29197q(final String str) {
        return (ProfileImageUrl) m29250a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<ProfileImageUrl>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.7
            /* JADX WARN: Removed duplicated region for block: B:25:0x0143  */
            /* JADX WARN: Removed duplicated region for block: B:28:0x0150  */
            /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final /* synthetic */ com.callapp.contacts.api.helper.facebook.FacebookHelper.ProfileImageUrl mo29086a() {
                /*
                    Method dump skipped, instructions count: 367
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.facebook.FacebookHelper.C71887.mo29086a():java.lang.Object");
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "fb_big_image_url_" + str;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427357;
            }
        }, (Class<Object>) ProfileImageUrl.class, false, false);
    }

    /* renamed from: r */
    public static String m29196r(String str) {
        return "https://graph.facebook.com/" + str + "/picture?type=normal";
    }

    /* renamed from: s */
    public static String m29195s(String str) {
        return "https://graph.facebook.com/" + str + "/picture?width=600";
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final JSONSocialNetworkID mo29108a(ContactData contactData) {
        return contactData.getFacebookId();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final HttpRequest mo29106a(HttpRequest httpRequest) {
        JSONFBUserOrPage loggedInUser = getLoggedInUser();
        HttpRequest httpRequest2 = httpRequest;
        if (loggedInUser != null) {
            httpRequest2 = httpRequest;
            if (httpRequest == null) {
                httpRequest2 = UpdateUserProfileUtil.m27363a();
            }
            UpdateUserProfileUtil.m27360a(httpRequest2, loggedInUser.getId());
        }
        return httpRequest2;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final <T> T mo29110a(RemoteAccountHelper.SocialCallable<T> socialCallable, boolean z) {
        try {
            return socialCallable.mo29086a();
        } catch (FacebookException e) {
            CLog.m27609a(FacebookHelper.class, e);
            String message = e.getMessage();
            if (!StringUtils.m26045b((CharSequence) message)) {
                return null;
            }
            Iterator<Integer> it2 = f24806d.iterator();
            while (it2.hasNext()) {
                if (message.contains(String.format("(code %d)", Integer.valueOf(it2.next().intValue())))) {
                    throw new QuotaReachedException(e);
                }
            }
            if (!z) {
                return null;
            }
            Iterator<Integer> it3 = f24807e.iterator();
            while (it3.hasNext()) {
                if (message.contains(String.format("(#%d)", Integer.valueOf(it3.next().intValue())))) {
                    throw new UserNotFoundException(e);
                }
            }
            return null;
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final List<PersonData> mo29104a(String str, boolean z) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final Map<String, Friend> mo29103a(boolean z, boolean z2) {
        List<JSONFBEntity> friends = getFriends();
        if (CollectionUtils.m26068b(friends)) {
            HashMap hashMap = new HashMap(friends.size());
            for (JSONFBEntity jSONFBEntity : friends) {
                String name = jSONFBEntity.getName();
                String str = name;
                if (z) {
                    str = name;
                    if (StringUtils.m26045b((CharSequence) name)) {
                        str = name.toLowerCase();
                    }
                }
                hashMap.put(jSONFBEntity.getId(), new Friend(jSONFBEntity.getId(), str, null));
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29113a(final Activity activity) {
        if (!isNativeAppInstalled()) {
            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Saw facebook login screen and doesn't have facebook");
        }
        if (isLoggedIn()) {
            mo26206a();
        } else {
            activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ArrayList arrayList = FacebookHelper.f24808g;
                        if (activity instanceof SetupWizardActivity) {
                            arrayList.remove("user_posts");
                        }
                        final C10388g m22884a = C10388g.m22884a();
                        AbstractC10179e abstractC10179e = FacebookHelper.this.f24809c;
                        final FacebookHelper facebookHelper = FacebookHelper.this;
                        if (!(abstractC10179e instanceof C10263c)) {
                            throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
                        }
                        C10263c c10263c = (C10263c) abstractC10179e;
                        int requestCode = C10263c.EnumC10266c.Login.toRequestCode();
                        C10263c.AbstractC10264a callback = new C10263c.AbstractC10264a() { // from class: com.facebook.login.g.1
                            @Override // com.facebook.internal.C10263c.AbstractC10264a
                            /* renamed from: a */
                            public final boolean mo22728a(int i, Intent intent) {
                                return m22884a.m22883a(i, intent, facebookHelper);
                            }
                        };
                        C18524p.m3840d(callback, "callback");
                        c10263c.f33774a.put(Integer.valueOf(requestCode), callback);
                        final C10388g m22884a2 = C10388g.m22884a();
                        Activity activity2 = activity;
                        C10388g.m22878a(arrayList);
                        LoginClient.Request request = new LoginClient.Request(m22884a2.f34022a, Collections.unmodifiableSet(arrayList != null ? new HashSet(arrayList) : new HashSet()), m22884a2.f34023b, m22884a2.f34024c, C10181g.m23286m(), UUID.randomUUID().toString());
                        request.setRerequest(AccessToken.isCurrentAccessTokenActive());
                        C10388g.C10392a c10392a = new C10388g.C10392a(activity2);
                        C10388g.m22882a(c10392a.mo22875a(), request);
                        C10263c.m23086a(C10263c.EnumC10266c.Login.toRequestCode(), new C10263c.AbstractC10264a() { // from class: com.facebook.login.g.3
                            @Override // com.facebook.internal.C10263c.AbstractC10264a
                            /* renamed from: a */
                            public final boolean mo22728a(int i, Intent intent) {
                                return m22884a2.m22883a(i, intent, null);
                            }
                        });
                        if (C10388g.m22880a(c10392a, request)) {
                            return;
                        }
                        FacebookException facebookException = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
                        C10388g.m22881a(c10392a.mo22875a(), LoginClient.Result.EnumC10373a.ERROR, null, facebookException, false, request);
                        throw facebookException;
                    } catch (FacebookException e) {
                        FacebookHelper.this.mo26205b();
                        CLog.m27609a(FacebookHelper.class, e);
                    }
                }
            });
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29111a(Activity activity, String str, Runnable runnable, OutcomeListener outcomeListener) {
        String[] m26017k = StringUtils.m26017k(str, "#@@#");
        if (!CollectionUtils.m26066b(m26017k) || m26017k.length != 2) {
            m29230a((Context) activity, str, runnable, outcomeListener);
        } else {
            m29229a(activity, m26017k[0], runnable, outcomeListener, m26017k[1]);
        }
    }

    /* renamed from: a */
    public final void m29230a(final Context context, final String str, final Runnable runnable, final OutcomeListener outcomeListener) {
        if (HttpUtils.m26985a()) {
            new Task() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.6
                /* JADX WARN: Code restructure failed: missing block: B:7:0x0064, code lost:
                    if (com.callapp.contacts.api.helper.facebook.FacebookHelper.this.m29231a(r6, "https://www.facebook.com/profile.php?id=" + r0.getId(), r7) != false) goto L8;
                 */
                @Override // com.callapp.contacts.manager.task.Task
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void doTask() {
                    /*
                        r5 = this;
                        r0 = r5
                        com.callapp.contacts.api.helper.facebook.FacebookHelper r0 = com.callapp.contacts.api.helper.facebook.FacebookHelper.this
                        r6 = r0
                        r0 = r5
                        java.lang.String r0 = r5
                        r7 = r0
                        r0 = 0
                        r8 = r0
                        r0 = r6
                        r1 = r7
                        r2 = 0
                        com.callapp.common.model.json.JSONFBUserOrPage r0 = r0.m29207d(r1, r2)
                        r9 = r0
                        r0 = r9
                        if (r0 == 0) goto Lc2
                        r0 = r5
                        com.callapp.contacts.api.helper.facebook.FacebookHelper r0 = com.callapp.contacts.api.helper.facebook.FacebookHelper.this
                        r1 = r5
                        android.content.Context r1 = r6
                        r2 = r9
                        java.lang.String r2 = r2.getLink()
                        r3 = r5
                        java.lang.Runnable r3 = r7
                        boolean r0 = com.callapp.contacts.api.helper.facebook.FacebookHelper.m29217b(r0, r1, r2, r3)
                        r10 = r0
                        r0 = 1
                        r11 = r0
                        r0 = r10
                        if (r0 != 0) goto L67
                        r0 = r5
                        com.callapp.contacts.api.helper.facebook.FacebookHelper r0 = com.callapp.contacts.api.helper.facebook.FacebookHelper.this
                        r12 = r0
                        r0 = r5
                        android.content.Context r0 = r6
                        r7 = r0
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        r1 = r0
                        java.lang.String r2 = "https://www.facebook.com/profile.php?id="
                        r1.<init>(r2)
                        r6 = r0
                        r0 = r6
                        r1 = r9
                        java.lang.String r1 = r1.getId()
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r12
                        r1 = r7
                        r2 = r6
                        java.lang.String r2 = r2.toString()
                        r3 = r5
                        java.lang.Runnable r3 = r7
                        boolean r0 = com.callapp.contacts.api.helper.facebook.FacebookHelper.m29217b(r0, r1, r2, r3)
                        if (r0 == 0) goto L69
                    L67:
                        r0 = 1
                        r8 = r0
                    L69:
                        r0 = r8
                        if (r0 != 0) goto Lb9
                        r0 = r5
                        com.callapp.contacts.api.helper.facebook.FacebookHelper r0 = com.callapp.contacts.api.helper.facebook.FacebookHelper.this
                        boolean r0 = r0.isNativeAppInstalled()
                        if (r0 == 0) goto Lb9
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        r1 = r0
                        java.lang.String r2 = "fb://profile/"
                        r1.<init>(r2)
                        r6 = r0
                        r0 = r6
                        r1 = r5
                        java.lang.String r1 = r5
                        java.lang.StringBuilder r0 = r0.append(r1)
                        android.content.Intent r0 = new android.content.Intent
                        r1 = r0
                        java.lang.String r2 = "android.intent.action.VIEW"
                        r3 = r6
                        java.lang.String r3 = r3.toString()
                        android.net.Uri r3 = android.net.Uri.parse(r3)
                        r1.<init>(r2, r3)
                        r6 = r0
                        r0 = r6
                        boolean r0 = com.callapp.contacts.util.Activities.m27672a(r0)
                        if (r0 == 0) goto Lb9
                        r0 = r6
                        int r1 = com.callapp.contacts.util.Activities.getIntentFlagForNewDocument()
                        android.content.Intent r0 = r0.addFlags(r1)
                        r0 = r5
                        android.content.Context r0 = r6
                        r1 = r6
                        boolean r0 = com.callapp.contacts.util.Activities.m27685a(r0, r1)
                        r0 = r11
                        r8 = r0
                        goto Lb9
                    Lb9:
                        r0 = r5
                        com.callapp.contacts.manager.task.OutcomeListener r0 = r8
                        r1 = r8
                        com.callapp.contacts.api.helper.facebook.FacebookHelper.m29210c(r0, r1)
                        return
                    Lc2:
                        r0 = r5
                        com.callapp.contacts.manager.task.OutcomeListener r0 = r8
                        com.callapp.contacts.api.helper.facebook.FacebookHelper.m29214b(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.facebook.FacebookHelper.C71876.doTask():void");
                }
            }.execute();
            return;
        }
        FeedbackManager.m28675a(context);
        m29248a(outcomeListener, false);
    }

    /* renamed from: a */
    public final void m29229a(final Context context, final String str, final Runnable runnable, final OutcomeListener outcomeListener, String str2) {
        if (!StringUtils.m26045b((CharSequence) str2)) {
            m29230a(context, str, runnable, outcomeListener);
        } else if (StringUtils.m26044b((Object) str2, (Object) "user")) {
            m29230a(context, str, runnable, outcomeListener);
        } else if (StringUtils.m26044b((Object) str2, (Object) "page")) {
            boolean m29219b = m29219b(context, str, runnable);
            if (outcomeListener == null) {
                return;
            }
            outcomeListener.mo28119a(m29219b);
        } else if (!StringUtils.m26044b((Object) str2, (Object) "placeinformation") && !StringUtils.m26044b((Object) str2, (Object) "facebookPlaceData")) {
        } else {
            new Task() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.5
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    JSONFBUserOrPage m29207d = FacebookHelper.this.m29207d(str, false);
                    if (m29207d == null) {
                        OutcomeListener outcomeListener2 = outcomeListener;
                        if (outcomeListener2 == null) {
                            return;
                        }
                        FacebookHelper.m29248a(outcomeListener2, false);
                        return;
                    }
                    FacebookHelper facebookHelper = FacebookHelper.this;
                    boolean m29219b2 = FacebookHelper.m29219b(context, m29207d.getId(), runnable);
                    OutcomeListener outcomeListener3 = outcomeListener;
                    if (outcomeListener3 == null) {
                        return;
                    }
                    FacebookHelper.m29248a(outcomeListener3, m29219b2);
                }
            }.execute();
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29107a(ContactData contactData, JSONSocialNetworkID jSONSocialNetworkID) {
        contactData.getDeviceData().setFacebookId(jSONSocialNetworkID);
        contactData.updateFacebookId();
    }

    /* renamed from: a */
    public final boolean m29231a(Context context, String str, Runnable runnable) {
        String str2;
        boolean z = false;
        if (StringUtils.m26045b((CharSequence) str)) {
            if (!isNativeAppInstalled()) {
                Activities.m27677a(context, str, runnable);
                return true;
            }
            String[] split = str.split("/");
            String str3 = null;
            if (split.length > 0) {
                str3 = split[split.length - 1];
                z = StringUtils.m26026g(str3);
            }
            if (z) {
                str2 = "fb://profile/".concat(String.valueOf(str3));
            } else {
                str2 = "fb://facewebmodal/f?href=" + UrlUtils.m31878a(str);
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
            if (!Activities.m27672a(intent)) {
                Activities.m27677a(context, str, runnable);
                return true;
            }
            intent.addFlags(Activities.getIntentFlagForNewDocument());
            Activities.m27685a(context, intent);
            return true;
        }
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final boolean mo29105a(String str) {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: b */
    public final void mo26204b(String str) {
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: c */
    public final GlideUrl mo29209c(String str) {
        return StringUtils.m26045b((CharSequence) str) ? new GlideUrl(str, new LazyHeaders.Builder().addHeader("Authorization", getAuthorizationHeaderValue()).build()) : new GlideUrl(str);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: c */
    public final List<PersonData> mo29102c(final String str, boolean z) {
        JSONFBEntity jSONFBEntity;
        ArrayList arrayList = null;
        if (StringUtils.m26059a((CharSequence) str)) {
            jSONFBEntity = null;
        } else {
            jSONFBEntity = (JSONFBEntity) m29249a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<JSONFBEntity>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.9
                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
                /* renamed from: a */
                public final /* synthetic */ JSONFBEntity mo29086a() {
                    FacebookHelper.this.m29247a(UsageCounter.facebookRequests, CallAppApplication.get().getResources().getInteger(2131427354), CallAppApplication.get().getResources().getInteger(2131427355), false);
                    JSONFBEntity jSONFBEntity2 = null;
                    JSONFBEntity jSONFBEntity3 = null;
                    if (!StringUtils.m26026g(str.replace("+", "").replace(org.apache.commons.lang3.StringUtils.SPACE, ""))) {
                        return null;
                    }
                    String m31908b = RegexUtils.m31908b((CharSequence) Phone.m26093b(str).m26095b());
                    Bundle bundle = new Bundle();
                    bundle.putString("fields", "id,name");
                    bundle.putString("q", m31908b);
                    bundle.putInt("limit", 10);
                    List m29222a = FacebookHelper.m29222a(FacebookHelper.this, GraphRequest.m23796a(new GraphRequest(AccessToken.getCurrentAccessToken(), "/pages/search", bundle, EnumC10352k.GET, null, "v4.0")).f33959a);
                    final ArrayList arrayList2 = new ArrayList();
                    boolean z2 = false;
                    if (CollectionUtils.m26068b(m29222a)) {
                        Iterator it2 = m29222a.iterator();
                        while (true) {
                            jSONFBEntity2 = jSONFBEntity3;
                            if (!it2.hasNext()) {
                                break;
                            }
                            JSONFBUserOrPage jSONFBUserOrPage = (JSONFBUserOrPage) it2.next();
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("fields", "id,name,about,awards,category,company_overview,connected_instagram_account,cover,current_location,description,display_subtext,emails,general_info,hours,instagram_business_account,link,location,overall_star_rating,phone,price_range,single_line_address,website,whatsapp_number");
                            bundle2.putString("locale", "en");
                            JSONFBUserOrPage m29223a = FacebookHelper.m29223a(FacebookHelper.this, GraphRequest.m23796a(new GraphRequest(AccessToken.getCurrentAccessToken(), jSONFBUserOrPage.getId(), bundle2, EnumC10352k.GET, null, "v4.0")).f33961c);
                            if (m29223a != null) {
                                String phone = m29223a.getPhone();
                                if (StringUtils.m26045b((CharSequence) phone)) {
                                    arrayList2.add(m29223a);
                                    if (!z2 && StringUtils.m26042b(Phone.m26093b(str).m26095b(), Phone.m26093b(phone).m26095b())) {
                                        jSONFBEntity3 = new JSONFBEntity();
                                        jSONFBEntity3.setId(m29223a.getId());
                                        jSONFBEntity3.setName(m29223a.getName());
                                        jSONFBEntity3.setLink(m29223a.getLink());
                                        jSONFBEntity3.setProfileImageUrl(FacebookHelper.m29196r(m29223a.getId()));
                                        if (StringUtils.m26045b((CharSequence) m29223a.getPhone())) {
                                            jSONFBEntity3.setPhone(m29223a.getPhone());
                                        }
                                        z2 = true;
                                    }
                                }
                            }
                        }
                    }
                    if (CollectionUtils.m26068b(m29222a)) {
                        new Task() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.9.1
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                ExternalSourcesUtils.m28825a(arrayList2);
                            }
                        }.execute();
                    }
                    if (!FacebookHelper.this.f24798a) {
                        FeedbackManager.get().m28670a("searched " + FacebookHelper.this.getName(), 17);
                    }
                    UsageCounterDataManager.incrementCounter(UsageCounter.facebookRequests, 1);
                    return jSONFBEntity2;
                }

                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
                public String getCacheKey() {
                    return "fb_search_" + str;
                }

                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
                public int getCacheTtl() {
                    return 2131427353;
                }
            }, (Class<Object>) JSONFBEntity.class, true, false, z ? RemoteAccountHelper.SocialCacheMode.onlyFromCache : RemoteAccountHelper.SocialCacheMode.standard);
        }
        if (jSONFBEntity != null) {
            arrayList = new ArrayList();
            arrayList.add(new PersonData(jSONFBEntity));
        }
        return arrayList;
    }

    /* renamed from: d */
    public final JSONFBUserOrPage m29207d(final String str, boolean z) {
        return (JSONFBUserOrPage) m29250a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<JSONFBUserOrPage>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.13
            /* JADX WARN: Removed duplicated region for block: B:26:0x013d  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x0149  */
            /* JADX WARN: Removed duplicated region for block: B:30:0x017e  */
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final /* synthetic */ com.callapp.common.model.json.JSONFBUserOrPage mo29086a() {
                /*
                    Method dump skipped, instructions count: 465
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.facebook.FacebookHelper.C718313.mo29086a():java.lang.Object");
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                boolean isLoggedIn = FacebookHelper.this.isLoggedIn();
                return "fb_user_" + str + "_" + isLoggedIn;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427357;
            }
        }, (Class<Object>) JSONFBUserOrPage.class, false, z);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: d */
    public final boolean mo29178d(String str) {
        return true;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: e */
    public final void mo29101e() {
        try {
            C10388g m22884a = C10388g.m22884a();
            AccessToken.setCurrentAccessToken(null);
            Profile.setCurrentProfile(null);
            m22884a.m22877a(false);
        } catch (FacebookException e) {
            CLog.m27609a(FacebookHelper.class, e);
        } finally {
            m29201n();
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: f */
    public final String mo29100f(String str) {
        JSONFBUserOrPage m29207d = m29207d(str, true);
        if (m29207d != null) {
            return m29207d.getName();
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
        return m29205k(str);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public int getApiConstantNetworkId() {
        return 1;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getCurrentUserId() {
        JSONFBUserOrPage loggedInUser = getLoggedInUser();
        if (loggedInUser != null) {
            return loggedInUser.getId();
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public DataSource getDataSource() {
        return DataSource.facebook;
    }

    public List<JSONFBEntity> getFriends() {
        return (List) m29249a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.12
            /* JADX WARN: Code restructure failed: missing block: B:35:0x0110, code lost:
                if (com.callapp.framework.util.CollectionUtils.m26076a(r10) != false) goto L36;
             */
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final /* synthetic */ java.util.List mo29086a() {
                /*
                    Method dump skipped, instructions count: 281
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.facebook.FacebookHelper.C718212.mo29086a():java.lang.Object");
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "fb_myFriends_sorted";
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427351;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getRefreshInterval() {
                return 2131427350;
            }
        }, (Class<Object>) List.class, true, false, RemoteAccountHelper.SocialCacheMode.standard);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public long getFriendsCount() {
        List<JSONFBEntity> friends = getFriends();
        if (CollectionUtils.m26068b(friends)) {
            return friends.size();
        }
        return 0L;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public List<PersonData> getFriendsListAsPersonData() {
        List<JSONFBEntity> friends = getFriends();
        if (CollectionUtils.m26068b(friends)) {
            ArrayList arrayList = new ArrayList(friends.size());
            for (JSONFBEntity jSONFBEntity : friends) {
                arrayList.add(new PersonData(jSONFBEntity));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    public JSONFBUserOrPage getLoggedInUser() {
        return m29207d("me", false);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getName() {
        return "Facebook";
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getUserName() {
        String str;
        JSONFBUserOrPage loggedInUser = getLoggedInUser();
        if (loggedInUser != null) {
            if (StringUtils.m26045b((CharSequence) loggedInUser.getUsername())) {
                return loggedInUser.getUsername();
            }
            if (StringUtils.m26045b((CharSequence) loggedInUser.getFirstName())) {
                str = "" + loggedInUser.getFirstName();
            } else {
                str = "";
            }
            String str2 = str;
            if (StringUtils.m26045b((CharSequence) loggedInUser.getLastName())) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(StringUtils.m26059a((CharSequence) str) ? "" : org.apache.commons.lang3.StringUtils.SPACE);
                sb.append(loggedInUser.getLastName());
                str2 = sb.toString();
            }
            if (!StringUtils.m26045b((CharSequence) str2)) {
                return null;
            }
            return str2;
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: h */
    public final String mo29098h(String str) throws UserNotFoundException, QuotaReachedException {
        ProfileImageUrl m29197q = m29197q(str);
        if (m29197q == null || !StringUtils.m26045b((CharSequence) m29197q.f24841a)) {
            return null;
        }
        return m29196r(m29197q.f24842b);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: i */
    public final String mo29096i(String str) {
        if (StringUtils.m26059a((CharSequence) str) || !str.contains("facebook.com")) {
            return null;
        }
        Matcher matcher = RegexUtils.m31910a("(?:http:\\/\\/)?(?:www.)?facebook.com\\/(?:(?:\\w)*#!\\/)?(?:pages\\/)?(?:[?\\w\\-]*\\/)?(?:profile.php\\?id=(?=\\d.*))?([\\w\\-\\.]*)?").matcher(str);
        if (!matcher.find()) {
            return null;
        }
        String group = matcher.group(1);
        if (StringUtils.m26045b((CharSequence) group) && StringUtils.m26026g(group)) {
            return group;
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: i */
    public final boolean mo29097i() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isLoggedIn() {
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        return currentAccessToken != null && !currentAccessToken.isExpired();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isNativeAppInstalled() {
        return Activities.m27672a(new Intent("android.intent.action.VIEW", Uri.parse("fb://profile/1000")));
    }

    /* renamed from: k */
    public final String m29205k(String str) {
        ProfileImageUrl m29197q = m29197q(str);
        if (m29197q != null) {
            return m29197q.f24841a;
        }
        return null;
    }

    @Override // com.facebook.AbstractC10180f
    /* renamed from: k */
    public final void mo23308k() {
        super.mo26205b();
    }

    /* renamed from: l */
    public final ArrayList<String> m29204l(final String str) {
        return (ArrayList) m29251a(new RemoteAccountHelper.SocialCallable<ArrayList>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.8
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            /* renamed from: a */
            public final /* synthetic */ ArrayList mo29086a() {
                JSONArray optJSONArray;
                JSONObject optJSONObject;
                JSONArray optJSONArray2;
                JSONArray optJSONArray3;
                JSONObject optJSONObject2;
                ArrayList arrayList = new ArrayList();
                Bundle bundle = new Bundle();
                bundle.putString("fields", "id,name,created_time");
                JSONObject jSONObject = GraphRequest.m23796a(new GraphRequest(AccessToken.getCurrentAccessToken(), str + "/albums", bundle, EnumC10352k.GET, null, "v4.0")).f33959a;
                if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("data")) != null && optJSONArray.length() > 0 && (optJSONObject = optJSONArray.optJSONObject(0)) != null && StringUtils.m26042b(optJSONObject.optString("name"), "Profile Pictures")) {
                    String optString = optJSONObject.optString("id");
                    if (StringUtils.m26045b((CharSequence) optString)) {
                        bundle.clear();
                        bundle.putString("fields", "images");
                        JSONObject jSONObject2 = GraphRequest.m23796a(new GraphRequest(AccessToken.getCurrentAccessToken(), optString + "/photos", bundle, EnumC10352k.GET, null, "v4.0")).f33959a;
                        if (jSONObject2 != null && (optJSONArray2 = jSONObject2.optJSONArray("data")) != null) {
                            for (int i = 0; i < optJSONArray2.length(); i++) {
                                JSONObject optJSONObject3 = optJSONArray2.optJSONObject(i);
                                if (optJSONObject3 != null && (optJSONArray3 = optJSONObject3.optJSONArray("images")) != null && (optJSONObject2 = optJSONArray3.optJSONObject(0)) != null) {
                                    arrayList.add(optJSONObject2.optString(Payload.SOURCE).trim().replaceAll(org.apache.commons.lang3.StringUtils.SPACE, "%20"));
                                }
                            }
                        }
                    }
                }
                ArrayList arrayList2 = arrayList;
                if (CollectionUtils.m26076a(arrayList)) {
                    String m29205k = FacebookHelper.this.m29205k(str);
                    if (StringUtils.m26045b((CharSequence) m29205k)) {
                        arrayList.add(m29205k);
                        arrayList2 = arrayList;
                    } else {
                        arrayList2 = null;
                    }
                }
                return arrayList2;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "fb_profile_pics_urls_" + str;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427357;
            }
        }, ArrayList.class);
    }

    @Override // com.facebook.AbstractC10180f
    /* renamed from: l */
    public final /* synthetic */ void mo23307l() {
        m29237d();
        super.mo26206a();
    }

    /* renamed from: m */
    public final String m29202m(String str) {
        JsonNode jsonNode;
        JsonNode jsonNode2;
        JsonNode jsonNode3;
        String m29195s = m29195s(str);
        try {
            if (!HttpUtils.m26972b()) {
                return null;
            }
            String str2 = m29195s + "&redirect=false";
            ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(JsonNode.class);
            HashMap hashMap = new HashMap();
            hashMap.put("Authorization", getAuthorizationHeaderValue());
            HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(str2);
            httpRequestParamsBuilder.f28293c = classParserHttpResponseHandler;
            httpRequestParamsBuilder.f28291a = hashMap;
            HttpUtils.m26971b(httpRequestParamsBuilder.m26994a());
            JsonNode jsonNode4 = (JsonNode) classParserHttpResponseHandler.getResult();
            if (jsonNode4 == null || (jsonNode = jsonNode4.get("data")) == null || (jsonNode2 = jsonNode.get("is_silhouette")) == null || jsonNode2.asBoolean() || (jsonNode3 = jsonNode.get("url")) == null) {
                return null;
            }
            if (!StringUtils.m26045b((CharSequence) jsonNode3.asText())) {
                return null;
            }
            return m29195s;
        } catch (IllegalStateException e) {
            CLog.m27609a(FacebookHelper.class, e);
            return null;
        }
    }
}
