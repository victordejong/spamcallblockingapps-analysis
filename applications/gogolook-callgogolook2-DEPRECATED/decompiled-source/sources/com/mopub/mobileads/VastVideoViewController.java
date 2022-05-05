package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.ExternalViewabilitySession;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.IntentActions;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.BaseVideoViewController;
import com.mopub.mobileads.VastWebView;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import p081h.p430l.p433b.C10709j;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController.class */
public class VastVideoViewController extends BaseVideoViewController {
    public static final int WEBVIEW_PADDING = 16;

    /* renamed from: A */
    public boolean f8709A;

    /* renamed from: C */
    public int f8711C;

    /* renamed from: e */
    public final VastVideoConfig f8713e;
    @NonNull

    /* renamed from: f */
    public final VastVideoView f8714f;
    @NonNull

    /* renamed from: g */
    public ExternalViewabilitySessionManager f8715g;
    @NonNull

    /* renamed from: h */
    public VastVideoGradientStripWidget f8716h;
    @NonNull

    /* renamed from: i */
    public VastVideoGradientStripWidget f8717i;
    @NonNull

    /* renamed from: j */
    public ImageView f8718j;
    @NonNull

    /* renamed from: k */
    public VastVideoProgressBarWidget f8719k;
    @NonNull

    /* renamed from: l */
    public VastVideoRadialCountdownWidget f8720l;
    @NonNull

    /* renamed from: m */
    public VastVideoCtaButtonWidget f8721m;
    @NonNull

    /* renamed from: n */
    public VastVideoCloseButtonWidget f8722n;
    @Nullable

    /* renamed from: o */
    public VastCompanionAdConfig f8723o;
    @Nullable

    /* renamed from: p */
    public final C10709j f8724p;
    @NonNull

    /* renamed from: q */
    public final View f8725q;
    @NonNull

    /* renamed from: r */
    public final View f8726r;
    @NonNull

    /* renamed from: s */
    public final View f8727s;
    @NonNull

    /* renamed from: t */
    public final VastVideoViewProgressRunnable f8728t;
    @NonNull

    /* renamed from: u */
    public final VastVideoViewCountdownRunnable f8729u;
    @NonNull

    /* renamed from: v */
    public final View.OnTouchListener f8730v;

    /* renamed from: x */
    public boolean f8732x;

    /* renamed from: y */
    public int f8733y;

    /* renamed from: z */
    public boolean f8734z;

    /* renamed from: w */
    public int f8731w = 5000;

    /* renamed from: B */
    public boolean f8710B = false;

    /* renamed from: D */
    public boolean f8712D = false;

    /* renamed from: com.mopub.mobileads.VastVideoViewController$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$a.class */
    public class View$OnTouchListenerC3851a implements View.OnTouchListener {

        /* renamed from: a */
        public final /* synthetic */ Activity f8735a;

        public View$OnTouchListenerC3851a(Activity activity) {
            this.f8735a = activity;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 1 || !VastVideoViewController.this.m30408l()) {
                return true;
            }
            VastVideoViewController.this.f8715g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_CLICK_THRU, VastVideoViewController.this.getCurrentPosition());
            VastVideoViewController.this.f8712D = true;
            VastVideoViewController.this.m30572a(IntentActions.ACTION_INTERSTITIAL_CLICK);
            VastVideoViewController.this.f8713e.handleClickForResult(this.f8735a, VastVideoViewController.this.f8734z ? VastVideoViewController.this.f8711C : VastVideoViewController.this.getCurrentPosition(), 1);
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$b.class */
    public class C3852b implements MediaPlayer.OnPreparedListener {

        /* renamed from: a */
        public final /* synthetic */ VastVideoView f8737a;

        public C3852b(VastVideoView vastVideoView) {
            this.f8737a = vastVideoView;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            VastVideoViewController vastVideoViewController = VastVideoViewController.this;
            vastVideoViewController.f8711C = vastVideoViewController.f8714f.getDuration();
            VastVideoViewController.this.f8715g.onVideoPrepared(VastVideoViewController.this.getLayout(), VastVideoViewController.this.f8711C);
            VastVideoViewController.this.m30414i();
            if (VastVideoViewController.this.f8723o == null) {
                this.f8737a.prepareBlurredLastVideoFrame(VastVideoViewController.this.f8718j, VastVideoViewController.this.f8713e.getDiskMediaFileUrl());
            }
            VastVideoViewController.this.f8719k.calibrateAndMakeVisible(VastVideoViewController.this.getDuration(), VastVideoViewController.this.f8731w);
            VastVideoViewController.this.f8720l.calibrateAndMakeVisible(VastVideoViewController.this.f8731w);
            VastVideoViewController.this.f8710B = true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$c.class */
    public class C3853c implements MediaPlayer.OnCompletionListener {

        /* renamed from: a */
        public final /* synthetic */ VastVideoView f8739a;

        /* renamed from: b */
        public final /* synthetic */ Context f8740b;

        public C3853c(VastVideoView vastVideoView, Context context) {
            this.f8739a = vastVideoView;
            this.f8740b = context;
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            VastVideoViewController.this.m30402o();
            VastVideoViewController.this.m30410k();
            VastVideoViewController.this.m30571a(false);
            VastVideoViewController.this.f8734z = true;
            if (VastVideoViewController.this.f8713e.isRewardedVideo()) {
                VastVideoViewController.this.m30572a(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
            }
            if (!VastVideoViewController.this.f8709A && VastVideoViewController.this.f8713e.getRemainingProgressTrackerCount() == 0) {
                VastVideoViewController.this.f8715g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_COMPLETE, VastVideoViewController.this.getCurrentPosition());
                VastVideoViewController.this.f8713e.handleComplete(VastVideoViewController.this.m30570b(), VastVideoViewController.this.getCurrentPosition());
            }
            this.f8739a.setVisibility(4);
            VastVideoViewController.this.f8719k.setVisibility(8);
            VastVideoViewController.this.f8727s.setVisibility(8);
            VastVideoViewController.this.f8716h.m30441a();
            VastVideoViewController.this.f8717i.m30441a();
            VastVideoViewController.this.f8721m.m30445a();
            if (VastVideoViewController.this.f8723o != null) {
                if (this.f8740b.getResources().getConfiguration().orientation == 1) {
                    VastVideoViewController.this.f8726r.setVisibility(0);
                } else {
                    VastVideoViewController.this.f8725q.setVisibility(0);
                }
                VastVideoViewController.this.f8723o.m30496a(this.f8740b, VastVideoViewController.this.f8711C);
            } else if (VastVideoViewController.this.f8718j.getDrawable() != null) {
                VastVideoViewController.this.f8718j.setVisibility(0);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$d.class */
    public class C3854d implements MediaPlayer.OnErrorListener {
        public C3854d() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            VastVideoViewController.this.f8715g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.RECORD_AD_ERROR, VastVideoViewController.this.getCurrentPosition());
            VastVideoViewController.this.m30402o();
            VastVideoViewController.this.m30410k();
            VastVideoViewController.this.m30569b(false);
            VastVideoViewController.this.f8709A = true;
            VastVideoViewController.this.f8713e.handleError(VastVideoViewController.this.m30570b(), VastErrorCode.GENERAL_LINEAR_AD_ERROR, VastVideoViewController.this.getCurrentPosition());
            return false;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$e.class */
    public class View$OnTouchListenerC3855e implements View.OnTouchListener {
        public View$OnTouchListenerC3855e() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 1) {
                return true;
            }
            VastVideoViewController.this.f8712D = true;
            VastVideoViewController.this.m30412j();
            VastVideoViewController.this.m30573a().onFinish();
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$f */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$f.class */
    public class C3856f implements VastWebView.AbstractC3865a {

        /* renamed from: a */
        public final /* synthetic */ C10709j f8744a;

        /* renamed from: b */
        public final /* synthetic */ Context f8745b;

        public C3856f(C10709j jVar, Context context) {
            this.f8744a = jVar;
            this.f8745b = context;
        }

        @Override // com.mopub.mobileads.VastWebView.AbstractC3865a
        public void onVastWebViewClick() {
            TrackingRequest.makeVastTrackingHttpRequest(this.f8744a.m10857a(), null, Integer.valueOf(VastVideoViewController.this.getCurrentPosition()), VastVideoViewController.this.getNetworkMediaFileUrl(), this.f8745b);
            this.f8744a.m10855a(VastVideoViewController.this.m30570b(), (String) null, VastVideoViewController.this.f8713e.getDspCreativeId());
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$g */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$g.class */
    public class C3857g extends WebViewClient {

        /* renamed from: a */
        public final /* synthetic */ C10709j f8747a;

        public C3857g(C10709j jVar) {
            this.f8747a = jVar;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            this.f8747a.m10855a(VastVideoViewController.this.m30570b(), str, VastVideoViewController.this.f8713e.getDspCreativeId());
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$h */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$h.class */
    public class C3858h implements VastWebView.AbstractC3865a {

        /* renamed from: a */
        public final /* synthetic */ VastCompanionAdConfig f8749a;

        /* renamed from: b */
        public final /* synthetic */ Context f8750b;

        public C3858h(VastCompanionAdConfig vastCompanionAdConfig, Context context) {
            this.f8749a = vastCompanionAdConfig;
            this.f8750b = context;
        }

        @Override // com.mopub.mobileads.VastWebView.AbstractC3865a
        public void onVastWebViewClick() {
            VastVideoViewController.this.m30572a(IntentActions.ACTION_INTERSTITIAL_CLICK);
            TrackingRequest.makeVastTrackingHttpRequest(this.f8749a.getClickTrackers(), null, Integer.valueOf(VastVideoViewController.this.f8711C), null, this.f8750b);
            this.f8749a.m30495a(this.f8750b, 1, null, VastVideoViewController.this.f8713e.getDspCreativeId());
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$i */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$i.class */
    public class C3859i extends WebViewClient {

        /* renamed from: a */
        public final /* synthetic */ VastCompanionAdConfig f8752a;

        /* renamed from: b */
        public final /* synthetic */ Context f8753b;

        public C3859i(VastCompanionAdConfig vastCompanionAdConfig, Context context) {
            this.f8752a = vastCompanionAdConfig;
            this.f8753b = context;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            this.f8752a.m30495a(this.f8753b, 1, str, VastVideoViewController.this.f8713e.getDspCreativeId());
            return true;
        }
    }

    public VastVideoViewController(Activity activity, Bundle bundle, @Nullable Bundle bundle2, long j, BaseVideoViewController.BaseVideoViewControllerListener baseVideoViewControllerListener) throws IllegalStateException {
        super(activity, Long.valueOf(j), baseVideoViewControllerListener);
        this.f8733y = -1;
        Serializable serializable = bundle2 != null ? bundle2.getSerializable(VastVideoViewControllerTwo.RESUMED_VAST_CONFIG) : null;
        Serializable serializable2 = bundle.getSerializable(VastVideoViewControllerTwo.VAST_VIDEO_CONFIG);
        if (serializable != null && (serializable instanceof VastVideoConfig)) {
            this.f8713e = (VastVideoConfig) serializable;
            this.f8733y = bundle2.getInt(VastVideoViewControllerTwo.CURRENT_POSITION, -1);
        } else if (serializable2 == null || !(serializable2 instanceof VastVideoConfig)) {
            throw new IllegalStateException("VastVideoConfig is invalid");
        } else {
            this.f8713e = (VastVideoConfig) serializable2;
        }
        if (this.f8713e.getDiskMediaFileUrl() != null) {
            this.f8723o = this.f8713e.getVastCompanionAd(activity.getResources().getConfiguration().orientation);
            this.f8724p = this.f8713e.getVastIconConfig();
            this.f8730v = new View$OnTouchListenerC3851a(activity);
            getLayout().setBackgroundColor(-16777216);
            m30438a(activity, 4);
            this.f8714f = m30419e(activity, 0);
            this.f8714f.requestFocus();
            this.f8715g = new ExternalViewabilitySessionManager(activity);
            this.f8715g.createVideoSession(activity, this.f8714f, this.f8713e);
            this.f8715g.registerVideoObstruction(this.f8718j);
            this.f8725q = m30436a(activity, this.f8713e.getVastCompanionAd(2), 4);
            this.f8726r = m30436a(activity, this.f8713e.getVastCompanionAd(1), 4);
            m30426c(activity);
            m30425c(activity, 4);
            m30439a(activity);
            m30422d(activity, 4);
            this.f8727s = m30435a(activity, this.f8724p, 4);
            m30431b(activity);
            m30430b(activity, 8);
            Handler handler = new Handler(Looper.getMainLooper());
            this.f8728t = new VastVideoViewProgressRunnable(this, this.f8713e, handler);
            this.f8729u = new VastVideoViewCountdownRunnable(this, handler);
            return;
        }
        throw new IllegalStateException("VastVideoConfig does not have a video disk path");
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: a */
    public View m30436a(@NonNull Context context, @Nullable VastCompanionAdConfig vastCompanionAdConfig, int i) {
        Preconditions.checkNotNull(context);
        if (vastCompanionAdConfig == null) {
            View view = new View(context);
            view.setVisibility(4);
            return view;
        }
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setGravity(17);
        getLayout().addView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
        this.f8715g.registerVideoObstruction(relativeLayout);
        VastWebView a = m30437a(context, vastCompanionAdConfig);
        a.setVisibility(i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(vastCompanionAdConfig.getWidth() + 16, context), Dips.dipsToIntPixels(vastCompanionAdConfig.getHeight() + 16, context));
        layoutParams.addRule(13, -1);
        relativeLayout.addView(a, layoutParams);
        this.f8715g.registerVideoObstruction(a);
        return a;
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: a */
    public View m30435a(@NonNull Context context, @Nullable C10709j jVar, int i) {
        Preconditions.checkNotNull(context);
        if (jVar == null) {
            return new View(context);
        }
        VastWebView a = VastWebView.m30384a(context, jVar.m10851e());
        a.m30383a(new C3856f(jVar, context));
        a.setWebViewClient(new C3857g(jVar));
        a.setVisibility(i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.asIntPixels(jVar.m10850f(), context), Dips.asIntPixels(jVar.m10853c(), context));
        layoutParams.setMargins(Dips.dipsToIntPixels(12.0f, context), Dips.dipsToIntPixels(12.0f, context), 0, 0);
        getLayout().addView(a, layoutParams);
        this.f8715g.registerVideoObstruction(a);
        return a;
    }

    @NonNull
    /* renamed from: a */
    public final VastWebView m30437a(@NonNull Context context, @NonNull VastCompanionAdConfig vastCompanionAdConfig) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(vastCompanionAdConfig);
        VastWebView a = VastWebView.m30384a(context, vastCompanionAdConfig.getVastResource());
        a.m30383a(new C3858h(vastCompanionAdConfig, context));
        a.setWebViewClient(new C3859i(vastCompanionAdConfig, context));
        return a;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo30393a(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            m30573a().onFinish();
        }
    }

    /* renamed from: a */
    public final void m30439a(@NonNull Context context) {
        this.f8717i = new VastVideoGradientStripWidget(context, GradientDrawable.Orientation.BOTTOM_TOP, this.f8723o != null, 8, 2, this.f8719k.getId());
        getLayout().addView(this.f8717i);
        this.f8715g.registerVideoObstruction(this.f8717i);
    }

    /* renamed from: a */
    public final void m30438a(@NonNull Context context, int i) {
        this.f8718j = new ImageView(context);
        this.f8718j.setVisibility(i);
        getLayout().addView(this.f8718j, new RelativeLayout.LayoutParams(-1, -1));
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo30245a(Configuration configuration) {
        int i = m30570b().getResources().getConfiguration().orientation;
        this.f8723o = this.f8713e.getVastCompanionAd(i);
        if (this.f8725q.getVisibility() == 0 || this.f8726r.getVisibility() == 0) {
            if (i == 1) {
                this.f8725q.setVisibility(4);
                this.f8726r.setVisibility(0);
            } else {
                this.f8726r.setVisibility(4);
                this.f8725q.setVisibility(0);
            }
            VastCompanionAdConfig vastCompanionAdConfig = this.f8723o;
            if (vastCompanionAdConfig != null) {
                vastCompanionAdConfig.m30496a(m30570b(), this.f8711C);
            }
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo30244a(@NonNull Bundle bundle) {
        bundle.putInt(VastVideoViewControllerTwo.CURRENT_POSITION, this.f8733y);
        bundle.putSerializable(VastVideoViewControllerTwo.RESUMED_VAST_CONFIG, this.f8713e);
    }

    /* renamed from: b */
    public final void m30431b(@NonNull Context context) {
        this.f8721m = new VastVideoCtaButtonWidget(context, this.f8714f.getId(), this.f8723o != null, true ^ TextUtils.isEmpty(this.f8713e.getClickThroughUrl()));
        getLayout().addView(this.f8721m);
        this.f8715g.registerVideoObstruction(this.f8721m);
        this.f8721m.setOnTouchListener(this.f8730v);
        String customCtaText = this.f8713e.getCustomCtaText();
        if (customCtaText != null) {
            this.f8721m.m30444a(customCtaText);
        }
    }

    /* renamed from: b */
    public final void m30430b(@NonNull Context context, int i) {
        this.f8722n = new VastVideoCloseButtonWidget(context);
        this.f8722n.setVisibility(i);
        getLayout().addView(this.f8722n);
        this.f8715g.registerVideoObstruction(this.f8722n);
        this.f8722n.m30467a(new View$OnTouchListenerC3855e());
        String customSkipText = this.f8713e.getCustomSkipText();
        if (customSkipText != null) {
            this.f8722n.m30463b(customSkipText);
        }
        String customCloseIconUrl = this.f8713e.getCustomCloseIconUrl();
        if (customCloseIconUrl != null) {
            this.f8722n.m30465a(customCloseIconUrl);
        }
    }

    /* renamed from: b */
    public void m30427b(@NonNull String str) {
        this.f8715g.recordVideoEvent((ExternalViewabilitySession.VideoEvent) Enum.valueOf(ExternalViewabilitySession.VideoEvent.class, str), getCurrentPosition());
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    public boolean backButtonEnabled() {
        return this.f8732x;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: c */
    public VideoView mo30239c() {
        return this.f8714f;
    }

    /* renamed from: c */
    public final void m30426c(@NonNull Context context) {
        this.f8716h = new VastVideoGradientStripWidget(context, GradientDrawable.Orientation.TOP_BOTTOM, this.f8723o != null, 0, 6, getLayout().getId());
        getLayout().addView(this.f8716h);
        this.f8715g.registerVideoObstruction(this.f8716h);
    }

    /* renamed from: c */
    public final void m30425c(@NonNull Context context, int i) {
        this.f8719k = new VastVideoProgressBarWidget(context);
        this.f8719k.setAnchorId(this.f8714f.getId());
        this.f8719k.setVisibility(i);
        getLayout().addView(this.f8719k);
        this.f8715g.registerVideoObstruction(this.f8719k);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: d */
    public void mo30238d() {
        m30412j();
    }

    /* renamed from: d */
    public final void m30422d(@NonNull Context context, int i) {
        this.f8720l = new VastVideoRadialCountdownWidget(context);
        this.f8720l.setVisibility(i);
        getLayout().addView(this.f8720l);
        this.f8715g.registerVideoObstruction(this.f8720l);
    }

    /* renamed from: e */
    public final VastVideoView m30419e(@NonNull Context context, int i) {
        if (this.f8713e.getDiskMediaFileUrl() != null) {
            VastVideoView vastVideoView = new VastVideoView(context);
            vastVideoView.setId(View.generateViewId());
            vastVideoView.setOnPreparedListener(new C3852b(vastVideoView));
            vastVideoView.setOnTouchListener(this.f8730v);
            vastVideoView.setOnCompletionListener(new C3853c(vastVideoView, context));
            vastVideoView.setOnErrorListener(new C3854d());
            vastVideoView.setVideoPath(this.f8713e.getDiskMediaFileUrl());
            vastVideoView.setVisibility(i);
            return vastVideoView;
        }
        throw new IllegalStateException("VastVideoConfig does not have a video disk path");
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: e */
    public void mo30237e() {
        super.mo30237e();
        this.f8713e.handleImpression(m30570b(), getCurrentPosition());
        m30572a(IntentActions.ACTION_INTERSTITIAL_SHOW);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: f */
    public void mo30236f() {
        m30402o();
        this.f8715g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_STOPPED, getCurrentPosition());
        this.f8715g.endVideoSession();
        m30572a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
        this.f8714f.onDestroy();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: g */
    public void mo30235g() {
        m30402o();
        this.f8733y = getCurrentPosition();
        this.f8714f.pause();
        if (!this.f8734z && !this.f8712D) {
            this.f8715g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_PAUSED, getCurrentPosition());
            this.f8713e.handlePause(m30570b(), this.f8733y);
        }
    }

    public int getCurrentPosition() {
        return this.f8714f.getCurrentPosition();
    }

    public int getDuration() {
        return this.f8714f.getDuration();
    }

    public String getNetworkMediaFileUrl() {
        VastVideoConfig vastVideoConfig = this.f8713e;
        if (vastVideoConfig == null) {
            return null;
        }
        return vastVideoConfig.getNetworkMediaFileUrl();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: h */
    public void mo30234h() {
        m30404n();
        int i = this.f8733y;
        if (i > 0) {
            this.f8715g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_PLAYING, i);
            this.f8714f.seekTo(this.f8733y);
        } else {
            this.f8715g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_LOADED, getCurrentPosition());
        }
        if (!this.f8734z) {
            this.f8714f.start();
        }
        if (this.f8733y != -1) {
            this.f8713e.handleResume(m30570b(), this.f8733y);
        }
    }

    public void handleIconDisplay(int i) {
        C10709j jVar = this.f8724p;
        if (jVar != null && i >= jVar.m10852d()) {
            this.f8727s.setVisibility(0);
            this.f8724p.m10856a(m30570b(), i, getNetworkMediaFileUrl());
            if (this.f8724p.m10854b() != null && i >= this.f8724p.m10852d() + this.f8724p.m10854b().intValue()) {
                this.f8727s.setVisibility(8);
            }
        }
    }

    /* renamed from: i */
    public final void m30414i() {
        int duration = getDuration();
        if (this.f8713e.isRewardedVideo()) {
            this.f8731w = duration;
            return;
        }
        if (duration < 16000) {
            this.f8731w = duration;
        }
        try {
            Integer skipOffsetMillis = this.f8713e.getSkipOffsetMillis(duration);
            if (skipOffsetMillis != null) {
                this.f8731w = skipOffsetMillis.intValue();
            }
        } catch (NumberFormatException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Failed to parse skipoffset " + this.f8713e.getSkipOffsetString());
        }
    }

    /* renamed from: j */
    public final void m30412j() {
        int currentPosition = getCurrentPosition();
        if (!this.f8734z) {
            if (currentPosition < this.f8711C) {
                this.f8715g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_SKIPPED, currentPosition);
                this.f8713e.handleSkip(m30570b(), currentPosition);
            } else {
                this.f8715g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_COMPLETE, currentPosition);
                this.f8713e.handleComplete(m30570b(), this.f8711C);
            }
        }
        this.f8713e.handleClose(m30570b(), this.f8711C);
    }

    /* renamed from: k */
    public void m30410k() {
        this.f8732x = true;
        this.f8720l.setVisibility(8);
        this.f8722n.setVisibility(0);
        this.f8721m.m30443b();
    }

    /* renamed from: l */
    public final boolean m30408l() {
        return this.f8732x;
    }

    /* renamed from: m */
    public boolean m30406m() {
        return !this.f8732x && getCurrentPosition() >= this.f8731w;
    }

    /* renamed from: n */
    public final void m30404n() {
        this.f8728t.startRepeating(50L);
        this.f8729u.startRepeating(250L);
    }

    /* renamed from: o */
    public final void m30402o() {
        this.f8728t.stop();
        this.f8729u.stop();
    }

    /* renamed from: p */
    public void m30400p() {
        if (this.f8710B) {
            this.f8720l.updateCountdownProgress(this.f8731w, getCurrentPosition());
        }
    }

    public void updateProgressBar() {
        this.f8719k.updateProgress(getCurrentPosition());
    }
}
