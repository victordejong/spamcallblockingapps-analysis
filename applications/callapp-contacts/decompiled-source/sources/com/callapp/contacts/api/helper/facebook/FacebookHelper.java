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
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.Profile;
import com.facebook.e;
import com.facebook.f;
import com.facebook.g;
import com.facebook.internal.c;
import com.facebook.k;
import com.facebook.login.LoginClient;
import com.facebook.login.g;
import com.facebook.login.h;
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
import kotlin.jvm.internal.p;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/facebook/FacebookHelper.class */
public class FacebookHelper extends RemoteAccountHelper implements f<h> {

    /* renamed from: d  reason: collision with root package name */
    private static final List<Integer> f14150d = Lists.a(4, 9, 17, 18, 341, Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_COLLAPSE_VALUE));
    private static final List<Integer> e = Lists.a(21, 100);
    private static final ArrayList<String> g = Lists.a("public_profile", "user_posts", "user_friends", "user_link", "user_birthday", "user_likes", "user_photos", "user_videos", "email");

    /* renamed from: c  reason: collision with root package name */
    public e f14151c;
    private final String f = "id,name,about,awards,category,company_overview,connected_instagram_account,cover,current_location,description,display_subtext,emails,general_info,hours,instagram_business_account,link,location,overall_star_rating,phone,price_range,single_line_address,website,whatsapp_number";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl.class */
    public class ProfileImageUrl {

        /* renamed from: a  reason: collision with root package name */
        public String f14180a;

        /* renamed from: b  reason: collision with root package name */
        public String f14181b;

        private ProfileImageUrl() {
        }
    }

    public FacebookHelper() {
        if (!CallAppApplication.get().isUnitTestMode()) {
            g.a(new String[0]);
            if (Prefs.n.get().booleanValue()) {
                g.d();
            }
        }
        this.f14151c = new c();
    }

    static /* synthetic */ JSONFBUserOrPage a(FacebookHelper facebookHelper, String str) {
        JSONFBUserOrPage jSONFBUserOrPage;
        if (StringUtils.b((CharSequence) str)) {
            JSONFBUserOrPage jSONFBUserOrPage2 = (JSONFBUserOrPage) Parser.a(str, JSONFBUserOrPage.class);
            facebookHelper.a(jSONFBUserOrPage2);
            jSONFBUserOrPage = jSONFBUserOrPage2;
        } else {
            jSONFBUserOrPage = null;
        }
        return jSONFBUserOrPage;
    }

    static /* synthetic */ List a(FacebookHelper facebookHelper, JSONObject jSONObject) {
        List list;
        if (jSONObject != null) {
            String optString = jSONObject.optString("data");
            if (StringUtils.b((CharSequence) optString)) {
                List list2 = (List) Parser.a(optString, Serializer.getJSONObjectMapper().getTypeFactory().constructCollectionType(ArrayList.class, JSONFBUserOrPage.class));
                list = list2;
                if (CollectionUtils.b(list2)) {
                    Iterator it2 = list2.iterator();
                    while (true) {
                        list = list2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        facebookHelper.a((JSONFBUserOrPage) it2.next());
                    }
                }
                return list;
            }
        }
        list = null;
        return list;
    }

    private void a(JSONFBUserOrPage jSONFBUserOrPage) {
        JsonNode rawHours;
        if (jSONFBUserOrPage != null && (rawHours = jSONFBUserOrPage.getRawHours()) != null) {
            List<JSONFBHour> list = (List) Parser.a(rawHours.toString(), Serializer.getJSONObjectMapper().getTypeFactory().constructCollectionType(ArrayList.class, JSONFBHour.class));
            ArrayList arrayList = list;
            if (list == null) {
                Map map = (Map) Parser.a(rawHours, new TypeReference<HashMap<String, String>>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.14
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
    }

    private static boolean a(Context context, String str, Runnable runnable, String str2) {
        boolean z;
        if (HttpUtils.a()) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2 + str));
            if (Activities.a(intent)) {
                intent.addFlags(Activities.getIntentFlagForNewDocument());
                Activities.a(context, intent);
            } else {
                Activities.a(context, "https://facebook.com/".concat(String.valueOf(str)), runnable);
            }
            z = true;
        } else {
            FeedbackManager.a(context);
            z = false;
        }
        return z;
    }

    static /* synthetic */ Pair b(FacebookHelper facebookHelper, String str) {
        boolean z;
        String str2;
        Date date;
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,description,updated_time,created_time");
        bundle.putInt("limit", 10);
        JSONObject jSONObject = GraphRequest.a(new GraphRequest(AccessToken.getCurrentAccessToken(), str + "/videos/uploaded", bundle, k.GET, null, "v4.0")).f20036a;
        int i = 0;
        if (jSONObject != null) {
            JSONArray optJSONArray = jSONObject.optJSONArray("data");
            if (optJSONArray != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= optJSONArray.length()) {
                        break;
                    }
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
                    if (optJSONObject != null) {
                        str2 = optJSONObject.optString("description");
                        if (StringUtils.b((CharSequence) str2)) {
                            String optString = optJSONObject.optString("created_time");
                            if (StringUtils.b((CharSequence) optString)) {
                                date = b((Date) null, optString);
                                if (date != null) {
                                    z = true;
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                    i2++;
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
            JSONObject jSONObject2 = GraphRequest.a(new GraphRequest(AccessToken.getCurrentAccessToken(), str + "/photos/uploaded", bundle, k.GET, null, "v4.0")).f20036a;
            date2 = date;
            str3 = str2;
            if (jSONObject2 != null) {
                JSONArray optJSONArray2 = jSONObject2.optJSONArray("data");
                date2 = date;
                str3 = str2;
                if (optJSONArray2 != null) {
                    while (true) {
                        date2 = date;
                        str3 = str2;
                        if (i >= optJSONArray2.length()) {
                            break;
                        }
                        JSONObject optJSONObject2 = optJSONArray2.optJSONObject(i);
                        if (optJSONObject2 != null) {
                            String optString2 = optJSONObject2.optString("name");
                            if (StringUtils.b((CharSequence) optString2)) {
                                String optString3 = optJSONObject2.optString("created_time");
                                if (StringUtils.b((CharSequence) optString3)) {
                                    Date b2 = b(date, optString3);
                                    date2 = date;
                                    str3 = str2;
                                    if (b2 != null) {
                                        date2 = b2;
                                        str3 = optString2;
                                    }
                                }
                            } else {
                                continue;
                            }
                        }
                        i++;
                    }
                }
            }
        }
        return Pair.create(str3, date2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Date b(Date date, String str) {
        try {
            Date d2 = StringUtils.d(str);
            if (d2 == null) {
                return null;
            }
            if (date == null) {
                return d2;
            }
            if (date.before(d2)) {
                return d2;
            }
            return null;
        } catch (ParseException e2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Context context, String str, Runnable runnable) {
        return a(context, str, runnable, "fb://page/");
    }

    public static FacebookHelper get() {
        return Singletons.get().getFacebookHelper();
    }

    private String getAuthorizationHeaderValue() {
        StringBuilder sb = new StringBuilder("Bearer ");
        sb.append(isLoggedIn() ? AccessToken.getCurrentAccessToken().getToken() : CallAppRemoteConfigManager.get().a("facebookAccessToken"));
        return sb.toString();
    }

    private static void n() {
        CacheManager.get().a(List.class, "fb_myFriends_sorted");
        CacheManager.get().a(JSONFBUserOrPage.class, "fb_user_me_true");
        UserProfileManager.get().a(1);
    }

    public static boolean n(String str) {
        return CollectionUtils.a(AccessToken.getCurrentAccessToken().getPermissions(), str);
    }

    private ProfileImageUrl q(final String str) {
        return (ProfileImageUrl) a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<ProfileImageUrl>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.7
            /* JADX WARN: Removed duplicated region for block: B:25:0x0143  */
            /* JADX WARN: Removed duplicated region for block: B:28:0x0150  */
            /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final /* synthetic */ com.callapp.contacts.api.helper.facebook.FacebookHelper.ProfileImageUrl a() {
                /*
                    Method dump skipped, instructions count: 367
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.facebook.FacebookHelper.AnonymousClass7.a():java.lang.Object");
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

    /* JADX INFO: Access modifiers changed from: private */
    public static String r(String str) {
        return "https://graph.facebook.com/" + str + "/picture?type=normal";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String s(String str) {
        return "https://graph.facebook.com/" + str + "/picture?width=600";
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final JSONSocialNetworkID a(ContactData contactData) {
        return contactData.getFacebookId();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final HttpRequest a(HttpRequest httpRequest) {
        JSONFBUserOrPage loggedInUser = getLoggedInUser();
        HttpRequest httpRequest2 = httpRequest;
        if (loggedInUser != null) {
            httpRequest2 = httpRequest;
            if (httpRequest == null) {
                httpRequest2 = UpdateUserProfileUtil.a();
            }
            UpdateUserProfileUtil.a(httpRequest2, loggedInUser.getId());
        }
        return httpRequest2;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final <T> T a(RemoteAccountHelper.SocialCallable<T> socialCallable, boolean z) {
        try {
            return socialCallable.a();
        } catch (FacebookException e2) {
            CLog.a(FacebookHelper.class, e2);
            String message = e2.getMessage();
            if (!StringUtils.b((CharSequence) message)) {
                return null;
            }
            Iterator<Integer> it2 = f14150d.iterator();
            while (it2.hasNext()) {
                if (message.contains(String.format("(code %d)", Integer.valueOf(it2.next().intValue())))) {
                    throw new QuotaReachedException(e2);
                }
            }
            if (!z) {
                return null;
            }
            Iterator<Integer> it3 = e.iterator();
            while (it3.hasNext()) {
                if (message.contains(String.format("(#%d)", Integer.valueOf(it3.next().intValue())))) {
                    throw new UserNotFoundException(e2);
                }
            }
            return null;
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> a(String str, boolean z) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final Map<String, Friend> a(boolean z, boolean z2) {
        List<JSONFBEntity> friends = getFriends();
        if (!CollectionUtils.b(friends)) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(friends.size());
        for (JSONFBEntity jSONFBEntity : friends) {
            String name = jSONFBEntity.getName();
            String str = name;
            if (z) {
                str = name;
                if (StringUtils.b((CharSequence) name)) {
                    str = name.toLowerCase();
                }
            }
            hashMap.put(jSONFBEntity.getId(), new Friend(jSONFBEntity.getId(), str, null));
        }
        return hashMap;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(final Activity activity) {
        if (!isNativeAppInstalled()) {
            AnalyticsManager.get().a(Constants.REGISTRATION, "Saw facebook login screen and doesn't have facebook");
        }
        if (isLoggedIn()) {
            a();
        } else {
            activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ArrayList arrayList = FacebookHelper.g;
                        if (activity instanceof SetupWizardActivity) {
                            arrayList.remove("user_posts");
                        }
                        final com.facebook.login.g a2 = com.facebook.login.g.a();
                        e eVar = FacebookHelper.this.f14151c;
                        final FacebookHelper facebookHelper = FacebookHelper.this;
                        if (eVar instanceof c) {
                            c cVar = (c) eVar;
                            int requestCode = c.EnumC0402c.Login.toRequestCode();
                            c.a callback = new c.a() { // from class: com.facebook.login.g.1
                                @Override // com.facebook.internal.c.a
                                public final boolean a(int i, Intent intent) {
                                    return a2.a(i, intent, facebookHelper);
                                }
                            };
                            p.d(callback, "callback");
                            cVar.f19902a.put(Integer.valueOf(requestCode), callback);
                            final com.facebook.login.g a3 = com.facebook.login.g.a();
                            Activity activity2 = activity;
                            com.facebook.login.g.a(arrayList);
                            LoginClient.Request request = new LoginClient.Request(a3.f20083a, Collections.unmodifiableSet(arrayList != null ? new HashSet(arrayList) : new HashSet()), a3.f20084b, a3.f20085c, g.m(), UUID.randomUUID().toString());
                            request.setRerequest(AccessToken.isCurrentAccessTokenActive());
                            g.a aVar = new g.a(activity2);
                            com.facebook.login.g.a(aVar.a(), request);
                            c.a(c.EnumC0402c.Login.toRequestCode(), new c.a() { // from class: com.facebook.login.g.3
                                @Override // com.facebook.internal.c.a
                                public final boolean a(int i, Intent intent) {
                                    return a3.a(i, intent, null);
                                }
                            });
                            if (!com.facebook.login.g.a(aVar, request)) {
                                FacebookException facebookException = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
                                com.facebook.login.g.a(aVar.a(), LoginClient.Result.a.ERROR, null, facebookException, false, request);
                                throw facebookException;
                            }
                            return;
                        }
                        throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
                    } catch (FacebookException e2) {
                        FacebookHelper.this.b();
                        CLog.a(FacebookHelper.class, e2);
                    }
                }
            });
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(Activity activity, String str, Runnable runnable, OutcomeListener outcomeListener) {
        String[] k = StringUtils.k(str, "#@@#");
        if (!CollectionUtils.b(k) || k.length != 2) {
            a((Context) activity, str, runnable, outcomeListener);
        } else {
            a(activity, k[0], runnable, outcomeListener, k[1]);
        }
    }

    public final void a(final Context context, final String str, final Runnable runnable, final OutcomeListener outcomeListener) {
        if (HttpUtils.a()) {
            new Task() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.6
                /* JADX WARN: Code restructure failed: missing block: B:7:0x0064, code lost:
                    if (r0.a(r0, "https://www.facebook.com/profile.php?id=" + r0.getId(), r7) != false) goto L_0x0067;
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
                        com.callapp.common.model.json.JSONFBUserOrPage r0 = r0.d(r1, r2)
                        r9 = r0
                        r0 = r9
                        if (r0 == 0) goto L_0x00c2
                        r0 = r5
                        com.callapp.contacts.api.helper.facebook.FacebookHelper r0 = com.callapp.contacts.api.helper.facebook.FacebookHelper.this
                        r1 = r5
                        android.content.Context r1 = r6
                        r2 = r9
                        java.lang.String r2 = r2.getLink()
                        r3 = r5
                        java.lang.Runnable r3 = r7
                        boolean r0 = com.callapp.contacts.api.helper.facebook.FacebookHelper.b(r0, r1, r2, r3)
                        r10 = r0
                        r0 = 1
                        r11 = r0
                        r0 = r10
                        if (r0 != 0) goto L_0x0067
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
                        boolean r0 = com.callapp.contacts.api.helper.facebook.FacebookHelper.b(r0, r1, r2, r3)
                        if (r0 == 0) goto L_0x0069
                    L_0x0067:
                        r0 = 1
                        r8 = r0
                    L_0x0069:
                        r0 = r8
                        if (r0 != 0) goto L_0x00b9
                        r0 = r5
                        com.callapp.contacts.api.helper.facebook.FacebookHelper r0 = com.callapp.contacts.api.helper.facebook.FacebookHelper.this
                        boolean r0 = r0.isNativeAppInstalled()
                        if (r0 == 0) goto L_0x00b9
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
                        boolean r0 = com.callapp.contacts.util.Activities.a(r0)
                        if (r0 == 0) goto L_0x00b9
                        r0 = r6
                        int r1 = com.callapp.contacts.util.Activities.getIntentFlagForNewDocument()
                        android.content.Intent r0 = r0.addFlags(r1)
                        r0 = r5
                        android.content.Context r0 = r6
                        r1 = r6
                        boolean r0 = com.callapp.contacts.util.Activities.a(r0, r1)
                        r0 = r11
                        r8 = r0
                        goto L_0x00b9
                    L_0x00b9:
                        r0 = r5
                        com.callapp.contacts.manager.task.OutcomeListener r0 = r8
                        r1 = r8
                        com.callapp.contacts.api.helper.facebook.FacebookHelper.c(r0, r1)
                        return
                    L_0x00c2:
                        r0 = r5
                        com.callapp.contacts.manager.task.OutcomeListener r0 = r8
                        com.callapp.contacts.api.helper.facebook.FacebookHelper.b(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.facebook.FacebookHelper.AnonymousClass6.doTask():void");
                }
            }.execute();
            return;
        }
        FeedbackManager.a(context);
        a(outcomeListener, false);
    }

    public final void a(final Context context, final String str, final Runnable runnable, final OutcomeListener outcomeListener, String str2) {
        if (!StringUtils.b((CharSequence) str2)) {
            a(context, str, runnable, outcomeListener);
        } else if (StringUtils.b((Object) str2, (Object) "user")) {
            a(context, str, runnable, outcomeListener);
        } else if (StringUtils.b((Object) str2, (Object) "page")) {
            boolean b2 = b(context, str, runnable);
            if (outcomeListener != null) {
                outcomeListener.a(b2);
            }
        } else if (StringUtils.b((Object) str2, (Object) "placeinformation") || StringUtils.b((Object) str2, (Object) "facebookPlaceData")) {
            new Task() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.5
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    JSONFBUserOrPage d2 = FacebookHelper.this.d(str, false);
                    if (d2 != null) {
                        FacebookHelper facebookHelper = FacebookHelper.this;
                        boolean b3 = FacebookHelper.b(context, d2.getId(), runnable);
                        OutcomeListener outcomeListener2 = outcomeListener;
                        if (outcomeListener2 != null) {
                            FacebookHelper.a(outcomeListener2, b3);
                            return;
                        }
                        return;
                    }
                    OutcomeListener outcomeListener3 = outcomeListener;
                    if (outcomeListener3 != null) {
                        FacebookHelper.a(outcomeListener3, false);
                    }
                }
            }.execute();
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(ContactData contactData, JSONSocialNetworkID jSONSocialNetworkID) {
        contactData.getDeviceData().setFacebookId(jSONSocialNetworkID);
        contactData.updateFacebookId();
    }

    public final boolean a(Context context, String str, Runnable runnable) {
        String str2;
        boolean z = false;
        if (!StringUtils.b((CharSequence) str)) {
            return false;
        }
        if (isNativeAppInstalled()) {
            String[] split = str.split("/");
            String str3 = null;
            if (split.length > 0) {
                str3 = split[split.length - 1];
                z = StringUtils.g(str3);
            }
            if (z) {
                str2 = "fb://profile/".concat(String.valueOf(str3));
            } else {
                str2 = "fb://facewebmodal/f?href=" + UrlUtils.a(str);
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
            if (Activities.a(intent)) {
                intent.addFlags(Activities.getIntentFlagForNewDocument());
                Activities.a(context, intent);
                return true;
            }
            Activities.a(context, str, runnable);
            return true;
        }
        Activities.a(context, str, runnable);
        return true;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean a(String str) {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void b(String str) {
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final GlideUrl c(String str) {
        return StringUtils.b((CharSequence) str) ? new GlideUrl(str, new LazyHeaders.Builder().addHeader("Authorization", getAuthorizationHeaderValue()).build()) : new GlideUrl(str);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> c(final String str, boolean z) {
        JSONFBEntity jSONFBEntity;
        ArrayList arrayList = null;
        if (StringUtils.a((CharSequence) str)) {
            jSONFBEntity = null;
        } else {
            jSONFBEntity = (JSONFBEntity) a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<JSONFBEntity>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.9
                @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
                public final /* synthetic */ JSONFBEntity a() {
                    FacebookHelper.this.a(UsageCounter.facebookRequests, CallAppApplication.get().getResources().getInteger(2131427354), CallAppApplication.get().getResources().getInteger(2131427355), false);
                    JSONFBEntity jSONFBEntity2 = null;
                    JSONFBEntity jSONFBEntity3 = null;
                    if (!StringUtils.g(str.replace("+", "").replace(org.apache.commons.lang3.StringUtils.SPACE, ""))) {
                        return null;
                    }
                    String b2 = RegexUtils.b((CharSequence) Phone.b(str).b());
                    Bundle bundle = new Bundle();
                    bundle.putString("fields", "id,name");
                    bundle.putString("q", b2);
                    bundle.putInt("limit", 10);
                    List a2 = FacebookHelper.a(FacebookHelper.this, GraphRequest.a(new GraphRequest(AccessToken.getCurrentAccessToken(), "/pages/search", bundle, k.GET, null, "v4.0")).f20036a);
                    final ArrayList arrayList2 = new ArrayList();
                    boolean z2 = false;
                    if (CollectionUtils.b(a2)) {
                        Iterator it2 = a2.iterator();
                        while (true) {
                            jSONFBEntity2 = jSONFBEntity3;
                            if (!it2.hasNext()) {
                                break;
                            }
                            JSONFBUserOrPage jSONFBUserOrPage = (JSONFBUserOrPage) it2.next();
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("fields", "id,name,about,awards,category,company_overview,connected_instagram_account,cover,current_location,description,display_subtext,emails,general_info,hours,instagram_business_account,link,location,overall_star_rating,phone,price_range,single_line_address,website,whatsapp_number");
                            bundle2.putString("locale", "en");
                            JSONFBUserOrPage a3 = FacebookHelper.a(FacebookHelper.this, GraphRequest.a(new GraphRequest(AccessToken.getCurrentAccessToken(), jSONFBUserOrPage.getId(), bundle2, k.GET, null, "v4.0")).f20038c);
                            if (a3 != null) {
                                String phone = a3.getPhone();
                                if (StringUtils.b((CharSequence) phone)) {
                                    arrayList2.add(a3);
                                    if (!z2 && StringUtils.b(Phone.b(str).b(), Phone.b(phone).b())) {
                                        jSONFBEntity3 = new JSONFBEntity();
                                        jSONFBEntity3.setId(a3.getId());
                                        jSONFBEntity3.setName(a3.getName());
                                        jSONFBEntity3.setLink(a3.getLink());
                                        jSONFBEntity3.setProfileImageUrl(FacebookHelper.r(a3.getId()));
                                        if (StringUtils.b((CharSequence) a3.getPhone())) {
                                            jSONFBEntity3.setPhone(a3.getPhone());
                                        }
                                        z2 = true;
                                    }
                                }
                            }
                        }
                    }
                    if (CollectionUtils.b(a2)) {
                        new Task() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.9.1
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                ExternalSourcesUtils.a(arrayList2);
                            }
                        }.execute();
                    }
                    if (!FacebookHelper.this.f14142a) {
                        FeedbackManager feedbackManager = FeedbackManager.get();
                        feedbackManager.a("searched " + FacebookHelper.this.getName(), 17);
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

    public final JSONFBUserOrPage d(final String str, boolean z) {
        return (JSONFBUserOrPage) a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<JSONFBUserOrPage>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.13
            /* JADX WARN: Removed duplicated region for block: B:26:0x013d  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x0149  */
            /* JADX WARN: Removed duplicated region for block: B:30:0x017e  */
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final /* synthetic */ com.callapp.common.model.json.JSONFBUserOrPage a() {
                /*
                    Method dump skipped, instructions count: 465
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.facebook.FacebookHelper.AnonymousClass13.a():java.lang.Object");
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
    public final boolean d(String str) {
        return true;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void e() {
        try {
            com.facebook.login.g a2 = com.facebook.login.g.a();
            AccessToken.setCurrentAccessToken(null);
            Profile.setCurrentProfile(null);
            a2.a(false);
        } catch (FacebookException e2) {
            CLog.a(FacebookHelper.class, e2);
        } finally {
            n();
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String f(String str) {
        JSONFBUserOrPage d2 = d(str, true);
        if (d2 != null) {
            return d2.getName();
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean f() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String g(String str) {
        return k(str);
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
        return (List) a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.12
            /* JADX WARN: Code restructure failed: missing block: B:35:0x0110, code lost:
                if (com.callapp.framework.util.CollectionUtils.a(r10) != false) goto L_0x0113;
             */
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final /* synthetic */ java.util.List a() {
                /*
                    Method dump skipped, instructions count: 281
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.facebook.FacebookHelper.AnonymousClass12.a():java.lang.Object");
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
        if (CollectionUtils.b(friends)) {
            return friends.size();
        }
        return 0L;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public List<PersonData> getFriendsListAsPersonData() {
        List<JSONFBEntity> friends = getFriends();
        if (!CollectionUtils.b(friends)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(friends.size());
        for (JSONFBEntity jSONFBEntity : friends) {
            arrayList.add(new PersonData(jSONFBEntity));
        }
        return arrayList;
    }

    public JSONFBUserOrPage getLoggedInUser() {
        return d("me", false);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getName() {
        return "Facebook";
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getUserName() {
        String str;
        JSONFBUserOrPage loggedInUser = getLoggedInUser();
        if (loggedInUser == null) {
            return null;
        }
        if (StringUtils.b((CharSequence) loggedInUser.getUsername())) {
            return loggedInUser.getUsername();
        }
        String str2 = "";
        if (StringUtils.b((CharSequence) loggedInUser.getFirstName())) {
            str = "" + loggedInUser.getFirstName();
        } else {
            str = "";
        }
        String str3 = str;
        if (StringUtils.b((CharSequence) loggedInUser.getLastName())) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            if (!StringUtils.a((CharSequence) str)) {
                str2 = org.apache.commons.lang3.StringUtils.SPACE;
            }
            sb.append(str2);
            sb.append(loggedInUser.getLastName());
            str3 = sb.toString();
        }
        if (StringUtils.b((CharSequence) str3)) {
            return str3;
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String h(String str) throws UserNotFoundException, QuotaReachedException {
        ProfileImageUrl q = q(str);
        if (q == null || !StringUtils.b((CharSequence) q.f14180a)) {
            return null;
        }
        return r(q.f14181b);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String i(String str) {
        if (StringUtils.a((CharSequence) str) || !str.contains("facebook.com")) {
            return null;
        }
        Matcher matcher = RegexUtils.a("(?:http:\\/\\/)?(?:www.)?facebook.com\\/(?:(?:\\w)*#!\\/)?(?:pages\\/)?(?:[?\\w\\-]*\\/)?(?:profile.php\\?id=(?=\\d.*))?([\\w\\-\\.]*)?").matcher(str);
        if (!matcher.find()) {
            return null;
        }
        String group = matcher.group(1);
        if (!StringUtils.b((CharSequence) group) || !StringUtils.g(group)) {
            return null;
        }
        return group;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean i() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isLoggedIn() {
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        return currentAccessToken != null && !currentAccessToken.isExpired();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isNativeAppInstalled() {
        return Activities.a(new Intent("android.intent.action.VIEW", Uri.parse("fb://profile/1000")));
    }

    public final String k(String str) {
        ProfileImageUrl q = q(str);
        if (q != null) {
            return q.f14180a;
        }
        return null;
    }

    @Override // com.facebook.f
    public final void k() {
        super.b();
    }

    public final ArrayList<String> l(final String str) {
        return (ArrayList) a(new RemoteAccountHelper.SocialCallable<ArrayList>() { // from class: com.callapp.contacts.api.helper.facebook.FacebookHelper.8
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public final /* synthetic */ ArrayList a() {
                JSONArray optJSONArray;
                JSONObject optJSONObject;
                JSONArray optJSONArray2;
                JSONArray optJSONArray3;
                JSONObject optJSONObject2;
                ArrayList arrayList = new ArrayList();
                Bundle bundle = new Bundle();
                bundle.putString("fields", "id,name,created_time");
                AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                JSONObject jSONObject = GraphRequest.a(new GraphRequest(currentAccessToken, str + "/albums", bundle, k.GET, null, "v4.0")).f20036a;
                if (!(jSONObject == null || (optJSONArray = jSONObject.optJSONArray("data")) == null || optJSONArray.length() <= 0 || (optJSONObject = optJSONArray.optJSONObject(0)) == null || !StringUtils.b(optJSONObject.optString("name"), "Profile Pictures"))) {
                    String optString = optJSONObject.optString("id");
                    if (StringUtils.b((CharSequence) optString)) {
                        bundle.clear();
                        bundle.putString("fields", "images");
                        AccessToken currentAccessToken2 = AccessToken.getCurrentAccessToken();
                        JSONObject jSONObject2 = GraphRequest.a(new GraphRequest(currentAccessToken2, optString + "/photos", bundle, k.GET, null, "v4.0")).f20036a;
                        if (!(jSONObject2 == null || (optJSONArray2 = jSONObject2.optJSONArray("data")) == null)) {
                            for (int i = 0; i < optJSONArray2.length(); i++) {
                                JSONObject optJSONObject3 = optJSONArray2.optJSONObject(i);
                                if (!(optJSONObject3 == null || (optJSONArray3 = optJSONObject3.optJSONArray("images")) == null || (optJSONObject2 = optJSONArray3.optJSONObject(0)) == null)) {
                                    arrayList.add(optJSONObject2.optString(Payload.SOURCE).trim().replaceAll(org.apache.commons.lang3.StringUtils.SPACE, "%20"));
                                }
                            }
                        }
                    }
                }
                ArrayList arrayList2 = arrayList;
                if (CollectionUtils.a(arrayList)) {
                    String k = FacebookHelper.this.k(str);
                    if (StringUtils.b((CharSequence) k)) {
                        arrayList.add(k);
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

    @Override // com.facebook.f
    public final /* synthetic */ void l() {
        d();
        super.a();
    }

    public final String m(String str) {
        JsonNode jsonNode;
        JsonNode jsonNode2;
        JsonNode jsonNode3;
        String s = s(str);
        try {
            if (!HttpUtils.b()) {
                return null;
            }
            String str2 = s + "&redirect=false";
            ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(JsonNode.class);
            HashMap hashMap = new HashMap();
            hashMap.put("Authorization", getAuthorizationHeaderValue());
            HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(str2);
            httpRequestParamsBuilder.f16228c = classParserHttpResponseHandler;
            httpRequestParamsBuilder.f16226a = hashMap;
            HttpUtils.b(httpRequestParamsBuilder.a());
            JsonNode jsonNode4 = (JsonNode) classParserHttpResponseHandler.getResult();
            if (jsonNode4 == null || (jsonNode = jsonNode4.get("data")) == null || (jsonNode2 = jsonNode.get("is_silhouette")) == null || jsonNode2.asBoolean() || (jsonNode3 = jsonNode.get("url")) == null) {
                return null;
            }
            if (StringUtils.b((CharSequence) jsonNode3.asText())) {
                return s;
            }
            return null;
        } catch (IllegalStateException e2) {
            CLog.a(FacebookHelper.class, e2);
            return null;
        }
    }
}
