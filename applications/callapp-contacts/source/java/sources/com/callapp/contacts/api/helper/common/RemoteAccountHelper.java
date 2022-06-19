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
import com.callapp.contacts.api.helper.p237vk.VKHelper;
import com.callapp.contacts.api.helper.pinterest.PinterestHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
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

    /* renamed from: a */
    public boolean f24798a = false;

    /* renamed from: b */
    public LoginListener f24799b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.api.helper.common.RemoteAccountHelper$4 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/RemoteAccountHelper$4.class */
    public static /* synthetic */ class C71784 {

        /* renamed from: a */
        static final /* synthetic */ int[] f24804a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[DataSource.values().length];
            f24804a = iArr;
            try {
                iArr[DataSource.facebook.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f24804a[DataSource.twitter.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f24804a[DataSource.google.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f24804a[DataSource.pinterest.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f24804a[DataSource.foursquare.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f24804a[DataSource.instagram.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f24804a[DataSource.vk.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener.class */
    public static class DefaultLoginListener implements LoginListener {

        /* renamed from: a */
        private RemoteAccountHelper f24805a;

        public DefaultLoginListener(RemoteAccountHelper remoteAccountHelper) {
            this.f24805a = remoteAccountHelper;
        }

        @Override // com.callapp.contacts.api.helper.common.LoginListener
        /* renamed from: a */
        public void mo26206a() {
            this.f24805a.setLoginListener(null);
        }

        @Override // com.callapp.contacts.api.helper.common.LoginListener
        /* renamed from: b */
        public void mo26205b() {
            this.f24805a.setLoginListener(null);
        }

        @Override // com.callapp.contacts.api.helper.common.LoginListener
        /* renamed from: b */
        public final void mo26204b(String str) {
        }

        @Override // com.callapp.contacts.api.helper.common.LoginListener
        /* renamed from: c */
        public void mo26203c() {
            this.f24805a.setLoginListener(null);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode.class */
    public enum SocialCacheMode {
        standard,
        onlyFromCache
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable.class */
    public static abstract class SocialCallable<T> {
        /* renamed from: a */
        public abstract T mo29086a();

        public abstract String getCacheKey();

        public abstract int getCacheTtl();

        public int getRefreshInterval() {
            return getCacheTtl();
        }
    }

    /* renamed from: a */
    public static RemoteAccountHelper m29244a(DataSource dataSource) {
        switch (C71784.f24804a[dataSource.ordinal()]) {
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

    /* renamed from: a */
    public static String m29243a(String str, Pattern pattern) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        String group = matcher.group(1);
        if (!StringUtils.m26045b((CharSequence) group)) {
            return null;
        }
        return group;
    }

    /* renamed from: a */
    public static void m29253a(Activity activity, ContactData contactData, DataSource dataSource, PersonSelectPopup.PersonSelectListener personSelectListener, ContactSocialNetworksCertaintyHelper.ProfileDialogListener profileDialogListener) {
        if (activity != null) {
            new ContactSocialNetworksCertaintyHelper(activity, contactData, dataSource, personSelectListener, profileDialogListener).m29269a(activity, contactData, false);
        }
    }

    /* renamed from: a */
    public static void m29252a(ActivityWithContact activityWithContact, ContactData contactData, DataSource dataSource) {
        new ContactSocialNetworksCertaintyHelper(activityWithContact, contactData, dataSource).m29269a((Activity) activityWithContact, activityWithContact.getContact(), false);
    }

    /* renamed from: a */
    public static void m29248a(OutcomeListener outcomeListener, boolean z) {
        if (outcomeListener != null) {
            outcomeListener.mo28119a(z);
        }
    }

    /* renamed from: b */
    private static SparseArray<Set<String>> m29240b(ContactData contactData) {
        SparseArray<Set<String>> negativesMap = contactData.getNegativesMap();
        SparseArray<Set<String>> sparseArray = negativesMap;
        if (negativesMap.size() == 0) {
            sparseArray = new SparseArray<>();
            contactData.setNegativesMap(sparseArray);
        }
        return sparseArray;
    }

    /* renamed from: b */
    private boolean m29242b(long j, String str, String str2) {
        int helperSocialNetDBId = getHelperSocialNetDBId();
        return helperSocialNetDBId > 0 ? UserPositiveNegativeManager.m28878b(j, str, helperSocialNetDBId, str2) : false;
    }

    /* renamed from: b */
    public static boolean m29239b(DataSource dataSource) {
        RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(dataSource.dbCode);
        return remoteAccountHelper != null && remoteAccountHelper.isLoggedIn();
    }

    public static int getSocialBadgeBgColor(int i) {
        if (i != 1) {
            if (i == 4) {
                return ThemeUtils.m27386a(CallAppApplication.get(), 2131100208);
            }
            if (i == 5) {
                return ThemeUtils.m27386a(CallAppApplication.get(), 2131099913);
            }
            if (i == 6) {
                return ThemeUtils.m27386a(CallAppApplication.get(), 2131099911);
            }
            if (i == 7) {
                return ThemeUtils.m27386a(CallAppApplication.get(), 2131099936);
            }
            if (i == 9) {
                return ThemeUtils.m27386a(CallAppApplication.get(), 2131100076);
            }
            if (i == 10) {
                return ThemeUtils.m27386a(CallAppApplication.get(), 2131100213);
            }
            return 0;
        }
        return ThemeUtils.m27386a(CallAppApplication.get(), 2131099906);
    }

    public static int getSocialBadgeColoredResId(int i) {
        if (i != 1) {
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
            if (i == 9) {
                return 2131231837;
            }
            return i != 10 ? 0 : 2131231964;
        }
        return 2131231673;
    }

    public static int getSocialBadgeResId(int i) {
        if (i != 1) {
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
            if (i == 9) {
                return 2131231840;
            }
            return i != 10 ? 0 : 2131231967;
        }
        return 2131231676;
    }

    public static Pair<Integer, Integer> getSocialPairBadgeResId(int i) {
        if (i != 1) {
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
            if (i == 10) {
                return new Pair<>(2131231965, 2131231966);
            }
            return null;
        }
        return new Pair<>(2131231674, 2131231675);
    }

    private BooleanPref getWasEverConnectedPref() {
        return new BooleanPref(getName() + "EverConnected", Boolean.FALSE);
    }

    /* renamed from: a */
    public abstract JSONSocialNetworkID mo29108a(ContactData contactData);

    /* renamed from: a */
    public HttpRequest mo29106a(HttpRequest httpRequest) {
        return httpRequest;
    }

    /* renamed from: a */
    public final <T> T m29251a(SocialCallable<T> socialCallable, Class<T> cls) {
        return (T) m29250a((SocialCallable<Object>) socialCallable, (Class<Object>) cls, true, false);
    }

    /* renamed from: a */
    public final <T> T m29250a(SocialCallable<T> socialCallable, Class<T> cls, boolean z, boolean z2) {
        return (T) m29249a(socialCallable, cls, z, z2, SocialCacheMode.standard);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <T> T m29249a(SocialCallable<T> socialCallable, Class<T> cls, boolean z, boolean z2, SocialCacheMode socialCacheMode) {
        T t;
        boolean isLoggedIn = isLoggedIn();
        T t2 = null;
        if (!z || isLoggedIn) {
            String cacheKey = socialCallable.getCacheKey();
            synchronized (cacheKey.intern()) {
                boolean z3 = false;
                CacheManager.CachedObject<T> m28376c = CacheManager.get().m28376c(cls, cacheKey, false);
                if (socialCacheMode != SocialCacheMode.onlyFromCache) {
                    if (m28376c == null) {
                        z3 = true;
                    } else if (socialCallable.getRefreshInterval() != socialCallable.getCacheTtl()) {
                        z3 = DateUtils.m27126a(new Date(m28376c.getExpirationDate().getTime() - TimeUnit.MINUTES.toMillis(Singletons.get().getApplication().getResources().getInteger(socialCallable.getCacheTtl()))), socialCallable.getRefreshInterval());
                    }
                    if (z3 && HttpUtils.m26985a() && isReadyForRemoteCalls()) {
                        Object mo29110a = mo29110a(socialCallable, z2);
                        if (mo29110a != 0) {
                            CacheManager.get().m28388a(cls, cacheKey, mo29110a, socialCallable.getCacheTtl());
                        }
                        t = mo29110a;
                    }
                }
                t = null;
                if (m28376c != null) {
                    t = m28376c.getObj();
                }
            }
            t2 = t;
        }
        return t2;
    }

    /* renamed from: a */
    protected abstract <T> T mo29110a(SocialCallable<T> socialCallable, boolean z);

    /* renamed from: a */
    protected abstract List<PersonData> mo29104a(String str, boolean z);

    /* renamed from: a */
    public abstract Map<String, Friend> mo29103a(boolean z, boolean z2);

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: a */
    public final void mo26206a() {
        CLog.m27611a(getClass(), "Login Completed");
        new Task() { // from class: com.callapp.contacts.api.helper.common.RemoteAccountHelper.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                RemoteAccountHelper.this.m29235j();
                try {
                    RemoteAccountHelper.this.getFriendsCount();
                } catch (QuotaReachedException e) {
                }
            }
        }.execute();
        LoginListener loginListener = this.f24799b;
        if (loginListener != null) {
            loginListener.mo26206a();
        }
    }

    /* renamed from: a */
    public final void m29256a(long j, String str) {
        int helperSocialNetDBId = getHelperSocialNetDBId();
        if (helperSocialNetDBId > 0) {
            UserPositiveNegativeManager.m28887a(j, str, helperSocialNetDBId);
            AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Doesn't have a profile", SocialNetworksSearchUtil.getSocialNetworkName(helperSocialNetDBId));
        }
    }

    /* renamed from: a */
    public final void m29255a(long j, String str, String str2) {
        int helperSocialNetDBId = getHelperSocialNetDBId();
        if (helperSocialNetDBId > 0) {
            AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Not right profile", SocialNetworksSearchUtil.getSocialNetworkName(helperSocialNetDBId));
            SuggestContactManager.m28473a(j, helperSocialNetDBId, str2);
            UserCorrectedDataManager.m28900a(j, str, helperSocialNetDBId);
            UserPositiveNegativeManager.m28886a(j, str, helperSocialNetDBId, str2);
            FastCacheData m28944a = FastCacheDataManager.m28944a(StringUtils.m26045b((CharSequence) str) ? PhoneManager.get().m28239a(str) : ContactUtils.m28311b(j), j);
            if (m28944a == null) {
                return;
            }
            FastCacheDataManager.m28947a(getDataSource(), m28944a, PhoneManager.get().m28239a(str), j);
        }
    }

    /* renamed from: a */
    protected abstract void mo29113a(Activity activity);

    /* renamed from: a */
    public abstract void mo29111a(Activity activity, String str, Runnable runnable, OutcomeListener outcomeListener);

    /* renamed from: a */
    public final void m29247a(UsageCounter usageCounter, int i, int i2, boolean z) {
        Long valueOf = z ? Long.valueOf(UsageCounterDataManager.incrementCounter(usageCounter, i)) : null;
        if (isFromSync()) {
            Long l = valueOf;
            if (valueOf == null) {
                l = Long.valueOf(UsageCounterDataManager.getCounterValue(usageCounter));
            }
            if (l.longValue() <= i2) {
                return;
            }
            throw new QuotaReachedException("Period configured quota was reached for counter=" + usageCounter + " current counter=" + l);
        }
    }

    /* renamed from: a */
    public abstract void mo29107a(ContactData contactData, JSONSocialNetworkID jSONSocialNetworkID);

    /* renamed from: a */
    public final void m29246a(ContactData contactData, String str) {
        m29255a(contactData.getDeviceId(), contactData.getPhone().m26101a(), str);
        SparseArray<Set<String>> m29240b = m29240b(contactData);
        DataSource dataSource = getDataSource();
        Set<String> set = m29240b.get(dataSource.dbCode);
        HashSet hashSet = set;
        if (set == null) {
            hashSet = new HashSet();
            m29240b.put(dataSource.dbCode, hashSet);
        }
        hashSet.add(str);
        contactData.fireChange(ContactField.negatives);
        ContactField contactField = getDataSource().socialSearchField;
        SocialSearchResults socialSearchResults = (SocialSearchResults) ReflectionUtils.m27423a(contactData, contactField.name());
        if (socialSearchResults != null) {
            if (socialSearchResults.f26742id != null) {
                ReflectionUtils.m27422a(contactData, contactField.name(), (Object) null);
            }
            contactData.fireChange(contactField);
            CacheManager.get().m28390a(SocialSearchResults.class, contactData.getCacheKey(contactField.name()));
        }
        contactData.assertDeviceDataExist();
        contactData.resetSocialNetworks(Arrays.asList(getDataSource()));
    }

    /* renamed from: a */
    public final void m29245a(ContactData contactData, String str, boolean z) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return;
        }
        long deviceId = contactData.getDeviceId();
        String m26101a = contactData.getPhone().m26101a();
        if (!m29254a(deviceId, m26101a, str, z)) {
            return;
        }
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
        if (jSONSocialNetworkID != null && !Objects.m31915a(jSONSocialNetworkID.getId(), str)) {
            contactData.resetSocialNetworks(Arrays.asList(getDataSource()));
        }
        if (m29242b(deviceId, m26101a, str)) {
            Set<String> set = m29240b(contactData).get(getHelperSocialNetDBId());
            if (CollectionUtils.m26068b(set)) {
                set.remove(str);
                contactData.fireChange(ContactField.negatives);
            }
        }
        contactData.assertDeviceDataExist();
        mo29107a(contactData, new JSONSocialNetworkID(str, z));
    }

    /* renamed from: a */
    public final boolean m29254a(long j, String str, String str2, boolean z) {
        int helperSocialNetDBId = getHelperSocialNetDBId();
        if (z) {
            SuggestContactManager.m28473a(j, helperSocialNetDBId, str2);
        }
        return UserPositiveNegativeManager.m28885a(j, str, helperSocialNetDBId, str2, z);
    }

    /* renamed from: a */
    public abstract boolean mo29105a(String str);

    /* renamed from: b */
    public final List<PersonData> m29238b(String str, boolean z) throws SearchIsNotAvailableExecption {
        JSONQuotaLimitation m26909a = CheckQuotaLimitation.m26909a(true);
        if (m26909a == null) {
            return mo29102c(str, false);
        }
        Map<String, QuotaLimitPOJO> quotaLimitationMap = m26909a.getQuotaLimitationMap();
        QuotaLimitPOJO quotaLimitPOJO = null;
        if (CollectionUtils.m26067b(quotaLimitationMap)) {
            quotaLimitPOJO = quotaLimitationMap.get(String.valueOf(getApiConstantNetworkId()));
        }
        return quotaLimitPOJO == null ? true : isFromSync() ? quotaLimitPOJO.isSearchInSync() : z ? quotaLimitPOJO.isSearchInManual() : quotaLimitPOJO.isSearchInContactDetails() ? mo29102c(str, false) : mo29102c(str, true);
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: b */
    public final void mo26205b() {
        CLog.m27598b(getClass(), "Login Error");
        LoginListener loginListener = this.f24799b;
        if (loginListener != null) {
            loginListener.mo26205b();
        }
    }

    /* renamed from: b */
    public final void m29241b(final Activity activity) {
        if (HttpUtils.m26985a()) {
            new Task() { // from class: com.callapp.contacts.api.helper.common.RemoteAccountHelper.3
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    RemoteAccountHelper.this.mo29113a(activity);
                }
            }.execute();
            return;
        }
        FeedbackManager.m28675a(activity);
        LoginListener loginListener = this.f24799b;
        if (loginListener == null) {
            return;
        }
        loginListener.mo26203c();
    }

    /* renamed from: c */
    public GlideUrl mo29209c(String str) {
        return new GlideUrl(str);
    }

    /* renamed from: c */
    protected abstract List<PersonData> mo29102c(String str, boolean z) throws SearchIsNotAvailableExecption;

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: c */
    public final void mo26203c() {
        CLog.m27611a(getClass(), "Login cancelled");
        LoginListener loginListener = this.f24799b;
        if (loginListener != null) {
            loginListener.mo26203c();
        }
    }

    /* renamed from: d */
    public final void m29237d() {
        if (Prefs.f26245aV.isNotNull()) {
            new Task() { // from class: com.callapp.contacts.api.helper.common.RemoteAccountHelper.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    HttpRequest mo29106a = RemoteAccountHelper.this.mo29106a((HttpRequest) null);
                    if (mo29106a != null) {
                        mo29106a.m27004a(10000);
                    }
                }
            }.execute();
        }
    }

    /* renamed from: d */
    public boolean mo29178d(String str) {
        if (isLoggedIn()) {
            Map<String, Friend> mo29103a = mo29103a(false, false);
            if (!CollectionUtils.m26067b(mo29103a)) {
                return false;
            }
            return mo29103a.containsKey(str);
        }
        return false;
    }

    /* renamed from: e */
    public final List<PersonData> m29236e(String str) {
        JSONQuotaLimitation m26909a = CheckQuotaLimitation.m26909a(true);
        if (m26909a == null) {
            return mo29104a(str, false);
        }
        Map<String, QuotaLimitPOJO> quotaLimitationMap = m26909a.getQuotaLimitationMap();
        QuotaLimitPOJO quotaLimitPOJO = null;
        if (CollectionUtils.m26067b(quotaLimitationMap)) {
            quotaLimitPOJO = quotaLimitationMap.get(String.valueOf(getApiConstantNetworkId()));
        }
        if (quotaLimitPOJO == null || quotaLimitPOJO.isMutuals()) {
            return mo29104a(str, false);
        }
        List<PersonData> mo29104a = mo29104a(str, true);
        if (!CollectionUtils.m26068b(mo29104a)) {
            throw new QuotaReachedException();
        }
        return mo29104a;
    }

    /* renamed from: e */
    public abstract void mo29101e();

    /* renamed from: f */
    public abstract String mo29100f(String str) throws UserNotFoundException, QuotaReachedException;

    /* renamed from: f */
    public boolean mo29163f() {
        return true;
    }

    /* renamed from: g */
    public abstract String mo29099g(String str) throws UserNotFoundException, QuotaReachedException;

    /* renamed from: g */
    public boolean mo29191g() {
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

    /* renamed from: h */
    public abstract String mo29098h(String str) throws UserNotFoundException, QuotaReachedException;

    /* renamed from: h */
    public boolean mo29170h() {
        return true;
    }

    /* renamed from: i */
    public abstract String mo29096i(String str);

    /* renamed from: i */
    public abstract boolean mo29097i();

    public boolean isFromSync() {
        return this.f24798a;
    }

    public abstract boolean isLoggedIn();

    public boolean isNativeAppInstalled() {
        return false;
    }

    protected boolean isReadyForRemoteCalls() {
        return true;
    }

    /* renamed from: j */
    public final String m29234j(String str) {
        String str2;
        try {
            str2 = mo29096i(str);
        } catch (QuotaReachedException e) {
            str2 = null;
        }
        return str2;
    }

    /* renamed from: j */
    public final void m29235j() {
        getWasEverConnectedPref().set(Boolean.TRUE);
    }

    public void setDoesntHave(ContactData contactData) {
        m29256a(contactData.getDeviceId(), contactData.getPhone().m26101a());
        SparseArray<Set<String>> m29240b = m29240b(contactData);
        int helperSocialNetDBId = getHelperSocialNetDBId();
        if (m29240b.get(helperSocialNetDBId) == null) {
            m29240b.put(helperSocialNetDBId, new HashSet());
        }
        m29240b.get(helperSocialNetDBId).add("DONTHAVE");
        contactData.fireChange(ContactField.negatives);
        contactData.assertDeviceDataExist();
        ContactField contactField = getDataSource().socialSearchField;
        ReflectionUtils.m27422a(contactData, contactField.name(), (Object) null);
        contactData.fireChange(contactField);
        CacheManager.get().m28390a(SocialSearchResults.class, contactData.getCacheKey(contactField));
        contactData.assertDeviceDataExist();
        contactData.resetSocialNetworks(Arrays.asList(getDataSource()));
    }

    public void setFromSync(boolean z) {
        this.f24798a = z;
    }

    public void setLoginListener(LoginListener loginListener) {
        this.f24799b = loginListener;
    }
}
