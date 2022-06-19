package com.pubmatic.sdk.rewardedad.renderer;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBDataType;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.base.POBAdRendererListener;
import com.pubmatic.sdk.common.cache.POBAdViewCacheService;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.p019ui.POBFullScreenActivityBackPressListener;
import com.pubmatic.sdk.common.p019ui.POBFullScreenActivityListener;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.rewardedad.C1961R;
import com.pubmatic.sdk.video.POBLogConstants;
import com.pubmatic.sdk.video.POBVastPlayerConfig;
import com.pubmatic.sdk.video.player.POBVastPlayer;
import com.pubmatic.sdk.video.renderer.POBVideoRenderer;
import com.pubmatic.sdk.video.renderer.POBVideoRendering;
import com.pubmatic.sdk.video.renderer.POBVideoRenderingListener;
import com.pubmatic.sdk.video.renderer.POBVideoSkipEventListener;
import com.pubmatic.sdk.webrendering.p021ui.POBFullScreenActivity;
import com.pubmatic.sdk.webrendering.p021ui.POBViewabilityTracker;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer.class */
public class POBRewardedAdRenderer implements POBRewardedAdRendering, POBAdRendererListener, POBVideoRenderingListener, POBVideoSkipEventListener, POBFullScreenActivityBackPressListener {

    /* renamed from: a */
    private POBVideoRendering f846a;

    /* renamed from: b */
    private POBRewardedAdRendererListener f847b;

    /* renamed from: c */
    private POBAdDescriptor f848c;

    /* renamed from: d */
    private int f849d;

    /* renamed from: e */
    private int f850e;

    /* renamed from: f */
    private Context f851f;

    /* renamed from: g */
    private POBFullScreenActivityListener f852g;

    /* renamed from: h */
    private View f853h;

    /* renamed from: i */
    private Activity f854i;

    /* renamed from: j */
    private boolean f855j;

    /* renamed from: k */
    private AlertDialog f856k;

    /* renamed from: l */
    private final View.OnClickListener f857l = new View$OnClickListenerC1965a();

    /* renamed from: m */
    private POBSkipConfirmationInfo f858m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRenderer$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer$a.class */
    public class View$OnClickListenerC1965a implements View.OnClickListener {
        View$OnClickListenerC1965a() {
            POBRewardedAdRenderer.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            POBRewardedAdRenderer pOBRewardedAdRenderer;
            boolean z;
            if (POBRewardedAdRenderer.this.f856k != null) {
                POBRewardedAdRenderer.this.f856k.dismiss();
                if (view.getId() == C1961R.C1964id.pob_skip_alert_resume_btn) {
                    pOBRewardedAdRenderer = POBRewardedAdRenderer.this;
                    z = false;
                } else if (view.getId() != C1961R.C1964id.pob_skip_alert_close_btn) {
                    return;
                } else {
                    pOBRewardedAdRenderer = POBRewardedAdRenderer.this;
                    z = true;
                }
                pOBRewardedAdRenderer.m720a(z);
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRenderer$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/renderer/POBRewardedAdRenderer$b.class */
    public class C1966b implements POBFullScreenActivityListener {
        C1966b() {
            POBRewardedAdRenderer.this = r4;
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBFullScreenActivityListener
        public void onCreate(Activity activity) {
            POBRewardedAdRenderer.this.f854i = activity;
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBFullScreenActivityListener
        public void onDestroy() {
            POBRewardedAdRenderer.this.m719b();
        }
    }

    public POBRewardedAdRenderer(Context context, int i, POBSkipConfirmationInfo pOBSkipConfirmationInfo) {
        this.f851f = context;
        this.f850e = i;
        this.f858m = pOBSkipConfirmationInfo;
    }

    /* renamed from: a */
    private POBVideoRenderer m725a(Context context, POBAdDescriptor pOBAdDescriptor, int i) {
        POBVastPlayer pOBVastPlayer = new POBVastPlayer(context, POBVastPlayerConfig.ConfigBuilder.createVastConfig(pOBAdDescriptor.getRawBid(), true, true, false, POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE));
        pOBVastPlayer.setDeviceInfo(POBInstanceProvider.getDeviceInfo(context.getApplicationContext()));
        pOBVastPlayer.setMaxWrapperThreshold(3);
        pOBVastPlayer.setLinearity(POBVastPlayer.Linearity.LINEAR);
        POBViewabilityTracker pOBViewabilityTracker = new POBViewabilityTracker(pOBVastPlayer);
        pOBVastPlayer.setSkipabilityEnabled(true);
        pOBVastPlayer.setEndCardSize(POBUtils.getInterstitialAdSize(context));
        POBVideoRenderer pOBVideoRenderer = new POBVideoRenderer(pOBVastPlayer, pOBViewabilityTracker, POBCommonConstants.INTERSTITIAL_PLACEMENT_TYPE);
        pOBVideoRenderer.setExpirationTimeout(i);
        pOBVideoRenderer.setMeasurementProvider(POBInstanceProvider.getSdkConfig().getVideoMeasurementProvider());
        return pOBVideoRenderer;
    }

    /* renamed from: a */
    private void m726a() {
        if (this.f847b != null && this.f849d == 0) {
            m716d();
            this.f847b.onAdInteractionStarted();
        }
        this.f849d++;
    }

    /* renamed from: a */
    private void m724a(POBAdDescriptor pOBAdDescriptor, View view) {
        this.f852g = new C1966b();
        ViewGroup viewGroup = pOBAdDescriptor.isVideo() ? (ViewGroup) view : null;
        if (viewGroup == null) {
            PMLog.warn("POBRewardedAdRenderer", POBLogConstants.MSG_CONTAINER_VIEW_ERROOR, new Object[0]);
            return;
        }
        POBAdViewCacheService.AdViewConfig adViewConfig = new POBAdViewCacheService.AdViewConfig(viewGroup, this.f852g);
        adViewConfig.setBackPressListener(this);
        POBInstanceProvider.getAdViewCacheService().storeAdView(Integer.valueOf(hashCode()), adViewConfig);
    }

    /* renamed from: a */
    public void m720a(boolean z) {
        POBVideoRendering pOBVideoRendering = this.f846a;
        if (pOBVideoRendering != null) {
            pOBVideoRendering.proceedAdSkip(z);
        }
    }

    /* renamed from: b */
    public void m719b() {
        int i = this.f849d - 1;
        this.f849d = i;
        POBRewardedAdRendererListener pOBRewardedAdRendererListener = this.f847b;
        if (pOBRewardedAdRendererListener == null || i != 0) {
            return;
        }
        pOBRewardedAdRendererListener.onAdInteractionStopped();
        destroy();
    }

    /* renamed from: c */
    private void m717c() {
        if (this.f855j) {
            Activity activity = this.f854i;
            if (activity == null) {
                return;
            }
            activity.finish();
            return;
        }
        Activity activity2 = this.f854i;
        if (activity2 == null || activity2.isFinishing() || this.f854i.isDestroyed()) {
            return;
        }
        if (this.f856k == null) {
            View inflate = LayoutInflater.from(this.f854i).inflate(C1961R.layout.layout_rewardedad_skip_alert, (ViewGroup) null);
            AlertDialog.Builder cancelable = new AlertDialog.Builder(this.f854i, C1961R.style.SkipAlertDialog).setView(inflate).setCancelable(false);
            ((TextView) inflate.findViewById(C1961R.C1964id.pob_skip_alert_title_txt)).setText(this.f858m.getTitle());
            ((TextView) inflate.findViewById(C1961R.C1964id.pob_skip_alert_msg_txt)).setText(this.f858m.getMessage());
            Button button = (Button) inflate.findViewById(C1961R.C1964id.pob_skip_alert_resume_btn);
            button.setText(this.f858m.getResumeText());
            button.setOnClickListener(this.f857l);
            Button button2 = (Button) inflate.findViewById(C1961R.C1964id.pob_skip_alert_close_btn);
            button2.setText(this.f858m.getCloseText());
            button2.setOnClickListener(this.f857l);
            this.f856k = cancelable.create();
        }
        this.f856k.show();
    }

    /* renamed from: d */
    private void m716d() {
        POBVideoRendering pOBVideoRendering = this.f846a;
        if (pOBVideoRendering != null) {
            pOBVideoRendering.invalidateExpiration();
        }
    }

    @Override // com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendering
    public void destroy() {
        POBVideoRendering pOBVideoRendering = this.f846a;
        if (pOBVideoRendering != null) {
            pOBVideoRendering.destroy();
            this.f846a = null;
        }
        this.f847b = null;
        AlertDialog alertDialog = this.f856k;
        if (alertDialog != null) {
            if (alertDialog.isShowing()) {
                this.f856k.dismiss();
            }
            this.f856k = null;
        }
        POBInstanceProvider.getAdViewCacheService().popStoredAdView(Integer.valueOf(hashCode()));
        this.f852g = null;
        Intent intent = new Intent(POBFullScreenActivity.ACTIONS.POB_CLOSE.name());
        intent.putExtra(POBFullScreenActivity.RENDERER_IDENTIFIER, hashCode());
        POBFullScreenActivity.sendBroadcast(this.f851f, intent);
        this.f854i = null;
    }

    @Override // com.pubmatic.sdk.video.renderer.POBVideoRenderingListener
    public void enableBackPress() {
        POBFullScreenActivity.enableBackPress(this.f851f, hashCode());
    }

    @Override // com.pubmatic.sdk.video.renderer.POBVideoRenderingListener
    public void notifyAdEvent(POBDataType.POBVideoAdEventType pOBVideoAdEventType) {
        if (pOBVideoAdEventType == POBDataType.POBVideoAdEventType.COMPLETE) {
            this.f855j = true;
        }
        POBRewardedAdRendererListener pOBRewardedAdRendererListener = this.f847b;
        if (pOBRewardedAdRendererListener != null) {
            pOBRewardedAdRendererListener.onAdEventOccurred(pOBVideoAdEventType);
        }
    }

    @Override // com.pubmatic.sdk.video.renderer.POBVideoSkipEventListener
    public void onAdAboutToSkip() {
        m717c();
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdExpired() {
        POBRewardedAdRendererListener pOBRewardedAdRendererListener = this.f847b;
        if (pOBRewardedAdRendererListener != null) {
            pOBRewardedAdRendererListener.onAdExpired();
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdInteractionStarted() {
        m726a();
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdInteractionStopped() {
        m719b();
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdReadyToRefresh(int i) {
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdRender(View view, POBAdDescriptor pOBAdDescriptor) {
        this.f853h = view;
        POBRewardedAdRendererListener pOBRewardedAdRendererListener = this.f847b;
        if (pOBRewardedAdRendererListener != null) {
            pOBRewardedAdRendererListener.onAdRender(pOBAdDescriptor);
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdRenderingFailed(POBError pOBError) {
        this.f855j = true;
        POBRewardedAdRendererListener pOBRewardedAdRendererListener = this.f847b;
        if (pOBRewardedAdRendererListener != null) {
            pOBRewardedAdRendererListener.onAdRenderingFailed(pOBError);
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onAdUnload() {
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBFullScreenActivityBackPressListener
    public void onBackPressed() {
        m717c();
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onLeavingApplication() {
        POBRewardedAdRendererListener pOBRewardedAdRendererListener = this.f847b;
        if (pOBRewardedAdRendererListener != null) {
            pOBRewardedAdRendererListener.onLeavingApplication();
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onReadyToExecuteTrackers() {
    }

    @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
    public void onRenderAdClick() {
        POBRewardedAdRendererListener pOBRewardedAdRendererListener = this.f847b;
        if (pOBRewardedAdRendererListener != null) {
            pOBRewardedAdRendererListener.onAdClicked();
        }
    }

    @Override // com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendering
    public void renderAd(POBAdDescriptor pOBAdDescriptor) {
        PMLog.debug("POBRewardedAdRenderer", POBLogConstants.MSG_RENDERING_ON_START, new Object[0]);
        this.f848c = pOBAdDescriptor;
        this.f846a = m725a(this.f851f, pOBAdDescriptor, this.f850e);
        if (pOBAdDescriptor.getRenderableContent() != null) {
            this.f846a.setAdRendererListener(this);
            this.f846a.setVideoRenderingListener(this);
            this.f846a.setVideoSkipEventListener(this);
            this.f846a.renderAd(pOBAdDescriptor);
            return;
        }
        POBRewardedAdRendererListener pOBRewardedAdRendererListener = this.f847b;
        if (pOBRewardedAdRendererListener == null) {
            return;
        }
        pOBRewardedAdRendererListener.onAdRenderingFailed(new POBError(1009, POBLogConstants.MSG_RENDERING_FAILED_ERROR + pOBAdDescriptor));
    }

    @Override // com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendering
    public void setAdRendererListener(POBRewardedAdRendererListener pOBRewardedAdRendererListener) {
        this.f847b = pOBRewardedAdRendererListener;
    }

    @Override // com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendering
    public void show() {
        View view;
        PMLog.info("POBRewardedAdRenderer", POBLogConstants.MSG_SHOW_REWARDED_AD, new Object[0]);
        POBAdDescriptor pOBAdDescriptor = this.f848c;
        if (pOBAdDescriptor == null || (view = this.f853h) == null) {
            return;
        }
        m724a(pOBAdDescriptor, view);
        if (POBInstanceProvider.getAdViewCacheService().getStoredAdView(Integer.valueOf(hashCode())) != null) {
            POBFullScreenActivity.startFullScreenActivity(this.f851f, this.f848c.isVideo(), hashCode());
            m726a();
            return;
        }
        String str = POBLogConstants.MSG_REWARDED_AD_SHOW_ERROR + this.f848c;
        PMLog.error("POBRewardedAdRenderer", str, new Object[0]);
        POBRewardedAdRendererListener pOBRewardedAdRendererListener = this.f847b;
        if (pOBRewardedAdRendererListener == null) {
            return;
        }
        pOBRewardedAdRendererListener.onAdRenderingFailed(new POBError(1009, str));
    }
}
