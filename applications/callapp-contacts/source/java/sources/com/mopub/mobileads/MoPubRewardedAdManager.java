package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowInsets;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.DataKeys;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPub;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.common.util.MoPubCollections;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.AdData;
import com.mopub.mobileads.AdLifecycleListener;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import io.objectbox.model.PropertyFlags;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager.class */
public class MoPubRewardedAdManager {
    public static final int API_VERSION = 1;

    /* renamed from: a */
    private static MoPubRewardedAdManager f59292a;

    /* renamed from: b */
    private static SharedPreferences f59293b;

    /* renamed from: d */
    private WeakReference<Activity> f59295d;

    /* renamed from: e */
    private final Context f59296e;

    /* renamed from: g */
    private MoPubRewardedAdListener f59298g;

    /* renamed from: h */
    private final Set<MediationSettings> f59299h;

    /* renamed from: f */
    private final C16862d f59297f = new C16862d();

    /* renamed from: c */
    private final Handler f59294c = new Handler(Looper.getMainLooper());

    /* renamed from: i */
    private final Map<String, Set<MediationSettings>> f59300i = new HashMap();

    /* renamed from: j */
    private final Handler f59301j = new Handler();

    /* renamed from: k */
    private final Map<String, Runnable> f59302k = new HashMap();

    /* renamed from: l */
    private final RewardedAdsLoaders f59303l = new RewardedAdsLoaders(this);

    /* renamed from: com.mopub.mobileads.MoPubRewardedAdManager$5 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$5.class */
    public static final /* synthetic */ class C168015 {

        /* renamed from: a */
        static final /* synthetic */ int[] f59312a;

        /* renamed from: b */
        static final /* synthetic */ int[] f59313b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006b -> B:30:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006f -> B:42:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0073 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0077 -> B:32:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007b -> B:28:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007f -> B:40:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0083 -> B:36:0x005f). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubErrorCode.values().length];
            f59313b = iArr;
            try {
                iArr[MoPubErrorCode.AD_SHOW_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f59313b[MoPubErrorCode.VIDEO_PLAYBACK_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f59313b[MoPubErrorCode.EXPIRED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[MoPubNetworkError.Reason.values().length];
            f59312a = iArr2;
            try {
                iArr2[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f59312a[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f59312a[MoPubNetworkError.Reason.TOO_MANY_REQUESTS.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f59312a[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f59312a[MoPubNetworkError.Reason.BAD_HEADER_DATA.ordinal()] = 5;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$RequestParameters.class */
    public static final class RequestParameters {
        public final String mCustomerId;
        public final String mKeywords;
        public final Location mLocation;
        public final String mUserDataKeywords;

        public RequestParameters(String str) {
            this(str, null);
        }

        public RequestParameters(String str, String str2) {
            this(str, str2, null);
        }

        public RequestParameters(String str, String str2, Location location) {
            this(str, str2, location, null);
        }

        public RequestParameters(String str, String str2, Location location, String str3) {
            this.mKeywords = str;
            this.mCustomerId = str3;
            boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
            this.mUserDataKeywords = !canCollectPersonalInformation ? null : str2;
            this.mLocation = !canCollectPersonalInformation ? null : location;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.mobileads.MoPubRewardedAdManager$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$a.class */
    public static abstract class AbstractRunnableC16806a implements Runnable {

        /* renamed from: a */
        private final AdAdapter f59316a;

        AbstractRunnableC16806a(AdAdapter adAdapter) {
            Preconditions.checkNotNull(adAdapter);
            this.f59316a = adAdapter;
        }

        /* renamed from: a */
        protected abstract void mo6449a(String str);

        @Override // java.lang.Runnable
        public void run() {
            for (String str : MoPubRewardedAdManager.f59292a.f59297f.m6347a(this.f59316a)) {
                mo6449a(str);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedAdManager$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$b.class */
    public static final class C16807b implements AdLifecycleListener.InteractionListener, AdLifecycleListener.LoadListener {

        /* renamed from: a */
        final AdAdapter f59317a;

        C16807b(AdAdapter adAdapter) {
            this.f59317a = adAdapter;
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
        public final void onAdClicked() {
            MoPubLog.log(MoPubLog.AdLogEvent.CLICKED, new Object[0]);
            AdAdapter adAdapter = this.f59317a;
            MoPubRewardedAdManager.onRewardedAdClicked(adAdapter, adAdapter.m6602d());
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
        public final void onAdCollapsed() {
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
        public final void onAdComplete(MoPubReward moPubReward) {
            MoPubReward moPubReward2 = moPubReward;
            if (moPubReward == null) {
                moPubReward2 = MoPubReward.success("", 0);
            }
            AdAdapter adAdapter = this.f59317a;
            MoPubRewardedAdManager.onRewardedAdCompleted(adAdapter, adAdapter.m6602d(), moPubReward2);
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
        public final void onAdDismissed() {
            MoPubLog.log(MoPubLog.AdLogEvent.DID_DISAPPEAR, new Object[0]);
            AdAdapter adAdapter = this.f59317a;
            MoPubRewardedAdManager.onRewardedAdClosed(adAdapter, adAdapter.m6602d());
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
        public final void onAdExpanded() {
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
        public final void onAdFailed(MoPubErrorCode moPubErrorCode) {
            int i = C168015.f59313b[moPubErrorCode.ordinal()];
            if (i != 1 && i != 2 && i != 3) {
                AdAdapter adAdapter = this.f59317a;
                MoPubRewardedAdManager.onRewardedAdLoadFailure(adAdapter, adAdapter.m6602d(), moPubErrorCode);
                return;
            }
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            AdAdapter adAdapter2 = this.f59317a;
            MoPubRewardedAdManager.onRewardedAdShowError(adAdapter2, adAdapter2.m6602d(), moPubErrorCode);
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
        public final void onAdImpression() {
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
        public final void onAdLoadFailed(MoPubErrorCode moPubErrorCode) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            onAdFailed(moPubErrorCode);
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
        public final void onAdLoaded() {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
            AdAdapter adAdapter = this.f59317a;
            MoPubRewardedAdManager.onRewardedAdLoadSuccess(adAdapter, adAdapter.m6602d());
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
        public final void onAdPauseAutoRefresh() {
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
        public final void onAdResumeAutoRefresh() {
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
        public final void onAdShown() {
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
            AdAdapter adAdapter = this.f59317a;
            MoPubRewardedAdManager.onRewardedAdStarted(adAdapter, adAdapter.m6602d());
        }
    }

    private MoPubRewardedAdManager(Activity activity, MediationSettings... mediationSettingsArr) {
        this.f59295d = new WeakReference<>(activity);
        Context applicationContext = activity.getApplicationContext();
        this.f59296e = applicationContext;
        HashSet hashSet = new HashSet();
        this.f59299h = hashSet;
        MoPubCollections.addAllNonNull(hashSet, mediationSettingsArr);
        f59293b = SharedPreferencesHelper.getSharedPreferences(applicationContext, "mopubBaseAdSettings");
    }

    /* renamed from: a */
    public static /* synthetic */ void m6468a(AdAdapter adAdapter) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Base Ad failed to load rewarded ad in a timely fashion.");
        adAdapter.onAdLoadFailed(MoPubErrorCode.NETWORK_TIMEOUT);
        adAdapter.getClass();
        m6462a(new _$$Lambda$6esjqDhxQMGUPrXCHOK0_N2vQdc(adAdapter));
    }

    /* renamed from: a */
    public static /* synthetic */ void m6467a(AdAdapter adAdapter, MoPubReward moPubReward, String str) {
        MoPubReward moPubReward2 = f59292a.f59297f.f59686e.get(adAdapter);
        MoPubReward moPubReward3 = moPubReward;
        if (moPubReward.isSuccessful()) {
            moPubReward3 = moPubReward;
            if (moPubReward2 != null) {
                moPubReward3 = moPubReward2;
            }
        }
        HashSet hashSet = new HashSet();
        if (TextUtils.isEmpty(str)) {
            hashSet.addAll(f59292a.f59297f.m6347a(adAdapter));
        } else {
            hashSet.add(str);
        }
        MoPubLog.log(MoPubLog.AdLogEvent.SHOULD_REWARD, Integer.valueOf(moPubReward3.getAmount()), moPubReward3.getLabel());
        MoPubRewardedAdListener moPubRewardedAdListener = f59292a.f59298g;
        if (moPubRewardedAdListener != null) {
            moPubRewardedAdListener.onRewardedAdCompleted(hashSet, moPubReward3);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m6465a(MoPubRewardedAdManager moPubRewardedAdManager, String str) {
        Runnable remove = moPubRewardedAdManager.f59302k.remove(str);
        if (remove != null) {
            moPubRewardedAdManager.f59301j.removeCallbacks(remove);
        }
    }

    /* renamed from: a */
    private static void m6462a(Runnable runnable) {
        MoPubRewardedAdManager moPubRewardedAdManager = f59292a;
        if (moPubRewardedAdManager != null) {
            moPubRewardedAdManager.f59294c.post(runnable);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m6461a(String str) {
        Preconditions.checkNotNull(str);
        MoPubRewardedAdListener moPubRewardedAdListener = f59292a.f59298g;
        if (moPubRewardedAdListener != null) {
            moPubRewardedAdListener.onRewardedAdStarted(str);
        }
        MoPubRewardedAdManager moPubRewardedAdManager = f59292a;
        RewardedAdsLoaders rewardedAdsLoaders = moPubRewardedAdManager.f59303l;
        Context context = moPubRewardedAdManager.f59296e;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(context);
        C16849a c16849a = rewardedAdsLoaders.f59447a.get(str);
        if (c16849a != null) {
            c16849a.m6351a(context);
        }
    }

    /* renamed from: a */
    private static void m6458a(String str, String str2, MoPubErrorCode moPubErrorCode) {
        MoPubRewardedAdManager moPubRewardedAdManager = f59292a;
        if (moPubRewardedAdManager == null) {
            m6457b();
        } else {
            moPubRewardedAdManager.m6453b(str, str2, moPubErrorCode);
        }
    }

    /* renamed from: a */
    private static boolean m6460a(String str, AdAdapter adAdapter) {
        MoPubRewardedAdManager moPubRewardedAdManager = f59292a;
        return moPubRewardedAdManager != null && moPubRewardedAdManager.f59303l.m6423c(str) && adAdapter != null && adAdapter.isReady();
    }

    /* renamed from: b */
    private static void m6457b() {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub rewarded ad was not initialized. You must call MoPub.initializeSdk() with an Activity Context before loading or attempting to show rewarded ads.");
    }

    /* renamed from: b */
    static /* synthetic */ void m6455b(String str) {
        Preconditions.checkNotNull(str);
        MoPubRewardedAdListener moPubRewardedAdListener = f59292a.f59298g;
        if (moPubRewardedAdListener != null) {
            moPubRewardedAdListener.onRewardedAdClicked(str);
        }
        MoPubRewardedAdManager moPubRewardedAdManager = f59292a;
        RewardedAdsLoaders rewardedAdsLoaders = moPubRewardedAdManager.f59303l;
        Context context = moPubRewardedAdManager.f59296e;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(context);
        C16849a c16849a = rewardedAdsLoaders.f59447a.get(str);
        if (c16849a != null) {
            c16849a.m6350b(context);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m6454b(String str, MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubErrorCode);
        f59292a.f59303l.m6424b(str);
        MoPubRewardedAdListener moPubRewardedAdListener = f59292a.f59298g;
        if (moPubRewardedAdListener != null) {
            moPubRewardedAdListener.onRewardedAdShowError(str, moPubErrorCode);
        }
    }

    /* renamed from: b */
    private void m6453b(String str, String str2, MoPubErrorCode moPubErrorCode) {
        if (this.f59303l.m6425a(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. A request is already pending.", str));
            return;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Loading rewarded ad request for ad unit %s with URL %s", str, str2));
        this.f59303l.m6426a(this.f59296e, str, str2, moPubErrorCode);
    }

    /* renamed from: c */
    static /* synthetic */ void m6451c(String str) {
        Preconditions.checkNotNull(str);
        RewardedAdsLoaders rewardedAdsLoaders = f59292a.f59303l;
        Preconditions.checkNotNull(str);
        rewardedAdsLoaders.f59447a.remove(str);
        MoPubRewardedAdListener moPubRewardedAdListener = f59292a.f59298g;
        if (moPubRewardedAdListener != null) {
            moPubRewardedAdListener.onRewardedAdClosed(str);
        }
    }

    public static Set<MoPubReward> getAvailableRewards(String str) {
        MoPubRewardedAdManager moPubRewardedAdManager = f59292a;
        if (moPubRewardedAdManager != null) {
            return moPubRewardedAdManager.f59297f.m6342c(str);
        }
        m6457b();
        return Collections.emptySet();
    }

    public static <T extends MediationSettings> T getGlobalMediationSettings(Class<T> cls) {
        MoPubRewardedAdManager moPubRewardedAdManager = f59292a;
        if (moPubRewardedAdManager == null) {
            m6457b();
            return null;
        }
        for (MediationSettings mediationSettings : moPubRewardedAdManager.f59299h) {
            if (cls.equals(mediationSettings.getClass())) {
                return cls.cast(mediationSettings);
            }
        }
        return null;
    }

    public static <T extends MediationSettings> T getInstanceMediationSettings(Class<T> cls, String str) {
        MoPubRewardedAdManager moPubRewardedAdManager = f59292a;
        if (moPubRewardedAdManager == null) {
            m6457b();
            return null;
        }
        Set<MediationSettings> set = moPubRewardedAdManager.f59300i.get(str);
        if (set == null) {
            return null;
        }
        for (MediationSettings mediationSettings : set) {
            if (cls.equals(mediationSettings.getClass())) {
                return cls.cast(mediationSettings);
            }
        }
        return null;
    }

    public static boolean hasAd(String str) {
        MoPubRewardedAdManager moPubRewardedAdManager = f59292a;
        if (moPubRewardedAdManager != null) {
            return m6460a(str, moPubRewardedAdManager.f59297f.m6345a(str));
        }
        m6457b();
        return false;
    }

    public static void init(Activity activity, MediationSettings... mediationSettingsArr) {
        synchronized (MoPubRewardedAdManager.class) {
            try {
                if (f59292a == null) {
                    f59292a = new MoPubRewardedAdManager(activity, mediationSettingsArr);
                } else {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Tried to call init more than once. Only the first initialization call has any effect.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void loadAd(final String str, RequestParameters requestParameters, MediationSettings... mediationSettingsArr) {
        Window window;
        WindowInsets rootWindowInsets;
        Preconditions.checkNotNull(str);
        MoPubRewardedAdManager moPubRewardedAdManager = f59292a;
        if (moPubRewardedAdManager == null) {
            m6457b();
        } else if (str.equals(moPubRewardedAdManager.f59297f.f59687f)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. The ad is already showing.", str));
        } else if (f59292a.f59303l.m6423c(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. This ad unit already finished loading and is ready to show.", str));
            m6462a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedAdManager.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (MoPubRewardedAdManager.f59292a.f59298g != null) {
                        MoPubRewardedAdManager.f59292a.f59298g.onRewardedAdLoadSuccess(str);
                    }
                }
            });
        } else {
            HashSet hashSet = new HashSet();
            MoPubCollections.addAllNonNull(hashSet, mediationSettingsArr);
            f59292a.f59300i.put(str, hashSet);
            String str2 = requestParameters == null ? null : requestParameters.mCustomerId;
            if (!TextUtils.isEmpty(str2)) {
                f59292a.f59297f.f59688g = str2;
            }
            WebViewAdUrlGenerator webViewAdUrlGenerator = new WebViewAdUrlGenerator(f59292a.f59296e);
            webViewAdUrlGenerator.withAdUnitId(str).withKeywords(requestParameters == null ? null : requestParameters.mKeywords).withUserDataKeywords((requestParameters == null || !MoPub.canCollectPersonalInformation()) ? null : requestParameters.mUserDataKeywords);
            Preconditions.checkNotNull(webViewAdUrlGenerator);
            webViewAdUrlGenerator.withRequestedAdSize(ClientMetadata.getInstance(f59292a.f59296e).getDeviceDimensions());
            if (Build.VERSION.SDK_INT >= 28 && f59292a.f59295d.get() != null && (window = f59292a.f59295d.get().getWindow()) != null && (rootWindowInsets = window.getDecorView().getRootWindowInsets()) != null) {
                webViewAdUrlGenerator.withWindowInsets(rootWindowInsets);
            }
            m6458a(str, webViewAdUrlGenerator.generateUrlString(Constants.HOST), (MoPubErrorCode) null);
        }
    }

    public static void onRewardedAdClicked(AdAdapter adAdapter, String str) {
        final String str2 = f59292a.f59297f.f59687f;
        if (TextUtils.isEmpty(str2)) {
            m6462a(new AbstractRunnableC16806a(adAdapter) { // from class: com.mopub.mobileads.MoPubRewardedAdManager.12
                @Override // com.mopub.mobileads.MoPubRewardedAdManager.AbstractRunnableC16806a
                /* renamed from: a */
                protected final void mo6449a(String str3) {
                    MoPubRewardedAdManager.m6455b(str3);
                }
            });
        } else {
            m6462a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedAdManager.13
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubRewardedAdManager.m6455b(str2);
                }
            });
        }
    }

    public static void onRewardedAdClosed(AdAdapter adAdapter, String str) {
        final String str2 = f59292a.f59297f.f59687f;
        if (TextUtils.isEmpty(str2)) {
            m6462a(new AbstractRunnableC16806a(adAdapter) { // from class: com.mopub.mobileads.MoPubRewardedAdManager.2
                @Override // com.mopub.mobileads.MoPubRewardedAdManager.AbstractRunnableC16806a
                /* renamed from: a */
                protected final void mo6449a(String str3) {
                    MoPubRewardedAdManager.m6451c(str3);
                }
            });
        } else {
            m6462a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedAdManager.3
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubRewardedAdManager.m6451c(str2);
                }
            });
        }
        f59292a.f59297f.f59687f = null;
    }

    public static void onRewardedAdCompleted(final AdAdapter adAdapter, String str, final MoPubReward moPubReward) {
        final String str2 = f59292a.f59297f.f59687f;
        m6462a(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$MoPubRewardedAdManager$iGCzXzGJytxCmY0Kq_uWMSXDuNw
            @Override // java.lang.Runnable
            public final void run() {
                MoPubRewardedAdManager.m6467a(AdAdapter.this, moPubReward, str2);
            }
        });
        String str3 = TextUtils.isEmpty(str2) ? null : f59292a.f59297f.f59684c.get(str2);
        if (!TextUtils.isEmpty(str3)) {
            final String str4 = str3;
            m6462a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedAdManager.4
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubReward m6343b = MoPubRewardedAdManager.f59292a.f59297f.m6343b(str2);
                    String label = m6343b == null ? "" : m6343b.getLabel();
                    String num = m6343b == null ? Integer.toString(0) : Integer.toString(m6343b.getAmount());
                    AdAdapter m6345a = MoPubRewardedAdManager.f59292a.f59297f.m6345a(str2);
                    String baseAdClassName = m6345a == null ? null : m6345a.getBaseAdClassName();
                    RewardedAdCompletionRequestHandler.makeRewardedAdCompletionRequest(MoPubRewardedAdManager.f59292a.f59296e, str4, MoPubRewardedAdManager.f59292a.f59297f.f59688g, label, num, baseAdClassName, MoPubRewardedAdManager.f59292a.f59297f.f59685d.get(str2));
                }
            });
        }
    }

    public static void onRewardedAdLoadFailure(AdAdapter adAdapter, String str, final MoPubErrorCode moPubErrorCode) {
        m6462a(new AbstractRunnableC16806a(adAdapter) { // from class: com.mopub.mobileads.MoPubRewardedAdManager.7
            @Override // com.mopub.mobileads.MoPubRewardedAdManager.AbstractRunnableC16806a
            /* renamed from: a */
            protected final void mo6449a(String str2) {
                MoPubRewardedAdManager.m6465a(MoPubRewardedAdManager.f59292a, str2);
                MoPubRewardedAdManager.f59292a.m6459a(str2, moPubErrorCode);
                if (str2.equals(MoPubRewardedAdManager.f59292a.f59297f.f59687f)) {
                    MoPubRewardedAdManager.f59292a.f59297f.f59687f = null;
                }
            }
        });
    }

    public static void onRewardedAdLoadSuccess(AdAdapter adAdapter, String str) {
        m6462a(new AbstractRunnableC16806a(adAdapter) { // from class: com.mopub.mobileads.MoPubRewardedAdManager.6
            @Override // com.mopub.mobileads.MoPubRewardedAdManager.AbstractRunnableC16806a
            /* renamed from: a */
            protected final void mo6449a(String str2) {
                MoPubRewardedAdManager.m6465a(MoPubRewardedAdManager.f59292a, str2);
                C16849a c16849a = MoPubRewardedAdManager.f59292a.f59303l.f59447a.get(str2);
                if (c16849a != null) {
                    c16849a.creativeDownloadSuccess();
                }
                if (MoPubRewardedAdManager.f59292a.f59298g != null) {
                    MoPubRewardedAdManager.f59292a.f59298g.onRewardedAdLoadSuccess(str2);
                }
            }
        });
    }

    public static void onRewardedAdShowError(AdAdapter adAdapter, String str, final MoPubErrorCode moPubErrorCode) {
        final String str2 = f59292a.f59297f.f59687f;
        if (TextUtils.isEmpty(str2)) {
            m6462a(new AbstractRunnableC16806a(adAdapter) { // from class: com.mopub.mobileads.MoPubRewardedAdManager.10
                @Override // com.mopub.mobileads.MoPubRewardedAdManager.AbstractRunnableC16806a
                /* renamed from: a */
                protected final void mo6449a(String str3) {
                    MoPubRewardedAdManager.m6454b(str3, moPubErrorCode);
                }
            });
        } else {
            m6462a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedAdManager.11
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubRewardedAdManager.m6454b(str2, moPubErrorCode);
                }
            });
        }
        f59292a.f59297f.f59687f = null;
    }

    public static void onRewardedAdStarted(AdAdapter adAdapter, String str) {
        final String str2 = f59292a.f59297f.f59687f;
        if (TextUtils.isEmpty(str2)) {
            m6462a(new AbstractRunnableC16806a(adAdapter) { // from class: com.mopub.mobileads.MoPubRewardedAdManager.8
                @Override // com.mopub.mobileads.MoPubRewardedAdManager.AbstractRunnableC16806a
                /* renamed from: a */
                protected final void mo6449a(String str3) {
                    MoPubRewardedAdManager.m6461a(str3);
                }
            });
        } else {
            m6462a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedAdManager.9
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubRewardedAdManager.m6461a(str2);
                }
            });
        }
    }

    public static void selectReward(String str, MoPubReward moPubReward) {
        MoPubRewardedAdManager moPubRewardedAdManager = f59292a;
        if (moPubRewardedAdManager == null) {
            m6457b();
            return;
        }
        C16862d c16862d = moPubRewardedAdManager.f59297f;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubReward);
        Set<MoPubReward> set = c16862d.f59683b.get(str);
        if (set == null || set.isEmpty()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "AdUnit %s does not have any rewards.", str));
        } else if (!set.contains(moPubReward)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Selected reward is invalid for AdUnit %s.", str));
        } else {
            c16862d.m6344a(str, moPubReward.getLabel(), Integer.toString(moPubReward.getAmount()));
        }
    }

    public static void setRewardedAdListener(MoPubRewardedAdListener moPubRewardedAdListener) {
        MoPubRewardedAdManager moPubRewardedAdManager = f59292a;
        if (moPubRewardedAdManager != null) {
            moPubRewardedAdManager.f59298g = moPubRewardedAdListener;
        } else {
            m6457b();
        }
    }

    public static void showAd(String str) {
        showAd(str, null);
    }

    public static void showAd(String str, String str2) {
        if (f59292a == null) {
            m6457b();
            return;
        }
        if (str2 != null && str2.length() > 8192) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Provided rewarded ad custom data parameter longer than supported(%d bytes, %d maximum)", Integer.valueOf(str2.length()), Integer.valueOf((int) PropertyFlags.UNSIGNED)));
        }
        AdAdapter m6345a = f59292a.f59297f.m6345a(str);
        if (!m6460a(str, m6345a)) {
            if (f59292a.f59303l.m6425a(str)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Rewarded ad is not ready to be shown yet.");
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "No rewarded ad loading or loaded.");
            }
            f59292a.m6459a(str, MoPubErrorCode.AD_NOT_AVAILABLE);
        } else if (!f59292a.f59297f.m6342c(str).isEmpty() && f59292a.f59297f.m6343b(str) == null) {
            f59292a.m6459a(str, MoPubErrorCode.REWARD_NOT_SELECTED);
        } else {
            C16862d c16862d = f59292a.f59297f;
            MoPubReward m6343b = c16862d.m6343b(str);
            Preconditions.checkNotNull(m6345a);
            c16862d.f59686e.put(m6345a, m6343b);
            C16862d c16862d2 = f59292a.f59297f;
            Preconditions.NoThrow.checkNotNull(str);
            c16862d2.f59685d.put(str, str2);
            f59292a.f59297f.f59687f = str;
            m6345a.mo6494a((MoPubAd) null);
        }
    }

    public static void updateActivity(Activity activity) {
        MoPubRewardedAdManager moPubRewardedAdManager = f59292a;
        if (moPubRewardedAdManager != null) {
            moPubRewardedAdManager.f59295d = new WeakReference<>(activity);
        } else {
            m6457b();
        }
    }

    /* renamed from: a */
    public final void m6463a(AdResponse adResponse) {
        int parseInt;
        String adUnitId = adResponse.getAdUnitId();
        Integer adTimeoutMillis = adResponse.getAdTimeoutMillis(30000);
        String baseAdClassName = adResponse.getBaseAdClassName();
        if (baseAdClassName == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Couldn't create base ad, class name was null.");
            m6459a(adUnitId, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        AdAdapter m6345a = this.f59297f.m6345a(adUnitId);
        if (m6345a != null) {
            m6345a.m6605b();
        }
        String rewardedCurrencies = adResponse.getRewardedCurrencies();
        C16862d c16862d = this.f59297f;
        Preconditions.checkNotNull(adUnitId);
        Set<MoPubReward> set = c16862d.f59683b.get(adUnitId);
        if (set != null && !set.isEmpty()) {
            set.clear();
        }
        C16862d c16862d2 = this.f59297f;
        Preconditions.checkNotNull(adUnitId);
        c16862d2.m6344a(adUnitId, null, null);
        if (TextUtils.isEmpty(rewardedCurrencies)) {
            this.f59297f.m6344a(adUnitId, adResponse.getRewardedAdCurrencyName(), adResponse.getRewardedAdCurrencyAmount());
        } else {
            try {
                String[] jsonArrayToStringArray = Json.jsonArrayToStringArray(Json.jsonStringToMap(rewardedCurrencies).get(com.callapp.contacts.model.Constants.REWARDS));
                if (jsonArrayToStringArray.length == 1) {
                    Map<String, String> jsonStringToMap = Json.jsonStringToMap(jsonArrayToStringArray[0]);
                    this.f59297f.m6344a(adUnitId, jsonStringToMap.get("name"), jsonStringToMap.get("amount"));
                }
                for (String str : jsonArrayToStringArray) {
                    Map<String, String> jsonStringToMap2 = Json.jsonStringToMap(str);
                    C16862d c16862d3 = this.f59297f;
                    String str2 = jsonStringToMap2.get("name");
                    String str3 = jsonStringToMap2.get("amount");
                    Preconditions.checkNotNull(adUnitId);
                    if (str2 == null || str3 == null) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency name and amount cannot be null: name = %s, amount = %s", str2, str3));
                    } else {
                        try {
                            int parseInt2 = Integer.parseInt(str3);
                            if (parseInt2 < 0) {
                                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount cannot be negative: %s", str3));
                            } else if (c16862d3.f59683b.containsKey(adUnitId)) {
                                c16862d3.f59683b.get(adUnitId).add(MoPubReward.success(str2, parseInt2));
                            } else {
                                HashSet hashSet = new HashSet();
                                hashSet.add(MoPubReward.success(str2, parseInt2));
                                c16862d3.f59683b.put(adUnitId, hashSet);
                            }
                        } catch (NumberFormatException e) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount must be an integer: %s", str3));
                        }
                    }
                }
            } catch (Exception e2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Error parsing rewarded currencies JSON header: ".concat(String.valueOf(rewardedCurrencies)));
                m6459a(adUnitId, MoPubErrorCode.REWARDED_CURRENCIES_PARSING_ERROR);
                return;
            }
        }
        C16862d c16862d4 = this.f59297f;
        String rewardedAdCompletionUrl = adResponse.getRewardedAdCompletionUrl();
        Preconditions.checkNotNull(adUnitId);
        c16862d4.f59684c.put(adUnitId, rewardedAdCompletionUrl);
        if (this.f59295d.get() == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Could not load base ad because Activity reference was null. Call MoPub#updateActivity before requesting more rewarded ads.");
            this.f59303l.m6424b(adUnitId);
            return;
        }
        Map<String, String> serverExtras = adResponse.getServerExtras();
        String jSONObject = new JSONObject(serverExtras).toString();
        String impressionMinVisibleDips = adResponse.getImpressionMinVisibleDips();
        String impressionMinVisibleMs = adResponse.getImpressionMinVisibleMs();
        int intValue = adResponse.getAdTimeoutMillis(30000).intValue();
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Updating init settings for base ad %s with params %s", baseAdClassName, jSONObject));
        f59293b.edit().putString(baseAdClassName, jSONObject).apply();
        String remove = serverExtras.remove(DataKeys.HTML_RESPONSE_BODY_KEY);
        AdData.Builder adType = new AdData.Builder().adUnit(adUnitId).isRewarded(true).adType(adResponse.getFullAdType());
        if (remove == null) {
            remove = "";
        }
        AdData.Builder extras = adType.adPayload(remove).currencyName(adResponse.getRewardedAdCurrencyName()).impressionMinVisibleDips(impressionMinVisibleDips).impressionMinVisibleMs(impressionMinVisibleMs).dspCreativeId(adResponse.getDspCreativeId()).broadcastIdentifier(Utils.generateUniqueId()).timeoutDelayMillis(intValue).customerId(this.f59297f.f59688g).allowCustomClose(false).viewabilityVendors(adResponse.getViewabilityVendors()).fullAdType(adResponse.getFullAdType()).extras(serverExtras);
        Integer rewardedDuration = adResponse.getRewardedDuration();
        if (rewardedDuration != null) {
            extras.rewardedDurationSeconds(rewardedDuration.intValue());
        }
        String rewardedAdCurrencyAmount = adResponse.getRewardedAdCurrencyAmount();
        try {
            if (!TextUtils.isEmpty(rewardedAdCurrencyAmount)) {
                try {
                    parseInt = Integer.parseInt(rewardedAdCurrencyAmount);
                } catch (NumberFormatException e3) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to convert currency amount: " + rewardedAdCurrencyAmount + ". Using the default reward amount: 0");
                }
                extras.currencyAmount(parseInt);
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Loading base ad with class name %s", baseAdClassName));
                Constructor declaredConstructor = Class.forName("com.mopub.mobileads.FullscreenAdAdapter").asSubclass(AdAdapter.class).getDeclaredConstructor(Context.class, String.class, AdData.class);
                declaredConstructor.setAccessible(true);
                final AdAdapter adAdapter = (AdAdapter) declaredConstructor.newInstance(f59292a.f59295d.get(), baseAdClassName, extras.build());
                C16807b c16807b = new C16807b(adAdapter);
                Runnable runnable = new Runnable() { // from class: com.mopub.mobileads._$$Lambda$MoPubRewardedAdManager$5WyK8KMUFpwszZ_cG0Pd5FiLhTE
                    @Override // java.lang.Runnable
                    public final void run() {
                        MoPubRewardedAdManager.m6468a(AdAdapter.this);
                    }
                };
                this.f59301j.postDelayed(runnable, adTimeoutMillis.intValue());
                this.f59302k.put(adUnitId, runnable);
                adAdapter.load(c16807b);
                adAdapter.m6607a(c16807b);
                adAdapter.m6602d();
                C16862d c16862d5 = this.f59297f;
                Preconditions.checkNotNull(adUnitId);
                Preconditions.checkNotNull(adAdapter);
                c16862d5.f59682a.put(adUnitId, adAdapter);
                c16862d5.m6346a(adAdapter, adUnitId);
                return;
            }
            Constructor declaredConstructor2 = Class.forName("com.mopub.mobileads.FullscreenAdAdapter").asSubclass(AdAdapter.class).getDeclaredConstructor(Context.class, String.class, AdData.class);
            declaredConstructor2.setAccessible(true);
            final AdAdapter adAdapter2 = (AdAdapter) declaredConstructor2.newInstance(f59292a.f59295d.get(), baseAdClassName, extras.build());
            C16807b c16807b2 = new C16807b(adAdapter2);
            Runnable runnable2 = new Runnable() { // from class: com.mopub.mobileads._$$Lambda$MoPubRewardedAdManager$5WyK8KMUFpwszZ_cG0Pd5FiLhTE
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubRewardedAdManager.m6468a(AdAdapter.this);
                }
            };
            this.f59301j.postDelayed(runnable2, adTimeoutMillis.intValue());
            this.f59302k.put(adUnitId, runnable2);
            adAdapter2.load(c16807b2);
            adAdapter2.m6607a(c16807b2);
            adAdapter2.m6602d();
            C16862d c16862d52 = this.f59297f;
            Preconditions.checkNotNull(adUnitId);
            Preconditions.checkNotNull(adAdapter2);
            c16862d52.f59682a.put(adUnitId, adAdapter2);
            c16862d52.m6346a(adAdapter2, adUnitId);
            return;
        } catch (Exception e4) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Couldn't create base ad with class name %s", baseAdClassName));
            m6459a(adUnitId, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        parseInt = 0;
        extras.currencyAmount(parseInt);
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Loading base ad with class name %s", baseAdClassName));
    }

    /* renamed from: a */
    public final void m6459a(String str, MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubErrorCode);
        if (this.f59303l.m6422d(str) && !moPubErrorCode.equals(MoPubErrorCode.EXPIRED)) {
            m6458a(str, "", moPubErrorCode);
            return;
        }
        MoPubRewardedAdListener moPubRewardedAdListener = f59292a.f59298g;
        if (moPubRewardedAdListener == null) {
            return;
        }
        moPubRewardedAdListener.onRewardedAdLoadFailure(str, moPubErrorCode);
        this.f59303l.m6424b(str);
    }
}
