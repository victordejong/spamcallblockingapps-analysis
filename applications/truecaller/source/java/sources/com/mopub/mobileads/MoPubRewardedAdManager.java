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
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPub;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.common.util.MoPubCollections;
import com.mopub.common.util.ReflectionTarget;
import com.mopub.network.AdResponse;
import com.mopub.network.SingleImpression;
import com.mopub.network.TrackingRequest;
import com.razorpay.AnalyticsConstants;
import e.n.b.a0;
import e.n.b.f0;
import e.n.b.n0;
import e.n.b.p0;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager.class */
public class MoPubRewardedAdManager {
    public static final int API_VERSION = 1;

    /* renamed from: k */
    public static MoPubRewardedAdManager f8796k;

    /* renamed from: l */
    public static SharedPreferences f8797l;

    /* renamed from: b */
    public WeakReference<Activity> f8799b;

    /* renamed from: c */
    public final Context f8800c;

    /* renamed from: e */
    public MoPubRewardedAdListener f8802e;

    /* renamed from: f */
    public final Set<MediationSettings> f8803f;

    /* renamed from: d */
    public final p0 f8801d = new p0();

    /* renamed from: a */
    public final Handler f8798a = new Handler(Looper.getMainLooper());

    /* renamed from: g */
    public final Map<String, Set<MediationSettings>> f8804g = new HashMap();

    /* renamed from: h */
    public final Handler f8805h = new Handler();

    /* renamed from: i */
    public final Map<String, Runnable> f8806i = new HashMap();

    /* renamed from: j */
    public final RewardedAdsLoaders f8807j = new RewardedAdsLoaders(this);

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$RequestParameters.class */
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

    /* renamed from: com.mopub.mobileads.MoPubRewardedAdManager$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$b.class */
    public static final class RunnableC2662b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f8808a;

        public RunnableC2662b(String str) {
            this.f8808a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubRewardedAdManager.m36241c(this.f8808a);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedAdManager$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$c.class */
    public static final class RunnableC2663c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f8809a;

        public RunnableC2663c(String str) {
            this.f8809a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubRewardedAdListener moPubRewardedAdListener = MoPubRewardedAdManager.f8796k.f8802e;
            if (moPubRewardedAdListener != null) {
                moPubRewardedAdListener.onRewardedAdLoadSuccess(this.f8809a);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedAdManager$g */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$g.class */
    public static final class RunnableC2664g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f8810a;

        public RunnableC2664g(String str) {
            this.f8810a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubRewardedAdManager.m36243a(this.f8810a);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedAdManager$i */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$i.class */
    public static final class RunnableC2665i implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f8811a;

        /* renamed from: b */
        public final /* synthetic */ MoPubErrorCode f8812b;

        public RunnableC2665i(String str, MoPubErrorCode moPubErrorCode) {
            this.f8811a = str;
            this.f8812b = moPubErrorCode;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = this.f8811a;
            MoPubErrorCode moPubErrorCode = this.f8812b;
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(moPubErrorCode);
            MoPubRewardedAdManager.f8796k.f8807j.m36227c(str);
            MoPubRewardedAdListener moPubRewardedAdListener = MoPubRewardedAdManager.f8796k.f8802e;
            if (moPubRewardedAdListener != null) {
                moPubRewardedAdListener.onRewardedAdShowError(str, moPubErrorCode);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedAdManager$k */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$k.class */
    public static final class RunnableC2666k implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f8813a;

        public RunnableC2666k(String str) {
            this.f8813a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubRewardedAdManager.m36242b(this.f8813a);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedAdManager$l */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdManager$l.class */
    public static abstract class AbstractRunnableC2667l implements Runnable {

        /* renamed from: a */
        public final AdAdapter f8814a;

        public AbstractRunnableC2667l(AdAdapter adAdapter) {
            Preconditions.checkNotNull(adAdapter);
            this.f8814a = adAdapter;
        }

        /* renamed from: a */
        public abstract void m36234a(String str);

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = ((HashSet) MoPubRewardedAdManager.f8796k.f8801d.b(this.f8814a)).iterator();
            while (it.hasNext()) {
                m36234a((String) it.next());
            }
        }
    }

    public MoPubRewardedAdManager(Activity activity, MediationSettings... mediationSettingsArr) {
        this.f8799b = new WeakReference<>(activity);
        Context applicationContext = activity.getApplicationContext();
        this.f8800c = applicationContext;
        HashSet hashSet = new HashSet();
        this.f8803f = hashSet;
        MoPubCollections.addAllNonNull(hashSet, mediationSettingsArr);
        f8797l = SharedPreferencesHelper.getSharedPreferences(applicationContext, "mopubBaseAdSettings");
    }

    /* renamed from: a */
    public static void m36243a(String str) {
        Preconditions.checkNotNull(str);
        MoPubRewardedAdListener moPubRewardedAdListener = f8796k.f8802e;
        if (moPubRewardedAdListener != null) {
            moPubRewardedAdListener.onRewardedAdStarted(str);
        }
        MoPubRewardedAdManager moPubRewardedAdManager = f8796k;
        RewardedAdsLoaders rewardedAdsLoaders = moPubRewardedAdManager.f8807j;
        Context context = moPubRewardedAdManager.f8800c;
        Objects.requireNonNull(rewardedAdsLoaders);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(context);
        f0 f0Var = rewardedAdsLoaders.f8843a.get(str);
        if (f0Var == null) {
            return;
        }
        Preconditions.checkNotNull(context);
        AdResponse adResponse = f0Var.f9153g;
        if (adResponse == null || f0Var.m) {
            return;
        }
        f0Var.m = true;
        TrackingRequest.makeTrackingHttpRequest(adResponse.getImpressionTrackingUrls(), context);
        new SingleImpression(f0Var.f9153g.getAdUnitId(), f0Var.f9153g.getImpressionData()).sendImpression();
    }

    /* renamed from: b */
    public static void m36242b(String str) {
        Preconditions.checkNotNull(str);
        MoPubRewardedAdListener moPubRewardedAdListener = f8796k.f8802e;
        if (moPubRewardedAdListener != null) {
            moPubRewardedAdListener.onRewardedAdClicked(str);
        }
        MoPubRewardedAdManager moPubRewardedAdManager = f8796k;
        RewardedAdsLoaders rewardedAdsLoaders = moPubRewardedAdManager.f8807j;
        Context context = moPubRewardedAdManager.f8800c;
        Objects.requireNonNull(rewardedAdsLoaders);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(context);
        f0 f0Var = rewardedAdsLoaders.f8843a.get(str);
        if (f0Var == null) {
            return;
        }
        Preconditions.checkNotNull(context);
        AdResponse adResponse = f0Var.f9153g;
        if (adResponse == null || f0Var.n) {
            return;
        }
        f0Var.n = true;
        TrackingRequest.makeTrackingHttpRequest(adResponse.getClickTrackingUrls(), context);
    }

    /* renamed from: c */
    public static void m36241c(String str) {
        Preconditions.checkNotNull(str);
        RewardedAdsLoaders rewardedAdsLoaders = f8796k.f8807j;
        Objects.requireNonNull(rewardedAdsLoaders);
        Preconditions.checkNotNull(str);
        rewardedAdsLoaders.f8843a.remove(str);
        MoPubRewardedAdListener moPubRewardedAdListener = f8796k.f8802e;
        if (moPubRewardedAdListener != null) {
            moPubRewardedAdListener.onRewardedAdClosed(str);
        }
    }

    /* renamed from: e */
    public static boolean m36239e(String str, AdAdapter adAdapter) {
        MoPubRewardedAdManager moPubRewardedAdManager = f8796k;
        return moPubRewardedAdManager != null && moPubRewardedAdManager.f8807j.m36229a(str) && adAdapter != null && adAdapter.isReady();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x008f, code lost:
        if (r0.hasMoreAds() == false) goto L13;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m36238f(java.lang.String r11, java.lang.String r12, com.mopub.mobileads.MoPubErrorCode r13) {
        /*
            com.mopub.mobileads.MoPubRewardedAdManager r0 = com.mopub.mobileads.MoPubRewardedAdManager.f8796k
            r14 = r0
            r0 = r14
            if (r0 != 0) goto Lc
            m36237g()
            return
        Lc:
            r0 = r14
            com.mopub.mobileads.RewardedAdsLoaders r0 = r0.f8807j
            r1 = r11
            boolean r0 = r0.m36228b(r1)
            if (r0 == 0) goto L37
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.util.Locale r4 = java.util.Locale.US
            java.lang.String r5 = "Did not queue rewarded ad request for ad unit %s. A request is already pending."
            r6 = 1
            java.lang.Object[] r6 = new java.lang.Object[r6]
            r7 = r6
            r8 = 0
            r9 = r11
            r7[r8] = r9
            java.lang.String r4 = java.lang.String.format(r4, r5, r6)
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
            goto Lbc
        L37:
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.util.Locale r4 = java.util.Locale.US
            java.lang.String r5 = "Loading rewarded ad request for ad unit %s with URL %s"
            r6 = 2
            java.lang.Object[] r6 = new java.lang.Object[r6]
            r7 = r6
            r8 = 0
            r9 = r11
            r7[r8] = r9
            r7 = r6
            r8 = 1
            r9 = r12
            r7[r8] = r9
            java.lang.String r4 = java.lang.String.format(r4, r5, r6)
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
            r0 = r14
            com.mopub.mobileads.RewardedAdsLoaders r0 = r0.f8807j
            r15 = r0
            r0 = r14
            android.content.Context r0 = r0.f8800c
            r16 = r0
            r0 = r15
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r11
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r16
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r15
            java.util.HashMap<java.lang.String, e.n.b.f0> r0 = r0.f8843a
            r1 = r11
            java.lang.Object r0 = r0.get(r1)
            e.n.b.f0 r0 = (e.n.b.f0) r0
            r17 = r0
            r0 = r17
            if (r0 == 0) goto L92
            r0 = r17
            r14 = r0
            r0 = r17
            boolean r0 = r0.hasMoreAds()
            if (r0 != 0) goto Lb6
        L92:
            e.n.b.f0 r0 = new e.n.b.f0
            r1 = r0
            r2 = r12
            com.mopub.common.AdFormat r3 = com.mopub.common.AdFormat.REWARDED_AD
            r4 = r11
            r5 = r16
            com.mopub.mobileads.RewardedAdsLoaders$RewardedAdRequestListener r6 = new com.mopub.mobileads.RewardedAdsLoaders$RewardedAdRequestListener
            r7 = r6
            r8 = r15
            r9 = r11
            r7.<init>(r8, r9)
            r1.<init>(r2, r3, r4, r5, r6)
            r14 = r0
            r0 = r15
            java.util.HashMap<java.lang.String, e.n.b.f0> r0 = r0.f8843a
            r1 = r11
            r2 = r14
            java.lang.Object r0 = r0.put(r1, r2)
        Lb6:
            r0 = r14
            r1 = r13
            com.mopub.volley.Request r0 = r0.loadNextAd(r1)
        Lbc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.MoPubRewardedAdManager.m36238f(java.lang.String, java.lang.String, com.mopub.mobileads.MoPubErrorCode):void");
    }

    /* renamed from: g */
    public static void m36237g() {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub rewarded ad was not initialized. You must call MoPub.initializeSdk() with an Activity Context before loading or attempting to show rewarded ads.");
    }

    public static Set<MoPubReward> getAvailableRewards(String str) {
        MoPubRewardedAdManager moPubRewardedAdManager = f8796k;
        if (moPubRewardedAdManager == null) {
            m36237g();
            return Collections.emptySet();
        }
        p0 p0Var = moPubRewardedAdManager.f8801d;
        Objects.requireNonNull(p0Var);
        Preconditions.checkNotNull(str);
        Set<MoPubReward> set = (Set) p0Var.c.get(str);
        Set<MoPubReward> set2 = set;
        if (set == null) {
            set2 = Collections.emptySet();
        }
        return set2;
    }

    public static <T extends MediationSettings> T getGlobalMediationSettings(Class<T> cls) {
        MoPubRewardedAdManager moPubRewardedAdManager = f8796k;
        if (moPubRewardedAdManager == null) {
            m36237g();
            return null;
        }
        for (MediationSettings mediationSettings : moPubRewardedAdManager.f8803f) {
            if (cls.equals(mediationSettings.getClass())) {
                return cls.cast(mediationSettings);
            }
        }
        return null;
    }

    public static <T extends MediationSettings> T getInstanceMediationSettings(Class<T> cls, String str) {
        MoPubRewardedAdManager moPubRewardedAdManager = f8796k;
        if (moPubRewardedAdManager == null) {
            m36237g();
            return null;
        }
        Set<MediationSettings> set = moPubRewardedAdManager.f8804g.get(str);
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
        MoPubRewardedAdManager moPubRewardedAdManager = f8796k;
        if (moPubRewardedAdManager != null) {
            return m36239e(str, (AdAdapter) moPubRewardedAdManager.f8801d.a.get(str));
        }
        m36237g();
        return false;
    }

    /* renamed from: i */
    public static void m36235i(Runnable runnable) {
        MoPubRewardedAdManager moPubRewardedAdManager = f8796k;
        if (moPubRewardedAdManager != null) {
            moPubRewardedAdManager.f8798a.post(runnable);
        }
    }

    public static void init(Activity activity, MediationSettings... mediationSettingsArr) {
        synchronized (MoPubRewardedAdManager.class) {
            try {
                if (f8796k == null) {
                    f8796k = new MoPubRewardedAdManager(activity, mediationSettingsArr);
                } else {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Tried to call init more than once. Only the first initialization call has any effect.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void loadAd(String str, RequestParameters requestParameters, MediationSettings... mediationSettingsArr) {
        Window window;
        WindowInsets rootWindowInsets;
        Preconditions.checkNotNull(str);
        MoPubRewardedAdManager moPubRewardedAdManager = f8796k;
        if (moPubRewardedAdManager == null) {
            m36237g();
        } else if (str.equals(moPubRewardedAdManager.f8801d.h)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. The ad is already showing.", str));
        } else if (f8796k.f8807j.m36229a(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. This ad unit already finished loading and is ready to show.", str));
            m36235i(new RunnableC2663c(str));
        } else {
            HashSet hashSet = new HashSet();
            MoPubCollections.addAllNonNull(hashSet, mediationSettingsArr);
            f8796k.f8804g.put(str, hashSet);
            String str2 = requestParameters == null ? null : requestParameters.mCustomerId;
            if (!TextUtils.isEmpty(str2)) {
                f8796k.f8801d.i = str2;
            }
            WebViewAdUrlGenerator webViewAdUrlGenerator = new WebViewAdUrlGenerator(f8796k.f8800c);
            webViewAdUrlGenerator.withAdUnitId(str).withKeywords(requestParameters == null ? null : requestParameters.mKeywords).withUserDataKeywords((requestParameters == null || !MoPub.canCollectPersonalInformation()) ? null : requestParameters.mUserDataKeywords);
            Preconditions.checkNotNull(webViewAdUrlGenerator);
            webViewAdUrlGenerator.withRequestedAdSize(ClientMetadata.getInstance(f8796k.f8800c).getDeviceDimensions());
            if (Build.VERSION.SDK_INT >= 28 && f8796k.f8799b.get() != null && (window = f8796k.f8799b.get().getWindow()) != null && (rootWindowInsets = window.getDecorView().getRootWindowInsets()) != null) {
                webViewAdUrlGenerator.withWindowInsets(rootWindowInsets);
            }
            m36238f(str, webViewAdUrlGenerator.generateUrlString(Constants.HOST), null);
        }
    }

    public static void onRewardedAdClicked(AdAdapter adAdapter, String str) {
        String str2 = f8796k.f8801d.h;
        if (TextUtils.isEmpty(str2)) {
            m36235i(new j(adAdapter));
        } else {
            m36235i(new RunnableC2666k(str2));
        }
    }

    public static void onRewardedAdClosed(AdAdapter adAdapter, String str) {
        String str2 = f8796k.f8801d.h;
        if (TextUtils.isEmpty(str2)) {
            m36235i(new a(adAdapter));
        } else {
            m36235i(new RunnableC2662b(str2));
        }
        f8796k.f8801d.h = null;
    }

    public static void onRewardedAdCompleted(AdAdapter adAdapter, String str, MoPubReward moPubReward) {
        String str2 = f8796k.f8801d.h;
        m36235i(new a0(adAdapter, moPubReward, str2));
        p0 p0Var = f8796k.f8801d;
        Objects.requireNonNull(p0Var);
        String str3 = TextUtils.isEmpty(str2) ? null : (String) p0Var.d.get(str2);
        if (!TextUtils.isEmpty(str3)) {
            m36235i(new n0(str2, str3));
        }
    }

    public static void onRewardedAdLoadFailure(AdAdapter adAdapter, String str, MoPubErrorCode moPubErrorCode) {
        m36235i(new e(adAdapter, moPubErrorCode));
    }

    public static void onRewardedAdLoadSuccess(AdAdapter adAdapter, String str) {
        m36235i(new d(adAdapter));
    }

    public static void onRewardedAdShowError(AdAdapter adAdapter, String str, MoPubErrorCode moPubErrorCode) {
        String str2 = f8796k.f8801d.h;
        if (TextUtils.isEmpty(str2)) {
            m36235i(new h(adAdapter, moPubErrorCode));
        } else {
            m36235i(new RunnableC2665i(str2, moPubErrorCode));
        }
        f8796k.f8801d.h = null;
    }

    public static void onRewardedAdStarted(AdAdapter adAdapter, String str) {
        String str2 = f8796k.f8801d.h;
        if (TextUtils.isEmpty(str2)) {
            m36235i(new f(adAdapter));
        } else {
            m36235i(new RunnableC2664g(str2));
        }
    }

    public static void selectReward(String str, MoPubReward moPubReward) {
        MoPubRewardedAdManager moPubRewardedAdManager = f8796k;
        if (moPubRewardedAdManager == null) {
            m36237g();
            return;
        }
        p0 p0Var = moPubRewardedAdManager.f8801d;
        Objects.requireNonNull(p0Var);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubReward);
        Set set = (Set) p0Var.c.get(str);
        if (set == null || set.isEmpty()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "AdUnit %s does not have any rewards.", str));
        } else if (!set.contains(moPubReward)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Selected reward is invalid for AdUnit %s.", str));
        } else {
            p0Var.e(str, moPubReward.getLabel(), Integer.toString(moPubReward.getAmount()));
        }
    }

    public static void setRewardedAdListener(MoPubRewardedAdListener moPubRewardedAdListener) {
        MoPubRewardedAdManager moPubRewardedAdManager = f8796k;
        if (moPubRewardedAdManager != null) {
            moPubRewardedAdManager.f8802e = moPubRewardedAdListener;
        } else {
            m36237g();
        }
    }

    public static void showAd(String str) {
        showAd(str, null);
    }

    public static void showAd(String str, String str2) {
        if (f8796k == null) {
            m36237g();
            return;
        }
        if (str2 != null && str2.length() > 8192) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Provided rewarded ad custom data parameter longer than supported(%d bytes, %d maximum)", Integer.valueOf(str2.length()), 8192));
        }
        AdAdapter adAdapter = (AdAdapter) f8796k.f8801d.a.get(str);
        if (!m36239e(str, adAdapter)) {
            if (f8796k.f8807j.m36228b(str)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Rewarded ad is not ready to be shown yet.");
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "No rewarded ad loading or loaded.");
            }
            f8796k.m36240d(str, MoPubErrorCode.AD_NOT_AVAILABLE);
            return;
        }
        p0 p0Var = f8796k.f8801d;
        Objects.requireNonNull(p0Var);
        Preconditions.checkNotNull(str);
        Set set = (Set) p0Var.c.get(str);
        Set set2 = set;
        if (set == null) {
            set2 = Collections.emptySet();
        }
        if (!set2.isEmpty() && ((MoPubReward) f8796k.f8801d.b.get(str)) == null) {
            f8796k.m36240d(str, MoPubErrorCode.REWARD_NOT_SELECTED);
            return;
        }
        p0 p0Var2 = f8796k.f8801d;
        MoPubReward moPubReward = (MoPubReward) p0Var2.b.get(str);
        Preconditions.checkNotNull(adAdapter);
        p0Var2.f.put(adAdapter, moPubReward);
        p0 p0Var3 = f8796k.f8801d;
        Objects.requireNonNull(p0Var3);
        Preconditions.NoThrow.checkNotNull(str);
        p0Var3.e.put(str, str2);
        f8796k.f8801d.h = str;
        adAdapter.e((MoPubAd) null);
    }

    @ReflectionTarget
    public static void updateActivity(Activity activity) {
        MoPubRewardedAdManager moPubRewardedAdManager = f8796k;
        if (moPubRewardedAdManager != null) {
            moPubRewardedAdManager.f8799b = new WeakReference<>(activity);
        } else {
            m36237g();
        }
    }

    /* renamed from: d */
    public final void m36240d(String str, MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubErrorCode);
        f0 f0Var = this.f8807j.f8843a.get(str);
        if ((f0Var != null && f0Var.hasMoreAds()) && !moPubErrorCode.equals(MoPubErrorCode.EXPIRED)) {
            m36238f(str, "", moPubErrorCode);
            return;
        }
        MoPubRewardedAdListener moPubRewardedAdListener = f8796k.f8802e;
        if (moPubRewardedAdListener == null) {
            return;
        }
        moPubRewardedAdListener.onRewardedAdLoadFailure(str, moPubErrorCode);
        this.f8807j.m36227c(str);
    }

    /* renamed from: h */
    public final void m36236h(String str, String str2) throws JSONException {
        String[] jsonArrayToStringArray = Json.jsonArrayToStringArray(Json.jsonStringToMap(str2).get("rewards"));
        if (jsonArrayToStringArray.length == 1) {
            Map<String, String> jsonStringToMap = Json.jsonStringToMap(jsonArrayToStringArray[0]);
            this.f8801d.e(str, jsonStringToMap.get(AnalyticsConstants.NAME), jsonStringToMap.get(AnalyticsConstants.AMOUNT));
        }
        for (String str3 : jsonArrayToStringArray) {
            Map<String, String> jsonStringToMap2 = Json.jsonStringToMap(str3);
            p0 p0Var = this.f8801d;
            String str4 = jsonStringToMap2.get(AnalyticsConstants.NAME);
            String str5 = jsonStringToMap2.get(AnalyticsConstants.AMOUNT);
            Objects.requireNonNull(p0Var);
            Preconditions.checkNotNull(str);
            if (str4 == null || str5 == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency name and amount cannot be null: name = %s, amount = %s", str4, str5));
            } else {
                try {
                    int parseInt = Integer.parseInt(str5);
                    if (parseInt < 0) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount cannot be negative: %s", str5));
                    } else if (p0Var.c.containsKey(str)) {
                        ((Set) p0Var.c.get(str)).add(MoPubReward.success(str4, parseInt));
                    } else {
                        HashSet hashSet = new HashSet();
                        hashSet.add(MoPubReward.success(str4, parseInt));
                        p0Var.c.put(str, hashSet);
                    }
                } catch (NumberFormatException e) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount must be an integer: %s", str5));
                }
            }
        }
    }
}
