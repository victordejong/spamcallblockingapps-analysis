package com.mopub.mobileads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import androidx.media.AudioAttributesCompat$a;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.UriMediaItem;
import androidx.media2.widget.VideoView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.common.internal.ImagesContract;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.IntentActions;
import com.mopub.common.VideoEvent;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.mobileads.VastWebView;
import com.mopub.mobileads.factories.VideoViewFactory;
import com.mopub.network.TrackingRequest;
import ev;
import hv;
import java.util.concurrent.Executor;
@Mockable
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewController.class */
public class VastVideoViewController extends BaseVideoViewController {
    public static final String CURRENT_POSITION = "current_position";
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON = 5000;
    public static final int MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON = 16000;
    public static final String RESUMED_VAST_CONFIG = "resumed_vast_config";
    public static final String VAST_VIDEO_CONFIG = "vast_video_config";
    public static final int WEBVIEW_PADDING = 16;

    /* renamed from: A */
    public boolean f4916A;

    /* renamed from: B */
    public boolean f4917B;

    /* renamed from: C */
    public boolean f4918C;

    /* renamed from: D */
    public final Activity f4919D;

    /* renamed from: E */
    public final Bundle f4920E;

    /* renamed from: F */
    public final Bundle f4921F;
    public VastVideoGradientStripWidget bottomGradientStripWidget;
    public VastVideoCloseButtonWidget closeButtonWidget;

    /* renamed from: e */
    public final VideoView f4922e;

    /* renamed from: f */
    public final ev f4923f;

    /* renamed from: h */
    public int f4925h;

    /* renamed from: i */
    public VastCompanionAdConfig f4926i;

    /* renamed from: j */
    public final VastVideoConfig f4927j;

    /* renamed from: k */
    public final VastIconConfig f4928k;

    /* renamed from: l */
    public final ExternalViewabilitySessionManager f4929l;

    /* renamed from: m */
    public final ImageView f4930m;

    /* renamed from: n */
    public final View f4931n;

    /* renamed from: o */
    public final View f4932o;

    /* renamed from: p */
    public final View f4933p;
    public VastVideoProgressBarWidget progressBarWidget;

    /* renamed from: q */
    public final VastVideoViewProgressRunnable f4934q;

    /* renamed from: r */
    public final VastVideoViewCountdownRunnable f4935r;
    public RadialCountdownWidget radialCountdownWidget;

    /* renamed from: s */
    public final View.OnTouchListener f4936s;

    /* renamed from: t */
    public final VastVideoCtaButtonWidget f4937t;
    public VastVideoGradientStripWidget topGradientStripWidget;

    /* renamed from: u */
    public VastVideoBlurLastVideoFrameTask f4938u;

    /* renamed from: w */
    public boolean f4940w;

    /* renamed from: x */
    public boolean f4941x;

    /* renamed from: y */
    public boolean f4942y;

    /* renamed from: g */
    public final PlayerCallback f4924g = new PlayerCallback();

    /* renamed from: v */
    public MediaMetadataRetriever f4939v = new MediaMetadataRetriever();

    /* renamed from: z */
    public int f4943z = 5000;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(ok1 ok1Var) {
            this();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$PlayerCallback.class */
    public final class PlayerCallback extends ev.i0 {

        /* renamed from: a */
        public boolean f4944a;

        public PlayerCallback() {
            VastVideoViewController.this = r4;
        }

        /* renamed from: a */
        public final String m3538a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "UNKNOWN" : "PLAYER_STATE_ERROR" : "PLAYER_STATE_PLAYING" : "PLAYER_STATE_PAUSED" : "PLAYER_STATE_IDLE";
        }

        public final boolean getComplete() {
            return this.f4944a;
        }

        public void onPlaybackCompleted(SessionPlayer sessionPlayer) {
            qk1.m744c(sessionPlayer, "player");
            VastVideoViewController.this.m3539r();
            VastVideoViewController.updateCountdown$default(VastVideoViewController.this, false, 1, null);
            VastVideoViewController.this.setComplete(true);
            VastVideoViewController.this.m3700m(false);
            if (VastVideoViewController.this.getVastVideoConfig().isRewarded()) {
                VastVideoViewController.this.m3703a(IntentActions.ACTION_REWARDED_AD_COMPLETE);
            }
            if (!VastVideoViewController.this.getVideoError() && VastVideoViewController.this.getVastVideoConfig().getRemainingProgressTrackerCount() == 0) {
                VastVideoViewController.this.f4929l.recordVideoEvent(VideoEvent.AD_COMPLETE, VastVideoViewController.this.getCurrentPosition());
                VastVideoConfig vastVideoConfig = VastVideoViewController.this.getVastVideoConfig();
                Context m3701c = VastVideoViewController.this.m3701c();
                qk1.m745b(m3701c, "context");
                vastVideoConfig.handleComplete(m3701c, VastVideoViewController.this.getCurrentPosition());
            }
            VastVideoViewController.this.f4922e.setVisibility(4);
            VastVideoViewController.this.getProgressBarWidget().setVisibility(8);
            VastVideoViewController.this.getIconView().setVisibility(8);
            VastVideoViewController.this.getTopGradientStripWidget().m3545a();
            VastVideoViewController.this.getBottomGradientStripWidget().m3545a();
            VastVideoViewController.this.getCtaButtonWidget().m3549a();
            VastVideoViewController.this.getCloseButtonWidget().m3560e();
            VastCompanionAdConfig vastCompanionAdConfig = VastVideoViewController.this.f4926i;
            if (vastCompanionAdConfig == null) {
                if (VastVideoViewController.this.getBlurredLastVideoFrameImageView().getDrawable() == null) {
                    return;
                }
                VastVideoViewController.this.getBlurredLastVideoFrameImageView().setVisibility(0);
                return;
            }
            Context m3701c2 = VastVideoViewController.this.m3701c();
            qk1.m745b(m3701c2, "context");
            Resources resources = m3701c2.getResources();
            qk1.m745b(resources, "context.resources");
            (resources.getConfiguration().orientation == 1 ? VastVideoViewController.this.getPortraitCompanionAdView() : VastVideoViewController.this.getLandscapeCompanionAdView()).setVisibility(0);
            Context m3701c3 = VastVideoViewController.this.m3701c();
            qk1.m745b(m3701c3, "context");
            vastCompanionAdConfig.handleImpression(m3701c3, VastVideoViewController.this.getDuration());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onPlayerStateChanged(SessionPlayer sessionPlayer, int i) {
            ExternalViewabilitySessionManager externalViewabilitySessionManager;
            VideoEvent videoEvent;
            qk1.m744c(sessionPlayer, "player");
            VastVideoViewController.super.onPlayerStateChanged(sessionPlayer, i);
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                        MoPubLog.log(sdkLogEvent, "Player state changed to " + m3538a(i));
                        return;
                    }
                    VastVideoViewController.this.f4929l.recordVideoEvent(VideoEvent.RECORD_AD_ERROR, VastVideoViewController.this.getCurrentPosition());
                    VastVideoViewController.this.m3539r();
                    VastVideoViewController.this.updateCountdown(true);
                    VastVideoViewController.this.m3699n(false);
                    VastVideoViewController.this.setVideoError(true);
                    VastVideoConfig vastVideoConfig = VastVideoViewController.this.getVastVideoConfig();
                    Context m3701c = VastVideoViewController.this.m3701c();
                    qk1.m745b(m3701c, "context");
                    vastVideoConfig.handleError(m3701c, VastErrorCode.GENERAL_LINEAR_AD_ERROR, VastVideoViewController.this.getCurrentPosition());
                    return;
                } else if (!VastVideoViewController.this.f4929l.hasImpressionOccurred()) {
                    VastVideoViewController.this.f4929l.trackImpression();
                    return;
                } else {
                    externalViewabilitySessionManager = VastVideoViewController.this.f4929l;
                    videoEvent = VideoEvent.AD_RESUMED;
                }
            } else if (!VastVideoViewController.this.f4929l.hasImpressionOccurred()) {
                return;
            } else {
                externalViewabilitySessionManager = VastVideoViewController.this.f4929l;
                videoEvent = VideoEvent.AD_PAUSED;
            }
            externalViewabilitySessionManager.recordVideoEvent(videoEvent, VastVideoViewController.this.getCurrentPosition());
        }

        public void onSeekCompleted(SessionPlayer sessionPlayer, long j) {
            qk1.m744c(sessionPlayer, "player");
            VastVideoViewController.this.getMediaPlayer().F();
        }

        public final void setComplete(boolean z) {
            this.f4944a = z;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$a.class */
    public static final class View$OnTouchListenerC1109a implements View.OnTouchListener {
        public View$OnTouchListenerC1109a() {
            VastVideoViewController.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            qk1.m745b(motionEvent, "event");
            if (motionEvent.getAction() != 1) {
                return true;
            }
            VastVideoViewController vastVideoViewController = VastVideoViewController.this;
            vastVideoViewController.setClosing(!vastVideoViewController.f4942y || VastVideoViewController.this.isComplete());
            VastVideoViewController.this.handleExitTrackers();
            VastVideoViewController.this.m3702b().onFinish();
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$b.class */
    public static final class C1110b implements VastWebView.AbstractC1114a {

        /* renamed from: a */
        public final /* synthetic */ VastIconConfig f4947a;

        /* renamed from: b */
        public final /* synthetic */ VastVideoViewController f4948b;

        public C1110b(VastIconConfig vastIconConfig, VastVideoViewController vastVideoViewController) {
            this.f4947a = vastIconConfig;
            this.f4948b = vastVideoViewController;
        }

        @Override // com.mopub.mobileads.VastWebView.AbstractC1114a
        public final void onVastWebViewClick() {
            TrackingRequest.makeVastTrackingHttpRequest(this.f4947a.getClickTrackingUris(), null, Integer.valueOf(this.f4948b.getCurrentPosition()), this.f4948b.getNetworkMediaFileUrl(), this.f4948b.m3701c());
            VastIconConfig vastIconConfig = this.f4948b.getVastIconConfig();
            if (vastIconConfig != null) {
                Context m3701c = this.f4948b.m3701c();
                qk1.m745b(m3701c, "context");
                vastIconConfig.handleClick(m3701c, null, this.f4948b.getVastVideoConfig().getDspCreativeId());
            }
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$c.class */
    public static final class View$OnTouchListenerC1111c implements View.OnTouchListener {
        public View$OnTouchListenerC1111c() {
            VastVideoViewController.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            qk1.m745b(motionEvent, "event");
            if (motionEvent.getAction() == 1) {
                if (!VastVideoViewController.this.getShouldAllowClose() && !VastVideoViewController.this.f4942y) {
                    return true;
                }
                VastVideoViewController.this.f4929l.recordVideoEvent(VideoEvent.AD_CLICK_THRU, VastVideoViewController.this.getCurrentPosition());
                VastVideoViewController vastVideoViewController = VastVideoViewController.this;
                vastVideoViewController.setClosing(!vastVideoViewController.f4942y || VastVideoViewController.this.isComplete());
                VastVideoViewController.this.m3703a(IntentActions.ACTION_FULLSCREEN_CLICK);
                VastVideoConfig vastVideoConfig = VastVideoViewController.this.getVastVideoConfig();
                Activity activity = VastVideoViewController.this.getActivity();
                Integer valueOf = Integer.valueOf(VastVideoViewController.this.getDuration());
                valueOf.intValue();
                if (!VastVideoViewController.this.isComplete()) {
                    valueOf = null;
                }
                vastVideoConfig.handleClickForResult(activity, valueOf != null ? valueOf.intValue() : VastVideoViewController.this.getCurrentPosition(), 1);
                return true;
            }
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$d.class */
    public static final class RunnableC1112d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ev f4950a;

        /* renamed from: b */
        public final /* synthetic */ VastVideoViewController f4951b;

        /* renamed from: c */
        public final /* synthetic */ Executor f4952c;

        public RunnableC1112d(ev evVar, VastVideoViewController vastVideoViewController, Executor executor) {
            this.f4950a = evVar;
            this.f4951b = vastVideoViewController;
            this.f4952c = executor;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String diskMediaFileUrl;
            this.f4951b.f4929l.onVideoPrepared(this.f4950a.m());
            this.f4951b.m3542o();
            this.f4951b.getMediaPlayer().w0(1.0f);
            if (this.f4951b.f4926i == null && (diskMediaFileUrl = this.f4951b.getVastVideoConfig().getDiskMediaFileUrl()) != null) {
                VastVideoViewController vastVideoViewController = this.f4951b;
                vastVideoViewController.prepareBlurredLastVideoFrame(vastVideoViewController.getBlurredLastVideoFrameImageView(), diskMediaFileUrl);
            }
            this.f4951b.getProgressBarWidget().calibrateAndMakeVisible((int) this.f4950a.m(), this.f4951b.getShowCloseButtonDelay());
            this.f4951b.getRadialCountdownWidget().calibrateAndMakeVisible(this.f4951b.getShowCloseButtonDelay());
            this.f4951b.setCalibrationDone(true);
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$e */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$e.class */
    public static final class C1113e implements VastWebView.AbstractC1114a {

        /* renamed from: b */
        public final /* synthetic */ VastCompanionAdConfig f4954b;

        public C1113e(VastCompanionAdConfig vastCompanionAdConfig) {
            VastVideoViewController.this = r4;
            this.f4954b = vastCompanionAdConfig;
        }

        @Override // com.mopub.mobileads.VastWebView.AbstractC1114a
        public final void onVastWebViewClick() {
            VastVideoViewController.this.m3703a(IntentActions.ACTION_FULLSCREEN_CLICK);
            VastVideoViewController.this.setClosing(true);
            String clickThroughUrl = this.f4954b.getClickThroughUrl();
            if (!(clickThroughUrl == null || clickThroughUrl.length() == 0)) {
                TrackingRequest.makeVastTrackingHttpRequest(this.f4954b.getClickTrackers(), null, Integer.valueOf(VastVideoViewController.this.getCurrentPosition()), null, VastVideoViewController.this.m3701c());
                VastCompanionAdConfig vastCompanionAdConfig = this.f4954b;
                Context m3701c = VastVideoViewController.this.m3701c();
                qk1.m745b(m3701c, "context");
                vastCompanionAdConfig.handleClick(m3701c, 1, null, VastVideoViewController.this.getVastVideoConfig().getDspCreativeId());
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0475  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public VastVideoViewController(android.app.Activity r11, android.os.Bundle r12, android.os.Bundle r13, long r14, com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener r16) {
        /*
            Method dump skipped, instructions count: 1197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastVideoViewController.<init>(android.app.Activity, android.os.Bundle, android.os.Bundle, long, com.mopub.mobileads.BaseVideoViewController$BaseVideoViewControllerListener):void");
    }

    @VisibleForTesting
    public static /* synthetic */ void blurLastVideoFrameTask$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void blurredLastVideoFrameImageView$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void bottomGradientStripWidget$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void clickThroughListener$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void closeButtonWidget$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void ctaButtonWidget$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void iconView$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isCalibrationDone$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isClosing$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isComplete$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void landscapeCompanionAdView$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void mediaMetadataRetriever$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void portraitCompanionAdView$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void progressBarWidget$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void radialCountdownWidget$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void shouldAllowClose$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void showCloseButtonDelay$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void topGradientStripWidget$annotations() {
    }

    public static /* synthetic */ void updateCountdown$default(VastVideoViewController vastVideoViewController, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                z = false;
            }
            vastVideoViewController.updateCountdown(z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateCountdown");
    }

    @VisibleForTesting
    public static /* synthetic */ void vastIconConfig$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void vastVideoConfig$annotations() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    public boolean backButtonEnabled() {
        return getShouldAllowClose();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x009d, code lost:
        if (r7 != null) goto L7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.view.View] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View createCompanionAdView(com.mopub.mobileads.VastVideoConfig r7, int r8, int r9) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "$this$createCompanionAdView"
            p000.qk1.m744c(r0, r1)
            r0 = r7
            r1 = r8
            com.mopub.mobileads.VastCompanionAdConfig r0 = r0.getVastCompanionAd(r1)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto La3
            android.widget.RelativeLayout r0 = new android.widget.RelativeLayout
            r1 = r0
            r2 = r6
            android.content.Context r2 = r2.m3701c()
            r1.<init>(r2)
            r11 = r0
            android.widget.RelativeLayout$LayoutParams r0 = new android.widget.RelativeLayout$LayoutParams
            r1 = r0
            r2 = -1
            r3 = -1
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r11
            r1 = 17
            r0.setGravity(r1)
            r0 = r6
            android.view.ViewGroup r0 = r0.getLayout()
            r1 = r11
            r2 = r7
            r0.addView(r1, r2)
            r0 = r6
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f4929l
            r7 = r0
            com.mopub.common.ViewabilityObstruction r0 = com.mopub.common.ViewabilityObstruction.OTHER
            r12 = r0
            r0 = r7
            r1 = r11
            r2 = r12
            r0.registerVideoObstruction(r1, r2)
            r0 = r6
            r1 = r10
            com.mopub.mobileads.VastWebView r0 = r0.createWebView(r1)
            r7 = r0
            r0 = r7
            r1 = r9
            r0.setVisibility(r1)
            android.widget.RelativeLayout$LayoutParams r0 = new android.widget.RelativeLayout$LayoutParams
            r1 = r0
            r2 = r10
            int r2 = r2.getWidth()
            r3 = 16
            int r2 = r2 + r3
            float r2 = (float) r2
            r3 = r6
            android.content.Context r3 = r3.m3701c()
            int r2 = com.mopub.common.util.Dips.dipsToIntPixels(r2, r3)
            r3 = r10
            int r3 = r3.getHeight()
            r4 = 16
            int r3 = r3 + r4
            float r3 = (float) r3
            r4 = r6
            android.content.Context r4 = r4.m3701c()
            int r3 = com.mopub.common.util.Dips.dipsToIntPixels(r3, r4)
            r1.<init>(r2, r3)
            r10 = r0
            r0 = r10
            r1 = 13
            r2 = -1
            r0.addRule(r1, r2)
            r0 = r11
            r1 = r7
            r2 = r10
            r0.addView(r1, r2)
            r0 = r6
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f4929l
            r1 = r7
            r2 = r12
            r0.registerVideoObstruction(r1, r2)
            r0 = r7
            if (r0 == 0) goto La3
            goto Lb4
        La3:
            android.view.View r0 = new android.view.View
            r1 = r0
            r2 = r6
            android.content.Context r2 = r2.m3701c()
            r1.<init>(r2)
            r7 = r0
            r0 = r7
            r1 = 4
            r0.setVisibility(r1)
        Lb4:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastVideoViewController.createCompanionAdView(com.mopub.mobileads.VastVideoConfig, int, int):android.view.View");
    }

    public VastWebView createWebView(VastCompanionAdConfig vastCompanionAdConfig) {
        qk1.m744c(vastCompanionAdConfig, "$this$createWebView");
        VastWebView m3537f = VastWebView.m3537f(m3701c(), vastCompanionAdConfig.getVastResource());
        qk1.m745b(m3537f, "it");
        m3537f.setVastWebViewClickListener(new C1113e(vastCompanionAdConfig));
        m3537f.setWebViewClient(new WebViewClient(vastCompanionAdConfig) { // from class: com.mopub.mobileads.VastVideoViewController$createWebView$$inlined$also$lambda$2
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                qk1.m744c(webView, Promotion.ACTION_VIEW);
                qk1.m744c(str, ImagesContract.URL);
                VastCompanionAdConfig vastCompanionAdConfig2 = VastVideoViewController.this.f4926i;
                if (vastCompanionAdConfig2 != null) {
                    Context m3701c = VastVideoViewController.this.m3701c();
                    qk1.m745b(m3701c, "context");
                    vastCompanionAdConfig2.handleClick(m3701c, 1, str, VastVideoViewController.this.getVastVideoConfig().getDspCreativeId());
                    return true;
                }
                return true;
            }
        });
        qk1.m745b(m3537f, "VastWebView.createView(c…}\n            }\n        }");
        return m3537f;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: d */
    public View mo3399d() {
        return this.f4922e;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: e */
    public void mo3543e(int i, int i2, Intent intent) {
        if (isClosing() && i == 1 && i2 == -1) {
            m3702b().onFinish();
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: f */
    public void mo3398f() {
        handleExitTrackers();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: g */
    public void mo3397g(Configuration configuration) {
        VastCompanionAdConfig vastCompanionAdConfig;
        qk1.m744c(configuration, "newConfig");
        Context m3701c = m3701c();
        qk1.m745b(m3701c, "context");
        Resources resources = m3701c.getResources();
        qk1.m745b(resources, "context.resources");
        int i = resources.getConfiguration().orientation;
        VastCompanionAdConfig vastCompanionAdConfig2 = null;
        if (getLandscapeCompanionAdView().getVisibility() == 0 || getPortraitCompanionAdView().getVisibility() == 0) {
            vastCompanionAdConfig = getVastVideoConfig().getVastCompanionAd(i);
            if (i == 1) {
                getLandscapeCompanionAdView().setVisibility(4);
                getPortraitCompanionAdView().setVisibility(0);
            } else {
                getLandscapeCompanionAdView().setVisibility(0);
                getPortraitCompanionAdView().setVisibility(4);
            }
        } else {
            vastCompanionAdConfig = null;
        }
        if (vastCompanionAdConfig != null) {
            Context m3701c2 = m3701c();
            qk1.m745b(m3701c2, "context");
            vastCompanionAdConfig.handleImpression(m3701c2, getDuration());
            vastCompanionAdConfig2 = vastCompanionAdConfig;
        }
        this.f4926i = vastCompanionAdConfig2;
    }

    public Activity getActivity() {
        return this.f4919D;
    }

    public VastVideoBlurLastVideoFrameTask getBlurLastVideoFrameTask() {
        return this.f4938u;
    }

    public ImageView getBlurredLastVideoFrameImageView() {
        return this.f4930m;
    }

    public VastVideoGradientStripWidget getBottomGradientStripWidget() {
        VastVideoGradientStripWidget vastVideoGradientStripWidget = this.bottomGradientStripWidget;
        if (vastVideoGradientStripWidget != null) {
            return vastVideoGradientStripWidget;
        }
        qk1.m738i("bottomGradientStripWidget");
        throw null;
    }

    public View.OnTouchListener getClickThroughListener() {
        return this.f4936s;
    }

    public VastVideoCloseButtonWidget getCloseButtonWidget() {
        VastVideoCloseButtonWidget vastVideoCloseButtonWidget = this.closeButtonWidget;
        if (vastVideoCloseButtonWidget != null) {
            return vastVideoCloseButtonWidget;
        }
        qk1.m738i("closeButtonWidget");
        throw null;
    }

    public VastVideoCtaButtonWidget getCtaButtonWidget() {
        return this.f4937t;
    }

    public int getCurrentPosition() {
        return (int) getMediaPlayer().l();
    }

    public int getDuration() {
        return (int) getMediaPlayer().m();
    }

    public Bundle getExtras() {
        return this.f4920E;
    }

    public View getIconView() {
        return this.f4933p;
    }

    public View getLandscapeCompanionAdView() {
        return this.f4931n;
    }

    public MediaMetadataRetriever getMediaMetadataRetriever() {
        return this.f4939v;
    }

    public ev getMediaPlayer() {
        return this.f4923f;
    }

    public String getNetworkMediaFileUrl() {
        return getVastVideoConfig().getNetworkMediaFileUrl();
    }

    public PlayerCallback getPlayerCallback() {
        return this.f4924g;
    }

    public View getPortraitCompanionAdView() {
        return this.f4932o;
    }

    public VastVideoProgressBarWidget getProgressBarWidget() {
        VastVideoProgressBarWidget vastVideoProgressBarWidget = this.progressBarWidget;
        if (vastVideoProgressBarWidget != null) {
            return vastVideoProgressBarWidget;
        }
        qk1.m738i("progressBarWidget");
        throw null;
    }

    public RadialCountdownWidget getRadialCountdownWidget() {
        RadialCountdownWidget radialCountdownWidget = this.radialCountdownWidget;
        if (radialCountdownWidget != null) {
            return radialCountdownWidget;
        }
        qk1.m738i("radialCountdownWidget");
        throw null;
    }

    public Bundle getSavedInstanceState() {
        return this.f4921F;
    }

    public boolean getShouldAllowClose() {
        return this.f4941x;
    }

    public int getShowCloseButtonDelay() {
        return this.f4943z;
    }

    public VastVideoGradientStripWidget getTopGradientStripWidget() {
        VastVideoGradientStripWidget vastVideoGradientStripWidget = this.topGradientStripWidget;
        if (vastVideoGradientStripWidget != null) {
            return vastVideoGradientStripWidget;
        }
        qk1.m738i("topGradientStripWidget");
        throw null;
    }

    public VastIconConfig getVastIconConfig() {
        return this.f4928k;
    }

    public VastVideoConfig getVastVideoConfig() {
        return this.f4927j;
    }

    public boolean getVideoError() {
        return this.f4918C;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: h */
    public void mo3396h() {
        super.mo3396h();
        VastVideoConfig vastVideoConfig = getVastVideoConfig();
        Context m3701c = m3701c();
        qk1.m745b(m3701c, "context");
        vastVideoConfig.handleImpression(m3701c, getCurrentPosition());
    }

    public void handleExitTrackers() {
        int currentPosition = getCurrentPosition();
        if (isComplete() || currentPosition >= getDuration()) {
            VastVideoConfig vastVideoConfig = getVastVideoConfig();
            Context m3701c = m3701c();
            qk1.m745b(m3701c, "context");
            vastVideoConfig.handleComplete(m3701c, getDuration());
        } else {
            this.f4929l.recordVideoEvent(VideoEvent.AD_SKIPPED, currentPosition);
            VastVideoConfig vastVideoConfig2 = getVastVideoConfig();
            Context m3701c2 = m3701c();
            qk1.m745b(m3701c2, "context");
            vastVideoConfig2.handleSkip(m3701c2, currentPosition);
        }
        VastVideoConfig vastVideoConfig3 = getVastVideoConfig();
        Context m3701c3 = m3701c();
        qk1.m745b(m3701c3, "context");
        vastVideoConfig3.handleClose(m3701c3, getDuration());
    }

    public void handleIconDisplay(int i) {
        int offsetMS;
        Integer durationMS;
        VastIconConfig vastIconConfig;
        VastIconConfig vastIconConfig2 = getVastIconConfig();
        if (vastIconConfig2 == null || i < (offsetMS = vastIconConfig2.getOffsetMS())) {
            return;
        }
        getIconView().setVisibility(0);
        String networkMediaFileUrl = getNetworkMediaFileUrl();
        if (networkMediaFileUrl != null && (vastIconConfig = getVastIconConfig()) != null) {
            Context m3701c = m3701c();
            qk1.m745b(m3701c, "context");
            vastIconConfig.handleImpression(m3701c, i, networkMediaFileUrl);
        }
        VastIconConfig vastIconConfig3 = getVastIconConfig();
        if (vastIconConfig3 == null || (durationMS = vastIconConfig3.getDurationMS()) == null || i < offsetMS + durationMS.intValue()) {
            return;
        }
        getIconView().setVisibility(8);
    }

    public void handleViewabilityQuartileEvent(String str) {
        qk1.m744c(str, "enumValue");
        VideoEvent valueOf = VideoEvent.valueOf(str);
        if (valueOf != null) {
            this.f4929l.recordVideoEvent(valueOf, getCurrentPosition());
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: i */
    public void mo3395i() {
        m3539r();
        this.f4929l.endSession();
        m3703a(IntentActions.ACTION_FULLSCREEN_DISMISS);
    }

    public boolean isCalibrationDone() {
        return this.f4916A;
    }

    public boolean isClosing() {
        return this.f4917B;
    }

    public boolean isComplete() {
        return this.f4940w;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    @SuppressLint({"RestrictedApi", "VisibleForTests"})
    /* renamed from: j */
    public void mo3394j() {
        m3539r();
        this.f4925h = getCurrentPosition();
        getMediaPlayer().E();
        getMediaPlayer().c0().m2420a();
        if (!isComplete()) {
            VastVideoConfig vastVideoConfig = getVastVideoConfig();
            Context m3701c = m3701c();
            qk1.m745b(m3701c, "context");
            vastVideoConfig.handlePause(m3701c, this.f4925h);
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: k */
    public void mo3393k() {
        if (!this.f4929l.isTracking()) {
            this.f4929l.startSession();
        }
        m3540q();
        if (this.f4925h > 0) {
            qk1.m745b(getMediaPlayer().n0(this.f4925h, 3), "mediaPlayer.seekTo(seeke…MediaPlayer.SEEK_CLOSEST)");
        } else if (!isComplete()) {
            getMediaPlayer().F();
        }
        if (this.f4925h == -1 || isComplete()) {
            return;
        }
        VastVideoConfig vastVideoConfig = getVastVideoConfig();
        Context m3701c = m3701c();
        qk1.m745b(m3701c, "context");
        vastVideoConfig.handleResume(m3701c, this.f4925h);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: l */
    public void mo3392l(Bundle bundle) {
        qk1.m744c(bundle, "outState");
        bundle.putInt(CURRENT_POSITION, this.f4925h);
        bundle.putSerializable(RESUMED_VAST_CONFIG, getVastVideoConfig());
    }

    /* renamed from: o */
    public final void m3542o() {
        int duration = getDuration();
        if (getVastVideoConfig().isRewarded()) {
            setShowCloseButtonDelay(duration);
            return;
        }
        if (duration < 16000) {
            setShowCloseButtonDelay(duration);
        }
        try {
            Integer skipOffsetMillis = getVastVideoConfig().getSkipOffsetMillis(duration);
            if (skipOffsetMillis == null) {
                return;
            }
            setShowCloseButtonDelay(skipOffsetMillis.intValue());
        } catch (NumberFormatException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Failed to parse skipoffset " + getVastVideoConfig().getSkipOffset());
        }
    }

    /* renamed from: p */
    public final VideoView m3541p(Context context, int i) {
        VideoView create = VideoViewFactory.Companion.create(context);
        Executor i2 = g8.i(context);
        hv.a aVar = new hv.a();
        aVar.b(0);
        aVar.d(1.0f);
        hv a = aVar.a();
        qk1.m745b(a, "PlaybackParams.Builder()….0f)\n            .build()");
        getMediaPlayer().v0(a);
        AudioAttributesCompat$a audioAttributesCompat$a = new AudioAttributesCompat$a();
        audioAttributesCompat$a.m6575e(1);
        audioAttributesCompat$a.m6578b(3);
        getMediaPlayer().p0(audioAttributesCompat$a.m6579a());
        getMediaPlayer().l0(i2, getPlayerCallback());
        create.removeView(create.getMediaControlView());
        create.setId(View.generateViewId());
        create.setPlayer(getMediaPlayer());
        create.setOnTouchListener(getClickThroughListener());
        ev mediaPlayer = getMediaPlayer();
        mediaPlayer.r0(new UriMediaItem.a(Uri.parse(getVastVideoConfig().getDiskMediaFileUrl())).e());
        mediaPlayer.k0().addListener(new RunnableC1112d(mediaPlayer, this, i2), i2);
        return create;
    }

    public void prepareBlurredLastVideoFrame(ImageView imageView, String str) {
        qk1.m744c(imageView, "blurredLastVideoFrameImageView");
        qk1.m744c(str, "diskMediaFileUrl");
        MediaMetadataRetriever mediaMetadataRetriever = getMediaMetadataRetriever();
        if (mediaMetadataRetriever != null) {
            VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask = new VastVideoBlurLastVideoFrameTask(mediaMetadataRetriever, imageView, getDuration());
            AsyncTasks.safeExecuteOnExecutor(vastVideoBlurLastVideoFrameTask, str);
            setBlurLastVideoFrameTask(vastVideoBlurLastVideoFrameTask);
        }
    }

    /* renamed from: q */
    public final void m3540q() {
        this.f4934q.startRepeating(50L);
        this.f4935r.startRepeating(250L);
    }

    /* renamed from: r */
    public final void m3539r() {
        this.f4934q.stop();
        this.f4935r.stop();
        VastVideoBlurLastVideoFrameTask blurLastVideoFrameTask = getBlurLastVideoFrameTask();
        if (blurLastVideoFrameTask == null || blurLastVideoFrameTask.getStatus() == AsyncTask.Status.FINISHED) {
            return;
        }
        blurLastVideoFrameTask.cancel(true);
    }

    public void setBlurLastVideoFrameTask(VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask) {
        this.f4938u = vastVideoBlurLastVideoFrameTask;
    }

    public void setBottomGradientStripWidget(VastVideoGradientStripWidget vastVideoGradientStripWidget) {
        qk1.m744c(vastVideoGradientStripWidget, "<set-?>");
        this.bottomGradientStripWidget = vastVideoGradientStripWidget;
    }

    public void setCalibrationDone(boolean z) {
        this.f4916A = z;
    }

    public void setCloseButtonWidget(VastVideoCloseButtonWidget vastVideoCloseButtonWidget) {
        qk1.m744c(vastVideoCloseButtonWidget, "<set-?>");
        this.closeButtonWidget = vastVideoCloseButtonWidget;
    }

    public void setClosing(boolean z) {
        this.f4917B = z;
    }

    public void setComplete(boolean z) {
        this.f4940w = z;
    }

    public void setMediaMetadataRetriever(MediaMetadataRetriever mediaMetadataRetriever) {
        this.f4939v = mediaMetadataRetriever;
    }

    public void setProgressBarWidget(VastVideoProgressBarWidget vastVideoProgressBarWidget) {
        qk1.m744c(vastVideoProgressBarWidget, "<set-?>");
        this.progressBarWidget = vastVideoProgressBarWidget;
    }

    public void setRadialCountdownWidget(RadialCountdownWidget radialCountdownWidget) {
        qk1.m744c(radialCountdownWidget, "<set-?>");
        this.radialCountdownWidget = radialCountdownWidget;
    }

    public void setShouldAllowClose(boolean z) {
        this.f4941x = z;
    }

    public void setShowCloseButtonDelay(int i) {
        this.f4943z = i;
    }

    public void setTopGradientStripWidget(VastVideoGradientStripWidget vastVideoGradientStripWidget) {
        qk1.m744c(vastVideoGradientStripWidget, "<set-?>");
        this.topGradientStripWidget = vastVideoGradientStripWidget;
    }

    public void setVideoError(boolean z) {
        this.f4918C = z;
    }

    public void updateCountdown(boolean z) {
        if (isCalibrationDone()) {
            getRadialCountdownWidget().updateCountdownProgress(getShowCloseButtonDelay(), getCurrentPosition());
        }
        if (z || getCurrentPosition() >= getShowCloseButtonDelay()) {
            getRadialCountdownWidget().setVisibility(8);
            getCloseButtonWidget().setVisibility(0);
            setShouldAllowClose(true);
            if (!this.f4942y && getVastVideoConfig().isRewarded()) {
                return;
            }
            getCtaButtonWidget().m3548b();
        }
    }

    public void updateProgressBar() {
        getProgressBarWidget().updateProgress(getCurrentPosition());
    }
}
