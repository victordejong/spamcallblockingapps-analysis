package com.callapp.contacts.api.helper.twitter;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.util.Pair;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.Objects;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.gmail.GmailManager;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.loader.social.SearchIsNotAvailableExecption;
import com.callapp.contacts.loader.social.UnauthorizedAccessErrorException;
import com.callapp.contacts.loader.social.UserNotFoundException;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.Friend;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.UsageCounter;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ArrayUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.PackageUtils;
import com.callapp.contacts.util.UpdateUserProfileUtil;
import com.callapp.contacts.util.http.HttpRequest;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.webview.AuthWebViewDialog;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.twitter.sdk.android.core.TwitterApiException;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.b;
import com.twitter.sdk.android.core.c;
import com.twitter.sdk.android.core.identity.h;
import com.twitter.sdk.android.core.internal.g;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;
import com.twitter.sdk.android.core.k;
import com.twitter.sdk.android.core.m;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.core.n;
import com.twitter.sdk.android.core.o;
import com.twitter.sdk.android.core.p;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.services.AccountService;
import com.twitter.sdk.android.core.t;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import retrofit2.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/twitter/TwitterHelper.class */
public class TwitterHelper extends RemoteAccountHelper {

    /* renamed from: c  reason: collision with root package name */
    public h f14222c;

    /* renamed from: d  reason: collision with root package name */
    private CustomTwitterServiceApiClient f14223d;
    private TwitterAuthToken e;
    private final Object f = new Object();
    private CallAppOAuth1aService g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient.class */
    public class CustomTwitterServiceApiClient extends o {
        CustomTwitterServiceApiClient() {
        }

        CustomTwitterServiceApiClient(t tVar) {
            super(tVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CallAppTwitterService getCustomService() {
            return (CallAppTwitterService) a(CallAppTwitterService.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException.class */
    public static class TwitterApiRuntimeException extends RuntimeException {
        TwitterApiRuntimeException(Throwable th) {
            super(th);
        }
    }

    public TwitterHelper() {
        if (!CallAppApplication.get().isUnitTestMode()) {
            p.a aVar = new p.a(CallAppApplication.get());
            aVar.f35198c = new TwitterAuthConfig("AaMTvkoPxVnh9AQW8jrwAQ", "4Qme3Xi36ET97QywsZ4kzjL7CXzJLRUADFgqYqv6Sw");
            if (Prefs.n.get().booleanValue()) {
                aVar.f35197b = new c(3);
                aVar.e = Boolean.TRUE;
            }
            n.a(new p(aVar.f35196a, aVar.f35197b, aVar.f35198c, aVar.f35199d, aVar.e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IDs a(String str, String str2, long j) {
        try {
            Response<IDs> a2 = getTwitterKitClient().getCustomService().getFriendsId(str, str2, String.valueOf(j), true).a();
            if (a2 == null || !a2.f39404a.isSuccessful()) {
                return null;
            }
            a2.f39405b.setRateLimit(new CallAppTwitterRateLimit(a2.f39404a.headers()));
            return a2.f39405b;
        } catch (IOException e) {
            CLog.a(TwitterHelper.class, e.getMessage());
            return null;
        }
    }

    private String a(String str, String str2) {
        String str3;
        if (StringUtils.b((CharSequence) str)) {
            String str4 = "twitter_user_profile_image_url_" + str2 + "_" + str;
            String str5 = (String) CacheManager.get().b(String.class, str4, false);
            str3 = str5;
            if (str5 == null) {
                str3 = str5;
                if (HttpUtils.a()) {
                    a(UsageCounter.twitterPicture, CallAppApplication.get().getResources().getInteger(2131427403), CallAppApplication.get().getResources().getInteger(2131427404), true);
                    User d2 = d(str, false);
                    str3 = str5;
                    if (d2 != null) {
                        String replace = (d2.defaultProfileImage || !StringUtils.b((CharSequence) d2.profileImageUrl)) ? "" : d2.profileImageUrl.replace("_normal", "CALLAPP#@#CALLAPP").replace("_bigger", "CALLAPP#@#CALLAPP").replace("_mini", "CALLAPP#@#CALLAPP").replace("CALLAPP#@#CALLAPP", str2);
                        CacheManager.get().a(String.class, str4, replace, 2131427399);
                        str3 = replace;
                    }
                }
            }
        } else {
            str3 = null;
        }
        return str3;
    }

    static /* synthetic */ List a(TwitterHelper twitterHelper, long[] jArr) throws TwitterException {
        if (jArr == null || jArr.length == 0) {
            throw new TwitterException("Empty list");
        }
        StringBuilder sb = new StringBuilder();
        for (long j : jArr) {
            sb.append(j);
            sb.append(",");
        }
        sb.deleteCharAt(sb.length() - 1);
        return twitterHelper.r(sb.toString());
    }

    private List<User> a(final boolean z) {
        return (List) a(new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.6
            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v35, types: [long] */
            /* JADX WARN: Type inference failed for: r7v0 */
            /* JADX WARN: Type inference failed for: r7v1 */
            /* JADX WARN: Type inference failed for: r7v2 */
            /* JADX WARN: Type inference failed for: r7v3 */
            /* JADX WARN: Type inference failed for: r7v4 */
            /* JADX WARN: Type inference failed for: r7v5 */
            /* JADX WARN: Type inference failed for: r7v6 */
            /* JADX WARN: Type inference failed for: r7v7 */
            /* JADX WARN: Unknown variable types count: 2 */
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.util.List<com.twitter.sdk.android.core.models.User> a() {
                /*
                    Method dump skipped, instructions count: 357
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.twitter.TwitterHelper.AnonymousClass6.a():java.util.List");
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return String.format("twitter_followers_%s", Boolean.valueOf(z));
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427396;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getRefreshInterval() {
                return 2131427395;
            }
        }, List.class);
    }

    static /* synthetic */ void a(TwitterHelper twitterHelper, String str, String str2) {
        Prefs.aG.set(new Pair(str, str2));
        twitterHelper.d();
        twitterHelper.a();
    }

    static /* synthetic */ void a(TwitterHelper twitterHelper, List list) {
        final List<User> followingByTheUser = twitterHelper.getFollowingByTheUser();
        final List<User> a2 = twitterHelper.a(true);
        Collections.sort(list, new Comparator<User>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.11
            @Override // java.util.Comparator
            public /* synthetic */ int compare(User user, User user2) {
                User user3 = user;
                User user4 = user2;
                int i = 0;
                if (Objects.a(user3, user4)) {
                    return 0;
                }
                if (user3 == null) {
                    return 1;
                }
                if (user4 == null) {
                    return -1;
                }
                int i2 = -2;
                int i3 = CollectionUtils.a(followingByTheUser, user3) ? -2 : 0;
                if (!CollectionUtils.a(followingByTheUser, user4)) {
                    i2 = 0;
                }
                int i4 = CollectionUtils.a(a2, user3) ? -1 : 0;
                if (CollectionUtils.a(a2, user4)) {
                    i = -1;
                }
                int compare = Integer.compare(i3 + i4, i2 + i);
                int i5 = compare;
                if (compare == 0) {
                    String str = user3.name;
                    if (StringUtils.a((CharSequence) str)) {
                        return 1;
                    }
                    i5 = str.compareToIgnoreCase(user4.name);
                }
                return i5;
            }
        });
    }

    private void a(TwitterException twitterException, boolean z) {
        CLog.a(TwitterHelper.class, twitterException);
        String message = twitterException.getMessage();
        boolean z2 = twitterException instanceof TwitterApiException;
        if (z2 && ((TwitterApiException) twitterException).a() == 0 && twitterException.getMessage().equals("401 ")) {
            return;
        }
        if (twitterException.getMessage().equalsIgnoreCase("429 ")) {
            throw new QuotaReachedException(twitterException);
        } else if ((twitterException instanceof TwitterAuthException) || ((StringUtils.b((CharSequence) message) && message.contains("401:Authentication credentials") && message.contains("were missing or incorrect")) || twitterException.getMessage().equalsIgnoreCase("215 "))) {
            Prefs.aG.set(null);
            throw new UnauthorizedAccessErrorException(twitterException);
        } else {
            if (z) {
                if (twitterException.getMessage().equalsIgnoreCase("34") && StringUtils.b((CharSequence) message) && message.contains("Sorry, that page does not exist")) {
                    throw new UserNotFoundException(twitterException);
                } else if (z2) {
                    TwitterApiException twitterApiException = (TwitterApiException) twitterException;
                    if (twitterApiException.a() == 50 && StringUtils.b((CharSequence) message)) {
                        if ((twitterApiException.f35086a == null ? null : twitterApiException.f35086a.message).contains("User not found")) {
                            throw new UserNotFoundException(twitterException);
                        }
                    }
                }
            }
            if (z2) {
                int a2 = ((TwitterApiException) twitterException).a();
                if (a2 == 89 || a2 == 239) {
                    this.f14223d = null;
                }
            }
        }
    }

    static /* synthetic */ void a(StringBuilder sb) {
        String twitterAccount = getTwitterAccount();
        String str = twitterAccount;
        if (StringUtils.a((CharSequence) twitterAccount)) {
            str = GmailManager.get().getGmailAccount();
        }
        if (StringUtils.b((CharSequence) str)) {
            sb.append("&screen_name=");
            sb.append(str);
        }
    }

    public static boolean a(Activity activity, String str, Runnable runnable) {
        boolean z;
        if (HttpUtils.a()) {
            String k = k(str);
            if (StringUtils.b((CharSequence) k)) {
                if (isTwitterAppInstalled()) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(k));
                    if (Activities.a(intent)) {
                        Activities.a(activity, intent);
                    } else {
                        Activities.a(activity, k, runnable);
                    }
                } else {
                    Activities.a(activity, k, runnable);
                }
            }
            z = true;
        } else {
            FeedbackManager.a(activity);
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IDs b(String str, String str2, long j) {
        try {
            Response<IDs> a2 = getTwitterKitClient().getCustomService().getFollowersId(str, str2, String.valueOf(j), true).a();
            if (a2 == null || !a2.f39404a.isSuccessful()) {
                return null;
            }
            a2.f39405b.setRateLimit(new CallAppTwitterRateLimit(a2.f39404a.headers()));
            return a2.f39405b;
        } catch (IOException e) {
            CLog.a(TwitterHelper.class, e.getMessage());
            return null;
        }
    }

    public static TwitterHelper get() {
        return Singletons.get().getTwitterHelper();
    }

    private List<User> getFollowingByTheUser() {
        return (List) a(new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.4
            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: b */
            public List<User> a() {
                List list;
                ArrayList arrayList;
                try {
                    Set friendIDs = TwitterHelper.this.getFriendIDs();
                    if (CollectionUtils.b(friendIDs)) {
                        list = TwitterHelper.a(TwitterHelper.this, ArrayUtils.a((Long[]) friendIDs.toArray(new Long[friendIDs.size()])));
                    } else {
                        list = null;
                    }
                    if (CollectionUtils.b(list)) {
                        ArrayList arrayList2 = new ArrayList(new HashSet(list));
                        Collections.sort(arrayList2, new Comparator<User>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.4.1
                            @Override // java.util.Comparator
                            public /* synthetic */ int compare(User user, User user2) {
                                return StringUtils.a(user.name, user2.name, true);
                            }
                        });
                        arrayList = arrayList2;
                    } else {
                        arrayList = new ArrayList();
                    }
                    return arrayList;
                } catch (TwitterException e) {
                    throw new TwitterApiRuntimeException(e);
                }
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "twitter_friends";
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427396;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getRefreshInterval() {
                return 2131427395;
            }
        }, List.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<Long> getFriendIDs() {
        return (Set) a(new RemoteAccountHelper.SocialCallable<HashSet>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.7
            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v19, types: [long] */
            /* JADX WARN: Type inference failed for: r8v0 */
            /* JADX WARN: Type inference failed for: r8v1 */
            /* JADX WARN: Type inference failed for: r8v2 */
            /* JADX WARN: Type inference failed for: r8v3 */
            /* JADX WARN: Type inference failed for: r8v4 */
            /* JADX WARN: Type inference failed for: r8v5 */
            /* JADX WARN: Type inference failed for: r8v6 */
            /* JADX WARN: Type inference failed for: r8v7 */
            /* JADX WARN: Unknown variable types count: 2 */
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.util.HashSet<java.lang.Long> a() {
                /*
                    r6 = this;
                    java.util.HashSet r0 = new java.util.HashSet
                    r1 = r0
                    r1.<init>()
                    r7 = r0
                    r0 = -1
                    r8 = r0
                    r0 = 0
                    r10 = r0
                    r0 = r6
                    com.callapp.contacts.api.helper.twitter.TwitterHelper r0 = com.callapp.contacts.api.helper.twitter.TwitterHelper.this     // Catch: TwitterException -> 0x0091
                    com.twitter.sdk.android.core.models.User r0 = com.callapp.contacts.api.helper.twitter.TwitterHelper.g(r0)     // Catch: TwitterException -> 0x0091
                    r11 = r0
                    r0 = r11
                    if (r0 == 0) goto L_0x008f
                L_0x001d:
                    r0 = r10
                    if (r0 != 0) goto L_0x008f
                    r0 = r6
                    com.callapp.contacts.api.helper.twitter.TwitterHelper r0 = com.callapp.contacts.api.helper.twitter.TwitterHelper.this     // Catch: TwitterException -> 0x0091
                    r1 = r11
                    java.lang.String r1 = r1.screenName     // Catch: TwitterException -> 0x0091
                    r2 = r11
                    java.lang.String r2 = r2.idStr     // Catch: TwitterException -> 0x0091
                    r3 = r8
                    com.callapp.contacts.api.helper.twitter.IDs r0 = com.callapp.contacts.api.helper.twitter.TwitterHelper.b(r0, r1, r2, r3)     // Catch: TwitterException -> 0x0091
                    r12 = r0
                    r0 = r12
                    if (r0 == 0) goto L_0x0089
                    r0 = r12
                    long[] r0 = r0.getIDs()     // Catch: TwitterException -> 0x0091
                    r13 = r0
                    r0 = r13
                    if (r0 == 0) goto L_0x0057
                    r0 = r13
                    int r0 = r0.length     // Catch: TwitterException -> 0x0091
                    if (r0 <= 0) goto L_0x0057
                    r0 = r7
                    r1 = r13
                    java.lang.Long[] r1 = com.callapp.contacts.util.ArrayUtils.a(r1)     // Catch: TwitterException -> 0x0091
                    boolean r0 = java.util.Collections.addAll(r0, r1)     // Catch: TwitterException -> 0x0091
                L_0x0057:
                    r0 = r12
                    long r0 = r0.getNextCursor()     // Catch: TwitterException -> 0x0091
                    r14 = r0
                    r0 = r12
                    com.callapp.contacts.api.helper.twitter.CallAppTwitterRateLimit r0 = r0.getRateLimit()     // Catch: TwitterException -> 0x0091
                    r12 = r0
                    r0 = r14
                    r8 = r0
                    r0 = r14
                    r1 = 0
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 <= 0) goto L_0x0089
                    r0 = r14
                    r8 = r0
                    r0 = r12
                    if (r0 == 0) goto L_0x001d
                    r0 = r12
                    int r0 = r0.getRemaining()     // Catch: TwitterException -> 0x0091
                    r16 = r0
                    r0 = r14
                    r8 = r0
                    r0 = r16
                    if (r0 > 0) goto L_0x001d
                    r0 = r14
                    r8 = r0
                L_0x0089:
                    r0 = 1
                    r10 = r0
                    goto L_0x001d
                L_0x008f:
                    r0 = r7
                    return r0
                L_0x0091:
                    r11 = move-exception
                    com.callapp.contacts.api.helper.twitter.TwitterHelper$TwitterApiRuntimeException r0 = new com.callapp.contacts.api.helper.twitter.TwitterHelper$TwitterApiRuntimeException
                    r1 = r0
                    r2 = r11
                    r1.<init>(r2)
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.twitter.TwitterHelper.AnonymousClass7.a():java.util.HashSet");
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "twitter_friends_ids";
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427396;
            }
        }, HashSet.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, User> getFriendsMap() {
        HashMap hashMap = (HashMap) CacheManager.get().b(HashMap.class, "twitter_friends_map", false);
        if (CollectionUtils.b(hashMap)) {
            return hashMap;
        }
        List<User> b2 = b(true, false);
        if (CollectionUtils.b(b2)) {
            HashMap hashMap2 = new HashMap();
            for (User user : b2) {
                hashMap2.put(user.screenName, user);
            }
            hashMap = hashMap2;
            if (CollectionUtils.b(hashMap2)) {
                CacheManager.get().a(HashMap.class, "twitter_friends_map", hashMap2, 2131427396);
                hashMap = hashMap2;
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public User getMyUser() {
        try {
            AccountService accountService = getTwitterKitClient().getAccountService();
            Boolean bool = Boolean.TRUE;
            Response<User> a2 = accountService.verifyCredentials(bool, bool, Boolean.TRUE).a();
            if (a2 == null || !a2.f39404a.isSuccessful()) {
                return null;
            }
            return a2.f39405b;
        } catch (IOException e) {
            CLog.a(TwitterHelper.class, e.getMessage());
            return null;
        }
    }

    private static String getTwitterAccount() {
        String str;
        Account[] accounts = AccountManager.get(CallAppApplication.get()).getAccounts();
        int length = accounts.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                str = null;
                break;
            }
            Account account = accounts[i];
            if (account.type.contains("twitter")) {
                str = account.name;
                break;
            }
            i++;
        }
        return str;
    }

    private CustomTwitterServiceApiClient getTwitterKitClient() {
        CustomTwitterServiceApiClient customTwitterServiceApiClient;
        synchronized (this.f) {
            if (this.f14223d == null && isLoggedIn()) {
                t a2 = r.a().f35203b.a();
                if ((a2 == null || StringUtils.a((CharSequence) ((TwitterAuthToken) a2.f35184a).token)) && Prefs.aG.isNotNull()) {
                    r.a().f35203b.a((m<t>) new t(new TwitterAuthToken((String) ((Pair) Prefs.aG.get()).first, (String) ((Pair) Prefs.aG.get()).second), 0L, null));
                }
                if (r.a().f35203b.a() != null) {
                    this.f14223d = new CustomTwitterServiceApiClient(r.a().f35203b.a());
                } else {
                    Prefs.aG.set(null);
                }
            }
            customTwitterServiceApiClient = this.f14223d;
        }
        return customTwitterServiceApiClient;
    }

    private String getTwitterScreenName() {
        try {
            t a2 = r.a().f35203b.a();
            if (a2 == null) {
                return null;
            }
            return a2.f35213c;
        } catch (TwitterException e) {
            a(e, false);
            return null;
        }
    }

    public static boolean isTwitterAppInstalled() {
        return PackageUtils.a(CallAppApplication.get(), "com.twitter.android");
    }

    public static String k(String str) {
        return "https://twitter.com/".concat(String.valueOf(str));
    }

    private boolean p(String str) {
        if (!isLoggedIn() || !HttpUtils.a() || !isReadyForRemoteCalls()) {
            return false;
        }
        try {
            Response<Object> a2 = getTwitterKitClient().getCustomService().follow(str, false).a();
            if (a2 != null) {
                return a2.f39404a.isSuccessful();
            }
            return false;
        } catch (IOException e) {
            CLog.a(TwitterHelper.class, e.getMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public User q(String str) {
        try {
            Response<User> a2 = getTwitterKitClient().getCustomService().show(str).a();
            if (a2 == null || !a2.f39404a.isSuccessful()) {
                return null;
            }
            return a2.f39405b;
        } catch (IOException e) {
            CLog.a(TwitterHelper.class, e.getMessage());
            return null;
        }
    }

    private List<User> r(String str) {
        try {
            Response<List<User>> a2 = getTwitterKitClient().getCustomService().lookup(str, true).a();
            if (a2 == null || !a2.f39404a.isSuccessful()) {
                return null;
            }
            return a2.f39405b;
        } catch (IOException e) {
            CLog.a(TwitterHelper.class, e.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<User> s(String str) {
        try {
            Response<List<User>> a2 = getTwitterKitClient().getCustomService().searchUser(str, 20L, 0L, true).a();
            if (a2 == null || !a2.f39404a.isSuccessful()) {
                return null;
            }
            return a2.f39405b;
        } catch (IOException e) {
            CLog.a(TwitterHelper.class, e.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Tweet t(String str) {
        o oVar;
        try {
            r a2 = r.a();
            t a3 = a2.f35203b.a();
            if (a3 == null) {
                if (a2.f == null) {
                    a2.d();
                }
                oVar = a2.f;
            } else {
                oVar = a2.a(a3);
            }
            Response<List<Tweet>> a4 = oVar.getStatusesService().userTimeline(null, str, 1, null, null, Boolean.FALSE, Boolean.TRUE, null, Boolean.TRUE).a();
            if (a4 == null || !a4.f39404a.isSuccessful()) {
                return null;
            }
            return CollectionUtils.b(a4.f39405b) ? a4.f39405b.get(0) : new Tweet(null, null, null, null, null, -1, false, null, -1L, null, null, -1L, null, -1L, null, null, null, false, null, -1L, null, null, -1, false, null, null, null, null, false, null, false, null, null, null);
        } catch (IOException e) {
            CLog.a(TwitterHelper.class, e.getMessage());
            return null;
        }
    }

    private boolean u(String str) {
        try {
            Response<Object> a2 = getTwitterKitClient().getCustomService().postStatus(str).a();
            if (a2 != null) {
                return a2.f39404a.isSuccessful();
            }
            return false;
        } catch (IOException e) {
            CLog.a(TwitterHelper.class, e.getMessage());
            return false;
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final JSONSocialNetworkID a(ContactData contactData) {
        return contactData.getTwitterScreenName();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final HttpRequest a(HttpRequest httpRequest) {
        String twitterScreenName = getTwitterScreenName();
        HttpRequest httpRequest2 = httpRequest;
        if (StringUtils.b((CharSequence) twitterScreenName)) {
            httpRequest2 = httpRequest;
            if (httpRequest == null) {
                httpRequest2 = UpdateUserProfileUtil.a();
            }
            UpdateUserProfileUtil.b(httpRequest2, twitterScreenName);
        }
        return httpRequest2;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final <T> T a(RemoteAccountHelper.SocialCallable<T> socialCallable, boolean z) {
        try {
            return socialCallable.a();
        } catch (TwitterApiRuntimeException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                CLog.a(getClass(), e);
                return null;
            } else if (!(cause instanceof TwitterException)) {
                return null;
            } else {
                a((TwitterException) cause, z);
                return null;
            }
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> a(final String str, boolean z) {
        return (List) a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.8
            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v73, types: [long] */
            /* JADX WARN: Type inference failed for: r10v0 */
            /* JADX WARN: Type inference failed for: r10v1 */
            /* JADX WARN: Type inference failed for: r10v2 */
            /* JADX WARN: Type inference failed for: r10v3 */
            /* JADX WARN: Type inference failed for: r10v4 */
            /* JADX WARN: Type inference failed for: r10v5 */
            /* JADX WARN: Type inference failed for: r10v6 */
            /* JADX WARN: Type inference failed for: r10v7 */
            /* JADX WARN: Unknown variable types count: 2 */
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.util.List<com.callapp.contacts.model.PersonData> a() {
                /*
                    Method dump skipped, instructions count: 372
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.twitter.TwitterHelper.AnonymousClass8.a():java.util.List");
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "twitter_mutualfriends_pd_" + str;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427398;
            }
        }, (Class<Object>) List.class, true, false, z ? RemoteAccountHelper.SocialCacheMode.onlyFromCache : RemoteAccountHelper.SocialCacheMode.standard);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final Map<String, Friend> a(boolean z, boolean z2) {
        List<User> b2 = b(z2, true);
        if (!CollectionUtils.b(b2)) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(b2.size());
        for (User user : b2) {
            String str = user.name;
            String str2 = str;
            if (z) {
                str2 = str;
                if (StringUtils.b((CharSequence) str)) {
                    str2 = str.toLowerCase();
                }
            }
            hashMap.put(user.screenName, new Friend(user.screenName, str2, user.description));
        }
        return hashMap;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(final Activity activity) {
        if (isLoggedIn()) {
            a();
        } else if (isNativeAppInstalled()) {
            h hVar = new h();
            this.f14222c = hVar;
            hVar.a(activity, new b<t>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.1
                @Override // com.twitter.sdk.android.core.b
                public final void a(TwitterException twitterException) {
                    AnalyticsManager.get().a(Constants.REGISTRATION, "Twitter SDK TwitterException");
                    TwitterHelper.this.b();
                    TwitterHelper.this.f14222c = null;
                }

                @Override // com.twitter.sdk.android.core.b
                public final void a(k<t> kVar) {
                    TwitterHelper.this.f14223d = null;
                    TwitterAuthToken twitterAuthToken = (TwitterAuthToken) kVar.f35182a.f35184a;
                    TwitterHelper.a(TwitterHelper.this, twitterAuthToken.token, twitterAuthToken.secret);
                    TwitterHelper.this.f14222c = null;
                }
            });
        } else {
            b<OAuthResponse> bVar = new b<OAuthResponse>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.2
                @Override // com.twitter.sdk.android.core.b
                public final void a(TwitterException twitterException) {
                    CLog.a(TwitterHelper.class, twitterException);
                    TwitterHelper.this.b();
                }

                @Override // com.twitter.sdk.android.core.b
                public final void a(k<OAuthResponse> kVar) {
                    TwitterHelper.this.e = kVar.f35182a.authToken;
                    StringBuilder sb = new StringBuilder("https://api.twitter.com/oauth/authorize?oauth_token=");
                    sb.append(TwitterHelper.this.e.token);
                    TwitterHelper.a(sb);
                    PopupManager.get().a(activity, new AuthWebViewDialog(activity, sb.toString(), new DialogInterface.OnCancelListener() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.2.1
                        @Override // android.content.DialogInterface.OnCancelListener
                        public void onCancel(DialogInterface dialogInterface) {
                            CLog.a(getClass(), "Login cancelled");
                            if (TwitterHelper.this.f14143b != null) {
                                TwitterHelper.this.f14143b.c();
                            }
                        }
                    }, TwitterHelper.this));
                }
            };
            CallAppOAuth1aService callAppOAuth1aService = new CallAppOAuth1aService(r.a(), new g());
            this.g = callAppOAuth1aService;
            callAppOAuth1aService.a(bVar);
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(Activity activity, String str, Runnable runnable, OutcomeListener outcomeListener) {
        a(outcomeListener, a(activity, str, runnable));
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(ContactData contactData, JSONSocialNetworkID jSONSocialNetworkID) {
        contactData.getDeviceData().setTwitterScreenName(jSONSocialNetworkID);
        contactData.updateTwitterScreenName();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean a(String str) {
        return StringUtils.a((CharSequence) str) || str.contains("default_profile");
    }

    public final List<User> b(boolean z, boolean z2) {
        List<User> list;
        if (isLoggedIn()) {
            String format = String.format("twitter_friends_sorted_%s", Boolean.valueOf(z));
            synchronized (format.intern()) {
                List<User> list2 = (List) CacheManager.get().b(List.class, format, false);
                list = list2;
                if (list2 == null) {
                    list = list2;
                    if (HttpUtils.a()) {
                        ArrayList arrayList = new ArrayList();
                        List<User> followingByTheUser = getFollowingByTheUser();
                        if (CollectionUtils.b(followingByTheUser)) {
                            arrayList.addAll(followingByTheUser);
                        }
                        if (z) {
                            List<User> a2 = a(z2);
                            if (CollectionUtils.b(a2)) {
                                arrayList.addAll(a2);
                            }
                        }
                        list = new ArrayList<>(new HashSet(arrayList));
                        Collections.sort(list, new Comparator<User>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.5
                            @Override // java.util.Comparator
                            public /* synthetic */ int compare(User user, User user2) {
                                return StringUtils.a(user.name, user2.name, true);
                            }
                        });
                        CacheManager.get().a(List.class, format, list, 2131427396);
                        AnalyticsManager.get().a(Constants.SYNCERS, "Twitter friends count", (String) null, list.size(), new String[0]);
                    }
                }
            }
        } else {
            list = null;
        }
        return list;
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void b(String str) {
        try {
            CallAppOAuth1aService callAppOAuth1aService = this.g;
            if (callAppOAuth1aService != null) {
                callAppOAuth1aService.a(new b<OAuthResponse>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.3
                    @Override // com.twitter.sdk.android.core.b
                    public final void a(TwitterException twitterException) {
                        TwitterHelper.this.b();
                    }

                    @Override // com.twitter.sdk.android.core.b
                    public final void a(k<OAuthResponse> kVar) {
                        if (kVar == null || kVar.f35182a == null) {
                            TwitterHelper.this.b();
                            return;
                        }
                        TwitterHelper.this.f14223d = null;
                        r.a().f35203b.a((m<t>) new t(new TwitterAuthToken(kVar.f35182a.authToken.token, kVar.f35182a.authToken.secret), kVar.f35182a.userId, kVar.f35182a.userName));
                        TwitterHelper.a(TwitterHelper.this, kVar.f35182a.authToken.token, kVar.f35182a.authToken.secret);
                    }
                }, this.e, str);
            }
        } catch (TwitterException e) {
            a(e, false);
            b();
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> c(final String str, boolean z) throws SearchIsNotAvailableExecption {
        ArrayList arrayList;
        List list = (List) a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.10
            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: b */
            public List a() {
                List list2 = null;
                ArrayList arrayList2 = null;
                if (StringUtils.b((CharSequence) str)) {
                    try {
                        TwitterHelper.this.a(UsageCounter.twitterSearchRequests, CallAppApplication.get().getResources().getInteger(2131427400), CallAppApplication.get().getResources().getInteger(2131427401), true);
                        List s = TwitterHelper.this.s(str);
                        if (!TwitterHelper.this.f14142a) {
                            FeedbackManager feedbackManager = FeedbackManager.get();
                            feedbackManager.a("searched " + TwitterHelper.this.getName(), 17);
                        }
                        if (CollectionUtils.b(s)) {
                            arrayList2 = new ArrayList(s);
                            TwitterHelper.a(TwitterHelper.this, arrayList2);
                        }
                        list2 = arrayList2;
                        if (arrayList2 == null) {
                            list2 = Collections.emptyList();
                        }
                    } catch (TwitterException e) {
                        throw new TwitterApiRuntimeException(e);
                    }
                }
                return list2;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "twitter_search_" + str;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427402;
            }
        }, (Class<Object>) List.class, true, false, z ? RemoteAccountHelper.SocialCacheMode.onlyFromCache : RemoteAccountHelper.SocialCacheMode.standard);
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(list.size());
            Iterator it2 = list.iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it2.hasNext()) {
                    break;
                }
                arrayList2.add(new PersonData((User) it2.next()));
            }
        } else {
            arrayList = null;
        }
        return arrayList;
    }

    public final User d(final String str, boolean z) {
        return (User) a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<User>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.12
            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: b */
            public User a() {
                User user = null;
                User user2 = null;
                if (StringUtils.b((CharSequence) str)) {
                    Map friendsMap = TwitterHelper.this.getFriendsMap();
                    if (CollectionUtils.b(friendsMap)) {
                        user2 = (User) friendsMap.get(str);
                    }
                    user = user2;
                    if (user2 == null) {
                        user = user2;
                        if (HttpUtils.a()) {
                            TwitterHelper.this.a(UsageCounter.twitterUser, CallAppApplication.get().getResources().getInteger(2131427403), CallAppApplication.get().getResources().getInteger(2131427404), true);
                            try {
                                User q = TwitterHelper.this.q(str);
                                user = user2;
                                if (q != null) {
                                    user = q;
                                }
                            } catch (TwitterException e) {
                                throw new TwitterApiRuntimeException(e);
                            }
                        }
                    }
                }
                return user;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public String getCacheKey() {
                return "twitter_user_" + str;
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.SocialCallable
            public int getCacheTtl() {
                return 2131427407;
            }
        }, (Class<Object>) User.class, true, z);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void e() {
        if (isLoggedIn() && HttpUtils.a() && isReadyForRemoteCalls()) {
            CacheManager.get().a(User.class, "twitter_user_".concat(String.valueOf(getTwitterScreenName())));
            UserProfileManager.get().a(4);
        }
        CacheManager.get().a(List.class, String.format("twitter_friends_sorted_%s", Boolean.TRUE));
        CacheManager.get().a(List.class, String.format("twitter_friends_sorted_%s", Boolean.FALSE));
        Prefs.aG.set(null);
        r.a().f35203b.b();
        this.f14222c = null;
        this.f14223d = null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String f(String str) {
        User d2 = d(str, true);
        if (d2 != null) {
            return d2.name;
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String g(String str) {
        return a(str, "");
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public int getApiConstantNetworkId() {
        return 4;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getCurrentUserId() {
        if (!isLoggedIn() || !HttpUtils.a() || !isReadyForRemoteCalls()) {
            return null;
        }
        return getTwitterScreenName();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public DataSource getDataSource() {
        return DataSource.twitter;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public long getFriendsCount() {
        List<User> b2 = b(true, true);
        if (CollectionUtils.b(b2)) {
            return b2.size();
        }
        return 0L;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public List<PersonData> getFriendsListAsPersonData() {
        List<User> b2 = b(true, true);
        if (!CollectionUtils.b(b2)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(b2.size());
        for (User user : b2) {
            arrayList.add(new PersonData(user));
        }
        return arrayList;
    }

    public User getLoggedInUser() {
        if (!isLoggedIn() || !HttpUtils.a() || !isReadyForRemoteCalls()) {
            return null;
        }
        try {
            return d(getTwitterScreenName(), false);
        } catch (TwitterException e) {
            a(e, false);
            return null;
        } catch (IllegalStateException e2) {
            return null;
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getName() {
        return "Twitter";
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getUserName() {
        return getCurrentUserId();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String h(String str) throws UserNotFoundException {
        return m(str);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String i(String str) {
        if (StringUtils.a((CharSequence) str) || !str.contains("twitter.com")) {
            return null;
        }
        return a(str, RegexUtils.a("(?:http:\\/\\/)?(?:www.)?twitter.com\\/(?:(?:\\w)*#!\\/)?([\\w\\-\\.]*)?"));
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean i() {
        return p("getcallapp");
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isLoggedIn() {
        return Prefs.aG.isNotNull();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isNativeAppInstalled() {
        return isTwitterAppInstalled();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isReadyForRemoteCalls() {
        boolean z = false;
        try {
            if (getTwitterKitClient() != null) {
                z = true;
            }
        } catch (TwitterException e) {
        }
        return z;
    }

    public final String l(String str) {
        String a2 = a(str, "");
        String str2 = a2;
        if (a(a2)) {
            str2 = null;
        }
        return str2;
    }

    public final String m(String str) {
        String a2 = a(str, "_bigger");
        String str2 = a2;
        if (a(a2)) {
            str2 = null;
        }
        return str2;
    }

    public final boolean n(String str) {
        boolean z = false;
        boolean z2 = false;
        if (isLoggedIn()) {
            z2 = false;
            if (HttpUtils.a()) {
                if (!isReadyForRemoteCalls()) {
                    z2 = false;
                } else {
                    try {
                        z = u(str);
                    } catch (TwitterException e) {
                        a(e, false);
                    }
                    z2 = z;
                    if (!z) {
                        AnalyticsManager.get().a(Constants.FAILED, "Failed to post", getName());
                        z2 = z;
                    }
                }
            }
        }
        return z2;
    }
}
