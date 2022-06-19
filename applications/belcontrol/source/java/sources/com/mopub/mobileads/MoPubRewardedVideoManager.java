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
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.DataKeys;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPub;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.common.util.MoPubCollections;
import com.mopub.common.util.ReflectionTarget;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.AdAdapter;
import com.mopub.mobileads.AdData;
import com.mopub.mobileads.AdLifecycleListener;
import com.mopub.mobileads.MoPubRewardedVideoManager;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.NoConnectionError;
import com.mopub.volley.VolleyError;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager.class */
public class MoPubRewardedVideoManager {
    public static final int API_VERSION = 1;

    /* renamed from: k */
    public static MoPubRewardedVideoManager f4720k;

    /* renamed from: l */
    public static SharedPreferences f4721l;

    /* renamed from: b */
    public WeakReference<Activity> f4723b;

    /* renamed from: c */
    public final Context f4724c;

    /* renamed from: e */
    public MoPubRewardedVideoListener f4726e;

    /* renamed from: f */
    public final Set<MediationSettings> f4727f;

    /* renamed from: d */
    public final gh1 f4725d = new gh1();

    /* renamed from: a */
    public final Handler f4722a = new Handler(Looper.getMainLooper());

    /* renamed from: g */
    public final Map<String, Set<MediationSettings>> f4728g = new HashMap();

    /* renamed from: h */
    public final Handler f4729h = new Handler();

    /* renamed from: i */
    public final Map<String, Runnable> f4730i = new HashMap();

    /* renamed from: j */
    public final RewardedAdsLoaders f4731j = new RewardedAdsLoaders(this);

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters.class */
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

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$a.class */
    public static final class C1087a extends AbstractRunnableC1100n {
        public C1087a(AdAdapter adAdapter) {
            super(adAdapter);
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoManager.AbstractRunnableC1100n
        /* renamed from: a */
        public void mo3613a(String str) {
            MoPubRewardedVideoManager.m3616x(str);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$b.class */
    public static final class RunnableC1088b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f4732a;

        public RunnableC1088b(String str) {
            this.f4732a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubRewardedVideoManager.m3616x(this.f4732a);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$c.class */
    public static final class RunnableC1089c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f4733a;

        /* renamed from: b */
        public final /* synthetic */ String f4734b;

        public RunnableC1089c(String str, String str2) {
            this.f4733a = str;
            this.f4734b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubReward m1671j = MoPubRewardedVideoManager.f4720k.f4725d.m1671j(this.f4733a);
            String label = m1671j == null ? "" : m1671j.getLabel();
            String num = Integer.toString(m1671j == null ? 0 : m1671j.getAmount());
            AdAdapter m1678c = MoPubRewardedVideoManager.f4720k.f4725d.m1678c(this.f4733a);
            RewardedVideoCompletionRequestHandler.makeRewardedVideoCompletionRequest(MoPubRewardedVideoManager.f4720k.f4724c, this.f4734b, MoPubRewardedVideoManager.f4720k.f4725d.m1673h(), label, num, m1678c == null ? null : m1678c.getBaseAdClassName(), MoPubRewardedVideoManager.f4720k.f4725d.m1674g(this.f4733a));
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$d.class */
    public static /* synthetic */ class C1090d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4735a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f4736b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0060 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0064 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0068 -> B:25:0x0033). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006c -> B:35:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0070 -> B:31:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0074 -> B:27:0x0054). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubErrorCode.values().length];
            f4736b = iArr;
            try {
                iArr[MoPubErrorCode.VIDEO_PLAYBACK_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4736b[MoPubErrorCode.EXPIRED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[MoPubNetworkError.Reason.values().length];
            f4735a = iArr2;
            try {
                iArr2[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4735a[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4735a[MoPubNetworkError.Reason.TOO_MANY_REQUESTS.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f4735a[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f4735a[MoPubNetworkError.Reason.BAD_HEADER_DATA.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$e */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$e.class */
    public static final class RunnableC1091e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f4737a;

        public RunnableC1091e(String str) {
            this.f4737a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MoPubRewardedVideoManager.f4720k.f4726e != null) {
                MoPubRewardedVideoManager.f4720k.f4726e.onRewardedVideoLoadSuccess(this.f4737a);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$f */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$f.class */
    public static final class C1092f extends AbstractRunnableC1100n {
        public C1092f(AdAdapter adAdapter) {
            super(adAdapter);
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoManager.AbstractRunnableC1100n
        /* renamed from: a */
        public void mo3613a(String str) {
            MoPubRewardedVideoManager.f4720k.m3628l(str);
            MoPubRewardedVideoManager.f4720k.f4731j.m3600c(str);
            if (MoPubRewardedVideoManager.f4720k.f4726e != null) {
                MoPubRewardedVideoManager.f4720k.f4726e.onRewardedVideoLoadSuccess(str);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$g */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$g.class */
    public static final class C1093g extends AbstractRunnableC1100n {

        /* renamed from: b */
        public final /* synthetic */ MoPubErrorCode f4738b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1093g(AdAdapter adAdapter, MoPubErrorCode moPubErrorCode) {
            super(adAdapter);
            this.f4738b = moPubErrorCode;
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoManager.AbstractRunnableC1100n
        /* renamed from: a */
        public void mo3613a(String str) {
            MoPubRewardedVideoManager.f4720k.m3628l(str);
            MoPubRewardedVideoManager.f4720k.m3626n(str, this.f4738b);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$h */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$h.class */
    public static final class C1094h extends AbstractRunnableC1100n {
        public C1094h(AdAdapter adAdapter) {
            super(adAdapter);
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoManager.AbstractRunnableC1100n
        /* renamed from: a */
        public void mo3613a(String str) {
            MoPubRewardedVideoManager.m3614z(str);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$i */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$i.class */
    public static final class RunnableC1095i implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f4739a;

        public RunnableC1095i(String str) {
            this.f4739a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubRewardedVideoManager.m3614z(this.f4739a);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$j */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$j.class */
    public static final class C1096j extends AbstractRunnableC1100n {

        /* renamed from: b */
        public final /* synthetic */ MoPubErrorCode f4740b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1096j(AdAdapter adAdapter, MoPubErrorCode moPubErrorCode) {
            super(adAdapter);
            this.f4740b = moPubErrorCode;
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoManager.AbstractRunnableC1100n
        /* renamed from: a */
        public void mo3613a(String str) {
            MoPubRewardedVideoManager.m3615y(str, this.f4740b);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$k */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$k.class */
    public static final class RunnableC1097k implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f4741a;

        /* renamed from: b */
        public final /* synthetic */ MoPubErrorCode f4742b;

        public RunnableC1097k(String str, MoPubErrorCode moPubErrorCode) {
            this.f4741a = str;
            this.f4742b = moPubErrorCode;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubRewardedVideoManager.m3615y(this.f4741a, this.f4742b);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$l */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$l.class */
    public static final class C1098l extends AbstractRunnableC1100n {
        public C1098l(AdAdapter adAdapter) {
            super(adAdapter);
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoManager.AbstractRunnableC1100n
        /* renamed from: a */
        public void mo3613a(String str) {
            MoPubRewardedVideoManager.m3617w(str);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$m */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$m.class */
    public static final class RunnableC1099m implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f4743a;

        public RunnableC1099m(String str) {
            this.f4743a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubRewardedVideoManager.m3617w(this.f4743a);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$n */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$n.class */
    public static abstract class AbstractRunnableC1100n implements Runnable {

        /* renamed from: a */
        public final AdAdapter f4744a;

        public AbstractRunnableC1100n(AdAdapter adAdapter) {
            Preconditions.checkNotNull(adAdapter);
            this.f4744a = adAdapter;
        }

        /* renamed from: a */
        public abstract void mo3613a(String str);

        @Override // java.lang.Runnable
        public void run() {
            for (String str : MoPubRewardedVideoManager.f4720k.f4725d.m1677d(this.f4744a)) {
                mo3613a(str);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$o */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$o.class */
    public static class C1101o implements AdLifecycleListener.LoadListener, AdLifecycleListener.InteractionListener {

        /* renamed from: a */
        public final AdAdapter f4745a;

        public C1101o(AdAdapter adAdapter) {
            this.f4745a = adAdapter;
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
        public void onAdClicked() {
            MoPubLog.log(MoPubLog.AdLogEvent.CLICKED, new Object[0]);
            AdAdapter adAdapter = this.f4745a;
            MoPubRewardedVideoManager.onRewardedVideoClicked(adAdapter, adAdapter.m3768c());
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
        public void onAdCollapsed() {
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
        public void onAdComplete(MoPubReward moPubReward) {
            MoPubReward moPubReward2 = moPubReward;
            if (moPubReward == null) {
                moPubReward2 = MoPubReward.success("", 0);
            }
            AdAdapter adAdapter = this.f4745a;
            MoPubRewardedVideoManager.onRewardedVideoCompleted(adAdapter, adAdapter.m3768c(), moPubReward2);
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
        public void onAdDismissed() {
            MoPubLog.log(MoPubLog.AdLogEvent.DID_DISAPPEAR, new Object[0]);
            AdAdapter adAdapter = this.f4745a;
            MoPubRewardedVideoManager.onRewardedVideoClosed(adAdapter, adAdapter.m3768c());
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
        public void onAdExpanded() {
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
        public void onAdFailed(MoPubErrorCode moPubErrorCode) {
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            int i = C1090d.f4736b[moPubErrorCode.ordinal()];
            if (i == 1 || i == 2) {
                AdAdapter adAdapter = this.f4745a;
                MoPubRewardedVideoManager.onRewardedVideoPlaybackError(adAdapter, adAdapter.m3768c(), moPubErrorCode);
                return;
            }
            AdAdapter adAdapter2 = this.f4745a;
            MoPubRewardedVideoManager.onRewardedVideoLoadFailure(adAdapter2, adAdapter2.m3768c(), moPubErrorCode);
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
        public void onAdImpression() {
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
        public void onAdLoadFailed(MoPubErrorCode moPubErrorCode) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            onAdFailed(moPubErrorCode);
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
        public void onAdLoaded() {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
            AdAdapter adAdapter = this.f4745a;
            MoPubRewardedVideoManager.onRewardedVideoLoadSuccess(adAdapter, adAdapter.m3768c());
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
        public void onAdPauseAutoRefresh() {
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
        public void onAdResumeAutoRefresh() {
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
        public void onAdShown() {
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
            AdAdapter adAdapter = this.f4745a;
            MoPubRewardedVideoManager.onRewardedVideoStarted(adAdapter, adAdapter.m3768c());
        }
    }

    public MoPubRewardedVideoManager(Activity activity, MediationSettings... mediationSettingsArr) {
        this.f4723b = new WeakReference<>(activity);
        Context applicationContext = activity.getApplicationContext();
        this.f4724c = applicationContext;
        HashSet hashSet = new HashSet();
        this.f4727f = hashSet;
        MoPubCollections.addAllNonNull(hashSet, mediationSettingsArr);
        f4721l = SharedPreferencesHelper.getSharedPreferences(applicationContext, "mopubBaseAdSettings");
    }

    /* renamed from: B */
    public static void m3643B(Runnable runnable) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f4720k;
        if (moPubRewardedVideoManager != null) {
            moPubRewardedVideoManager.f4722a.post(runnable);
        }
    }

    /* renamed from: C */
    public static void m3642C(final AdAdapter adAdapter, final MoPubReward moPubReward, final String str) {
        m3643B(new Runnable() { // from class: vg1
            @Override // java.lang.Runnable
            public final void run() {
                MoPubRewardedVideoManager.m3622r(AdAdapter.this, moPubReward, str);
            }
        });
    }

    /* renamed from: D */
    public static void m3641D(String str) {
        String m1670k = f4720k.f4725d.m1670k(str);
        if (!TextUtils.isEmpty(m1670k)) {
            m3643B(new RunnableC1089c(str, m1670k));
        }
    }

    /* renamed from: E */
    public static void m3640E(AdUrlGenerator adUrlGenerator) {
        Window window;
        WindowInsets rootWindowInsets;
        Preconditions.checkNotNull(adUrlGenerator);
        adUrlGenerator.withRequestedAdSize(ClientMetadata.getInstance(f4720k.f4724c).getDeviceDimensions());
        if (Build.VERSION.SDK_INT < 28 || f4720k.f4723b.get() == null || (window = f4720k.f4723b.get().getWindow()) == null || (rootWindowInsets = window.getDecorView().getRootWindowInsets()) == null) {
            return;
        }
        adUrlGenerator.withWindowInsets(rootWindowInsets);
    }

    public static Set<MoPubReward> getAvailableRewards(String str) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f4720k;
        if (moPubRewardedVideoManager != null) {
            return moPubRewardedVideoManager.f4725d.m1676e(str);
        }
        m3620t();
        return Collections.emptySet();
    }

    public static <T extends MediationSettings> T getGlobalMediationSettings(Class<T> cls) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f4720k;
        if (moPubRewardedVideoManager == null) {
            m3620t();
            return null;
        }
        for (MediationSettings mediationSettings : moPubRewardedVideoManager.f4727f) {
            if (cls.equals(mediationSettings.getClass())) {
                return cls.cast(mediationSettings);
            }
        }
        return null;
    }

    public static <T extends MediationSettings> T getInstanceMediationSettings(Class<T> cls, String str) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f4720k;
        if (moPubRewardedVideoManager == null) {
            m3620t();
            return null;
        }
        Set<MediationSettings> set = moPubRewardedVideoManager.f4728g.get(str);
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

    public static boolean hasVideo(String str) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f4720k;
        if (moPubRewardedVideoManager != null) {
            return m3624p(str, moPubRewardedVideoManager.f4725d.m1678c(str));
        }
        m3620t();
        return false;
    }

    public static void init(Activity activity, MediationSettings... mediationSettingsArr) {
        synchronized (MoPubRewardedVideoManager.class) {
            try {
                if (f4720k == null) {
                    f4720k = new MoPubRewardedVideoManager(activity, mediationSettingsArr);
                } else {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Tried to call initializeRewardedVideo more than once. Only the first initialization call has any effect.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void loadVideo(String str, RequestParameters requestParameters, MediationSettings... mediationSettingsArr) {
        Preconditions.checkNotNull(str);
        MoPubRewardedVideoManager moPubRewardedVideoManager = f4720k;
        if (moPubRewardedVideoManager == null) {
            m3620t();
        } else if (str.equals(moPubRewardedVideoManager.f4725d.m1675f())) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. The ad is already showing.", str));
        } else if (f4720k.f4731j.m3601b(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. This ad unit already finished loading and is ready to show.", str));
            m3643B(new RunnableC1091e(str));
        } else {
            HashSet hashSet = new HashSet();
            MoPubCollections.addAllNonNull(hashSet, mediationSettingsArr);
            f4720k.f4728g.put(str, hashSet);
            String str2 = requestParameters == null ? null : requestParameters.mCustomerId;
            if (!TextUtils.isEmpty(str2)) {
                f4720k.f4725d.m1665p(str2);
            }
            WebViewAdUrlGenerator webViewAdUrlGenerator = new WebViewAdUrlGenerator(f4720k.f4724c);
            webViewAdUrlGenerator.withAdUnitId(str).withKeywords(requestParameters == null ? null : requestParameters.mKeywords).withUserDataKeywords((requestParameters == null || !MoPub.canCollectPersonalInformation()) ? null : requestParameters.mUserDataKeywords);
            m3640E(webViewAdUrlGenerator);
            m3621s(str, webViewAdUrlGenerator.generateUrlString(Constants.HOST), null);
        }
    }

    @VisibleForTesting
    /* renamed from: m */
    public static MoPubReward m3627m(MoPubReward moPubReward, MoPubReward moPubReward2) {
        if (!moPubReward2.isSuccessful()) {
            return moPubReward2;
        }
        if (moPubReward == null) {
            moPubReward = moPubReward2;
        }
        return moPubReward;
    }

    public static void onRewardedVideoClicked(AdAdapter adAdapter, String str) {
        String m1675f = f4720k.f4725d.m1675f();
        if (TextUtils.isEmpty(m1675f)) {
            m3643B(new C1098l(adAdapter));
        } else {
            m3643B(new RunnableC1099m(m1675f));
        }
    }

    public static void onRewardedVideoClosed(AdAdapter adAdapter, String str) {
        String m1675f = f4720k.f4725d.m1675f();
        if (TextUtils.isEmpty(m1675f)) {
            m3643B(new C1087a(adAdapter));
        } else {
            m3643B(new RunnableC1088b(m1675f));
        }
        f4720k.f4725d.m1666o(null);
    }

    public static void onRewardedVideoCompleted(AdAdapter adAdapter, String str, MoPubReward moPubReward) {
        String m1675f = f4720k.f4725d.m1675f();
        m3642C(adAdapter, moPubReward, m1675f);
        m3641D(m1675f);
    }

    public static void onRewardedVideoLoadFailure(AdAdapter adAdapter, String str, MoPubErrorCode moPubErrorCode) {
        m3643B(new C1093g(adAdapter, moPubErrorCode));
    }

    public static void onRewardedVideoLoadSuccess(AdAdapter adAdapter, String str) {
        m3643B(new C1092f(adAdapter));
    }

    public static void onRewardedVideoPlaybackError(AdAdapter adAdapter, String str, MoPubErrorCode moPubErrorCode) {
        String m1675f = f4720k.f4725d.m1675f();
        if (TextUtils.isEmpty(m1675f)) {
            m3643B(new C1096j(adAdapter, moPubErrorCode));
        } else {
            m3643B(new RunnableC1097k(m1675f, moPubErrorCode));
        }
        f4720k.f4725d.m1666o(null);
    }

    public static void onRewardedVideoStarted(AdAdapter adAdapter, String str) {
        String m1675f = f4720k.f4725d.m1675f();
        if (TextUtils.isEmpty(m1675f)) {
            m3643B(new C1094h(adAdapter));
        } else {
            m3643B(new RunnableC1095i(m1675f));
        }
    }

    /* renamed from: p */
    public static boolean m3624p(String str, AdAdapter adAdapter) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f4720k;
        return moPubRewardedVideoManager != null && moPubRewardedVideoManager.f4731j.m3601b(str) && adAdapter != null && adAdapter.isReady();
    }

    /* renamed from: q */
    public static /* synthetic */ void m3623q(AdAdapter adAdapter) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Base Ad failed to load rewarded ad in a timely fashion.");
        adAdapter.onAdLoadFailed(MoPubErrorCode.NETWORK_TIMEOUT);
        adAdapter.getClass();
        m3643B(new xg1(adAdapter));
    }

    /* renamed from: r */
    public static /* synthetic */ void m3622r(AdAdapter adAdapter, MoPubReward moPubReward, String str) {
        MoPubReward m3627m = m3627m(f4720k.f4725d.m1672i(adAdapter), moPubReward);
        HashSet hashSet = new HashSet();
        if (TextUtils.isEmpty(str)) {
            hashSet.addAll(f4720k.f4725d.m1677d(adAdapter));
        } else {
            hashSet.add(str);
        }
        MoPubLog.log(MoPubLog.AdLogEvent.SHOULD_REWARD, Integer.valueOf(m3627m.getAmount()), m3627m.getLabel());
        MoPubRewardedVideoListener moPubRewardedVideoListener = f4720k.f4726e;
        if (moPubRewardedVideoListener != null) {
            moPubRewardedVideoListener.onRewardedVideoCompleted(hashSet, m3627m);
        }
    }

    /* renamed from: s */
    public static void m3621s(String str, String str2, MoPubErrorCode moPubErrorCode) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f4720k;
        if (moPubRewardedVideoManager == null) {
            m3620t();
        } else {
            moPubRewardedVideoManager.m3625o(str, str2, moPubErrorCode);
        }
    }

    public static void selectReward(String str, MoPubReward moPubReward) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f4720k;
        if (moPubRewardedVideoManager != null) {
            moPubRewardedVideoManager.f4725d.m1667n(str, moPubReward);
        } else {
            m3620t();
        }
    }

    public static void setVideoListener(MoPubRewardedVideoListener moPubRewardedVideoListener) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f4720k;
        if (moPubRewardedVideoManager != null) {
            moPubRewardedVideoManager.f4726e = moPubRewardedVideoListener;
        } else {
            m3620t();
        }
    }

    public static void showVideo(String str) {
        showVideo(str, null);
    }

    public static void showVideo(String str, String str2) {
        if (f4720k == null) {
            m3620t();
            return;
        }
        if (str2 != null && str2.length() > 8192) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Provided rewarded ad custom data parameter longer than supported(%d bytes, %d maximum)", Integer.valueOf(str2.length()), 8192));
        }
        AdAdapter m1678c = f4720k.f4725d.m1678c(str);
        if (!m3624p(str, m1678c)) {
            if (f4720k.f4731j.m3598e(str)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Rewarded ad is not ready to be shown yet.");
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "No rewarded ad loading or loaded.");
            }
            f4720k.m3626n(str, MoPubErrorCode.VIDEO_NOT_AVAILABLE);
        } else if (!f4720k.f4725d.m1676e(str).isEmpty() && f4720k.f4725d.m1671j(str) == null) {
            f4720k.m3626n(str, MoPubErrorCode.REWARD_NOT_SELECTED);
        } else {
            gh1 gh1Var = f4720k.f4725d;
            gh1Var.m1660u(m1678c, gh1Var.m1671j(str));
            f4720k.f4725d.m1662s(str, str2);
            f4720k.f4725d.m1666o(str);
            m1678c.mo3678I(null);
        }
    }

    /* renamed from: t */
    public static void m3620t() {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub rewarded ad was not initialized. You must call MoPub.initializeSdk() with an Activity Context before loading or attempting to play rewarded ads.");
    }

    @ReflectionTarget
    public static void updateActivity(Activity activity) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f4720k;
        if (moPubRewardedVideoManager != null) {
            moPubRewardedVideoManager.f4723b = new WeakReference<>(activity);
        } else {
            m3620t();
        }
    }

    /* renamed from: w */
    public static void m3617w(String str) {
        Preconditions.checkNotNull(str);
        MoPubRewardedVideoListener moPubRewardedVideoListener = f4720k.f4726e;
        if (moPubRewardedVideoListener != null) {
            moPubRewardedVideoListener.onRewardedVideoClicked(str);
        }
        MoPubRewardedVideoManager moPubRewardedVideoManager = f4720k;
        moPubRewardedVideoManager.f4731j.m3594i(str, moPubRewardedVideoManager.f4724c);
    }

    /* renamed from: x */
    public static void m3616x(String str) {
        Preconditions.checkNotNull(str);
        f4720k.f4731j.m3595h(str);
        MoPubRewardedVideoListener moPubRewardedVideoListener = f4720k.f4726e;
        if (moPubRewardedVideoListener != null) {
            moPubRewardedVideoListener.onRewardedVideoClosed(str);
        }
    }

    /* renamed from: y */
    public static void m3615y(String str, MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubErrorCode);
        f4720k.f4731j.m3596g(str);
        MoPubRewardedVideoListener moPubRewardedVideoListener = f4720k.f4726e;
        if (moPubRewardedVideoListener != null) {
            moPubRewardedVideoListener.onRewardedVideoPlaybackError(str, moPubErrorCode);
        }
    }

    /* renamed from: z */
    public static void m3614z(String str) {
        Preconditions.checkNotNull(str);
        MoPubRewardedVideoListener moPubRewardedVideoListener = f4720k.f4726e;
        if (moPubRewardedVideoListener != null) {
            moPubRewardedVideoListener.onRewardedVideoStarted(str);
        }
        MoPubRewardedVideoManager moPubRewardedVideoManager = f4720k;
        moPubRewardedVideoManager.f4731j.m3593j(str, moPubRewardedVideoManager.f4724c);
    }

    /* renamed from: A */
    public final void m3644A(String str, String str2) {
        String[] jsonArrayToStringArray = Json.jsonArrayToStringArray(Json.jsonStringToMap(str2).get("rewards"));
        if (jsonArrayToStringArray.length == 1) {
            Map<String, String> jsonStringToMap = Json.jsonStringToMap(jsonArrayToStringArray[0]);
            this.f4725d.m1663r(str, jsonStringToMap.get("name"), jsonStringToMap.get("amount"));
        }
        for (String str3 : jsonArrayToStringArray) {
            Map<String, String> jsonStringToMap2 = Json.jsonStringToMap(str3);
            this.f4725d.m1680a(str, jsonStringToMap2.get("name"), jsonStringToMap2.get("amount"));
        }
    }

    /* renamed from: l */
    public final void m3628l(String str) {
        Runnable remove = this.f4730i.remove(str);
        if (remove != null) {
            this.f4729h.removeCallbacks(remove);
        }
    }

    /* renamed from: n */
    public final void m3626n(String str, MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubErrorCode);
        if (this.f4731j.m3599d(str) && !moPubErrorCode.equals(MoPubErrorCode.EXPIRED)) {
            m3621s(str, "", moPubErrorCode);
            return;
        }
        MoPubRewardedVideoListener moPubRewardedVideoListener = f4720k.f4726e;
        if (moPubRewardedVideoListener == null) {
            return;
        }
        moPubRewardedVideoListener.onRewardedVideoLoadFailure(str, moPubErrorCode);
    }

    /* renamed from: o */
    public final void m3625o(String str, String str2, MoPubErrorCode moPubErrorCode) {
        if (this.f4731j.m3598e(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. A request is already pending.", str));
            return;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Loading rewarded ad request for ad unit %s with URL %s", str, str2));
        this.f4731j.m3597f(this.f4724c, str, str2, moPubErrorCode);
    }

    /* renamed from: u */
    public void m3619u(VolleyError volleyError, String str) {
        MoPubErrorCode moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
        MoPubErrorCode moPubErrorCode2 = moPubErrorCode;
        if (volleyError instanceof MoPubNetworkError) {
            int i = C1090d.f4735a[((MoPubNetworkError) volleyError).getReason().ordinal()];
            moPubErrorCode2 = (i == 1 || i == 2) ? MoPubErrorCode.NO_FILL : i != 3 ? moPubErrorCode : MoPubErrorCode.TOO_MANY_REQUESTS;
        }
        if (volleyError instanceof NoConnectionError) {
            moPubErrorCode2 = MoPubErrorCode.NO_CONNECTION;
        }
        m3626n(str, moPubErrorCode2);
    }

    /* renamed from: v */
    public void m3618v(AdResponse adResponse) {
        int parseInt;
        String adUnitId = adResponse.getAdUnitId();
        Integer adTimeoutMillis = adResponse.getAdTimeoutMillis(30000);
        String baseAdClassName = adResponse.getBaseAdClassName();
        if (baseAdClassName == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Couldn't create base ad, class name was null.");
            m3626n(adUnitId, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        AdAdapter m1678c = this.f4725d.m1678c(adUnitId);
        if (m1678c != null) {
            m1678c.m3766e();
        }
        String rewardedCurrencies = adResponse.getRewardedCurrencies();
        this.f4725d.m1669l(adUnitId);
        this.f4725d.m1668m(adUnitId);
        if (TextUtils.isEmpty(rewardedCurrencies)) {
            this.f4725d.m1663r(adUnitId, adResponse.getRewardedVideoCurrencyName(), adResponse.getRewardedVideoCurrencyAmount());
        } else {
            try {
                m3644A(adUnitId, rewardedCurrencies);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Error parsing rewarded currencies JSON header: " + rewardedCurrencies);
                m3626n(adUnitId, MoPubErrorCode.REWARDED_CURRENCIES_PARSING_ERROR);
                return;
            }
        }
        this.f4725d.m1661t(adUnitId, adResponse.getRewardedVideoCompletionUrl());
        if (this.f4723b.get() == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Could not load base ad because Activity reference was null. Call MoPub#updateActivity before requesting more rewarded ads.");
            this.f4731j.m3596g(adUnitId);
            return;
        }
        Map<String, String> serverExtras = adResponse.getServerExtras();
        String jSONObject = new JSONObject(serverExtras).toString();
        String impressionMinVisibleDips = adResponse.getImpressionMinVisibleDips();
        String impressionMinVisibleMs = adResponse.getImpressionMinVisibleMs();
        int intValue = adResponse.getAdTimeoutMillis(30000).intValue();
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Updating init settings for base ad %s with params %s", baseAdClassName, jSONObject));
        f4721l.edit().putString(baseAdClassName, jSONObject).apply();
        String remove = serverExtras.remove(DataKeys.HTML_RESPONSE_BODY_KEY);
        AdData.Builder adType = new AdData.Builder().adUnit(adUnitId).isRewarded(true).adType(adResponse.getFullAdType());
        if (remove == null) {
            remove = "";
        }
        AdData.Builder extras = adType.adPayload(remove).currencyName(adResponse.getRewardedVideoCurrencyName()).impressionMinVisibleDips(impressionMinVisibleDips).impressionMinVisibleMs(impressionMinVisibleMs).dspCreativeId(adResponse.getDspCreativeId()).broadcastIdentifier(Utils.generateUniqueId()).timeoutDelayMillis(intValue).customerId(this.f4725d.m1673h()).allowCustomClose(false).viewabilityVendors(adResponse.getViewabilityVendors()).fullAdType(adResponse.getFullAdType()).extras(serverExtras);
        Integer rewardedDuration = adResponse.getRewardedDuration();
        if (rewardedDuration != null) {
            extras.rewardedDurationSeconds(rewardedDuration.intValue());
        }
        String rewardedVideoCurrencyAmount = adResponse.getRewardedVideoCurrencyAmount();
        try {
            if (!TextUtils.isEmpty(rewardedVideoCurrencyAmount)) {
                try {
                    parseInt = Integer.parseInt(rewardedVideoCurrencyAmount);
                } catch (NumberFormatException e2) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to convert currency amount: " + rewardedVideoCurrencyAmount + ". Using the default reward amount: 0");
                }
                extras.currencyAmount(parseInt);
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Loading base ad with class name %s", baseAdClassName));
                Constructor declaredConstructor = Class.forName("com.mopub.mobileads.FullscreenAdAdapter").asSubclass(AdAdapter.class).getDeclaredConstructor(Context.class, String.class, AdData.class);
                declaredConstructor.setAccessible(true);
                final AdAdapter adAdapter = (AdAdapter) declaredConstructor.newInstance(f4720k.f4723b.get(), baseAdClassName, extras.build());
                C1101o c1101o = new C1101o(adAdapter);
                Runnable runnable = new Runnable() { // from class: wg1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MoPubRewardedVideoManager.m3623q(AdAdapter.this);
                    }
                };
                this.f4729h.postDelayed(runnable, adTimeoutMillis.intValue());
                this.f4730i.put(adUnitId, runnable);
                adAdapter.load(c1101o);
                adAdapter.m3770H(c1101o);
                adAdapter.m3768c();
                this.f4725d.m1664q(adUnitId, adAdapter);
                return;
            }
            Constructor declaredConstructor2 = Class.forName("com.mopub.mobileads.FullscreenAdAdapter").asSubclass(AdAdapter.class).getDeclaredConstructor(Context.class, String.class, AdData.class);
            declaredConstructor2.setAccessible(true);
            final AdAdapter adAdapter2 = (AdAdapter) declaredConstructor2.newInstance(f4720k.f4723b.get(), baseAdClassName, extras.build());
            C1101o c1101o2 = new C1101o(adAdapter2);
            Runnable runnable2 = new Runnable() { // from class: wg1
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubRewardedVideoManager.m3623q(AdAdapter.this);
                }
            };
            this.f4729h.postDelayed(runnable2, adTimeoutMillis.intValue());
            this.f4730i.put(adUnitId, runnable2);
            adAdapter2.load(c1101o2);
            adAdapter2.m3770H(c1101o2);
            adAdapter2.m3768c();
            this.f4725d.m1664q(adUnitId, adAdapter2);
            return;
        } catch (Exception e3) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Couldn't create base ad with class name %s", baseAdClassName));
            m3626n(adUnitId, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        parseInt = 0;
        extras.currencyAmount(parseInt);
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Loading base ad with class name %s", baseAdClassName));
    }
}
