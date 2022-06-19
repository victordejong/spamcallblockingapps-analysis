package com.pubmatic.sdk.video.renderer;

import android.content.Context;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBDataType;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.base.POBAdRendererListener;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.utility.POBUrlHandler;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider;
import com.pubmatic.sdk.video.POBLogConstants;
import com.pubmatic.sdk.video.player.POBVastPlayer;
import com.pubmatic.sdk.video.player.POBVastPlayerListener;
import com.pubmatic.sdk.video.vastmodels.POBVastAd;
import com.pubmatic.sdk.video.vastmodels.POBVastCreative;
import com.pubmatic.sdk.webrendering.p021ui.POBViewabilityTracker;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/renderer/POBVideoRenderer.class */
public class POBVideoRenderer implements POBVideoRendering, POBVastPlayerListener, POBViewabilityTracker.onViewabilityChangedListener, POBVastPlayer.OnSkipButtonAppear {
    public static final int VIEWABILITY_THRESHOLD_PERCENT_FOR_BANNER = 50;

    /* renamed from: a */
    private final String f966a;

    /* renamed from: b */
    private POBAdRendererListener f967b;

    /* renamed from: c */
    private POBVideoRenderingListener f968c;

    /* renamed from: d */
    private POBVideoSkipEventListener f969d;

    /* renamed from: e */
    private long f970e;

    /* renamed from: f */
    private Timer f971f;

    /* renamed from: g */
    private POBVastPlayer f972g;

    /* renamed from: h */
    private POBVideoMeasurementProvider f973h;

    /* renamed from: i */
    private POBViewabilityTracker f974i;

    /* renamed from: j */
    private POBAdDescriptor f975j;

    /* renamed from: k */
    private boolean f976k;

    /* renamed from: l */
    private POBUrlHandler f977l;

    /* renamed from: com.pubmatic.sdk.video.renderer.POBVideoRenderer$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/renderer/POBVideoRenderer$a.class */
    public class C1995a extends TimerTask {
        C1995a() {
            POBVideoRenderer.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            POBVideoRenderer.this.m617a();
        }
    }

    /* renamed from: com.pubmatic.sdk.video.renderer.POBVideoRenderer$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/renderer/POBVideoRenderer$b.class */
    public class RunnableC1996b implements Runnable {
        RunnableC1996b() {
            POBVideoRenderer.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (POBVideoRenderer.this.f967b != null) {
                POBVideoRenderer.this.f967b.onAdExpired();
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.video.renderer.POBVideoRenderer$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/renderer/POBVideoRenderer$c.class */
    class RunnableC1997c implements Runnable {

        /* renamed from: a */
        final /* synthetic */ float f980a;

        /* renamed from: b */
        final /* synthetic */ float f981b;

        RunnableC1997c(float f, float f2) {
            POBVideoRenderer.this = r4;
            this.f980a = f;
            this.f981b = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (POBVideoRenderer.this.f973h != null) {
                POBVideoRenderer.this.f973h.setTrackView(POBVideoRenderer.this.f972g);
                POBVideoRenderer.this.f973h.impressionOccurred();
                POBVideoRenderer.this.f973h.start(this.f980a, this.f981b);
                POBVideoRenderer.this.f973h.signalPlayerStateChange(POBCommonConstants.BANNER_PLACEMENT_TYPE.equals(POBVideoRenderer.this.f966a) ? POBVideoMeasurementProvider.POBVideoPlayerState.NORMAL : POBVideoMeasurementProvider.POBVideoPlayerState.FULLSCREEN);
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.video.renderer.POBVideoRenderer$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/renderer/POBVideoRenderer$d.class */
    public class C1998d implements POBUrlHandler.UrlHandlerListener {
        C1998d() {
            POBVideoRenderer.this = r4;
        }

        @Override // com.pubmatic.sdk.common.utility.POBUrlHandler.UrlHandlerListener
        public void onErrorOpenUrl(String str) {
            PMLog.warn("POBVideoRenderer", "Unable to open " + str, new Object[0]);
        }

        @Override // com.pubmatic.sdk.common.utility.POBUrlHandler.UrlHandlerListener
        public void onInternalBrowserClose(String str) {
            if (POBVideoRenderer.this.f967b != null) {
                POBVideoRenderer.this.f967b.onAdInteractionStopped();
            }
        }

        @Override // com.pubmatic.sdk.common.utility.POBUrlHandler.UrlHandlerListener
        public void onInternalBrowserOpen(String str) {
            if (POBVideoRenderer.this.f967b != null) {
                POBVideoRenderer.this.f967b.onAdInteractionStarted();
            }
        }

        @Override // com.pubmatic.sdk.common.utility.POBUrlHandler.UrlHandlerListener
        public void onLeaveApp(String str) {
            if (POBVideoRenderer.this.f967b != null) {
                POBVideoRenderer.this.f967b.onLeavingApplication();
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.video.renderer.POBVideoRenderer$e */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/renderer/POBVideoRenderer$e.class */
    public class C1999e implements POBVideoMeasurementProvider.POBOmidSessionListener {

        /* renamed from: a */
        final /* synthetic */ float f984a;

        C1999e(float f) {
            POBVideoRenderer.this = r4;
            this.f984a = f;
        }

        @Override // com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider.POBOmidSessionListener
        public void onOmidSessionInitialized() {
            if (POBVideoRenderer.this.f973h != null) {
                boolean z = true;
                if (POBVideoRenderer.this.f972g.getVastPlayerConfig().getSkip() != 1 || !POBVideoRenderer.this.f972g.getSkipabilityEnabled()) {
                    z = false;
                }
                POBVideoRenderer.this.f973h.loaded(z, this.f984a);
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.video.renderer.POBVideoRenderer$f */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/renderer/POBVideoRenderer$f.class */
    static /* synthetic */ class C2000f {

        /* renamed from: a */
        static final /* synthetic */ int[] f986a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[POBVastCreative.POBEventTypes.values().length];
            f986a = iArr;
            try {
                iArr[POBVastCreative.POBEventTypes.FIRST_QUARTILE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f986a[POBVastCreative.POBEventTypes.MID_POINT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f986a[POBVastCreative.POBEventTypes.THIRD_QUARTILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f986a[POBVastCreative.POBEventTypes.COMPLETE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f986a[POBVastCreative.POBEventTypes.UNMUTE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f986a[POBVastCreative.POBEventTypes.MUTE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f986a[POBVastCreative.POBEventTypes.SKIP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f986a[POBVastCreative.POBEventTypes.RESUME.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f986a[POBVastCreative.POBEventTypes.PAUSE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public POBVideoRenderer(POBVastPlayer pOBVastPlayer, POBViewabilityTracker pOBViewabilityTracker, String str) {
        this.f972g = pOBVastPlayer;
        this.f966a = str;
        pOBVastPlayer.setVastPlayerListener(this);
        pOBVastPlayer.setOnSkipButtonAppearListener(this);
        this.f974i = pOBViewabilityTracker;
        pOBViewabilityTracker.setOnExposureChangeWithThresholdListener(this);
    }

    /* renamed from: a */
    private int m616a(int i, int i2) {
        int i3 = i2 - i;
        int i4 = i3;
        if (i3 <= 0) {
            i4 = 0;
        }
        return i4;
    }

    /* renamed from: a */
    public void m617a() {
        POBUtils.runOnMainThread(new RunnableC1996b());
    }

    /* renamed from: a */
    private void m615a(Context context) {
        this.f977l = new POBUrlHandler(context, new C1998d());
    }

    /* renamed from: a */
    private void m613a(POBVastAd pOBVastAd, float f) {
        List<POBVideoMeasurementProvider.POBVerificationScriptResource> combinedVerificationList;
        if (this.f973h == null || pOBVastAd == null || (combinedVerificationList = pOBVastAd.getCombinedVerificationList()) == null || combinedVerificationList.isEmpty()) {
            return;
        }
        m611a(combinedVerificationList, f);
    }

    /* renamed from: a */
    private void m612a(String str) {
        if (POBUtils.isNullOrEmpty(str)) {
            PMLog.warn("POBVideoRenderer", POBLogConstants.MSG_VAST_VIDEO_MISSING_CLICKTHROUGH, new Object[0]);
        } else if (this.f976k) {
        } else {
            PMLog.debug("POBVideoRenderer", POBLogConstants.MSG_VAST_LEARN_MORE_CLICKED, str);
            POBUrlHandler pOBUrlHandler = this.f977l;
            if (pOBUrlHandler != null) {
                pOBUrlHandler.open(str);
            }
            POBAdRendererListener pOBAdRendererListener = this.f967b;
            if (pOBAdRendererListener == null) {
                return;
            }
            pOBAdRendererListener.onRenderAdClick();
        }
    }

    /* renamed from: a */
    private void m611a(List<POBVideoMeasurementProvider.POBVerificationScriptResource> list, float f) {
        POBVideoMeasurementProvider pOBVideoMeasurementProvider;
        if (list.isEmpty() || (pOBVideoMeasurementProvider = this.f973h) == null) {
            PMLog.debug("POBVideoRenderer", "Video viewability measurement provider not initialised", new Object[0]);
            return;
        }
        pOBVideoMeasurementProvider.startAdSession(this.f972g, list, new C1999e(f));
        PMLog.debug("POBVideoRenderer", "Video viewability measurement provider initialised", new Object[0]);
    }

    /* renamed from: b */
    private void m610b() {
        this.f972g.setAutoPlayOnForeground(false);
        this.f972g.pause();
    }

    /* renamed from: c */
    private void m608c() {
        this.f972g.setAutoPlayOnForeground(true);
        this.f972g.play();
    }

    /* renamed from: d */
    private void m606d() {
        if (this.f970e > 0) {
            Timer timer = new Timer();
            this.f971f = timer;
            timer.schedule(new C1995a(), this.f970e);
        }
    }

    /* renamed from: e */
    private void m604e() {
        Timer timer = this.f971f;
        if (timer != null) {
            timer.cancel();
            this.f971f = null;
        }
    }

    @Override // com.pubmatic.sdk.video.renderer.POBVideoRendering, com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void destroy() {
        m604e();
        this.f972g.destroy();
        this.f974i.setOnExposureChangeWithThresholdListener(null);
        this.f974i.destroy();
        POBVideoMeasurementProvider pOBVideoMeasurementProvider = this.f973h;
        if (pOBVideoMeasurementProvider != null) {
            pOBVideoMeasurementProvider.finishAdSession();
            this.f973h = null;
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void invalidateExpiration() {
        m604e();
    }

    @Override // com.pubmatic.sdk.video.player.POBVastPlayerListener
    public void onFailedToPlay(POBError pOBError) {
        m604e();
        POBAdRendererListener pOBAdRendererListener = this.f967b;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onAdRenderingFailed(pOBError);
        }
        if (this.f973h == null || pOBError.getErrorMessage() == null) {
            return;
        }
        this.f973h.signalError(POBVideoMeasurementProvider.POBVideoAdErrorType.VIDEO, pOBError.getErrorMessage());
    }

    @Override // com.pubmatic.sdk.video.player.POBVastPlayerListener
    public void onIndustryIconClick(String str) {
        m612a(str);
        POBVideoMeasurementProvider pOBVideoMeasurementProvider = this.f973h;
        if (pOBVideoMeasurementProvider != null) {
            pOBVideoMeasurementProvider.signalAdEvent(POBDataType.POBVideoAdEventType.ICON_CLICKED);
        }
    }

    @Override // com.pubmatic.sdk.video.player.POBVastPlayerListener
    public void onOpenLandingPage(String str) {
        m612a(str);
        POBVideoMeasurementProvider pOBVideoMeasurementProvider = this.f973h;
        if (pOBVideoMeasurementProvider != null) {
            pOBVideoMeasurementProvider.signalAdEvent(POBDataType.POBVideoAdEventType.CLICKED);
        }
    }

    @Override // com.pubmatic.sdk.video.player.POBVastPlayerListener
    public void onPlaybackCompleted(float f) {
        POBAdDescriptor pOBAdDescriptor;
        if (this.f967b != null && (pOBAdDescriptor = this.f975j) != null) {
            this.f967b.onAdReadyToRefresh(m616a((int) f, pOBAdDescriptor.getRefreshInterval()));
        }
        POBVideoRenderingListener pOBVideoRenderingListener = this.f968c;
        if (pOBVideoRenderingListener != null) {
            pOBVideoRenderingListener.notifyAdEvent(POBDataType.POBVideoAdEventType.COMPLETE);
        }
    }

    @Override // com.pubmatic.sdk.video.player.POBVastPlayerListener
    public void onReadyToPlay(POBVastAd pOBVastAd, float f) {
        Context context = this.f972g.getContext();
        if (context != null) {
            m615a(context);
        }
        m613a(pOBVastAd, f);
        POBAdRendererListener pOBAdRendererListener = this.f967b;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onAdRender(this.f972g, null);
        }
    }

    @Override // com.pubmatic.sdk.video.player.POBVastPlayerListener
    public void onSkipButtonClick(POBVastCreative.POBEventTypes pOBEventTypes) {
        POBVideoSkipEventListener pOBVideoSkipEventListener;
        if (this.f968c != null) {
            if (pOBEventTypes == POBVastCreative.POBEventTypes.SKIP && (pOBVideoSkipEventListener = this.f969d) != null) {
                pOBVideoSkipEventListener.onAdAboutToSkip();
                return;
            }
            POBAdRendererListener pOBAdRendererListener = this.f967b;
            if (pOBAdRendererListener == null) {
                return;
            }
            pOBAdRendererListener.onAdInteractionStopped();
        }
    }

    @Override // com.pubmatic.sdk.video.player.POBVastPlayerListener
    public void onVideoEventOccurred(POBVastCreative.POBEventTypes pOBEventTypes) {
        POBVideoMeasurementProvider pOBVideoMeasurementProvider;
        POBDataType.POBVideoAdEventType pOBVideoAdEventType;
        if (this.f973h != null) {
            switch (C2000f.f986a[pOBEventTypes.ordinal()]) {
                case 1:
                    pOBVideoMeasurementProvider = this.f973h;
                    pOBVideoAdEventType = POBDataType.POBVideoAdEventType.FIRST_QUARTILE;
                    break;
                case 2:
                    pOBVideoMeasurementProvider = this.f973h;
                    pOBVideoAdEventType = POBDataType.POBVideoAdEventType.MID_POINT;
                    break;
                case 3:
                    pOBVideoMeasurementProvider = this.f973h;
                    pOBVideoAdEventType = POBDataType.POBVideoAdEventType.THIRD_QUARTILE;
                    break;
                case 4:
                    pOBVideoMeasurementProvider = this.f973h;
                    pOBVideoAdEventType = POBDataType.POBVideoAdEventType.COMPLETE;
                    break;
                case 5:
                    pOBVideoMeasurementProvider = this.f973h;
                    pOBVideoAdEventType = POBDataType.POBVideoAdEventType.UNMUTE;
                    break;
                case 6:
                    pOBVideoMeasurementProvider = this.f973h;
                    pOBVideoAdEventType = POBDataType.POBVideoAdEventType.MUTE;
                    break;
                case 7:
                    pOBVideoMeasurementProvider = this.f973h;
                    pOBVideoAdEventType = POBDataType.POBVideoAdEventType.SKIPPED;
                    break;
                case 8:
                    pOBVideoMeasurementProvider = this.f973h;
                    pOBVideoAdEventType = POBDataType.POBVideoAdEventType.RESUME;
                    break;
                case 9:
                    pOBVideoMeasurementProvider = this.f973h;
                    pOBVideoAdEventType = POBDataType.POBVideoAdEventType.PAUSE;
                    break;
                default:
                    return;
            }
            pOBVideoMeasurementProvider.signalAdEvent(pOBVideoAdEventType);
        }
    }

    @Override // com.pubmatic.sdk.video.player.POBVastPlayerListener
    public void onVideoStarted(float f, float f2) {
        if (this.f973h != null) {
            this.f972g.postDelayed(new RunnableC1997c(f, f2), 1000L);
        }
    }

    @Override // com.pubmatic.sdk.webrendering.p021ui.POBViewabilityTracker.onViewabilityChangedListener
    public void onViewabilityChanged(boolean z) {
        if (z) {
            m608c();
        } else {
            m610b();
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void prepareToDetach() {
        this.f976k = true;
    }

    @Override // com.pubmatic.sdk.video.renderer.POBVideoRendering
    public void proceedAdSkip(boolean z) {
        POBAdRendererListener pOBAdRendererListener = this.f967b;
        if (pOBAdRendererListener != null) {
            if (z) {
                pOBAdRendererListener.onAdInteractionStopped();
            } else {
                this.f972g.play();
            }
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void renderAd(POBAdDescriptor pOBAdDescriptor) {
        m606d();
        this.f975j = pOBAdDescriptor;
        this.f972g.load(pOBAdDescriptor.getRenderableContent());
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void setAdRendererListener(POBAdRendererListener pOBAdRendererListener) {
        this.f967b = pOBAdRendererListener;
        if (pOBAdRendererListener instanceof POBVideoRenderingListener) {
            setVideoRenderingListener((POBVideoRenderingListener) pOBAdRendererListener);
        }
    }

    public void setExpirationTimeout(long j) {
        this.f970e = j;
    }

    public void setMeasurementProvider(POBVideoMeasurementProvider pOBVideoMeasurementProvider) {
        this.f973h = pOBVideoMeasurementProvider;
    }

    @Override // com.pubmatic.sdk.video.renderer.POBVideoRendering
    public void setVideoRenderingListener(POBVideoRenderingListener pOBVideoRenderingListener) {
        this.f968c = pOBVideoRenderingListener;
    }

    @Override // com.pubmatic.sdk.video.renderer.POBVideoRendering
    public void setVideoSkipEventListener(POBVideoSkipEventListener pOBVideoSkipEventListener) {
        this.f969d = pOBVideoSkipEventListener;
    }

    @Override // com.pubmatic.sdk.video.player.POBVastPlayer.OnSkipButtonAppear
    public void skipButtonAppear() {
        POBVideoRenderingListener pOBVideoRenderingListener = this.f968c;
        if (pOBVideoRenderingListener != null) {
            pOBVideoRenderingListener.enableBackPress();
        }
    }
}
