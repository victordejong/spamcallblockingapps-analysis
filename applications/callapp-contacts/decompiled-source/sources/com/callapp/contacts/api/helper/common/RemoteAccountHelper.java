package com.callapp.contacts.api.helper.common;

import android.app.Activity;
import android.util.Pair;
import android.util.SparseArray;
import com.bumptech.glide.load.model.GlideUrl;
import com.callapp.common.model.json.JSONQuotaLimitation;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.QuotaLimitPOJO;
import com.callapp.common.util.Objects;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.foursquare.FoursquareHelper;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.api.helper.instagram.InstagramHelper;
import com.callapp.contacts.api.helper.pinterest.PinterestHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.api.helper.vk.VKHelper;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.loader.UserCorrectedDataManager;
import com.callapp.contacts.loader.UserPositiveNegativeManager;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.loader.social.SearchIsNotAvailableExecption;
import com.callapp.contacts.loader.social.UserNotFoundException;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.SuggestContactManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.Friend;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.UsageCounter;
import com.callapp.contacts.model.UsageCounterDataManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.SocialSearchResults;
import com.callapp.contacts.model.objectbox.FastCacheData;
import com.callapp.contacts.popup.selection.PersonSelectPopup;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.http.HttpRequest;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.servermessage.CheckQuotaLimitation;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/RemoteAccountHelper.class */
public abstract class RemoteAccountHelper implements LoginListener {

    /* renamed from: a  reason: collision with root package name */
    public boolean f14142a = false;

    /* renamed from: b  reason: collision with root package name */
    public LoginListener f14143b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.api.helper.common.RemoteAccountHelper$4  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/RemoteAccountHelper$4.class */
    public static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14148a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[DataSource.values().length];
            f14148a = iArr;
            try {
                iArr[DataSource.facebook.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14148a[DataSource.twitter.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14148a[DataSource.google.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14148a[DataSource.pinterest.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f14148a[DataSource.foursquare.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f14148a[DataSource.instagram.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f14148a[DataSource.vk.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener.class */
    public static class DefaultLoginListener implements LoginListener {

        /* renamed from: a  reason: collision with root package name */
        private RemoteAccountHelper f14149a;

        public DefaultLoginListener(RemoteAccountHelper remoteAccountHelper) {
            this.f14149a = remoteAccountHelper;
        }

        @Override // com.callapp.contacts.api.helper.common.LoginListener
        public void a() {
            this.f14149a.setLoginListener(null);
        }

        @Override // com.callapp.contacts.api.helper.common.LoginListener
        public void b() {
            this.f14149a.setLoginListener(null);
        }

        @Override // com.callapp.contacts.api.helper.common.LoginListener
        public final void b(String str) {
        }

        @Override // com.callapp.contacts.api.helper.common.LoginListener
        public void c() {
            this.f14149a.setLoginListener(null);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode.class */
    public enum SocialCacheMode {
        standard,
        onlyFromCache
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable.class */
    public static abstract class SocialCallable<T> {
        public abstract T a();

        public abstract String getCacheKey();

        public abstract int getCacheTtl();

        public int getRefreshInterval() {
            return getCacheTtl();
        }
    }

    public static RemoteAccountHelper a(DataSource dataSource) {
        switch (AnonymousClass4.f14148a[dataSource.ordinal()]) {
            case 1:
                return FacebookHelper.get();
            case 2:
                return TwitterHelper.get();
            case 3:
                return GoogleHelper.get();
            case 4:
                return PinterestHelper.get();
            case 5:
                return FoursquareHelper.get();
            case 6:
                return InstagramHelper.get();
            case 7:
                return VKHelper.get();
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(String str, Pattern pattern) {
        if (StringUtils.a((CharSequence) str)) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        String group = matcher.group(1);
        if (StringUtils.b((CharSequence) group)) {
            return group;
        }
        return null;
    }

    public static void a(Activity activity, ContactData contactData, DataSource dataSource, PersonSelectPopup.PersonSelectListener personSelectListener, ContactSocialNetworksCertaintyHelper.ProfileDialogListener profileDialogListener) {
        if (activity != null) {
            new ContactSocialNetworksCertaintyHelper(activity, contactData, dataSource, personSelectListener, profileDialogListener).a(activity, contactData, false);
        }
    }

    public static void a(ActivityWithContact activityWithContact, ContactData contactData, DataSource dataSource) {
        new ContactSocialNetworksCertaintyHelper(activityWithContact, contactData, dataSource).a((Activity) activityWithContact, activityWithContact.getContact(), false);
    }

    public static void a(OutcomeListener outcomeListener, boolean z) {
        if (outcomeListener != null) {
            outcomeListener.a(z);
        }
    }

    private static SparseArray<Set<String>> b(ContactData contactData) {
        SparseArray<Set<String>> negativesMap = contactData.getNegativesMap();
        SparseArray<Set<String>> sparseArray = negativesMap;
        if (negativesMap.size() == 0) {
            sparseArray = new SparseArray<>();
            contactData.setNegativesMap(sparseArray);
        }
        return sparseArray;
    }

    private boolean b(long j, String str, String str2) {
        int helperSocialNetDBId = getHelperSocialNetDBId();
        return helperSocialNetDBId > 0 ? UserPositiveNegativeManager.b(j, str, helperSocialNetDBId, str2) : false;
    }

    public static boolean b(DataSource dataSource) {
        RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(dataSource.dbCode);
        return remoteAccountHelper != null && remoteAccountHelper.isLoggedIn();
    }

    public static int getSocialBadgeBgColor(int i) {
        if (i == 1) {
            return ThemeUtils.a(CallAppApplication.get(), 2131099906);
        }
        if (i == 4) {
            return ThemeUtils.a(CallAppApplication.get(), 2131100208);
        }
        if (i == 5) {
            return ThemeUtils.a(CallAppApplication.get(), 2131099913);
        }
        if (i == 6) {
            return ThemeUtils.a(CallAppApplication.get(), 2131099911);
        }
        if (i == 7) {
            return ThemeUtils.a(CallAppApplication.get(), 2131099936);
        }
        if (i == 9) {
            return ThemeUtils.a(CallAppApplication.get(), 2131100076);
        }
        if (i != 10) {
            return 0;
        }
        return ThemeUtils.a(CallAppApplication.get(), 2131100213);
    }

    public static int getSocialBadgeColoredResId(int i) {
        if (i == 1) {
            return 2131231673;
        }
        if (i == 4) {
            return 2131231951;
        }
        if (i == 5) {
            return 2131231689;
        }
        if (i == 6) {
            return 2131231681;
        }
        if (i == 7) {
            return 2131231723;
        }
        if (i != 9) {
            return i != 10 ? 0 : 2131231964;
        }
        return 2131231837;
    }

    public static int getSocialBadgeResId(int i) {
        if (i == 1) {
            return 2131231676;
        }
        if (i == 4) {
            return 2131231954;
        }
        if (i == 5) {
            return 2131231693;
        }
        if (i == 6) {
            return 2131231684;
        }
        if (i == 7) {
            return 2131231726;
        }
        if (i != 9) {
            return i != 10 ? 0 : 2131231967;
        }
        return 2131231840;
    }

    public static Pair<Integer, Integer> getSocialPairBadgeResId(int i) {
        if (i == 1) {
            return new Pair<>(2131231674, 2131231675);
        }
        if (i == 4) {
            return new Pair<>(2131231952, 2131231953);
        }
        if (i == 5) {
            return new Pair<>(2131231690, 2131231691);
        }
        if (i == 6) {
            return new Pair<>(2131231682, 2131231683);
        }
        if (i == 7) {
            return new Pair<>(2131231724, 2131231725);
        }
        if (i == 9) {
            return new Pair<>(2131231838, 2131231839);
        }
        if (i != 10) {
            return null;
        }
        return new Pair<>(2131231965, 2131231966);
    }

    private BooleanPref getWasEverConnectedPref() {
        return new BooleanPref(getName() + "EverConnected", Boolean.FALSE);
    }

    public abstract JSONSocialNetworkID a(ContactData contactData);

    public HttpRequest a(HttpRequest httpRequest) {
        return httpRequest;
    }

    public final <T> T a(SocialCallable<T> socialCallable, Class<T> cls) {
        return (T) a((SocialCallable<Object>) socialCallable, (Class<Object>) cls, true, false);
    }

    public final <T> T a(SocialCallable<T> socialCallable, Class<T> cls, boolean z, boolean z2) {
        return (T) a(socialCallable, cls, z, z2, SocialCacheMode.standard);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T a(SocialCallable<T> socialCallable, Class<T> cls, boolean z, boolean z2, SocialCacheMode socialCacheMode) {
        boolean isLoggedIn = isLoggedIn();
        T t = null;
        t = null;
        if (!z || isLoggedIn) {
            String cacheKey = socialCallable.getCacheKey();
            synchronized (cacheKey.intern()) {
                boolean z3 = false;
                CacheManager.CachedObject<T> c2 = CacheManager.get().c(cls, cacheKey, false);
                if (socialCacheMode != SocialCacheMode.onlyFromCache) {
                    if (c2 == null) {
                        z3 = true;
                    } else if (socialCallable.getRefreshInterval() != socialCallable.getCacheTtl()) {
                        z3 = DateUtils.a(new Date(c2.getExpirationDate().getTime() - TimeUnit.MINUTES.toMillis(Singletons.get().getApplication().getResources().getInteger(socialCallable.getCacheTtl()))), socialCallable.getRefreshInterval());
                    }
                    if (z3 && HttpUtils.a() && isReadyForRemoteCalls()) {
                        Object a2 = a(socialCallable, z2);
                        if (a2 != 0) {
                            CacheManager.get().a(cls, cacheKey, a2, socialCallable.getCacheTtl());
                        }
                        t = a2;
                    }
                }
                if (c2 != null) {
                    t = c2.getObj();
                }
            }
        }
        return t;
    }

    protected abstract <T> T a(SocialCallable<T> socialCallable, boolean z);

    protected abstract List<PersonData> a(String str, boolean z);

    public abstract Map<String, Friend> a(boolean z, boolean z2);

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void a() {
        CLog.a(getClass(), "Login Completed");
        new Task() { // from class: com.callapp.contacts.api.helper.common.RemoteAccountHelper.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                RemoteAccountHelper.this.j();
                try {
                    RemoteAccountHelper.this.getFriendsCount();
                } catch (QuotaReachedException e) {
                }
            }
        }.execute();
        LoginListener loginListener = this.f14143b;
        if (loginListener != null) {
            loginListener.a();
        }
    }

    public final void a(long j, String str) {
        int helperSocialNetDBId = getHelperSocialNetDBId();
        if (helperSocialNetDBId > 0) {
            UserPositiveNegativeManager.a(j, str, helperSocialNetDBId);
            AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Doesn't have a profile", SocialNetworksSearchUtil.getSocialNetworkName(helperSocialNetDBId));
        }
    }

    public final void a(long j, String str, String str2) {
        int helperSocialNetDBId = getHelperSocialNetDBId();
        if (helperSocialNetDBId > 0) {
            AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Not right profile", SocialNetworksSearchUtil.getSocialNetworkName(helperSocialNetDBId));
            SuggestContactManager.a(j, helperSocialNetDBId, str2);
            UserCorrectedDataManager.a(j, str, helperSocialNetDBId);
            UserPositiveNegativeManager.a(j, str, helperSocialNetDBId, str2);
            FastCacheData a2 = FastCacheDataManager.a(StringUtils.b((CharSequence) str) ? PhoneManager.get().a(str) : ContactUtils.b(j), j);
            if (a2 != null) {
                FastCacheDataManager.a(getDataSource(), a2, PhoneManager.get().a(str), j);
            }
        }
    }

    protected abstract void a(Activity activity);

    public abstract void a(Activity activity, String str, Runnable runnable, OutcomeListener outcomeListener);

    public final void a(UsageCounter usageCounter, int i, int i2, boolean z) {
        Long valueOf = z ? Long.valueOf(UsageCounterDataManager.incrementCounter(usageCounter, i)) : null;
        if (isFromSync()) {
            Long l = valueOf;
            if (valueOf == null) {
                l = Long.valueOf(UsageCounterDataManager.getCounterValue(usageCounter));
            }
            if (l.longValue() > i2) {
                throw new QuotaReachedException("Period configured quota was reached for counter=" + usageCounter + " current counter=" + l);
            }
        }
    }

    public abstract void a(ContactData contactData, JSONSocialNetworkID jSONSocialNetworkID);

    public final void a(ContactData contactData, String str) {
        a(contactData.getDeviceId(), contactData.getPhone().a(), str);
        SparseArray<Set<String>> b2 = b(contactData);
        DataSource dataSource = getDataSource();
        Set<String> set = b2.get(dataSource.dbCode);
        Set<String> set2 = set;
        if (set == null) {
            set2 = new HashSet<>();
            b2.put(dataSource.dbCode, set2);
        }
        set2.add(str);
        contactData.fireChange(ContactField.negatives);
        ContactField contactField = getDataSource().socialSearchField;
        SocialSearchResults socialSearchResults = (SocialSearchResults) ReflectionUtils.a(contactData, contactField.name());
        if (socialSearchResults != null) {
            if (socialSearchResults.id != null) {
                ReflectionUtils.a(contactData, contactField.name(), (Object) null);
            }
            contactData.fireChange(contactField);
            CacheManager.get().a(SocialSearchResults.class, contactData.getCacheKey(contactField.name()));
        }
        contactData.assertDeviceDataExist();
        contactData.resetSocialNetworks(Arrays.asList(getDataSource()));
    }

    public final void a(ContactData contactData, String str, boolean z) {
        if (!StringUtils.a((CharSequence) str)) {
            long deviceId = contactData.getDeviceId();
            String a2 = contactData.getPhone().a();
            if (a(deviceId, a2, str, z)) {
                JSONSocialNetworkID jSONSocialNetworkID = null;
                int helperSocialNetDBId = getHelperSocialNetDBId();
                if (helperSocialNetDBId == 1) {
                    jSONSocialNetworkID = contactData.getFacebookId();
                } else if (helperSocialNetDBId == 4) {
                    jSONSocialNetworkID = contactData.getTwitterScreenName();
                } else if (helperSocialNetDBId == 6) {
                    jSONSocialNetworkID = contactData.getFoursquareId();
                } else if (helperSocialNetDBId == 7) {
                    jSONSocialNetworkID = contactData.getInstagramId();
                } else if (helperSocialNetDBId == 9) {
                    jSONSocialNetworkID = contactData.getPinterestId();
                } else if (helperSocialNetDBId == 10) {
                    jSONSocialNetworkID = contactData.getVKId();
                }
                if (jSONSocialNetworkID != null && !Objects.a(jSONSocialNetworkID.getId(), str)) {
                    contactData.resetSocialNetworks(Arrays.asList(getDataSource()));
                }
                if (b(deviceId, a2, str)) {
                    Set<String> set = b(contactData).get(getHelperSocialNetDBId());
                    if (CollectionUtils.b(set)) {
                        set.remove(str);
                        contactData.fireChange(ContactField.negatives);
                    }
                }
                contactData.assertDeviceDataExist();
                a(contactData, new JSONSocialNetworkID(str, z));
            }
        }
    }

    public final boolean a(long j, String str, String str2, boolean z) {
        int helperSocialNetDBId = getHelperSocialNetDBId();
        if (z) {
            SuggestContactManager.a(j, helperSocialNetDBId, str2);
        }
        return UserPositiveNegativeManager.a(j, str, helperSocialNetDBId, str2, z);
    }

    public abstract boolean a(String str);

    public final List<PersonData> b(String str, boolean z) throws SearchIsNotAvailableExecption {
        JSONQuotaLimitation a2 = CheckQuotaLimitation.a(true);
        if (a2 == null) {
            return c(str, false);
        }
        Map<String, QuotaLimitPOJO> quotaLimitationMap = a2.getQuotaLimitationMap();
        QuotaLimitPOJO quotaLimitPOJO = null;
        if (CollectionUtils.b(quotaLimitationMap)) {
            quotaLimitPOJO = quotaLimitationMap.get(String.valueOf(getApiConstantNetworkId()));
        }
        return quotaLimitPOJO == null ? true : isFromSync() ? quotaLimitPOJO.isSearchInSync() : z ? quotaLimitPOJO.isSearchInManual() : quotaLimitPOJO.isSearchInContactDetails() ? c(str, false) : c(str, true);
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void b() {
        CLog.b(getClass(), "Login Error");
        LoginListener loginListener = this.f14143b;
        if (loginListener != null) {
            loginListener.b();
        }
    }

    public final void b(final Activity activity) {
        if (HttpUtils.a()) {
            new Task() { // from class: com.callapp.contacts.api.helper.common.RemoteAccountHelper.3
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    RemoteAccountHelper.this.a(activity);
                }
            }.execute();
            return;
        }
        FeedbackManager.a(activity);
        LoginListener loginListener = this.f14143b;
        if (loginListener != null) {
            loginListener.c();
        }
    }

    public GlideUrl c(String str) {
        return new GlideUrl(str);
    }

    protected abstract List<PersonData> c(String str, boolean z) throws SearchIsNotAvailableExecption;

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void c() {
        CLog.a(getClass(), "Login cancelled");
        LoginListener loginListener = this.f14143b;
        if (loginListener != null) {
            loginListener.c();
        }
    }

    public final void d() {
        if (Prefs.aV.isNotNull()) {
            new Task() { // from class: com.callapp.contacts.api.helper.common.RemoteAccountHelper.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    HttpRequest a2 = RemoteAccountHelper.this.a((HttpRequest) null);
                    if (a2 != null) {
                        a2.a(10000);
                    }
                }
            }.execute();
        }
    }

    public boolean d(String str) {
        if (!isLoggedIn()) {
            return false;
        }
        Map<String, Friend> a2 = a(false, false);
        if (CollectionUtils.b(a2)) {
            return a2.containsKey(str);
        }
        return false;
    }

    public final List<PersonData> e(String str) {
        JSONQuotaLimitation a2 = CheckQuotaLimitation.a(true);
        if (a2 == null) {
            return a(str, false);
        }
        Map<String, QuotaLimitPOJO> quotaLimitationMap = a2.getQuotaLimitationMap();
        QuotaLimitPOJO quotaLimitPOJO = null;
        if (CollectionUtils.b(quotaLimitationMap)) {
            quotaLimitPOJO = quotaLimitationMap.get(String.valueOf(getApiConstantNetworkId()));
        }
        if (quotaLimitPOJO == null || quotaLimitPOJO.isMutuals()) {
            return a(str, false);
        }
        List<PersonData> a3 = a(str, true);
        if (CollectionUtils.b(a3)) {
            return a3;
        }
        throw new QuotaReachedException();
    }

    public abstract void e();

    public abstract String f(String str) throws UserNotFoundException, QuotaReachedException;

    public boolean f() {
        return true;
    }

    public abstract String g(String str) throws UserNotFoundException, QuotaReachedException;

    public boolean g() {
        return false;
    }

    public abstract int getApiConstantNetworkId();

    public abstract String getCurrentUserId();

    public abstract DataSource getDataSource();

    public abstract long getFriendsCount();

    public abstract List<PersonData> getFriendsListAsPersonData();

    public final int getHelperSocialNetDBId() {
        return getDataSource().dbCode;
    }

    public String getHostToCheck() {
        return getName() + ".com";
    }

    public String getLoginLabelText() {
        return null;
    }

    public abstract String getName();

    public abstract String getUserName();

    public abstract String h(String str) throws UserNotFoundException, QuotaReachedException;

    public boolean h() {
        return true;
    }

    public abstract String i(String str);

    public abstract boolean i();

    public boolean isFromSync() {
        return this.f14142a;
    }

    public abstract boolean isLoggedIn();

    public boolean isNativeAppInstalled() {
        return false;
    }

    protected boolean isReadyForRemoteCalls() {
        return true;
    }

    public final String j(String str) {
        String str2;
        try {
            str2 = i(str);
        } catch (QuotaReachedException e) {
            str2 = null;
        }
        return str2;
    }

    public final void j() {
        getWasEverConnectedPref().set(Boolean.TRUE);
    }

    public void setDoesntHave(ContactData contactData) {
        a(contactData.getDeviceId(), contactData.getPhone().a());
        SparseArray<Set<String>> b2 = b(contactData);
        int helperSocialNetDBId = getHelperSocialNetDBId();
        if (b2.get(helperSocialNetDBId) == null) {
            b2.put(helperSocialNetDBId, new HashSet());
        }
        b2.get(helperSocialNetDBId).add("DONTHAVE");
        contactData.fireChange(ContactField.negatives);
        contactData.assertDeviceDataExist();
        ContactField contactField = getDataSource().socialSearchField;
        ReflectionUtils.a(contactData, contactField.name(), (Object) null);
        contactData.fireChange(contactField);
        CacheManager.get().a(SocialSearchResults.class, contactData.getCacheKey(contactField));
        contactData.assertDeviceDataExist();
        contactData.resetSocialNetworks(Arrays.asList(getDataSource()));
    }

    public void setFromSync(boolean z) {
        this.f14142a = z;
    }

    public void setLoginListener(LoginListener loginListener) {
        this.f14143b = loginListener;
    }
}
