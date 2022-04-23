package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.mopub.common.DataKeys;
import com.mopub.common.LifecycleListener;
import com.mopub.common.MoPub;
import com.mopub.common.MoPubReward;
import com.mopub.common.logging.MoPubLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinRewardedVideo.class */
public class AppLovinRewardedVideo extends CustomEventRewardedVideo implements AppLovinAdLoadListener, AppLovinAdDisplayListener, AppLovinAdClickListener, AppLovinAdVideoPlaybackListener, AppLovinAdRewardListener {

    /* renamed from: k */
    public static final String f34044k = "AppLovinRewardedVideo";

    /* renamed from: l */
    public static final Map<String, AppLovinIncentivizedInterstitial> f34045l = new HashMap();

    /* renamed from: a */
    public boolean f34046a;

    /* renamed from: b */
    public AppLovinSdk f34047b;

    /* renamed from: c */
    public AppLovinIncentivizedInterstitial f34048c;

    /* renamed from: d */
    public Activity f34049d;

    /* renamed from: e */
    public boolean f34050e;

    /* renamed from: f */
    public MoPubReward f34051f;

    /* renamed from: g */
    public boolean f34052g;

    /* renamed from: h */
    public AppLovinAd f34053h;

    /* renamed from: i */
    public String f34054i = "";

    /* renamed from: j */
    public AppLovinAdapterConfiguration f34055j = new AppLovinAdapterConfiguration();

    /* renamed from: com.mopub.mobileads.AppLovinRewardedVideo$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinRewardedVideo$a.class */
    public class RunnableC8765a implements Runnable {
        public RunnableC8765a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MoPubRewardedVideoManager.onRewardedVideoLoadSuccess(AppLovinRewardedVideo.this.getClass(), AppLovinRewardedVideo.this.mo4330a());
                MoPubLog.log(AppLovinRewardedVideo.this.mo4330a(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, AppLovinRewardedVideo.f34044k);
            } catch (Throwable th) {
                MoPubLog.log(AppLovinRewardedVideo.this.mo4330a(), MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Unable to notify listener of successful ad load.", th);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.AppLovinRewardedVideo$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinRewardedVideo$b.class */
    public class RunnableC8766b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f34057a;

        public RunnableC8766b(int i) {
            this.f34057a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MoPubRewardedVideoManager.onRewardedVideoLoadFailure(AppLovinRewardedVideo.this.getClass(), AppLovinRewardedVideo.this.mo4330a(), AppLovinAdapterConfiguration.getMoPubErrorCode(this.f34057a));
                MoPubLog.log(AppLovinRewardedVideo.this.mo4330a(), MoPubLog.AdapterLogEvent.LOAD_FAILED, AppLovinRewardedVideo.f34044k, Integer.valueOf(AppLovinAdapterConfiguration.getMoPubErrorCode(this.f34057a).getIntCode()), AppLovinAdapterConfiguration.getMoPubErrorCode(this.f34057a));
            } catch (Throwable th) {
                MoPubLog.log(AppLovinRewardedVideo.this.mo4330a(), MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Unable to notify listener of failure to receive ad.", th);
            }
        }
    }

    /* renamed from: a */
    public static AppLovinIncentivizedInterstitial m4428a(String str, AppLovinSdk appLovinSdk) {
        AppLovinIncentivizedInterstitial appLovinIncentivizedInterstitial;
        if (f34045l.containsKey(str)) {
            appLovinIncentivizedInterstitial = f34045l.get(str);
        } else {
            AppLovinIncentivizedInterstitial create = ("".equals(str) || "token".equals(str)) ? AppLovinIncentivizedInterstitial.create(appLovinSdk) : AppLovinIncentivizedInterstitial.create(str, appLovinSdk);
            f34045l.put(str, create);
            appLovinIncentivizedInterstitial = create;
        }
        return appLovinIncentivizedInterstitial;
    }

    /* renamed from: a */
    public static AppLovinSdk m4429a(Context context) {
        if (AppLovinAdapterConfiguration.m4447a(context)) {
            return AppLovinSdk.getInstance(context);
        }
        String sdkKey = AppLovinAdapterConfiguration.getSdkKey();
        return !TextUtils.isEmpty(sdkKey) ? AppLovinSdk.getInstance(sdkKey, new AppLovinSdkSettings(), context) : null;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: a */
    public String mo4330a() {
        return this.f34054i;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: a */
    public boolean mo4366a(Activity activity, Map<String, Object> map, Map<String, String> map2) throws Exception {
        AppLovinPrivacySettings.setHasUserConsent(MoPub.canCollectPersonalInformation(), activity.getApplicationContext());
        MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.CUSTOM, f34044k, "Initializing AppLovin rewarded video...");
        if (this.f34046a) {
            return false;
        }
        AppLovinSdk a = m4429a(activity);
        this.f34047b = a;
        if (a == null) {
            MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.CUSTOM, f34044k, "AppLovinSdk instance is null likely because no AppLovin SDK key is available. Failing ad request.");
            MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f34044k, Integer.valueOf(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.getIntCode()), MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            MoPubRewardedVideoManager.onRewardedVideoLoadFailure(AppLovinRewardedVideo.class, mo4330a(), MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return false;
        }
        a.setMediationProvider("mopub");
        this.f34047b.setPluginVersion("MoPub-9.12.2.0");
        this.f34046a = true;
        return true;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        MoPubRewardedVideoManager.onRewardedVideoClicked(AppLovinRewardedVideo.class, mo4330a());
        MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.CLICKED, f34044k);
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        MoPubRewardedVideoManager.onRewardedVideoStarted(AppLovinRewardedVideo.class, mo4330a());
        MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, f34044k);
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        if (this.f34050e && this.f34051f != null) {
            String a = mo4330a();
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
            String str = f34044k;
            MoPubLog.log(a, adapterLogEvent, str, "Rewarded: " + this.f34051f.getAmount() + " " + this.f34051f.getLabel());
            MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.SHOULD_REWARD, f34044k, Integer.valueOf(this.f34051f.getAmount()), this.f34051f.getLabel());
            MoPubRewardedVideoManager.onRewardedVideoCompleted(AppLovinRewardedVideo.class, mo4330a(), this.f34051f);
        }
        MoPubRewardedVideoManager.onRewardedVideoClosed(AppLovinRewardedVideo.class, mo4330a());
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        String a = mo4330a();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str = f34044k;
        MoPubLog.log(a, adapterLogEvent, str, "Rewarded video did load ad: " + appLovinAd.getAdIdNumber());
        if (this.f34052g) {
            this.f34053h = appLovinAd;
        }
        this.f34049d.runOnUiThread(new RunnableC8765a());
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: b */
    public LifecycleListener mo4364b() {
        return null;
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: c */
    public void mo4329c(Activity activity, Map<String, Object> map, Map<String, String> map2) throws Exception {
        String str;
        this.f34049d = activity;
        if (map2 == null || map2.isEmpty()) {
            MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.CUSTOM, f34044k, "No serverExtras provided");
            MoPubRewardedVideoManager.onRewardedVideoLoadFailure(AppLovinRewardedVideo.class, mo4330a(), MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        String str2 = map2.get(DataKeys.ADM_KEY);
        boolean z = !TextUtils.isEmpty(str2);
        MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.CUSTOM, f34044k, "Requesting AppLovin rewarded video with serverExtras: " + map2 + ", localExtras: " + map + " and has ad markup: " + z);
        this.f34055j.setCachedInitializationParameters(activity, map2);
        if (z) {
            str = "token";
        } else {
            String str3 = map2.get("zone_id");
            this.f34054i = str3;
            str = !TextUtils.isEmpty(str3) ? this.f34054i : "";
        }
        AppLovinIncentivizedInterstitial a = m4428a(str, this.f34047b);
        this.f34048c = a;
        if (z) {
            this.f34052g = true;
            this.f34047b.getAdService().loadNextAdForAdToken(str2, this);
            MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f34044k);
            return;
        }
        a.preload(this);
        MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f34044k);
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: d */
    public void mo4328d() {
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    /* renamed from: f */
    public boolean mo4392f() {
        boolean z = true;
        boolean z2 = true;
        if (this.f34052g) {
            if (this.f34053h == null) {
                z2 = false;
            }
            return z2;
        }
        AppLovinIncentivizedInterstitial appLovinIncentivizedInterstitial = this.f34048c;
        if (appLovinIncentivizedInterstitial == null || !appLovinIncentivizedInterstitial.isAdReadyToDisplay()) {
            z = false;
        }
        return z;
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        this.f34049d.runOnUiThread(new RunnableC8766b(i));
    }

    @Override // com.mopub.mobileads.CustomEventRewardedVideo
    /* renamed from: g */
    public void mo4391g() {
        MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, f34044k);
        if (mo4392f()) {
            this.f34050e = false;
            this.f34051f = null;
            if (this.f34052g) {
                this.f34048c.show(this.f34053h, this.f34049d, this, this, this, this);
            } else {
                this.f34048c.show(this.f34049d, (String) null, this, this, this, this);
            }
        } else {
            MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.SHOW_FAILED, f34044k, Integer.valueOf(MoPubErrorCode.NETWORK_NO_FILL.getIntCode()), MoPubErrorCode.NETWORK_NO_FILL);
            MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.CUSTOM, f34044k, "Failed to show an AppLovin rewarded video before one was loaded");
            MoPubRewardedVideoManager.onRewardedVideoPlaybackError(AppLovinRewardedVideo.class, mo4330a(), MoPubErrorCode.VIDEO_PLAYBACK_ERROR);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userDeclinedToViewAd(AppLovinAd appLovinAd) {
        MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.CUSTOM, f34044k, "User declined to view rewarded video");
        MoPubRewardedVideoManager.onRewardedVideoClosed(AppLovinRewardedVideo.class, mo4330a());
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userOverQuota(AppLovinAd appLovinAd, Map map) {
        String a = mo4330a();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str = f34044k;
        MoPubLog.log(a, adapterLogEvent, str, "Rewarded video validation request for ad did exceed quota with response: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardRejected(AppLovinAd appLovinAd, Map map) {
        String a = mo4330a();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str = f34044k;
        MoPubLog.log(a, adapterLogEvent, str, "Rewarded video validation request was rejected with response: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardVerified(AppLovinAd appLovinAd, Map map) {
        String str = (String) map.get("currency");
        int parseDouble = (int) Double.parseDouble((String) map.get(AppLovinEventParameters.REVENUE_AMOUNT));
        String a = mo4330a();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str2 = f34044k;
        MoPubLog.log(a, adapterLogEvent, str2, "Verified " + parseDouble + " " + str);
        this.f34051f = MoPubReward.success(str, parseDouble);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
        String a = mo4330a();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str = f34044k;
        MoPubLog.log(a, adapterLogEvent, str, "Rewarded video validation request for ad failed with error code: " + i);
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        MoPubLog.log(mo4330a(), MoPubLog.AdapterLogEvent.CUSTOM, f34044k, "Rewarded video playback began");
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        String a = mo4330a();
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str = f34044k;
        MoPubLog.log(a, adapterLogEvent, str, "Rewarded video playback ended at playback percent: " + d);
        this.f34050e = z;
    }
}
