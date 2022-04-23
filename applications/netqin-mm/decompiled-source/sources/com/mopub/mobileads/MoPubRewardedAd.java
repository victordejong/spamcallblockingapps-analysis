package com.mopub.mobileads;

import android.app.Activity;
import android.os.Handler;
import com.mopub.common.DataKeys;
import com.mopub.common.LifecycleListener;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdTypeTranslator;
import com.mopub.mobileads.CustomEventInterstitial;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAd.class */
public abstract class MoPubRewardedAd extends CustomEventRewardedAd {

    /* renamed from: a */
    public boolean f34127a;

    /* renamed from: b */
    public String f34128b;

    /* renamed from: c */
    public int f34129c;

    /* renamed from: d */
    public String f34130d;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener.class */
    public class MoPubRewardedAdListener implements CustomEventInterstitial.CustomEventInterstitialListener {

        /* renamed from: a */
        public final Class<? extends MoPubRewardedAd> f34131a;

        /* renamed from: b */
        public final Runnable f34132b;

        /* renamed from: c */
        public Handler f34133c = new Handler();

        /* renamed from: com.mopub.mobileads.MoPubRewardedAd$MoPubRewardedAdListener$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener$a.class */
        public class RunnableC8780a implements Runnable {
            public RunnableC8780a(MoPubRewardedAd moPubRewardedAd) {
            }

            @Override // java.lang.Runnable
            public void run() {
                MoPubLog.log(MoPubLog.AdLogEvent.EXPIRED, "time in seconds");
                MoPubRewardedAdListener.this.onInterstitialFailed(MoPubErrorCode.EXPIRED);
            }
        }

        public MoPubRewardedAdListener(Class<? extends MoPubRewardedAd> cls) {
            Preconditions.checkNotNull(cls);
            this.f34131a = cls;
            this.f34132b = new RunnableC8780a(MoPubRewardedAd.this);
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialClicked() {
            MoPubLog.log(MoPubLog.AdLogEvent.CLICKED, new Object[0]);
            MoPubRewardedVideoManager.onRewardedVideoClicked(this.f34131a, MoPubRewardedAd.this.mo4330a());
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialDismissed() {
            MoPubLog.log(MoPubLog.AdLogEvent.WILL_DISAPPEAR, new Object[0]);
            MoPubRewardedVideoManager.onRewardedVideoClosed(this.f34131a, MoPubRewardedAd.this.mo4330a());
            MoPubRewardedAd.this.mo4328d();
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialFailed(MoPubErrorCode moPubErrorCode) {
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            this.f34133c.removeCallbacks(this.f34132b);
            if (C8781a.f34136a[moPubErrorCode.ordinal()] != 1) {
                MoPubRewardedVideoManager.onRewardedVideoLoadFailure(this.f34131a, MoPubRewardedAd.this.mo4330a(), moPubErrorCode);
            } else {
                MoPubRewardedVideoManager.onRewardedVideoPlaybackError(this.f34131a, MoPubRewardedAd.this.mo4330a(), moPubErrorCode);
            }
        }

        public void onInterstitialImpression() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialLoaded() {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
            MoPubRewardedAd.this.f34127a = true;
            if (AdTypeTranslator.CustomEventType.isMoPubSpecific(this.f34131a.getName())) {
                this.f34133c.postDelayed(this.f34132b, 14400000L);
            }
            MoPubRewardedVideoManager.onRewardedVideoLoadSuccess(this.f34131a, MoPubRewardedAd.this.mo4330a());
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialShown() {
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
            this.f34133c.removeCallbacks(this.f34132b);
            MoPubRewardedVideoManager.onRewardedVideoStarted(this.f34131a, MoPubRewardedAd.this.mo4330a());
        }

        public void onLeaveApplication() {
            MoPubLog.log(MoPubLog.AdLogEvent.WILL_LEAVE_APPLICATION, new Object[0]);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedAd$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAd$a.class */
    public static /* synthetic */ class C8781a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34136a;

        static {
            int[] iArr = new int[MoPubErrorCode.values().length];
            f34136a = iArr;
            try {
                iArr[MoPubErrorCode.VIDEO_PLAYBACK_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: a */
    public boolean mo4366a(Activity activity, Map<String, Object> map, Map<String, String> map2) throws Exception {
        return false;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: b */
    public LifecycleListener mo4364b() {
        return null;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: c */
    public void mo4329c(Activity activity, Map<String, Object> map, Map<String, String> map2) throws Exception {
        Preconditions.checkNotNull(activity, "activity cannot be null");
        Preconditions.checkNotNull(map, "localExtras cannot be null");
        Preconditions.checkNotNull(map2, "serverExtras cannot be null");
        Object obj = map.get(DataKeys.REWARDED_AD_CURRENCY_NAME_KEY);
        if (obj instanceof String) {
            this.f34128b = (String) obj;
        } else {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "No currency name specified for rewarded video. Using the default name.");
            this.f34128b = "";
        }
        Object obj2 = map.get(DataKeys.REWARDED_AD_CURRENCY_AMOUNT_STRING_KEY);
        if (obj2 instanceof String) {
            try {
                this.f34129c = Integer.parseInt((String) obj2);
            } catch (NumberFormatException e) {
                MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
                MoPubLog.log(adLogEvent, "Unable to convert currency amount: " + obj2 + ". Using the default reward amount: 0");
                this.f34129c = 0;
            }
        } else {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "No currency amount specified for rewarded ad. Using the default reward amount: 0");
            this.f34129c = 0;
        }
        if (this.f34129c < 0) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Negative currency amount specified for rewarded ad. Using the default reward amount: 0");
            this.f34129c = 0;
        }
        Object obj3 = map.get(DataKeys.AD_UNIT_ID_KEY);
        if (obj3 instanceof String) {
            this.f34130d = (String) obj3;
        } else {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Unable to set ad unit for rewarded ad.");
        }
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: c */
    public boolean mo4363c() {
        return this.f34127a;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: d */
    public void mo4328d() {
        this.f34127a = false;
    }

    /* renamed from: f */
    public int m4362f() {
        return this.f34129c;
    }

    /* renamed from: g */
    public String m4361g() {
        return this.f34128b;
    }
}
