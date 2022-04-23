package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.IntentActions;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.common.util.JavaScriptWebViewCallbacks;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.WebViewCacheService;
import com.mopub.mraid.MraidBridge;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.MraidWebViewDebugListener;
import com.mopub.mraid.PlacementType;
import com.mopub.mraid.RewardedMraidController;
import p131c.p421j.p424b.AbstractActivityC6649d;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedMraidActivity.class */
public class RewardedMraidActivity extends MraidActivity {

    /* renamed from: g */
    public RewardedMraidController f34205g;

    /* renamed from: h */
    public MraidWebViewDebugListener f34206h;

    /* renamed from: com.mopub.mobileads.RewardedMraidActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedMraidActivity$a.class */
    public class C8810a implements MraidController.MraidListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f34207a;

        public C8810a(boolean z) {
            this.f34207a = z;
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onClose() {
            RewardedMraidActivity.this.f34205g.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_CLOSE.getJavascript());
            RewardedMraidActivity.this.finish();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onExpand() {
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onFailedToLoad() {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "RewardedMraidActivity failed to load. Finishing the activity");
            RewardedMraidActivity rewardedMraidActivity = RewardedMraidActivity.this;
            BaseBroadcastReceiver.broadcastAction(rewardedMraidActivity, rewardedMraidActivity.m20195a().longValue(), IntentActions.ACTION_INTERSTITIAL_FAIL);
            RewardedMraidActivity.this.finish();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onLoaded(View view) {
            RewardedMraidActivity.this.f34205g.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getJavascript());
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onOpen() {
            if (this.f34207a) {
                RewardedMraidActivity.this.f34205g.showPlayableCloseButton();
            }
            RewardedMraidActivity rewardedMraidActivity = RewardedMraidActivity.this;
            BaseBroadcastReceiver.broadcastAction(rewardedMraidActivity, rewardedMraidActivity.m20195a().longValue(), IntentActions.ACTION_INTERSTITIAL_CLICK);
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Finishing the activity due to a problem: " + moPubErrorCode);
            RewardedMraidActivity.this.finish();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onResize(boolean z) {
        }
    }

    /* renamed from: com.mopub.mobileads.RewardedMraidActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedMraidActivity$b.class */
    public class C8811b implements MraidController.MraidWebViewCacheListener {
        public C8811b() {
        }

        @Override // com.mopub.mraid.MraidController.MraidWebViewCacheListener
        public void onReady(MraidBridge.MraidWebView mraidWebView, ExternalViewabilitySessionManager externalViewabilitySessionManager) {
            if (externalViewabilitySessionManager != null) {
                RewardedMraidActivity.this.f34183f = externalViewabilitySessionManager;
                return;
            }
            RewardedMraidActivity rewardedMraidActivity = RewardedMraidActivity.this;
            rewardedMraidActivity.f34183f = new ExternalViewabilitySessionManager(rewardedMraidActivity);
            RewardedMraidActivity rewardedMraidActivity2 = RewardedMraidActivity.this;
            rewardedMraidActivity2.f34183f.createDisplaySession(rewardedMraidActivity2, mraidWebView, true);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static Intent m4288a(Context context, AdReport adReport, long j, int i, boolean z) {
        Intent intent = new Intent(context, RewardedMraidActivity.class);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        intent.putExtra(DataKeys.AD_REPORT_KEY, adReport);
        intent.putExtra(DataKeys.REWARDED_AD_DURATION_KEY, i);
        intent.putExtra(DataKeys.SHOULD_REWARD_ON_CLICK_KEY, z);
        return intent;
    }

    public static void preRenderHtml(Interstitial interstitial, Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Long l, AdReport adReport, int i) {
        Preconditions.checkNotNull(interstitial);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(customEventInterstitialListener);
        Preconditions.checkNotNull(l);
        MraidActivity.m4303a(interstitial, customEventInterstitialListener, AbstractActivityC6649d.m20193a(adReport), new MraidBridge.MraidWebView(context), l, new RewardedMraidController(context, adReport, PlacementType.INTERSTITIAL, i, l.longValue()));
    }

    public static void start(Context context, AdReport adReport, long j, int i, boolean z) {
        try {
            Intents.startActivity(context, m4288a(context, adReport, j, i, z));
        } catch (IntentNotResolvableException e) {
            Log.d("RewardedMraidActivity", "RewardedMraidActivity.class not found. Did you declare RewardedMraidActivity in your manifest?");
        }
    }

    @Override // com.mopub.mobileads.MraidActivity, p131c.p421j.p424b.AbstractActivityC6649d
    public View getAdView() {
        Intent intent = getIntent();
        String c = m20190c();
        boolean z = true;
        if (TextUtils.isEmpty(c)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "RewardedMraidActivity received a null HTML body. Finishing the activity.");
            finish();
            return new View(this);
        } else if (m20195a() == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "RewardedMraidActivity received a null broadcast id. Finishing the activity.");
            finish();
            return new View(this);
        } else {
            int intExtra = intent.getIntExtra(DataKeys.REWARDED_AD_DURATION_KEY, 30);
            boolean booleanExtra = intent.getBooleanExtra(DataKeys.SHOULD_REWARD_ON_CLICK_KEY, false);
            Long a = m20195a();
            WebViewCacheService.Config config = null;
            if (a != null) {
                config = WebViewCacheService.popWebViewConfig(a);
            }
            if (config == null || !(config.getController() instanceof RewardedMraidController)) {
                this.f34205g = new RewardedMraidController(this, this.f20532a, PlacementType.INTERSTITIAL, intExtra, m20195a().longValue());
                z = false;
            } else {
                this.f34205g = (RewardedMraidController) config.getController();
            }
            this.f34205g.setDebugListener(this.f34206h);
            this.f34205g.setMraidListener(new C8810a(booleanExtra));
            if (z) {
                this.f34183f = config.getViewabilityManager();
            } else {
                this.f34205g.fillContent(c, new C8811b());
            }
            this.f34205g.onShow(this);
            return this.f34205g.getAdContainer();
        }
    }

    @Deprecated
    @VisibleForTesting
    public RewardedMraidController getRewardedMraidController() {
        return this.f34205g;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        RewardedMraidController rewardedMraidController = this.f34205g;
        if (rewardedMraidController == null || rewardedMraidController.backButtonEnabled()) {
            super.onBackPressed();
        }
    }

    @Override // com.mopub.mobileads.MraidActivity, p131c.p421j.p424b.AbstractActivityC6649d, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RewardedMraidController rewardedMraidController = this.f34205g;
        if (rewardedMraidController != null) {
            rewardedMraidController.create(this, m20192b());
        }
    }

    @Override // com.mopub.mobileads.MraidActivity, p131c.p421j.p424b.AbstractActivityC6649d, android.app.Activity
    public void onDestroy() {
        RewardedMraidController rewardedMraidController = this.f34205g;
        if (rewardedMraidController != null) {
            rewardedMraidController.destroy();
        }
        super.onDestroy();
    }

    @Override // com.mopub.mobileads.MraidActivity, android.app.Activity
    public void onPause() {
        RewardedMraidController rewardedMraidController = this.f34205g;
        if (rewardedMraidController != null) {
            rewardedMraidController.pause();
        }
        super.onPause();
    }

    @Override // com.mopub.mobileads.MraidActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        RewardedMraidController rewardedMraidController = this.f34205g;
        if (rewardedMraidController != null) {
            rewardedMraidController.resume();
        }
    }

    @Override // com.mopub.mobileads.MraidActivity
    @VisibleForTesting
    public void setDebugListener(MraidWebViewDebugListener mraidWebViewDebugListener) {
        this.f34206h = mraidWebViewDebugListener;
        RewardedMraidController rewardedMraidController = this.f34205g;
        if (rewardedMraidController != null) {
            rewardedMraidController.setDebugListener(mraidWebViewDebugListener);
        }
    }
}
