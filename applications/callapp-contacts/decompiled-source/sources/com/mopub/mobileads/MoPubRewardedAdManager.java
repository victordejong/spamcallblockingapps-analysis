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

    /* renamed from: a  reason: collision with root package name */
    private static MoPubRewardedAdManager f34117a;

    /* renamed from: b  reason: collision with root package name */
    private static SharedPreferences f34118b;

    /* renamed from: d  reason: collision with root package name */
    private WeakReference<Activity> f34120d;
    private final Context e;
    private MoPubRewardedAdListener g;
    private final Set<MediationSettings> h;
    private final d f = new d();

    /* renamed from: c  reason: collision with root package name */
    private final Handler f34119c = new Handler(Looper.getMainLooper());
    private final Map<String, Set<MediationSettings>> i = new HashMap();
    private final Handler j = new Handler();
    private final Map<String, Runnable> k = new HashMap();
    private final RewardedAdsLoaders l = new RewardedAdsLoaders(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.mobileads.MoPubRewardedAdManager$5  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$5.class */
    public static final /* synthetic */ class AnonymousClass5 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34129a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f34130b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006b -> B:30:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006f -> B:42:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0073 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0077 -> B:32:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007b -> B:28:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007f -> B:40:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0083 -> B:36:0x005f). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubErrorCode.values().length];
            f34130b = iArr;
            try {
                iArr[MoPubErrorCode.AD_SHOW_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34130b[MoPubErrorCode.VIDEO_PLAYBACK_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34130b[MoPubErrorCode.EXPIRED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[MoPubNetworkError.Reason.values().length];
            f34129a = iArr2;
            try {
                iArr2[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34129a[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f34129a[MoPubNetworkError.Reason.TOO_MANY_REQUESTS.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f34129a[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f34129a[MoPubNetworkError.Reason.BAD_HEADER_DATA.ordinal()] = 5;
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

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$a.class */
    static abstract class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final AdAdapter f34133a;

        a(AdAdapter adAdapter) {
            Preconditions.checkNotNull(adAdapter);
            this.f34133a = adAdapter;
        }

        protected abstract void a(String str);

        @Override // java.lang.Runnable
        public void run() {
            for (String str : MoPubRewardedAdManager.f34117a.f.a(this.f34133a)) {
                a(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$b.class */
    public static final class b implements AdLifecycleListener.InteractionListener, AdLifecycleListener.LoadListener {

        /* renamed from: a  reason: collision with root package name */
        final AdAdapter f34134a;

        b(AdAdapter adAdapter) {
            this.f34134a = adAdapter;
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
        public final void onAdClicked() {
            MoPubLog.log(MoPubLog.AdLogEvent.CLICKED, new Object[0]);
            AdAdapter adAdapter = this.f34134a;
            MoPubRewardedAdManager.onRewardedAdClicked(adAdapter, adAdapter.d());
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
            AdAdapter adAdapter = this.f34134a;
            MoPubRewardedAdManager.onRewardedAdCompleted(adAdapter, adAdapter.d(), moPubReward2);
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
        public final void onAdDismissed() {
            MoPubLog.log(MoPubLog.AdLogEvent.DID_DISAPPEAR, new Object[0]);
            AdAdapter adAdapter = this.f34134a;
            MoPubRewardedAdManager.onRewardedAdClosed(adAdapter, adAdapter.d());
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
        public final void onAdExpanded() {
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
        public final void onAdFailed(MoPubErrorCode moPubErrorCode) {
            int i = AnonymousClass5.f34130b[moPubErrorCode.ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
                AdAdapter adAdapter = this.f34134a;
                MoPubRewardedAdManager.onRewardedAdShowError(adAdapter, adAdapter.d(), moPubErrorCode);
                return;
            }
            AdAdapter adAdapter2 = this.f34134a;
            MoPubRewardedAdManager.onRewardedAdLoadFailure(adAdapter2, adAdapter2.d(), moPubErrorCode);
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
            AdAdapter adAdapter = this.f34134a;
            MoPubRewardedAdManager.onRewardedAdLoadSuccess(adAdapter, adAdapter.d());
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
            AdAdapter adAdapter = this.f34134a;
            MoPubRewardedAdManager.onRewardedAdStarted(adAdapter, adAdapter.d());
        }
    }

    private MoPubRewardedAdManager(Activity activity, MediationSettings... mediationSettingsArr) {
        this.f34120d = new WeakReference<>(activity);
        Context applicationContext = activity.getApplicationContext();
        this.e = applicationContext;
        HashSet hashSet = new HashSet();
        this.h = hashSet;
        MoPubCollections.addAllNonNull(hashSet, mediationSettingsArr);
        f34118b = SharedPreferencesHelper.getSharedPreferences(applicationContext, "mopubBaseAdSettings");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(AdAdapter adAdapter) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Base Ad failed to load rewarded ad in a timely fashion.");
        adAdapter.onAdLoadFailed(MoPubErrorCode.NETWORK_TIMEOUT);
        adAdapter.getClass();
        a(new _$$Lambda$6esjqDhxQMGUPrXCHOK0_N2vQdc(adAdapter));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(AdAdapter adAdapter, MoPubReward moPubReward, String str) {
        MoPubReward moPubReward2 = f34117a.f.e.get(adAdapter);
        MoPubReward moPubReward3 = moPubReward;
        if (moPubReward.isSuccessful()) {
            moPubReward3 = moPubReward;
            if (moPubReward2 != null) {
                moPubReward3 = moPubReward2;
            }
        }
        HashSet hashSet = new HashSet();
        if (TextUtils.isEmpty(str)) {
            hashSet.addAll(f34117a.f.a(adAdapter));
        } else {
            hashSet.add(str);
        }
        MoPubLog.log(MoPubLog.AdLogEvent.SHOULD_REWARD, Integer.valueOf(moPubReward3.getAmount()), moPubReward3.getLabel());
        MoPubRewardedAdListener moPubRewardedAdListener = f34117a.g;
        if (moPubRewardedAdListener != null) {
            moPubRewardedAdListener.onRewardedAdCompleted(hashSet, moPubReward3);
        }
    }

    static /* synthetic */ void a(MoPubRewardedAdManager moPubRewardedAdManager, String str) {
        Runnable remove = moPubRewardedAdManager.k.remove(str);
        if (remove != null) {
            moPubRewardedAdManager.j.removeCallbacks(remove);
        }
    }

    private static void a(Runnable runnable) {
        MoPubRewardedAdManager moPubRewardedAdManager = f34117a;
        if (moPubRewardedAdManager != null) {
            moPubRewardedAdManager.f34119c.post(runnable);
        }
    }

    static /* synthetic */ void a(String str) {
        Preconditions.checkNotNull(str);
        MoPubRewardedAdListener moPubRewardedAdListener = f34117a.g;
        if (moPubRewardedAdListener != null) {
            moPubRewardedAdListener.onRewardedAdStarted(str);
        }
        MoPubRewardedAdManager moPubRewardedAdManager = f34117a;
        RewardedAdsLoaders rewardedAdsLoaders = moPubRewardedAdManager.l;
        Context context = moPubRewardedAdManager.e;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(context);
        com.mopub.mobileads.a aVar = rewardedAdsLoaders.f34238a.get(str);
        if (aVar != null) {
            aVar.a(context);
        }
    }

    private static void a(String str, String str2, MoPubErrorCode moPubErrorCode) {
        MoPubRewardedAdManager moPubRewardedAdManager = f34117a;
        if (moPubRewardedAdManager == null) {
            b();
        } else {
            moPubRewardedAdManager.b(str, str2, moPubErrorCode);
        }
    }

    private static boolean a(String str, AdAdapter adAdapter) {
        MoPubRewardedAdManager moPubRewardedAdManager = f34117a;
        return moPubRewardedAdManager != null && moPubRewardedAdManager.l.c(str) && adAdapter != null && adAdapter.isReady();
    }

    private static void b() {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub rewarded ad was not initialized. You must call MoPub.initializeSdk() with an Activity Context before loading or attempting to show rewarded ads.");
    }

    static /* synthetic */ void b(String str) {
        Preconditions.checkNotNull(str);
        MoPubRewardedAdListener moPubRewardedAdListener = f34117a.g;
        if (moPubRewardedAdListener != null) {
            moPubRewardedAdListener.onRewardedAdClicked(str);
        }
        MoPubRewardedAdManager moPubRewardedAdManager = f34117a;
        RewardedAdsLoaders rewardedAdsLoaders = moPubRewardedAdManager.l;
        Context context = moPubRewardedAdManager.e;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(context);
        com.mopub.mobileads.a aVar = rewardedAdsLoaders.f34238a.get(str);
        if (aVar != null) {
            aVar.b(context);
        }
    }

    static /* synthetic */ void b(String str, MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubErrorCode);
        f34117a.l.b(str);
        MoPubRewardedAdListener moPubRewardedAdListener = f34117a.g;
        if (moPubRewardedAdListener != null) {
            moPubRewardedAdListener.onRewardedAdShowError(str, moPubErrorCode);
        }
    }

    private void b(String str, String str2, MoPubErrorCode moPubErrorCode) {
        if (this.l.a(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. A request is already pending.", str));
            return;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Loading rewarded ad request for ad unit %s with URL %s", str, str2));
        this.l.a(this.e, str, str2, moPubErrorCode);
    }

    static /* synthetic */ void c(String str) {
        Preconditions.checkNotNull(str);
        RewardedAdsLoaders rewardedAdsLoaders = f34117a.l;
        Preconditions.checkNotNull(str);
        rewardedAdsLoaders.f34238a.remove(str);
        MoPubRewardedAdListener moPubRewardedAdListener = f34117a.g;
        if (moPubRewardedAdListener != null) {
            moPubRewardedAdListener.onRewardedAdClosed(str);
        }
    }

    public static Set<MoPubReward> getAvailableRewards(String str) {
        MoPubRewardedAdManager moPubRewardedAdManager = f34117a;
        if (moPubRewardedAdManager != null) {
            return moPubRewardedAdManager.f.c(str);
        }
        b();
        return Collections.emptySet();
    }

    public static <T extends MediationSettings> T getGlobalMediationSettings(Class<T> cls) {
        MoPubRewardedAdManager moPubRewardedAdManager = f34117a;
        if (moPubRewardedAdManager == null) {
            b();
            return null;
        }
        for (MediationSettings mediationSettings : moPubRewardedAdManager.h) {
            if (cls.equals(mediationSettings.getClass())) {
                return cls.cast(mediationSettings);
            }
        }
        return null;
    }

    public static <T extends MediationSettings> T getInstanceMediationSettings(Class<T> cls, String str) {
        MoPubRewardedAdManager moPubRewardedAdManager = f34117a;
        if (moPubRewardedAdManager == null) {
            b();
            return null;
        }
        Set<MediationSettings> set = moPubRewardedAdManager.i.get(str);
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
        MoPubRewardedAdManager moPubRewardedAdManager = f34117a;
        if (moPubRewardedAdManager != null) {
            return a(str, moPubRewardedAdManager.f.a(str));
        }
        b();
        return false;
    }

    public static void init(Activity activity, MediationSettings... mediationSettingsArr) {
        synchronized (MoPubRewardedAdManager.class) {
            try {
                if (f34117a == null) {
                    f34117a = new MoPubRewardedAdManager(activity, mediationSettingsArr);
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
        MoPubRewardedAdManager moPubRewardedAdManager = f34117a;
        if (moPubRewardedAdManager == null) {
            b();
        } else if (str.equals(moPubRewardedAdManager.f.f)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. The ad is already showing.", str));
        } else if (f34117a.l.c(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. This ad unit already finished loading and is ready to show.", str));
            a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedAdManager.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (MoPubRewardedAdManager.f34117a.g != null) {
                        MoPubRewardedAdManager.f34117a.g.onRewardedAdLoadSuccess(str);
                    }
                }
            });
        } else {
            HashSet hashSet = new HashSet();
            MoPubCollections.addAllNonNull(hashSet, mediationSettingsArr);
            f34117a.i.put(str, hashSet);
            String str2 = requestParameters == null ? null : requestParameters.mCustomerId;
            if (!TextUtils.isEmpty(str2)) {
                f34117a.f.g = str2;
            }
            WebViewAdUrlGenerator webViewAdUrlGenerator = new WebViewAdUrlGenerator(f34117a.e);
            webViewAdUrlGenerator.withAdUnitId(str).withKeywords(requestParameters == null ? null : requestParameters.mKeywords).withUserDataKeywords((requestParameters == null || !MoPub.canCollectPersonalInformation()) ? null : requestParameters.mUserDataKeywords);
            Preconditions.checkNotNull(webViewAdUrlGenerator);
            webViewAdUrlGenerator.withRequestedAdSize(ClientMetadata.getInstance(f34117a.e).getDeviceDimensions());
            if (!(Build.VERSION.SDK_INT < 28 || f34117a.f34120d.get() == null || (window = f34117a.f34120d.get().getWindow()) == null || (rootWindowInsets = window.getDecorView().getRootWindowInsets()) == null)) {
                webViewAdUrlGenerator.withWindowInsets(rootWindowInsets);
            }
            a(str, webViewAdUrlGenerator.generateUrlString(Constants.HOST), (MoPubErrorCode) null);
        }
    }

    public static void onRewardedAdClicked(AdAdapter adAdapter, String str) {
        final String str2 = f34117a.f.f;
        if (TextUtils.isEmpty(str2)) {
            a(new a(adAdapter) { // from class: com.mopub.mobileads.MoPubRewardedAdManager.12
                @Override // com.mopub.mobileads.MoPubRewardedAdManager.a
                protected final void a(String str3) {
                    MoPubRewardedAdManager.b(str3);
                }
            });
        } else {
            a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedAdManager.13
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubRewardedAdManager.b(str2);
                }
            });
        }
    }

    public static void onRewardedAdClosed(AdAdapter adAdapter, String str) {
        final String str2 = f34117a.f.f;
        if (TextUtils.isEmpty(str2)) {
            a(new a(adAdapter) { // from class: com.mopub.mobileads.MoPubRewardedAdManager.2
                @Override // com.mopub.mobileads.MoPubRewardedAdManager.a
                protected final void a(String str3) {
                    MoPubRewardedAdManager.c(str3);
                }
            });
        } else {
            a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedAdManager.3
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubRewardedAdManager.c(str2);
                }
            });
        }
        f34117a.f.f = null;
    }

    public static void onRewardedAdCompleted(final AdAdapter adAdapter, String str, final MoPubReward moPubReward) {
        final String str2 = f34117a.f.f;
        a(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$MoPubRewardedAdManager$iGCzXzGJytxCmY0Kq_uWMSXDuNw
            @Override // java.lang.Runnable
            public final void run() {
                MoPubRewardedAdManager.a(AdAdapter.this, moPubReward, str2);
            }
        });
        final String str3 = TextUtils.isEmpty(str2) ? null : f34117a.f.f34391c.get(str2);
        if (!TextUtils.isEmpty(str3)) {
            a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedAdManager.4
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubReward b2 = MoPubRewardedAdManager.f34117a.f.b(str2);
                    String label = b2 == null ? "" : b2.getLabel();
                    String num = b2 == null ? Integer.toString(0) : Integer.toString(b2.getAmount());
                    AdAdapter a2 = MoPubRewardedAdManager.f34117a.f.a(str2);
                    String baseAdClassName = a2 == null ? null : a2.getBaseAdClassName();
                    RewardedAdCompletionRequestHandler.makeRewardedAdCompletionRequest(MoPubRewardedAdManager.f34117a.e, str3, MoPubRewardedAdManager.f34117a.f.g, label, num, baseAdClassName, MoPubRewardedAdManager.f34117a.f.f34392d.get(str2));
                }
            });
        }
    }

    public static void onRewardedAdLoadFailure(AdAdapter adAdapter, String str, final MoPubErrorCode moPubErrorCode) {
        a(new a(adAdapter) { // from class: com.mopub.mobileads.MoPubRewardedAdManager.7
            @Override // com.mopub.mobileads.MoPubRewardedAdManager.a
            protected final void a(String str2) {
                MoPubRewardedAdManager.a(MoPubRewardedAdManager.f34117a, str2);
                MoPubRewardedAdManager.f34117a.a(str2, moPubErrorCode);
                if (str2.equals(MoPubRewardedAdManager.f34117a.f.f)) {
                    MoPubRewardedAdManager.f34117a.f.f = null;
                }
            }
        });
    }

    public static void onRewardedAdLoadSuccess(AdAdapter adAdapter, String str) {
        a(new a(adAdapter) { // from class: com.mopub.mobileads.MoPubRewardedAdManager.6
            @Override // com.mopub.mobileads.MoPubRewardedAdManager.a
            protected final void a(String str2) {
                MoPubRewardedAdManager.a(MoPubRewardedAdManager.f34117a, str2);
                com.mopub.mobileads.a aVar = MoPubRewardedAdManager.f34117a.l.f34238a.get(str2);
                if (aVar != null) {
                    aVar.creativeDownloadSuccess();
                }
                if (MoPubRewardedAdManager.f34117a.g != null) {
                    MoPubRewardedAdManager.f34117a.g.onRewardedAdLoadSuccess(str2);
                }
            }
        });
    }

    public static void onRewardedAdShowError(AdAdapter adAdapter, String str, final MoPubErrorCode moPubErrorCode) {
        final String str2 = f34117a.f.f;
        if (TextUtils.isEmpty(str2)) {
            a(new a(adAdapter) { // from class: com.mopub.mobileads.MoPubRewardedAdManager.10
                @Override // com.mopub.mobileads.MoPubRewardedAdManager.a
                protected final void a(String str3) {
                    MoPubRewardedAdManager.b(str3, moPubErrorCode);
                }
            });
        } else {
            a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedAdManager.11
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubRewardedAdManager.b(str2, moPubErrorCode);
                }
            });
        }
        f34117a.f.f = null;
    }

    public static void onRewardedAdStarted(AdAdapter adAdapter, String str) {
        final String str2 = f34117a.f.f;
        if (TextUtils.isEmpty(str2)) {
            a(new a(adAdapter) { // from class: com.mopub.mobileads.MoPubRewardedAdManager.8
                @Override // com.mopub.mobileads.MoPubRewardedAdManager.a
                protected final void a(String str3) {
                    MoPubRewardedAdManager.a(str3);
                }
            });
        } else {
            a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedAdManager.9
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubRewardedAdManager.a(str2);
                }
            });
        }
    }

    public static void selectReward(String str, MoPubReward moPubReward) {
        MoPubRewardedAdManager moPubRewardedAdManager = f34117a;
        if (moPubRewardedAdManager != null) {
            d dVar = moPubRewardedAdManager.f;
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(moPubReward);
            Set<MoPubReward> set = dVar.f34390b.get(str);
            if (set == null || set.isEmpty()) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "AdUnit %s does not have any rewards.", str));
            } else if (!set.contains(moPubReward)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Selected reward is invalid for AdUnit %s.", str));
            } else {
                dVar.a(str, moPubReward.getLabel(), Integer.toString(moPubReward.getAmount()));
            }
        } else {
            b();
        }
    }

    public static void setRewardedAdListener(MoPubRewardedAdListener moPubRewardedAdListener) {
        MoPubRewardedAdManager moPubRewardedAdManager = f34117a;
        if (moPubRewardedAdManager != null) {
            moPubRewardedAdManager.g = moPubRewardedAdListener;
        } else {
            b();
        }
    }

    public static void showAd(String str) {
        showAd(str, null);
    }

    public static void showAd(String str, String str2) {
        if (f34117a == null) {
            b();
            return;
        }
        if (str2 != null && str2.length() > 8192) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Provided rewarded ad custom data parameter longer than supported(%d bytes, %d maximum)", Integer.valueOf(str2.length()), Integer.valueOf((int) PropertyFlags.UNSIGNED)));
        }
        AdAdapter a2 = f34117a.f.a(str);
        if (!a(str, a2)) {
            if (f34117a.l.a(str)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Rewarded ad is not ready to be shown yet.");
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "No rewarded ad loading or loaded.");
            }
            f34117a.a(str, MoPubErrorCode.AD_NOT_AVAILABLE);
        } else if (f34117a.f.c(str).isEmpty() || f34117a.f.b(str) != null) {
            d dVar = f34117a.f;
            MoPubReward b2 = dVar.b(str);
            Preconditions.checkNotNull(a2);
            dVar.e.put(a2, b2);
            d dVar2 = f34117a.f;
            Preconditions.NoThrow.checkNotNull(str);
            dVar2.f34392d.put(str, str2);
            f34117a.f.f = str;
            a2.a((MoPubAd) null);
        } else {
            f34117a.a(str, MoPubErrorCode.REWARD_NOT_SELECTED);
        }
    }

    public static void updateActivity(Activity activity) {
        MoPubRewardedAdManager moPubRewardedAdManager = f34117a;
        if (moPubRewardedAdManager != null) {
            moPubRewardedAdManager.f34120d = new WeakReference<>(activity);
        } else {
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(AdResponse adResponse) {
        int parseInt;
        String adUnitId = adResponse.getAdUnitId();
        Integer adTimeoutMillis = adResponse.getAdTimeoutMillis(30000);
        String baseAdClassName = adResponse.getBaseAdClassName();
        if (baseAdClassName == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Couldn't create base ad, class name was null.");
            a(adUnitId, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        AdAdapter a2 = this.f.a(adUnitId);
        if (a2 != null) {
            a2.b();
        }
        String rewardedCurrencies = adResponse.getRewardedCurrencies();
        d dVar = this.f;
        Preconditions.checkNotNull(adUnitId);
        Set<MoPubReward> set = dVar.f34390b.get(adUnitId);
        if (set != null && !set.isEmpty()) {
            set.clear();
        }
        d dVar2 = this.f;
        Preconditions.checkNotNull(adUnitId);
        dVar2.a(adUnitId, null, null);
        if (TextUtils.isEmpty(rewardedCurrencies)) {
            this.f.a(adUnitId, adResponse.getRewardedAdCurrencyName(), adResponse.getRewardedAdCurrencyAmount());
        } else {
            try {
                String[] jsonArrayToStringArray = Json.jsonArrayToStringArray(Json.jsonStringToMap(rewardedCurrencies).get(com.callapp.contacts.model.Constants.REWARDS));
                if (jsonArrayToStringArray.length == 1) {
                    Map<String, String> jsonStringToMap = Json.jsonStringToMap(jsonArrayToStringArray[0]);
                    this.f.a(adUnitId, jsonStringToMap.get("name"), jsonStringToMap.get("amount"));
                }
                for (String str : jsonArrayToStringArray) {
                    Map<String, String> jsonStringToMap2 = Json.jsonStringToMap(str);
                    d dVar3 = this.f;
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
                            } else if (dVar3.f34390b.containsKey(adUnitId)) {
                                dVar3.f34390b.get(adUnitId).add(MoPubReward.success(str2, parseInt2));
                            } else {
                                HashSet hashSet = new HashSet();
                                hashSet.add(MoPubReward.success(str2, parseInt2));
                                dVar3.f34390b.put(adUnitId, hashSet);
                            }
                        } catch (NumberFormatException e) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount must be an integer: %s", str3));
                        }
                    }
                }
            } catch (Exception e2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Error parsing rewarded currencies JSON header: ".concat(String.valueOf(rewardedCurrencies)));
                a(adUnitId, MoPubErrorCode.REWARDED_CURRENCIES_PARSING_ERROR);
                return;
            }
        }
        d dVar4 = this.f;
        String rewardedAdCompletionUrl = adResponse.getRewardedAdCompletionUrl();
        Preconditions.checkNotNull(adUnitId);
        dVar4.f34391c.put(adUnitId, rewardedAdCompletionUrl);
        if (this.f34120d.get() == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Could not load base ad because Activity reference was null. Call MoPub#updateActivity before requesting more rewarded ads.");
            this.l.b(adUnitId);
            return;
        }
        Map<String, String> serverExtras = adResponse.getServerExtras();
        String jSONObject = new JSONObject(serverExtras).toString();
        String impressionMinVisibleDips = adResponse.getImpressionMinVisibleDips();
        String impressionMinVisibleMs = adResponse.getImpressionMinVisibleMs();
        int intValue = adResponse.getAdTimeoutMillis(30000).intValue();
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Updating init settings for base ad %s with params %s", baseAdClassName, jSONObject));
        f34118b.edit().putString(baseAdClassName, jSONObject).apply();
        String remove = serverExtras.remove(DataKeys.HTML_RESPONSE_BODY_KEY);
        AdData.Builder adType = new AdData.Builder().adUnit(adUnitId).isRewarded(true).adType(adResponse.getFullAdType());
        if (remove == null) {
            remove = "";
        }
        AdData.Builder extras = adType.adPayload(remove).currencyName(adResponse.getRewardedAdCurrencyName()).impressionMinVisibleDips(impressionMinVisibleDips).impressionMinVisibleMs(impressionMinVisibleMs).dspCreativeId(adResponse.getDspCreativeId()).broadcastIdentifier(Utils.generateUniqueId()).timeoutDelayMillis(intValue).customerId(this.f.g).allowCustomClose(false).viewabilityVendors(adResponse.getViewabilityVendors()).fullAdType(adResponse.getFullAdType()).extras(serverExtras);
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
                final AdAdapter adAdapter = (AdAdapter) declaredConstructor.newInstance(f34117a.f34120d.get(), baseAdClassName, extras.build());
                b bVar = new b(adAdapter);
                Runnable ___lambda_mopubrewardedadmanager_5wyk8kmufpwszz_cg0pd5filhte = new Runnable() { // from class: com.mopub.mobileads._$$Lambda$MoPubRewardedAdManager$5WyK8KMUFpwszZ_cG0Pd5FiLhTE
                    @Override // java.lang.Runnable
                    public final void run() {
                        MoPubRewardedAdManager.a(AdAdapter.this);
                    }
                };
                this.j.postDelayed(___lambda_mopubrewardedadmanager_5wyk8kmufpwszz_cg0pd5filhte, adTimeoutMillis.intValue());
                this.k.put(adUnitId, ___lambda_mopubrewardedadmanager_5wyk8kmufpwszz_cg0pd5filhte);
                adAdapter.load(bVar);
                adAdapter.a(bVar);
                adAdapter.d();
                d dVar5 = this.f;
                Preconditions.checkNotNull(adUnitId);
                Preconditions.checkNotNull(adAdapter);
                dVar5.f34389a.put(adUnitId, adAdapter);
                dVar5.a(adAdapter, adUnitId);
                return;
            }
            Constructor declaredConstructor2 = Class.forName("com.mopub.mobileads.FullscreenAdAdapter").asSubclass(AdAdapter.class).getDeclaredConstructor(Context.class, String.class, AdData.class);
            declaredConstructor2.setAccessible(true);
            final AdAdapter adAdapter2 = (AdAdapter) declaredConstructor2.newInstance(f34117a.f34120d.get(), baseAdClassName, extras.build());
            b bVar2 = new b(adAdapter2);
            Runnable ___lambda_mopubrewardedadmanager_5wyk8kmufpwszz_cg0pd5filhte2 = new Runnable() { // from class: com.mopub.mobileads._$$Lambda$MoPubRewardedAdManager$5WyK8KMUFpwszZ_cG0Pd5FiLhTE
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubRewardedAdManager.a(AdAdapter.this);
                }
            };
            this.j.postDelayed(___lambda_mopubrewardedadmanager_5wyk8kmufpwszz_cg0pd5filhte2, adTimeoutMillis.intValue());
            this.k.put(adUnitId, ___lambda_mopubrewardedadmanager_5wyk8kmufpwszz_cg0pd5filhte2);
            adAdapter2.load(bVar2);
            adAdapter2.a(bVar2);
            adAdapter2.d();
            d dVar52 = this.f;
            Preconditions.checkNotNull(adUnitId);
            Preconditions.checkNotNull(adAdapter2);
            dVar52.f34389a.put(adUnitId, adAdapter2);
            dVar52.a(adAdapter2, adUnitId);
            return;
        } catch (Exception e4) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Couldn't create base ad with class name %s", baseAdClassName));
            a(adUnitId, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        parseInt = 0;
        extras.currencyAmount(parseInt);
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Loading base ad with class name %s", baseAdClassName));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubErrorCode);
        if (!this.l.d(str) || moPubErrorCode.equals(MoPubErrorCode.EXPIRED)) {
            MoPubRewardedAdListener moPubRewardedAdListener = f34117a.g;
            if (moPubRewardedAdListener != null) {
                moPubRewardedAdListener.onRewardedAdLoadFailure(str, moPubErrorCode);
                this.l.b(str);
                return;
            }
            return;
        }
        a(str, "", moPubErrorCode);
    }
}
