package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.mopub.common.DataKeys;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinInterstitial.class */
public class AppLovinInterstitial extends CustomEventInterstitial implements AppLovinAdLoadListener, AppLovinAdDisplayListener, AppLovinAdClickListener, AppLovinAdVideoPlaybackListener {

    /* renamed from: h */
    public static final String f34030h = "AppLovinInterstitial";

    /* renamed from: i */
    public static final Handler f34031i = new Handler(Looper.getMainLooper());

    /* renamed from: j */
    public static final Map<String, Queue<AppLovinAd>> f34032j = new HashMap();

    /* renamed from: k */
    public static final Object f34033k = new Object();

    /* renamed from: l */
    public static String f34034l;

    /* renamed from: b */
    public AppLovinSdk f34035b;

    /* renamed from: c */
    public CustomEventInterstitial.CustomEventInterstitialListener f34036c;

    /* renamed from: d */
    public Context f34037d;

    /* renamed from: e */
    public boolean f34038e;

    /* renamed from: f */
    public AppLovinAd f34039f;

    /* renamed from: g */
    public AppLovinAdapterConfiguration f34040g = new AppLovinAdapterConfiguration();

    /* renamed from: com.mopub.mobileads.AppLovinInterstitial$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinInterstitial$a.class */
    public class RunnableC8763a implements Runnable {
        public RunnableC8763a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MoPubLog.log(AppLovinInterstitial.m4430d(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, AppLovinInterstitial.f34030h);
                if (AppLovinInterstitial.this.f34036c != null) {
                    AppLovinInterstitial.this.f34036c.onInterstitialLoaded();
                }
            } catch (Throwable th) {
                MoPubLog.log(AppLovinInterstitial.m4430d(), MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Unable to notify listener of successful ad load", th);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.AppLovinInterstitial$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinInterstitial$b.class */
    public class RunnableC8764b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f34042a;

        public RunnableC8764b(int i) {
            this.f34042a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MoPubLog.log(AppLovinInterstitial.m4430d(), MoPubLog.AdapterLogEvent.LOAD_FAILED, AppLovinInterstitial.f34030h, Integer.valueOf(AppLovinAdapterConfiguration.getMoPubErrorCode(this.f34042a).getIntCode()), AppLovinAdapterConfiguration.getMoPubErrorCode(this.f34042a));
                if (AppLovinInterstitial.this.f34036c != null) {
                    AppLovinInterstitial.this.f34036c.onInterstitialFailed(AppLovinAdapterConfiguration.getMoPubErrorCode(this.f34042a));
                }
            } catch (Throwable th) {
                MoPubLog.log(AppLovinInterstitial.m4430d(), MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Unable to notify listener of failure to receive ad", th);
            }
        }
    }

    /* renamed from: a */
    public static AppLovinAd m4433a(String str) {
        AppLovinAd appLovinAd;
        synchronized (f34033k) {
            Queue<AppLovinAd> queue = f34032j.get(str);
            appLovinAd = null;
            if (queue != null) {
                appLovinAd = null;
                if (!queue.isEmpty()) {
                    appLovinAd = queue.poll();
                }
            }
        }
        return appLovinAd;
    }

    /* renamed from: a */
    public static AppLovinSdk m4437a(Context context) {
        if (AppLovinAdapterConfiguration.m4447a(context)) {
            return AppLovinSdk.getInstance(context);
        }
        String sdkKey = AppLovinAdapterConfiguration.getSdkKey();
        return !TextUtils.isEmpty(sdkKey) ? AppLovinSdk.getInstance(sdkKey, new AppLovinSdkSettings(), context) : null;
    }

    /* renamed from: a */
    public static void m4436a(AppLovinAd appLovinAd, String str) {
        synchronized (f34033k) {
            Queue<AppLovinAd> queue = f34032j.get(str);
            Queue<AppLovinAd> queue2 = queue;
            if (queue == null) {
                queue2 = new LinkedList<>();
                f34032j.put(str, queue2);
            }
            queue2.offer(appLovinAd);
        }
    }

    /* renamed from: a */
    public static void m4434a(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            f34031i.post(runnable);
        }
    }

    /* renamed from: d */
    public static String m4430d() {
        return f34034l;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.CLICKED, f34030h);
        CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener = this.f34036c;
        if (customEventInterstitialListener != null) {
            customEventInterstitialListener.onInterstitialClicked();
        }
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, f34030h);
        CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener = this.f34036c;
        if (customEventInterstitialListener != null) {
            customEventInterstitialListener.onInterstitialShown();
        }
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener = this.f34036c;
        if (customEventInterstitialListener != null) {
            customEventInterstitialListener.onInterstitialDismissed();
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        if (this.f34038e) {
            this.f34039f = appLovinAd;
        } else {
            m4436a(appLovinAd, f34034l);
        }
        m4434a(new RunnableC8763a());
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        m4434a(new RunnableC8764b(i));
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Map<String, Object> map, Map<String, String> map2) {
        if (map2 == null || map2.isEmpty()) {
            MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.CUSTOM, f34030h, "No serverExtras provided");
            if (customEventInterstitialListener != null) {
                customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                return;
            }
            return;
        }
        AppLovinPrivacySettings.setHasUserConsent(MoPub.canCollectPersonalInformation(), context);
        if (AppLovinSdk.VERSION_CODE >= 720 || (context instanceof Activity)) {
            this.f34036c = customEventInterstitialListener;
            this.f34037d = context;
            AppLovinSdk a = m4437a(context);
            this.f34035b = a;
            if (a == null) {
                MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.CUSTOM, f34030h, "AppLovinSdk instance is null likely because no AppLovin SDK key is available. Failing ad request.");
                MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f34030h, Integer.valueOf(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.getIntCode()), MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                if (customEventInterstitialListener != null) {
                    customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                    return;
                }
                return;
            }
            a.setMediationProvider("mopub");
            this.f34035b.setPluginVersion("MoPub-9.12.2.0");
            String str = map2.get(DataKeys.ADM_KEY);
            boolean z = !TextUtils.isEmpty(str);
            MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.CUSTOM, f34030h, "Requesting AppLovin interstitial with serverExtras: " + map2 + ", localExtras: " + map + " and has adMarkup: " + z);
            this.f34040g.setCachedInitializationParameters(context, map2);
            if (z) {
                this.f34038e = true;
                this.f34035b.getAdService().loadNextAdForAdToken(str, this);
                MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f34030h);
                return;
            }
            String str2 = map2.get("zone_id");
            if (TextUtils.isEmpty(str2)) {
                str2 = "";
            }
            f34034l = str2;
            AppLovinAd a2 = m4433a(str2);
            if (a2 != null) {
                MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.CUSTOM, f34030h, "Found preloaded ad for zone: {" + f34034l + "}");
                adReceived(a2);
            } else if (!TextUtils.isEmpty(f34034l)) {
                this.f34035b.getAdService().loadNextAdForZoneId(f34034l, this);
                MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f34030h);
            } else {
                this.f34035b.getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, this);
                MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f34030h);
            }
        } else {
            MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.CUSTOM, f34030h, "Unable to request AppLovin interstitial. Invalid context provided.");
            MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f34030h, Integer.valueOf(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.getIntCode()), MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            if (customEventInterstitialListener != null) {
                customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0020, code lost:
        if (r8 != null) goto L_0x002d;
     */
    @Override // com.mopub.mobileads.CustomEventInterstitial
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void showInterstitial() {
        /*
            r7 = this;
            java.lang.String r0 = m4430d()
            com.mopub.common.logging.MoPubLog$AdapterLogEvent r1 = com.mopub.common.logging.MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            java.lang.String r5 = com.mopub.mobileads.AppLovinInterstitial.f34030h
            r3[r4] = r5
            com.mopub.common.logging.MoPubLog.log(r0, r1, r2)
            r0 = r7
            boolean r0 = r0.f34038e
            if (r0 == 0) goto L_0x0026
            r0 = r7
            com.applovin.sdk.AppLovinAd r0 = r0.f34039f
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0026
            goto L_0x002d
        L_0x0026:
            java.lang.String r0 = com.mopub.mobileads.AppLovinInterstitial.f34034l
            com.applovin.sdk.AppLovinAd r0 = m4433a(r0)
            r8 = r0
        L_0x002d:
            r0 = r8
            if (r0 == 0) goto L_0x005c
            r0 = r7
            com.applovin.sdk.AppLovinSdk r0 = r0.f34035b
            r1 = r7
            android.content.Context r1 = r1.f34037d
            com.applovin.adview.AppLovinInterstitialAdDialog r0 = com.applovin.adview.AppLovinInterstitialAd.create(r0, r1)
            r9 = r0
            r0 = r9
            r1 = r7
            r0.setAdDisplayListener(r1)
            r0 = r9
            r1 = r7
            r0.setAdClickListener(r1)
            r0 = r9
            r1 = r7
            r0.setAdVideoPlaybackListener(r1)
            r0 = r9
            r1 = r8
            r0.showAndRender(r1)
            goto L_0x00ac
        L_0x005c:
            java.lang.String r0 = m4430d()
            com.mopub.common.logging.MoPubLog$AdapterLogEvent r1 = com.mopub.common.logging.MoPubLog.AdapterLogEvent.SHOW_FAILED
            r2 = 3
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            java.lang.String r5 = com.mopub.mobileads.AppLovinInterstitial.f34030h
            r3[r4] = r5
            r3 = r2
            r4 = 1
            com.mopub.mobileads.MoPubErrorCode r5 = com.mopub.mobileads.MoPubErrorCode.NETWORK_NO_FILL
            int r5 = r5.getIntCode()
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r3[r4] = r5
            r3 = r2
            r4 = 2
            com.mopub.mobileads.MoPubErrorCode r5 = com.mopub.mobileads.MoPubErrorCode.NETWORK_NO_FILL
            r3[r4] = r5
            com.mopub.common.logging.MoPubLog.log(r0, r1, r2)
            java.lang.String r0 = m4430d()
            com.mopub.common.logging.MoPubLog$AdapterLogEvent r1 = com.mopub.common.logging.MoPubLog.AdapterLogEvent.CUSTOM
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            java.lang.String r5 = com.mopub.mobileads.AppLovinInterstitial.f34030h
            r3[r4] = r5
            r3 = r2
            r4 = 1
            java.lang.String r5 = "Failed to show an AppLovin interstitial before one was loaded"
            r3[r4] = r5
            com.mopub.common.logging.MoPubLog.log(r0, r1, r2)
            r0 = r7
            com.mopub.mobileads.CustomEventInterstitial$CustomEventInterstitialListener r0 = r0.f34036c
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00ac
            r0 = r8
            com.mopub.mobileads.MoPubErrorCode r1 = com.mopub.mobileads.MoPubErrorCode.NETWORK_NO_FILL
            r0.onInterstitialFailed(r1)
        L_0x00ac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.AppLovinInterstitial.showInterstitial():void");
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.CUSTOM, f34030h, "Interstitial video playback began");
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        MoPubLog.log(m4430d(), MoPubLog.AdapterLogEvent.CUSTOM, f34030h, "Interstitial video playback ended at playback percent: ", Double.valueOf(d));
    }
}
