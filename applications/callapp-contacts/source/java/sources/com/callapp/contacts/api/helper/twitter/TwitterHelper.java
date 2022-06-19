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
import com.twitter.sdk.android.core.AbstractC17206b;
import com.twitter.sdk.android.core.AbstractC17279m;
import com.twitter.sdk.android.core.C17207c;
import com.twitter.sdk.android.core.C17277k;
import com.twitter.sdk.android.core.C17282n;
import com.twitter.sdk.android.core.C17283o;
import com.twitter.sdk.android.core.C17284p;
import com.twitter.sdk.android.core.C17288r;
import com.twitter.sdk.android.core.C17292t;
import com.twitter.sdk.android.core.TwitterApiException;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.identity.C17229h;
import com.twitter.sdk.android.core.internal.C17254g;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;
import com.twitter.sdk.android.core.models.Tweet;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.core.services.AccountService;
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

    /* renamed from: c */
    public C17229h f24888c;

    /* renamed from: d */
    private CustomTwitterServiceApiClient f24889d;

    /* renamed from: e */
    private TwitterAuthToken f24890e;

    /* renamed from: f */
    private final Object f24891f = new Object();

    /* renamed from: g */
    private CallAppOAuth1aService f24892g;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient.class */
    public class CustomTwitterServiceApiClient extends C17283o {
        CustomTwitterServiceApiClient() {
            TwitterHelper.this = r4;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        CustomTwitterServiceApiClient(C17292t c17292t) {
            super(c17292t);
            TwitterHelper.this = r4;
        }

        public CallAppTwitterService getCustomService() {
            return (CallAppTwitterService) m5627a(CallAppTwitterService.class);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException.class */
    public static class TwitterApiRuntimeException extends RuntimeException {
        TwitterApiRuntimeException(Throwable th) {
            super(th);
        }
    }

    public TwitterHelper() {
        if (!CallAppApplication.get().isUnitTestMode()) {
            C17284p.C17286a c17286a = new C17284p.C17286a(CallAppApplication.get());
            c17286a.f61066c = new TwitterAuthConfig("AaMTvkoPxVnh9AQW8jrwAQ", "4Qme3Xi36ET97QywsZ4kzjL7CXzJLRUADFgqYqv6Sw");
            if (Prefs.f26657n.get().booleanValue()) {
                c17286a.f61065b = new C17207c(3);
                c17286a.f61068e = Boolean.TRUE;
            }
            C17282n.m5631a(new C17284p(c17286a.f61064a, c17286a.f61065b, c17286a.f61066c, c17286a.f61067d, c17286a.f61068e));
        }
    }

    /* renamed from: a */
    public IDs m29150a(String str, String str2, long j) {
        try {
            Response<IDs> mo56a = getTwitterKitClient().getCustomService().getFriendsId(str, str2, String.valueOf(j), true).mo56a();
            if (mo56a == null || !mo56a.f67638a.isSuccessful()) {
                return null;
            }
            mo56a.f67639b.setRateLimit(new CallAppTwitterRateLimit(mo56a.f67638a.headers()));
            return mo56a.f67639b;
        } catch (IOException e) {
            CLog.m27611a(TwitterHelper.class, e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    private String m29151a(String str, String str2) {
        String str3;
        if (StringUtils.m26045b((CharSequence) str)) {
            String str4 = "twitter_user_profile_image_url_" + str2 + "_" + str;
            String str5 = (String) CacheManager.get().m28378b(String.class, str4, false);
            str3 = str5;
            if (str5 == null) {
                str3 = str5;
                if (HttpUtils.m26985a()) {
                    m29247a(UsageCounter.twitterPicture, CallAppApplication.get().getResources().getInteger(2131427403), CallAppApplication.get().getResources().getInteger(2131427404), true);
                    User m29138d = m29138d(str, false);
                    str3 = str5;
                    if (m29138d != null) {
                        String replace = (m29138d.defaultProfileImage || !StringUtils.m26045b((CharSequence) m29138d.profileImageUrl)) ? "" : m29138d.profileImageUrl.replace("_normal", "CALLAPP#@#CALLAPP").replace("_bigger", "CALLAPP#@#CALLAPP").replace("_mini", "CALLAPP#@#CALLAPP").replace("CALLAPP#@#CALLAPP", str2);
                        CacheManager.get().m28388a(String.class, str4, replace, 2131427399);
                        str3 = replace;
                    }
                }
            }
        } else {
            str3 = null;
        }
        return str3;
    }

    /* renamed from: a */
    static /* synthetic */ List m29153a(TwitterHelper twitterHelper, long[] jArr) throws TwitterException {
        if (jArr == null || jArr.length == 0) {
            throw new TwitterException("Empty list");
        }
        StringBuilder sb = new StringBuilder();
        for (long j : jArr) {
            sb.append(j);
            sb.append(",");
        }
        sb.deleteCharAt(sb.length() - 1);
        return twitterHelper.m29125r(sb.toString());
    }

    /* renamed from: a */
    private List<User> m29148a(final boolean z) {
        return (List) m29251a(new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.6
            /* JADX WARN: Type inference failed for: r0v35, types: [long] */
            /* renamed from: b */
            public List<User> mo29086a() {
                ArrayList arrayList;
                char c = 65535;
                try {
                    User myUser = TwitterHelper.this.getMyUser();
                    ArrayList arrayList2 = null;
                    ArrayList arrayList3 = null;
                    if (myUser != null) {
                        boolean z2 = false;
                        while (true) {
                            arrayList2 = arrayList3;
                            if (z2) {
                                break;
                            }
                            IDs m29143b = TwitterHelper.this.m29143b(myUser.screenName, myUser.idStr, c);
                            ArrayList arrayList4 = arrayList3;
                            if (m29143b != null) {
                                long[] iDs = m29143b.getIDs();
                                ArrayList arrayList5 = arrayList3;
                                if (iDs != null) {
                                    arrayList5 = arrayList3;
                                    if (iDs.length > 0) {
                                        ArrayList arrayList6 = new ArrayList();
                                        long[] jArr = new long[100];
                                        int i = 0;
                                        while (true) {
                                            arrayList5 = arrayList6;
                                            if (i > iDs.length / 100) {
                                                break;
                                            }
                                            if (i == iDs.length / 100) {
                                                jArr = new long[iDs.length % 100];
                                            }
                                            if (jArr.length > 0) {
                                                System.arraycopy(iDs, i * 100, jArr, 0, jArr.length);
                                                List m29153a = TwitterHelper.m29153a(TwitterHelper.this, jArr);
                                                if (CollectionUtils.m26068b(m29153a)) {
                                                    arrayList6.addAll(m29153a);
                                                }
                                            }
                                            i++;
                                        }
                                    }
                                }
                                ?? nextCursor = m29143b.getNextCursor();
                                CallAppTwitterRateLimit rateLimit = m29143b.getRateLimit();
                                c = nextCursor;
                                arrayList4 = arrayList5;
                                if (nextCursor > 0) {
                                    c = nextCursor;
                                    arrayList3 = arrayList5;
                                    if (rateLimit != null) {
                                        c = nextCursor;
                                        arrayList3 = arrayList5;
                                        if (rateLimit.getRemaining() <= 0) {
                                            arrayList4 = arrayList5;
                                            c = nextCursor;
                                        }
                                    }
                                }
                            }
                            z2 = true;
                            arrayList3 = arrayList4;
                        }
                    }
                    if (CollectionUtils.m26068b(arrayList2)) {
                        Collections.sort(arrayList2, new Comparator<User>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.6.1
                            @Override // java.util.Comparator
                            public /* synthetic */ int compare(User user, User user2) {
                                return StringUtils.m26051a(user.name, user2.name, true);
                            }
                        });
                        arrayList = arrayList2;
                        if (z) {
                            arrayList = arrayList2.subList(0, Math.min(arrayList2.size(), 100));
                        }
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

    /* renamed from: a */
    static /* synthetic */ void m29156a(TwitterHelper twitterHelper, String str, String str2) {
        Prefs.f26230aG.set(new Pair(str, str2));
        twitterHelper.m29237d();
        twitterHelper.mo26206a();
    }

    /* renamed from: a */
    static /* synthetic */ void m29154a(TwitterHelper twitterHelper, List list) {
        final List<User> followingByTheUser = twitterHelper.getFollowingByTheUser();
        final List<User> m29148a = twitterHelper.m29148a(true);
        Collections.sort(list, new Comparator<User>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.11
            @Override // java.util.Comparator
            public /* synthetic */ int compare(User user, User user2) {
                User user3 = user;
                User user4 = user2;
                int i = 0;
                if (Objects.m31915a(user3, user4)) {
                    return 0;
                }
                if (user3 == null) {
                    return 1;
                }
                if (user4 == null) {
                    return -1;
                }
                int i2 = -2;
                int i3 = CollectionUtils.m26073a(followingByTheUser, user3) ? -2 : 0;
                if (!CollectionUtils.m26073a(followingByTheUser, user4)) {
                    i2 = 0;
                }
                int i4 = CollectionUtils.m26073a(m29148a, user3) ? -1 : 0;
                if (CollectionUtils.m26073a(m29148a, user4)) {
                    i = -1;
                }
                int compare = Integer.compare(i3 + i4, i2 + i);
                int i5 = compare;
                if (compare == 0) {
                    String str = user3.name;
                    if (StringUtils.m26059a((CharSequence) str)) {
                        return 1;
                    }
                    i5 = str.compareToIgnoreCase(user4.name);
                }
                return i5;
            }
        });
    }

    /* renamed from: a */
    private void m29152a(TwitterException twitterException, boolean z) {
        CLog.m27609a(TwitterHelper.class, twitterException);
        String message = twitterException.getMessage();
        boolean z2 = twitterException instanceof TwitterApiException;
        if (!z2 || ((TwitterApiException) twitterException).m5723a() != 0 || !twitterException.getMessage().equals("401 ")) {
            if (twitterException.getMessage().equalsIgnoreCase("429 ")) {
                throw new QuotaReachedException(twitterException);
            }
            if ((twitterException instanceof TwitterAuthException) || ((StringUtils.m26045b((CharSequence) message) && message.contains("401:Authentication credentials") && message.contains("were missing or incorrect")) || twitterException.getMessage().equalsIgnoreCase("215 "))) {
                Prefs.f26230aG.set(null);
                throw new UnauthorizedAccessErrorException(twitterException);
            }
            if (z) {
                if (twitterException.getMessage().equalsIgnoreCase("34") && StringUtils.m26045b((CharSequence) message) && message.contains("Sorry, that page does not exist")) {
                    throw new UserNotFoundException(twitterException);
                }
                if (z2) {
                    TwitterApiException twitterApiException = (TwitterApiException) twitterException;
                    if (twitterApiException.m5723a() == 50 && StringUtils.m26045b((CharSequence) message)) {
                        if ((twitterApiException.f60927a == null ? null : twitterApiException.f60927a.message).contains("User not found")) {
                            throw new UserNotFoundException(twitterException);
                        }
                    }
                }
            }
            if (!z2) {
                return;
            }
            int m5723a = ((TwitterApiException) twitterException).m5723a();
            if (m5723a != 89 && m5723a != 239) {
                return;
            }
            this.f24889d = null;
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m29149a(StringBuilder sb) {
        String twitterAccount = getTwitterAccount();
        String str = twitterAccount;
        if (StringUtils.m26059a((CharSequence) twitterAccount)) {
            str = GmailManager.get().getGmailAccount();
        }
        if (StringUtils.m26045b((CharSequence) str)) {
            sb.append("&screen_name=");
            sb.append(str);
        }
    }

    /* renamed from: a */
    public static boolean m29161a(Activity activity, String str, Runnable runnable) {
        boolean z;
        if (HttpUtils.m26985a()) {
            String m29132k = m29132k(str);
            if (StringUtils.m26045b((CharSequence) m29132k)) {
                if (isTwitterAppInstalled()) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(m29132k));
                    if (Activities.m27672a(intent)) {
                        Activities.m27685a(activity, intent);
                    } else {
                        Activities.m27677a(activity, m29132k, runnable);
                    }
                } else {
                    Activities.m27677a(activity, m29132k, runnable);
                }
            }
            z = true;
        } else {
            FeedbackManager.m28675a(activity);
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public IDs m29143b(String str, String str2, long j) {
        try {
            Response<IDs> mo56a = getTwitterKitClient().getCustomService().getFollowersId(str, str2, String.valueOf(j), true).mo56a();
            if (mo56a == null || !mo56a.f67638a.isSuccessful()) {
                return null;
            }
            mo56a.f67639b.setRateLimit(new CallAppTwitterRateLimit(mo56a.f67638a.headers()));
            return mo56a.f67639b;
        } catch (IOException e) {
            CLog.m27611a(TwitterHelper.class, e.getMessage());
            return null;
        }
    }

    public static TwitterHelper get() {
        return Singletons.get().getTwitterHelper();
    }

    private List<User> getFollowingByTheUser() {
        return (List) m29251a(new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.4
            /* renamed from: b */
            public List<User> mo29086a() {
                List list;
                ArrayList arrayList;
                try {
                    Set friendIDs = TwitterHelper.this.getFriendIDs();
                    if (CollectionUtils.m26068b(friendIDs)) {
                        list = TwitterHelper.m29153a(TwitterHelper.this, ArrayUtils.m27617a((Long[]) friendIDs.toArray(new Long[friendIDs.size()])));
                    } else {
                        list = null;
                    }
                    if (CollectionUtils.m26068b(list)) {
                        ArrayList arrayList2 = new ArrayList(new HashSet(list));
                        Collections.sort(arrayList2, new Comparator<User>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.4.1
                            @Override // java.util.Comparator
                            public /* synthetic */ int compare(User user, User user2) {
                                return StringUtils.m26051a(user.name, user2.name, true);
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

    public Set<Long> getFriendIDs() {
        return (Set) m29251a(new RemoteAccountHelper.SocialCallable<HashSet>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.7
            /* JADX WARN: Type inference failed for: r0v19, types: [long] */
            /* renamed from: b */
            public HashSet<Long> mo29086a() {
                HashSet<Long> hashSet = new HashSet<>();
                char c = 65535;
                boolean z = false;
                try {
                    User myUser = TwitterHelper.this.getMyUser();
                    if (myUser != null) {
                        while (!z) {
                            IDs m29150a = TwitterHelper.this.m29150a(myUser.screenName, myUser.idStr, c);
                            if (m29150a != null) {
                                long[] iDs = m29150a.getIDs();
                                if (iDs != null && iDs.length > 0) {
                                    Collections.addAll(hashSet, ArrayUtils.m27618a(iDs));
                                }
                                ?? nextCursor = m29150a.getNextCursor();
                                CallAppTwitterRateLimit rateLimit = m29150a.getRateLimit();
                                c = nextCursor;
                                if (nextCursor > 0) {
                                    c = nextCursor;
                                    if (rateLimit != null) {
                                        c = nextCursor;
                                        if (rateLimit.getRemaining() <= 0) {
                                            c = nextCursor;
                                        }
                                    }
                                }
                            }
                            z = true;
                        }
                    }
                    return hashSet;
                } catch (TwitterException e) {
                    throw new TwitterApiRuntimeException(e);
                }
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

    public Map<String, User> getFriendsMap() {
        HashMap hashMap = (HashMap) CacheManager.get().m28378b(HashMap.class, "twitter_friends_map", false);
        if (CollectionUtils.m26067b(hashMap)) {
            return hashMap;
        }
        List<User> m29142b = m29142b(true, false);
        if (CollectionUtils.m26068b(m29142b)) {
            HashMap hashMap2 = new HashMap();
            for (User user : m29142b) {
                hashMap2.put(user.screenName, user);
            }
            hashMap = hashMap2;
            if (CollectionUtils.m26067b(hashMap2)) {
                CacheManager.get().m28388a(HashMap.class, "twitter_friends_map", hashMap2, 2131427396);
                hashMap = hashMap2;
            }
        }
        return hashMap;
    }

    public User getMyUser() {
        try {
            AccountService accountService = getTwitterKitClient().getAccountService();
            Boolean bool = Boolean.TRUE;
            Response<User> mo56a = accountService.verifyCredentials(bool, bool, Boolean.TRUE).mo56a();
            if (mo56a != null && mo56a.f67638a.isSuccessful()) {
                return mo56a.f67639b;
            }
            return null;
        } catch (IOException e) {
            CLog.m27611a(TwitterHelper.class, e.getMessage());
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
        synchronized (this.f24891f) {
            if (this.f24889d == null && isLoggedIn()) {
                C17292t mo5637a = C17288r.m5626a().f61072b.mo5637a();
                if ((mo5637a == null || StringUtils.m26059a((CharSequence) ((TwitterAuthToken) mo5637a.f61035a).token)) && Prefs.f26230aG.isNotNull()) {
                    C17288r.m5626a().f61072b.mo5635a((AbstractC17279m<C17292t>) new C17292t(new TwitterAuthToken((String) ((Pair) Prefs.f26230aG.get()).first, (String) ((Pair) Prefs.f26230aG.get()).second), 0L, null));
                }
                if (C17288r.m5626a().f61072b.mo5637a() != null) {
                    this.f24889d = new CustomTwitterServiceApiClient(C17288r.m5626a().f61072b.mo5637a());
                } else {
                    Prefs.f26230aG.set(null);
                }
            }
            customTwitterServiceApiClient = this.f24889d;
        }
        return customTwitterServiceApiClient;
    }

    private String getTwitterScreenName() {
        try {
            C17292t mo5637a = C17288r.m5626a().f61072b.mo5637a();
            if (mo5637a != null) {
                return mo5637a.f61087c;
            }
            return null;
        } catch (TwitterException e) {
            m29152a(e, false);
            return null;
        }
    }

    public static boolean isTwitterAppInstalled() {
        return PackageUtils.m27437a(CallAppApplication.get(), "com.twitter.android");
    }

    /* renamed from: k */
    public static String m29132k(String str) {
        return "https://twitter.com/".concat(String.valueOf(str));
    }

    /* renamed from: p */
    private boolean m29127p(String str) {
        if (!isLoggedIn() || !HttpUtils.m26985a() || !isReadyForRemoteCalls()) {
            return false;
        }
        try {
            Response<Object> mo56a = getTwitterKitClient().getCustomService().follow(str, false).mo56a();
            if (mo56a == null) {
                return false;
            }
            return mo56a.f67638a.isSuccessful();
        } catch (IOException e) {
            CLog.m27611a(TwitterHelper.class, e.getMessage());
            return false;
        }
    }

    /* renamed from: q */
    public User m29126q(String str) {
        try {
            Response<User> mo56a = getTwitterKitClient().getCustomService().show(str).mo56a();
            if (mo56a != null && mo56a.f67638a.isSuccessful()) {
                return mo56a.f67639b;
            }
            return null;
        } catch (IOException e) {
            CLog.m27611a(TwitterHelper.class, e.getMessage());
            return null;
        }
    }

    /* renamed from: r */
    private List<User> m29125r(String str) {
        try {
            Response<List<User>> mo56a = getTwitterKitClient().getCustomService().lookup(str, true).mo56a();
            if (mo56a != null && mo56a.f67638a.isSuccessful()) {
                return mo56a.f67639b;
            }
            return null;
        } catch (IOException e) {
            CLog.m27611a(TwitterHelper.class, e.getMessage());
            return null;
        }
    }

    /* renamed from: s */
    public List<User> m29124s(String str) {
        try {
            Response<List<User>> mo56a = getTwitterKitClient().getCustomService().searchUser(str, 20L, 0L, true).mo56a();
            if (mo56a != null && mo56a.f67638a.isSuccessful()) {
                return mo56a.f67639b;
            }
            return null;
        } catch (IOException e) {
            CLog.m27611a(TwitterHelper.class, e.getMessage());
            return null;
        }
    }

    /* renamed from: t */
    public static Tweet m29123t(String str) {
        C17283o c17283o;
        try {
            C17288r m5626a = C17288r.m5626a();
            C17292t mo5637a = m5626a.f61072b.mo5637a();
            if (mo5637a == null) {
                if (m5626a.f61076f == null) {
                    m5626a.m5622d();
                }
                c17283o = m5626a.f61076f;
            } else {
                c17283o = m5626a.m5625a(mo5637a);
            }
            Response<List<Tweet>> mo56a = c17283o.getStatusesService().userTimeline(null, str, 1, null, null, Boolean.FALSE, Boolean.TRUE, null, Boolean.TRUE).mo56a();
            if (mo56a == null || !mo56a.f67638a.isSuccessful()) {
                return null;
            }
            return CollectionUtils.m26068b(mo56a.f67639b) ? mo56a.f67639b.get(0) : new Tweet(null, null, null, null, null, -1, false, null, -1L, null, null, -1L, null, -1L, null, null, null, false, null, -1L, null, null, -1, false, null, null, null, null, false, null, false, null, null, null);
        } catch (IOException e) {
            CLog.m27611a(TwitterHelper.class, e.getMessage());
            return null;
        }
    }

    /* renamed from: u */
    private boolean m29122u(String str) {
        try {
            Response<Object> mo56a = getTwitterKitClient().getCustomService().postStatus(str).mo56a();
            if (mo56a == null) {
                return false;
            }
            return mo56a.f67638a.isSuccessful();
        } catch (IOException e) {
            CLog.m27611a(TwitterHelper.class, e.getMessage());
            return false;
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final JSONSocialNetworkID mo29108a(ContactData contactData) {
        return contactData.getTwitterScreenName();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final HttpRequest mo29106a(HttpRequest httpRequest) {
        String twitterScreenName = getTwitterScreenName();
        HttpRequest httpRequest2 = httpRequest;
        if (StringUtils.m26045b((CharSequence) twitterScreenName)) {
            httpRequest2 = httpRequest;
            if (httpRequest == null) {
                httpRequest2 = UpdateUserProfileUtil.m27363a();
            }
            UpdateUserProfileUtil.m27354b(httpRequest2, twitterScreenName);
        }
        return httpRequest2;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final <T> T mo29110a(RemoteAccountHelper.SocialCallable<T> socialCallable, boolean z) {
        try {
            return socialCallable.mo29086a();
        } catch (TwitterApiRuntimeException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                CLog.m27609a(getClass(), e);
                return null;
            } else if (!(cause instanceof TwitterException)) {
                return null;
            } else {
                m29152a((TwitterException) cause, z);
                return null;
            }
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final List<PersonData> mo29104a(final String str, boolean z) {
        return (List) m29249a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.8
            /* JADX WARN: Type inference failed for: r0v73, types: [long] */
            /* renamed from: b */
            public List<PersonData> mo29086a() {
                boolean z2 = false;
                User m29138d = TwitterHelper.this.m29138d(str, false);
                if (m29138d == null || m29138d.friendsCount > 500) {
                    return null;
                }
                Set friendIDs = TwitterHelper.this.getFriendIDs();
                if (CollectionUtils.m26076a(friendIDs)) {
                    return null;
                }
                try {
                    HashSet hashSet = new HashSet();
                    char c = 65535;
                    while (!z2) {
                        IDs m29150a = TwitterHelper.this.m29150a(str, (String) null, c);
                        if (m29150a != null) {
                            long[] iDs = m29150a.getIDs();
                            if (iDs != null && iDs.length > 0) {
                                Collections.addAll(hashSet, ArrayUtils.m27618a(iDs));
                            }
                            ?? nextCursor = m29150a.getNextCursor();
                            CallAppTwitterRateLimit rateLimit = m29150a.getRateLimit();
                            c = nextCursor;
                            if (nextCursor > 0) {
                                c = nextCursor;
                                if (rateLimit != null) {
                                    c = nextCursor;
                                    if (rateLimit.getRemaining() <= 0) {
                                        c = nextCursor;
                                    }
                                }
                            }
                        }
                        z2 = true;
                    }
                    ArrayList arrayList = new ArrayList();
                    if (CollectionUtils.m26068b(hashSet)) {
                        Iterator it2 = hashSet.iterator();
                        do {
                            if (!it2.hasNext()) {
                                break;
                            }
                            Long l = (Long) it2.next();
                            if (friendIDs.contains(l)) {
                                arrayList.add(l);
                            }
                        } while (arrayList.size() < 50);
                    }
                    ArrayList arrayList2 = new ArrayList();
                    if (CollectionUtils.m26068b(arrayList)) {
                        List<User> m29153a = TwitterHelper.m29153a(TwitterHelper.this, ArrayUtils.m27617a((Long[]) arrayList.toArray(new Long[arrayList.size()])));
                        if (CollectionUtils.m26068b(m29153a)) {
                            for (User user : m29153a) {
                                arrayList2.add(new PersonData(user));
                            }
                        }
                    }
                    return arrayList2;
                } catch (TwitterException e) {
                    throw new TwitterApiRuntimeException(e);
                }
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
    /* renamed from: a */
    public final Map<String, Friend> mo29103a(boolean z, boolean z2) {
        List<User> m29142b = m29142b(z2, true);
        if (CollectionUtils.m26068b(m29142b)) {
            HashMap hashMap = new HashMap(m29142b.size());
            for (User user : m29142b) {
                String str = user.name;
                String str2 = str;
                if (z) {
                    str2 = str;
                    if (StringUtils.m26045b((CharSequence) str)) {
                        str2 = str.toLowerCase();
                    }
                }
                hashMap.put(user.screenName, new Friend(user.screenName, str2, user.description));
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29113a(final Activity activity) {
        if (isLoggedIn()) {
            mo26206a();
        } else if (isNativeAppInstalled()) {
            C17229h c17229h = new C17229h();
            this.f24888c = c17229h;
            c17229h.m5690a(activity, new AbstractC17206b<C17292t>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.1
                @Override // com.twitter.sdk.android.core.AbstractC17206b
                /* renamed from: a */
                public final void mo5601a(TwitterException twitterException) {
                    AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Twitter SDK TwitterException");
                    TwitterHelper.this.mo26205b();
                    TwitterHelper.this.f24888c = null;
                }

                @Override // com.twitter.sdk.android.core.AbstractC17206b
                /* renamed from: a */
                public final void mo5600a(C17277k<C17292t> c17277k) {
                    TwitterHelper.this.f24889d = null;
                    TwitterAuthToken twitterAuthToken = (TwitterAuthToken) c17277k.f61033a.f61035a;
                    TwitterHelper.m29156a(TwitterHelper.this, twitterAuthToken.token, twitterAuthToken.secret);
                    TwitterHelper.this.f24888c = null;
                }
            });
        } else {
            AbstractC17206b<OAuthResponse> abstractC17206b = new AbstractC17206b<OAuthResponse>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.2
                @Override // com.twitter.sdk.android.core.AbstractC17206b
                /* renamed from: a */
                public final void mo5601a(TwitterException twitterException) {
                    CLog.m27609a(TwitterHelper.class, twitterException);
                    TwitterHelper.this.mo26205b();
                }

                @Override // com.twitter.sdk.android.core.AbstractC17206b
                /* renamed from: a */
                public final void mo5600a(C17277k<OAuthResponse> c17277k) {
                    TwitterHelper.this.f24890e = c17277k.f61033a.authToken;
                    StringBuilder sb = new StringBuilder("https://api.twitter.com/oauth/authorize?oauth_token=");
                    sb.append(TwitterHelper.this.f24890e.token);
                    TwitterHelper.m29149a(sb);
                    PopupManager.get().m28209a(activity, new AuthWebViewDialog(activity, sb.toString(), new DialogInterface.OnCancelListener() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.2.1
                        @Override // android.content.DialogInterface.OnCancelListener
                        public void onCancel(DialogInterface dialogInterface) {
                            CLog.m27611a(getClass(), "Login cancelled");
                            if (TwitterHelper.this.f24799b != null) {
                                TwitterHelper.this.f24799b.mo26203c();
                            }
                        }
                    }, TwitterHelper.this));
                }
            };
            CallAppOAuth1aService callAppOAuth1aService = new CallAppOAuth1aService(C17288r.m5626a(), new C17254g());
            this.f24892g = callAppOAuth1aService;
            callAppOAuth1aService.m5655a(abstractC17206b);
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29111a(Activity activity, String str, Runnable runnable, OutcomeListener outcomeListener) {
        m29248a(outcomeListener, m29161a(activity, str, runnable));
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29107a(ContactData contactData, JSONSocialNetworkID jSONSocialNetworkID) {
        contactData.getDeviceData().setTwitterScreenName(jSONSocialNetworkID);
        contactData.updateTwitterScreenName();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final boolean mo29105a(String str) {
        return StringUtils.m26059a((CharSequence) str) || str.contains("default_profile");
    }

    /* renamed from: b */
    public final List<User> m29142b(boolean z, boolean z2) {
        List<User> list;
        if (isLoggedIn()) {
            String format = String.format("twitter_friends_sorted_%s", Boolean.valueOf(z));
            synchronized (format.intern()) {
                List<User> list2 = (List) CacheManager.get().m28378b(List.class, format, false);
                list = list2;
                if (list2 == null) {
                    list = list2;
                    if (HttpUtils.m26985a()) {
                        ArrayList arrayList = new ArrayList();
                        List<User> followingByTheUser = getFollowingByTheUser();
                        if (CollectionUtils.m26068b(followingByTheUser)) {
                            arrayList.addAll(followingByTheUser);
                        }
                        if (z) {
                            List<User> m29148a = m29148a(z2);
                            if (CollectionUtils.m26068b(m29148a)) {
                                arrayList.addAll(m29148a);
                            }
                        }
                        list = new ArrayList<>(new HashSet(arrayList));
                        Collections.sort(list, new Comparator<User>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.5
                            @Override // java.util.Comparator
                            public /* synthetic */ int compare(User user, User user2) {
                                return StringUtils.m26051a(user.name, user2.name, true);
                            }
                        });
                        CacheManager.get().m28388a(List.class, format, list, 2131427396);
                        AnalyticsManager.get().mo28444a(Constants.SYNCERS, "Twitter friends count", (String) null, list.size(), new String[0]);
                    }
                }
            }
        } else {
            list = null;
        }
        return list;
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: b */
    public final void mo26204b(String str) {
        try {
            CallAppOAuth1aService callAppOAuth1aService = this.f24892g;
            if (callAppOAuth1aService == null) {
                return;
            }
            callAppOAuth1aService.m5654a(new AbstractC17206b<OAuthResponse>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.3
                @Override // com.twitter.sdk.android.core.AbstractC17206b
                /* renamed from: a */
                public final void mo5601a(TwitterException twitterException) {
                    TwitterHelper.this.mo26205b();
                }

                @Override // com.twitter.sdk.android.core.AbstractC17206b
                /* renamed from: a */
                public final void mo5600a(C17277k<OAuthResponse> c17277k) {
                    if (c17277k == null || c17277k.f61033a == null) {
                        TwitterHelper.this.mo26205b();
                        return;
                    }
                    TwitterHelper.this.f24889d = null;
                    C17288r.m5626a().f61072b.mo5635a((AbstractC17279m<C17292t>) new C17292t(new TwitterAuthToken(c17277k.f61033a.authToken.token, c17277k.f61033a.authToken.secret), c17277k.f61033a.userId, c17277k.f61033a.userName));
                    TwitterHelper.m29156a(TwitterHelper.this, c17277k.f61033a.authToken.token, c17277k.f61033a.authToken.secret);
                }
            }, this.f24890e, str);
        } catch (TwitterException e) {
            m29152a(e, false);
            mo26205b();
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: c */
    public final List<PersonData> mo29102c(final String str, boolean z) throws SearchIsNotAvailableExecption {
        ArrayList arrayList;
        List list = (List) m29249a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<List>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.10
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v19, types: [java.util.List] */
            /* renamed from: b */
            public List mo29086a() {
                ArrayList arrayList2 = null;
                ArrayList arrayList3 = null;
                if (StringUtils.m26045b((CharSequence) str)) {
                    try {
                        TwitterHelper.this.m29247a(UsageCounter.twitterSearchRequests, CallAppApplication.get().getResources().getInteger(2131427400), CallAppApplication.get().getResources().getInteger(2131427401), true);
                        List m29124s = TwitterHelper.this.m29124s(str);
                        if (!TwitterHelper.this.f24798a) {
                            FeedbackManager.get().m28670a("searched " + TwitterHelper.this.getName(), 17);
                        }
                        if (CollectionUtils.m26068b(m29124s)) {
                            arrayList3 = new ArrayList(m29124s);
                            TwitterHelper.m29154a(TwitterHelper.this, arrayList3);
                        }
                        arrayList2 = arrayList3;
                        if (arrayList3 == null) {
                            arrayList2 = Collections.emptyList();
                        }
                    } catch (TwitterException e) {
                        throw new TwitterApiRuntimeException(e);
                    }
                }
                return arrayList2;
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

    /* renamed from: d */
    public final User m29138d(final String str, boolean z) {
        return (User) m29250a((RemoteAccountHelper.SocialCallable<Object>) new RemoteAccountHelper.SocialCallable<User>() { // from class: com.callapp.contacts.api.helper.twitter.TwitterHelper.12
            /* renamed from: b */
            public User mo29086a() {
                User user = null;
                User user2 = null;
                if (StringUtils.m26045b((CharSequence) str)) {
                    Map friendsMap = TwitterHelper.this.getFriendsMap();
                    if (CollectionUtils.m26067b(friendsMap)) {
                        user2 = (User) friendsMap.get(str);
                    }
                    user = user2;
                    if (user2 == null) {
                        user = user2;
                        if (HttpUtils.m26985a()) {
                            TwitterHelper.this.m29247a(UsageCounter.twitterUser, CallAppApplication.get().getResources().getInteger(2131427403), CallAppApplication.get().getResources().getInteger(2131427404), true);
                            try {
                                User m29126q = TwitterHelper.this.m29126q(str);
                                user = user2;
                                if (m29126q != null) {
                                    user = m29126q;
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
    /* renamed from: e */
    public final void mo29101e() {
        if (isLoggedIn() && HttpUtils.m26985a() && isReadyForRemoteCalls()) {
            CacheManager.get().m28390a(User.class, "twitter_user_".concat(String.valueOf(getTwitterScreenName())));
            UserProfileManager.get().m28467a(4);
        }
        CacheManager.get().m28390a(List.class, String.format("twitter_friends_sorted_%s", Boolean.TRUE));
        CacheManager.get().m28390a(List.class, String.format("twitter_friends_sorted_%s", Boolean.FALSE));
        Prefs.f26230aG.set(null);
        C17288r.m5626a().f61072b.mo5634b();
        this.f24888c = null;
        this.f24889d = null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: f */
    public final String mo29100f(String str) {
        User m29138d = m29138d(str, true);
        if (m29138d != null) {
            return m29138d.name;
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: g */
    public final String mo29099g(String str) {
        return m29151a(str, "");
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public int getApiConstantNetworkId() {
        return 4;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getCurrentUserId() {
        if (!isLoggedIn() || !HttpUtils.m26985a() || !isReadyForRemoteCalls()) {
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
        List<User> m29142b = m29142b(true, true);
        if (CollectionUtils.m26068b(m29142b)) {
            return m29142b.size();
        }
        return 0L;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public List<PersonData> getFriendsListAsPersonData() {
        List<User> m29142b = m29142b(true, true);
        if (CollectionUtils.m26068b(m29142b)) {
            ArrayList arrayList = new ArrayList(m29142b.size());
            for (User user : m29142b) {
                arrayList.add(new PersonData(user));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    public User getLoggedInUser() {
        if (!isLoggedIn() || !HttpUtils.m26985a() || !isReadyForRemoteCalls()) {
            return null;
        }
        try {
            return m29138d(getTwitterScreenName(), false);
        } catch (TwitterException e) {
            m29152a(e, false);
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
    /* renamed from: h */
    public final String mo29098h(String str) throws UserNotFoundException {
        return m29130m(str);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: i */
    public final String mo29096i(String str) {
        if (StringUtils.m26059a((CharSequence) str) || !str.contains("twitter.com")) {
            return null;
        }
        return m29243a(str, RegexUtils.m31910a("(?:http:\\/\\/)?(?:www.)?twitter.com\\/(?:(?:\\w)*#!\\/)?([\\w\\-\\.]*)?"));
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: i */
    public final boolean mo29097i() {
        return m29127p("getcallapp");
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isLoggedIn() {
        return Prefs.f26230aG.isNotNull();
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

    /* renamed from: l */
    public final String m29131l(String str) {
        String m29151a = m29151a(str, "");
        String str2 = m29151a;
        if (mo29105a(m29151a)) {
            str2 = null;
        }
        return str2;
    }

    /* renamed from: m */
    public final String m29130m(String str) {
        String m29151a = m29151a(str, "_bigger");
        String str2 = m29151a;
        if (mo29105a(m29151a)) {
            str2 = null;
        }
        return str2;
    }

    /* renamed from: n */
    public final boolean m29129n(String str) {
        boolean z = false;
        boolean z2 = false;
        if (isLoggedIn()) {
            z2 = false;
            if (HttpUtils.m26985a()) {
                if (!isReadyForRemoteCalls()) {
                    z2 = false;
                } else {
                    try {
                        z = m29122u(str);
                    } catch (TwitterException e) {
                        m29152a(e, false);
                    }
                    z2 = z;
                    if (!z) {
                        AnalyticsManager.get().m28449a(Constants.FAILED, "Failed to post", getName());
                        z2 = z;
                    }
                }
            }
        }
        return z2;
    }
}
