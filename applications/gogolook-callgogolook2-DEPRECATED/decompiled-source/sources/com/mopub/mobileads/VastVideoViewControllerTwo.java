package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.UriMediaItem;
import androidx.media2.player.MediaPlayer;
import androidx.media2.player.PlaybackParams;
import androidx.media2.widget.VideoView;
import com.mopub.common.DataKeys;
import com.mopub.common.ExternalViewabilitySession;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.IntentActions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.mobileads.VastWebView;
import com.mopub.network.TrackingRequest;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018�� »\u00012\u00020\u0001:\u0004»\u0001¼\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\n\u0010\u0090\u0001\u001a\u00030\u0091\u0001H\u0012J\t\u0010\u0092\u0001\u001a\u00020<H\u0016J\u001d\u0010\u0093\u0001\u001a\u00030\u008f\u00012\b\u0010\u0094\u0001\u001a\u00030\u0095\u00012\u0007\u0010\u0096\u0001\u001a\u00020oH\u0012J\t\u0010\u0097\u0001\u001a\u00020oH\u0016J\t\u0010\u0098\u0001\u001a\u00020oH\u0016J\t\u0010\u0099\u0001\u001a\u000207H\u0014J\n\u0010\u009a\u0001\u001a\u00030\u0091\u0001H\u0012J\u0013\u0010\u009b\u0001\u001a\u00030\u0091\u00012\u0007\u0010\u009c\u0001\u001a\u00020oH\u0016J\u0019\u0010\u009d\u0001\u001a\u00030\u0091\u00012\u0007\u0010\u009e\u0001\u001a\u00020WH\u0010¢\u0006\u0003\b\u009f\u0001J(\u0010 \u0001\u001a\u00030\u0091\u00012\u0007\u0010¡\u0001\u001a\u00020o2\u0007\u0010¢\u0001\u001a\u00020o2\n\u0010£\u0001\u001a\u0005\u0018\u00010¤\u0001H\u0014J\n\u0010¥\u0001\u001a\u00030\u0091\u0001H\u0014J\u0014\u0010¦\u0001\u001a\u00030\u0091\u00012\b\u0010§\u0001\u001a\u00030¨\u0001H\u0014J\n\u0010©\u0001\u001a\u00030\u0091\u0001H\u0014J\n\u0010ª\u0001\u001a\u00030\u0091\u0001H\u0014J\n\u0010«\u0001\u001a\u00030\u0091\u0001H\u0014J\n\u0010¬\u0001\u001a\u00030\u0091\u0001H\u0014J\u0013\u0010\u00ad\u0001\u001a\u00030\u0091\u00012\u0007\u0010®\u0001\u001a\u00020\u0005H\u0014J\u001b\u0010¯\u0001\u001a\u00030\u0091\u00012\u0006\u0010\u0016\u001a\u00020\u00172\u0007\u0010°\u0001\u001a\u00020WH\u0016J\n\u0010±\u0001\u001a\u00030\u0091\u0001H\u0012J\n\u0010²\u0001\u001a\u00030\u0091\u0001H\u0012J\u001b\u0010³\u0001\u001a\u00030\u0091\u00012\t\b\u0002\u0010´\u0001\u001a\u00020<H\u0010¢\u0006\u0003\bµ\u0001J\n\u0010¶\u0001\u001a\u00030\u0091\u0001H\u0016J \u0010·\u0001\u001a\u000207*\u00030\u0087\u00012\u0007\u0010¸\u0001\u001a\u00020o2\u0007\u0010\u0096\u0001\u001a\u00020oH\u0016J\u000f\u0010¹\u0001\u001a\u00030º\u0001*\u00030\u0080\u0001H\u0012R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR&\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0016@\u0016X\u0097\u000e¢\u0006\u0014\n��\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u00020\u00178\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0018\u0010\u0011\u001a\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u001c8\u0016@\u0016X\u0097.¢\u0006\u0014\n��\u0012\u0004\b\u001d\u0010\u0011\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u000e\u0010\"\u001a\u00020#X\u0092\u0004¢\u0006\u0002\n��R$\u0010$\u001a\u00020%8\u0016@\u0016X\u0097.¢\u0006\u0014\n��\u0012\u0004\b&\u0010\u0011\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u000e\u0010+\u001a\u00020,X\u0092\u0004¢\u0006\u0002\n��R\u001c\u0010-\u001a\u00020.8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b/\u0010\u0011\u001a\u0004\b0\u00101R\u000e\u00102\u001a\u000203X\u0092\u0004¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b4\u00105R\u001c\u00106\u001a\u0002078\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b8\u0010\u0011\u001a\u0004\b9\u0010:R$\u0010;\u001a\u00020<8\u0016@\u0016X\u0097\u000e¢\u0006\u0014\n��\u0012\u0004\b=\u0010\u0011\u001a\u0004\b;\u0010>\"\u0004\b?\u0010@R$\u0010A\u001a\u00020<8\u0016@\u0016X\u0097\u000e¢\u0006\u0014\n��\u0012\u0004\bB\u0010\u0011\u001a\u0004\bA\u0010>\"\u0004\bC\u0010@R$\u0010D\u001a\u00020<8\u0016@\u0016X\u0097\u000e¢\u0006\u0014\n��\u0012\u0004\bE\u0010\u0011\u001a\u0004\bD\u0010>\"\u0004\bF\u0010@R\u000e\u0010G\u001a\u00020<X\u0092\u000e¢\u0006\u0002\n��R\u001c\u0010H\u001a\u0002078\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\bI\u0010\u0011\u001a\u0004\bJ\u0010:R&\u0010K\u001a\u0004\u0018\u00010L8\u0016@\u0016X\u0097\u000e¢\u0006\u0014\n��\u0012\u0004\bM\u0010\u0011\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u0014\u0010R\u001a\u00020SX\u0096\u0004¢\u0006\b\n��\u001a\u0004\bT\u0010UR\u0016\u0010V\u001a\u0004\u0018\u00010W8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bX\u0010YR\u001c\u0010Z\u001a\u0002078\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b[\u0010\u0011\u001a\u0004\b\\\u0010:R$\u0010]\u001a\u00020^8\u0016@\u0016X\u0097.¢\u0006\u0014\n��\u0012\u0004\b_\u0010\u0011\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\u000e\u0010d\u001a\u00020eX\u0092\u0004¢\u0006\u0002\n��R$\u0010f\u001a\u00020g8\u0016@\u0016X\u0097.¢\u0006\u0014\n��\u0012\u0004\bh\u0010\u0011\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\bm\u00105R\u000e\u0010n\u001a\u00020oX\u0092\u000e¢\u0006\u0002\n��R$\u0010p\u001a\u00020<8\u0016@\u0016X\u0097\u000e¢\u0006\u0014\n��\u0012\u0004\bq\u0010\u0011\u001a\u0004\br\u0010>\"\u0004\bs\u0010@R\u000e\u0010t\u001a\u00020<X\u0092\u000e¢\u0006\u0002\n��R$\u0010u\u001a\u00020o8\u0016@\u0016X\u0097\u000e¢\u0006\u0014\n��\u0012\u0004\bv\u0010\u0011\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR$\u0010{\u001a\u00020\u001c8\u0016@\u0016X\u0097.¢\u0006\u0014\n��\u0012\u0004\b|\u0010\u0011\u001a\u0004\b}\u0010\u001f\"\u0004\b~\u0010!R\u0011\u0010\u007f\u001a\u0005\u0018\u00010\u0080\u0001X\u0092\u000e¢\u0006\u0002\n��R#\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0016X\u0097\u0004¢\u0006\u0011\n��\u0012\u0005\b\u0083\u0001\u0010\u0011\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001R!\u0010\u0086\u0001\u001a\u00030\u0087\u00018\u0016X\u0097\u0004¢\u0006\u0011\n��\u0012\u0005\b\u0088\u0001\u0010\u0011\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001d\u0010\u008b\u0001\u001a\u00020<X\u0096\u000e¢\u0006\u0010\n��\u001a\u0005\b\u008c\u0001\u0010>\"\u0005\b\u008d\u0001\u0010@R\u0010\u0010\u008e\u0001\u001a\u00030\u008f\u0001X\u0092\u0004¢\u0006\u0002\n��¨\u0006½\u0001"}, m815d2 = {"Lcom/mopub/mobileads/VastVideoViewControllerTwo;", "Lcom/mopub/mobileads/BaseVideoViewController;", ActivityChooserModel.ATTRIBUTE_ACTIVITY, "Landroid/app/Activity;", "extras", "Landroid/os/Bundle;", "savedInstanceState", DataKeys.BROADCAST_IDENTIFIER_KEY, "", "baseListener", "Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;", "(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V", "getActivity", "()Landroid/app/Activity;", "blurLastVideoFrameTask", "Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;", "blurLastVideoFrameTask$annotations", "()V", "getBlurLastVideoFrameTask", "()Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;", "setBlurLastVideoFrameTask", "(Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;)V", "blurredLastVideoFrameImageView", "Landroid/widget/ImageView;", "blurredLastVideoFrameImageView$annotations", "getBlurredLastVideoFrameImageView", "()Landroid/widget/ImageView;", "bottomGradientStripWidget", "Lcom/mopub/mobileads/VastVideoGradientStripWidget;", "bottomGradientStripWidget$annotations", "getBottomGradientStripWidget", "()Lcom/mopub/mobileads/VastVideoGradientStripWidget;", "setBottomGradientStripWidget", "(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V", "clickThroughListener", "Landroid/view/View$OnTouchListener;", "closeButtonWidget", "Lcom/mopub/mobileads/VastVideoCloseButtonWidget;", "closeButtonWidget$annotations", "getCloseButtonWidget", "()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;", "setCloseButtonWidget", "(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)V", "countdownRunnable", "Lcom/mopub/mobileads/VastVideoViewCountdownRunnableTwo;", "ctaButtonWidget", "Lcom/mopub/mobileads/VastVideoCtaButtonWidget;", "ctaButtonWidget$annotations", "getCtaButtonWidget", "()Lcom/mopub/mobileads/VastVideoCtaButtonWidget;", "externalViewabilitySessionManager", "Lcom/mopub/common/ExternalViewabilitySessionManager;", "getExtras", "()Landroid/os/Bundle;", "iconView", "Landroid/view/View;", "iconView$annotations", "getIconView", "()Landroid/view/View;", "isCalibrationDone", "", "isCalibrationDone$annotations", "()Z", "setCalibrationDone", "(Z)V", "isClosing", "isClosing$annotations", "setClosing", "isComplete", "isComplete$annotations", "setComplete", "isInClickExperiment", "landscapeCompanionAdView", "landscapeCompanionAdView$annotations", "getLandscapeCompanionAdView", "mediaMetadataRetriever", "Landroid/media/MediaMetadataRetriever;", "mediaMetadataRetriever$annotations", "getMediaMetadataRetriever", "()Landroid/media/MediaMetadataRetriever;", "setMediaMetadataRetriever", "(Landroid/media/MediaMetadataRetriever;)V", "mediaPlayer", "Landroidx/media2/player/MediaPlayer;", "getMediaPlayer", "()Landroidx/media2/player/MediaPlayer;", "networkMediaFileUrl", "", "getNetworkMediaFileUrl", "()Ljava/lang/String;", "portraitCompanionAdView", "portraitCompanionAdView$annotations", "getPortraitCompanionAdView", "progressBarWidget", "Lcom/mopub/mobileads/VastVideoProgressBarWidget;", "progressBarWidget$annotations", "getProgressBarWidget", "()Lcom/mopub/mobileads/VastVideoProgressBarWidget;", "setProgressBarWidget", "(Lcom/mopub/mobileads/VastVideoProgressBarWidget;)V", "progressCheckerRunnable", "Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;", "radialCountdownWidget", "Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;", "radialCountdownWidget$annotations", "getRadialCountdownWidget", "()Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;", "setRadialCountdownWidget", "(Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;)V", "getSavedInstanceState", "seekerPositionOnPause", "", "shouldAllowClose", "shouldAllowClose$annotations", "getShouldAllowClose", "setShouldAllowClose", "shouldAllowSkip", "showCloseButtonDelay", "showCloseButtonDelay$annotations", "getShowCloseButtonDelay", "()I", "setShowCloseButtonDelay", "(I)V", "topGradientStripWidget", "topGradientStripWidget$annotations", "getTopGradientStripWidget", "setTopGradientStripWidget", "vastCompanionAdConfig", "Lcom/mopub/mobileads/VastCompanionAdConfigTwo;", "vastIconConfig", "Lcom/mopub/mobileads/VastIconConfigTwo;", "vastIconConfig$annotations", "getVastIconConfig", "()Lcom/mopub/mobileads/VastIconConfigTwo;", "vastVideoConfig", "Lcom/mopub/mobileads/VastVideoConfigTwo;", "vastVideoConfig$annotations", "getVastVideoConfig", "()Lcom/mopub/mobileads/VastVideoConfigTwo;", "videoError", "getVideoError", "setVideoError", "videoView", "Landroidx/media2/widget/VideoView;", "adjustSkipOffset", "", "backButtonEnabled", "createVideoView", "context", "Landroid/content/Context;", "initialVisibility", "getCurrentPosition", "getDuration", "getVideoView", "handleExitTrackers", "handleIconDisplay", "currentPosition", "handleViewabilityQuartileEvent", "enumValue", "handleViewabilityQuartileEvent$mopub_sdk_base_release", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onBackPressed", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "onCreate", "onDestroy", "onPause", "onResume", "onSaveInstanceState", "outState", "prepareBlurredLastVideoFrame", "diskMediaFileUrl", "startRunnables", "stopRunnables", "updateCountdown", "forceCloseable", "updateCountdown$mopub_sdk_base_release", "updateProgressBar", "createCompanionAdView", "orientation", "createWebView", "Lcom/mopub/mobileads/VastWebView;", "Companion", "PlayerCallback", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
@Mockable
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo.class */
public class VastVideoViewControllerTwo extends BaseVideoViewController {
    public static final String CURRENT_POSITION = "current_position";
    public static final Companion Companion = new Companion(null);
    public static final String RESUMED_VAST_CONFIG = "resumed_vast_config";
    public static final String VAST_VIDEO_CONFIG = "vast_video_config";

    /* renamed from: A */
    public boolean f8755A;

    /* renamed from: B */
    public boolean f8756B;

    /* renamed from: C */
    public boolean f8757C;

    /* renamed from: D */
    public final Activity f8758D;

    /* renamed from: E */
    public final Bundle f8759E;

    /* renamed from: F */
    public final Bundle f8760F;
    public VastVideoGradientStripWidget bottomGradientStripWidget;
    public VastVideoCloseButtonWidget closeButtonWidget;

    /* renamed from: e */
    public final VideoView f8761e;

    /* renamed from: g */
    public int f8763g;

    /* renamed from: h */
    public VastCompanionAdConfigTwo f8764h;

    /* renamed from: i */
    public final VastVideoConfigTwo f8765i;

    /* renamed from: j */
    public final VastIconConfigTwo f8766j;

    /* renamed from: l */
    public final ImageView f8768l;

    /* renamed from: m */
    public final View f8769m;

    /* renamed from: n */
    public final View f8770n;

    /* renamed from: o */
    public final View f8771o;

    /* renamed from: p */
    public final VastVideoViewProgressRunnableTwo f8772p;
    public VastVideoProgressBarWidget progressBarWidget;

    /* renamed from: q */
    public final VastVideoViewCountdownRunnableTwo f8773q;

    /* renamed from: r */
    public final View.OnTouchListener f8774r;
    public VastVideoRadialCountdownWidget radialCountdownWidget;

    /* renamed from: s */
    public final VastVideoCtaButtonWidget f8775s;

    /* renamed from: t */
    public VastVideoBlurLastVideoFrameTask f8776t;
    public VastVideoGradientStripWidget topGradientStripWidget;

    /* renamed from: v */
    public boolean f8778v;

    /* renamed from: w */
    public boolean f8779w;

    /* renamed from: x */
    public boolean f8780x;

    /* renamed from: y */
    public boolean f8781y;

    /* renamed from: f */
    public final MediaPlayer f8762f = new MediaPlayer(m30570b());

    /* renamed from: k */
    public final ExternalViewabilitySessionManager f8767k = new ExternalViewabilitySessionManager(getActivity());

    /* renamed from: u */
    public MediaMetadataRetriever f8777u = new MediaMetadataRetriever();

    /* renamed from: z */
    public int f8782z = 5000;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n��¨\u0006\r"}, m815d2 = {"Lcom/mopub/mobileads/VastVideoViewControllerTwo$Companion;", "", "()V", "CURRENT_POSITION", "", "DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON", "", "RESUMED_VAST_CONFIG", "SEEKER_POSITION_NOT_INITIALIZED", "VAST_VIDEO_CONFIG", "VIDEO_COUNTDOWN_UPDATE_INTERVAL", "", "VIDEO_PROGRESS_TIMER_CHECKER_DELAY", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0080\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0018\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000fH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0016"}, m815d2 = {"Lcom/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback;", "Landroidx/media2/player/MediaPlayer$PlayerCallback;", "(Lcom/mopub/mobileads/VastVideoViewControllerTwo;)V", "complete", "", "getComplete", "()Z", "setComplete", "(Z)V", "onPlaybackCompleted", "", "player", "Landroidx/media2/common/SessionPlayer;", "onPlayerStateChanged", "playerState", "", "onSeekCompleted", "position", "", "playerStateToString", "", IapProductRealmObject.STATE, "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback.class */
    public final class PlayerCallback extends MediaPlayer.PlayerCallback {

        /* renamed from: a */
        public boolean f8783a;

        public PlayerCallback() {
        }

        /* renamed from: a */
        public final String m30386a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "UNKNOWN" : "PLAYER_STATE_ERROR" : "PLAYER_STATE_PLAYING" : "PLAYER_STATE_PAUSED" : "PLAYER_STATE_IDLE";
        }

        public final boolean getComplete() {
            return this.f8783a;
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onPlaybackCompleted(SessionPlayer sessionPlayer) {
            C15149k.m377b(sessionPlayer, "player");
            VastVideoViewControllerTwo.this.m30387l();
            VastVideoViewControllerTwo.updateCountdown$mopub_sdk_base_release$default(VastVideoViewControllerTwo.this, false, 1, null);
            VastVideoViewControllerTwo.this.setComplete(true);
            VastVideoViewControllerTwo.this.m30571a(false);
            if (VastVideoViewControllerTwo.this.getVastVideoConfig().isRewarded()) {
                VastVideoViewControllerTwo.this.m30572a(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
            }
            if (VastVideoViewControllerTwo.this.getVideoError() && VastVideoViewControllerTwo.this.getVastVideoConfig().getRemainingProgressTrackerCount() == 0) {
                VastVideoViewControllerTwo.this.f8767k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_COMPLETE, VastVideoViewControllerTwo.this.getCurrentPosition());
                VastVideoConfigTwo vastVideoConfig = VastVideoViewControllerTwo.this.getVastVideoConfig();
                Context b = VastVideoViewControllerTwo.this.m30570b();
                C15149k.m383a((Object) b, "context");
                vastVideoConfig.handleComplete(b, VastVideoViewControllerTwo.this.getCurrentPosition());
            }
            VastVideoViewControllerTwo.this.f8761e.setVisibility(4);
            VastVideoViewControllerTwo.this.getProgressBarWidget().setVisibility(8);
            VastVideoViewControllerTwo.this.getIconView().setVisibility(8);
            VastVideoViewControllerTwo.this.getTopGradientStripWidget().m30441a();
            VastVideoViewControllerTwo.this.getBottomGradientStripWidget().m30441a();
            VastVideoViewControllerTwo.this.getCtaButtonWidget().m30445a();
            VastCompanionAdConfigTwo vastCompanionAdConfigTwo = VastVideoViewControllerTwo.this.f8764h;
            if (vastCompanionAdConfigTwo != null) {
                Context b2 = VastVideoViewControllerTwo.this.m30570b();
                C15149k.m383a((Object) b2, "context");
                Resources resources = b2.getResources();
                C15149k.m383a((Object) resources, "context.resources");
                if (resources.getConfiguration().orientation == 1) {
                    VastVideoViewControllerTwo.this.getPortraitCompanionAdView().setVisibility(0);
                } else {
                    VastVideoViewControllerTwo.this.getLandscapeCompanionAdView().setVisibility(0);
                }
                Context b3 = VastVideoViewControllerTwo.this.m30570b();
                C15149k.m383a((Object) b3, "context");
                vastCompanionAdConfigTwo.handleImpression(b3, VastVideoViewControllerTwo.this.getDuration());
            } else if (VastVideoViewControllerTwo.this.getBlurredLastVideoFrameImageView().getDrawable() != null) {
                VastVideoViewControllerTwo.this.getBlurredLastVideoFrameImageView().setVisibility(0);
            }
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onPlayerStateChanged(SessionPlayer sessionPlayer, int i) {
            C15149k.m377b(sessionPlayer, "player");
            super.onPlayerStateChanged(sessionPlayer, i);
            if (i != 3) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Player state changed to " + m30386a(i));
                return;
            }
            VastVideoViewControllerTwo.this.f8767k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.RECORD_AD_ERROR, VastVideoViewControllerTwo.this.getCurrentPosition());
            VastVideoViewControllerTwo.this.m30387l();
            VastVideoViewControllerTwo.this.updateCountdown$mopub_sdk_base_release(true);
            VastVideoViewControllerTwo.this.m30569b(false);
            VastVideoViewControllerTwo.this.setVideoError(true);
            VastVideoConfigTwo vastVideoConfig = VastVideoViewControllerTwo.this.getVastVideoConfig();
            Context b = VastVideoViewControllerTwo.this.m30570b();
            C15149k.m383a((Object) b, "context");
            vastVideoConfig.handleError(b, VastErrorCode.GENERAL_LINEAR_AD_ERROR, VastVideoViewControllerTwo.this.getCurrentPosition());
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onSeekCompleted(SessionPlayer sessionPlayer, long j) {
            C15149k.m377b(sessionPlayer, "player");
            VastVideoViewControllerTwo.this.getMediaPlayer().play();
        }

        public final void setComplete(boolean z) {
            this.f8783a = z;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewControllerTwo$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$a.class */
    public static final class View$OnTouchListenerC3860a implements View.OnTouchListener {
        public View$OnTouchListenerC3860a() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            C15149k.m383a((Object) motionEvent, NotificationCompat.CATEGORY_EVENT);
            if (motionEvent.getAction() != 1) {
                return true;
            }
            VastVideoViewControllerTwo vastVideoViewControllerTwo = VastVideoViewControllerTwo.this;
            vastVideoViewControllerTwo.setClosing(!vastVideoViewControllerTwo.f8781y || VastVideoViewControllerTwo.this.isComplete());
            VastVideoViewControllerTwo.this.m30389j();
            VastVideoViewControllerTwo.this.m30573a().onFinish();
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewControllerTwo$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$b.class */
    public static final class C3861b implements VastWebView.AbstractC3865a {

        /* renamed from: a */
        public final /* synthetic */ VastIconConfigTwo f8786a;

        /* renamed from: b */
        public final /* synthetic */ VastVideoViewControllerTwo f8787b;

        public C3861b(VastIconConfigTwo vastIconConfigTwo, VastVideoViewControllerTwo vastVideoViewControllerTwo) {
            this.f8786a = vastIconConfigTwo;
            this.f8787b = vastVideoViewControllerTwo;
        }

        @Override // com.mopub.mobileads.VastWebView.AbstractC3865a
        public final void onVastWebViewClick() {
            TrackingRequest.makeVastTrackingTwoHttpRequest(this.f8786a.getClickTrackingUris(), null, Integer.valueOf(this.f8787b.getCurrentPosition()), this.f8787b.getNetworkMediaFileUrl(), this.f8787b.m30570b());
            VastIconConfigTwo vastIconConfig = this.f8787b.getVastIconConfig();
            if (vastIconConfig != null) {
                Context b = this.f8787b.m30570b();
                C15149k.m383a((Object) b, "context");
                vastIconConfig.handleClick(b, null, this.f8787b.getVastVideoConfig().getDspCreativeId());
            }
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewControllerTwo$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$c.class */
    public static final class View$OnTouchListenerC3862c implements View.OnTouchListener {
        public View$OnTouchListenerC3862c() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            C15149k.m383a((Object) motionEvent, NotificationCompat.CATEGORY_EVENT);
            if (motionEvent.getAction() != 1) {
                return true;
            }
            if (!VastVideoViewControllerTwo.this.getShouldAllowClose() && !VastVideoViewControllerTwo.this.f8781y) {
                return true;
            }
            VastVideoViewControllerTwo.this.f8767k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_CLICK_THRU, VastVideoViewControllerTwo.this.getCurrentPosition());
            VastVideoViewControllerTwo vastVideoViewControllerTwo = VastVideoViewControllerTwo.this;
            vastVideoViewControllerTwo.setClosing(!vastVideoViewControllerTwo.f8781y || VastVideoViewControllerTwo.this.isComplete());
            VastVideoViewControllerTwo.this.m30572a(IntentActions.ACTION_INTERSTITIAL_CLICK);
            VastVideoConfigTwo vastVideoConfig = VastVideoViewControllerTwo.this.getVastVideoConfig();
            Activity activity = VastVideoViewControllerTwo.this.getActivity();
            Integer valueOf = Integer.valueOf(VastVideoViewControllerTwo.this.getDuration());
            valueOf.intValue();
            if (!VastVideoViewControllerTwo.this.isComplete()) {
                valueOf = null;
            }
            vastVideoConfig.handleClickForResult(activity, valueOf != null ? valueOf.intValue() : VastVideoViewControllerTwo.this.getCurrentPosition(), 1);
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewControllerTwo$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$d.class */
    public static final class RunnableC3863d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MediaPlayer f8789a;

        /* renamed from: b */
        public final /* synthetic */ VastVideoViewControllerTwo f8790b;

        public RunnableC3863d(MediaPlayer mediaPlayer, VastVideoViewControllerTwo vastVideoViewControllerTwo, Executor executor) {
            this.f8789a = mediaPlayer;
            this.f8790b = vastVideoViewControllerTwo;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String diskMediaFileUrl;
            this.f8790b.f8767k.onVideoPrepared(this.f8790b.getLayout(), (int) this.f8789a.getDuration());
            this.f8790b.m30390i();
            this.f8790b.getMediaPlayer().setPlayerVolume(1.0f);
            if (this.f8790b.f8764h == null && (diskMediaFileUrl = this.f8790b.getVastVideoConfig().getDiskMediaFileUrl()) != null) {
                VastVideoViewControllerTwo vastVideoViewControllerTwo = this.f8790b;
                vastVideoViewControllerTwo.prepareBlurredLastVideoFrame(vastVideoViewControllerTwo.getBlurredLastVideoFrameImageView(), diskMediaFileUrl);
            }
            this.f8790b.getProgressBarWidget().calibrateAndMakeVisible((int) this.f8789a.getDuration(), this.f8790b.getShowCloseButtonDelay());
            this.f8790b.getRadialCountdownWidget().calibrateAndMakeVisible(this.f8790b.getShowCloseButtonDelay());
            this.f8790b.setCalibrationDone(true);
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewControllerTwo$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$e.class */
    public static final class C3864e implements VastWebView.AbstractC3865a {

        /* renamed from: b */
        public final /* synthetic */ VastCompanionAdConfigTwo f8792b;

        public C3864e(VastCompanionAdConfigTwo vastCompanionAdConfigTwo) {
            this.f8792b = vastCompanionAdConfigTwo;
        }

        @Override // com.mopub.mobileads.VastWebView.AbstractC3865a
        public final void onVastWebViewClick() {
            VastVideoViewControllerTwo.this.m30572a(IntentActions.ACTION_INTERSTITIAL_CLICK);
            VastVideoViewControllerTwo.this.setClosing(true);
            TrackingRequest.makeVastTrackingTwoHttpRequest(this.f8792b.getClickTrackers(), null, Integer.valueOf(VastVideoViewControllerTwo.this.getCurrentPosition()), null, VastVideoViewControllerTwo.this.m30570b());
            VastCompanionAdConfigTwo vastCompanionAdConfigTwo = this.f8792b;
            Context b = VastVideoViewControllerTwo.this.m30570b();
            C15149k.m383a((Object) b, "context");
            vastCompanionAdConfigTwo.handleClick(b, 1, null, VastVideoViewControllerTwo.this.getVastVideoConfig().getDspCreativeId());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x048e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public VastVideoViewControllerTwo(android.app.Activity r10, android.os.Bundle r11, android.os.Bundle r12, long r13, com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener r15) {
        /*
            Method dump skipped, instructions count: 1194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastVideoViewControllerTwo.<init>(android.app.Activity, android.os.Bundle, android.os.Bundle, long, com.mopub.mobileads.BaseVideoViewController$BaseVideoViewControllerListener):void");
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

    public static /* synthetic */ void updateCountdown$mopub_sdk_base_release$default(VastVideoViewControllerTwo vastVideoViewControllerTwo, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                z = false;
            }
            vastVideoViewControllerTwo.updateCountdown$mopub_sdk_base_release(z);
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

    /* renamed from: a */
    public final VideoView m30392a(Context context, int i) {
        VideoView videoView = new VideoView(context);
        Executor mainExecutor = ContextCompat.getMainExecutor(context);
        PlaybackParams build = new PlaybackParams.Builder().setAudioFallbackMode(0).setSpeed(1.0f).build();
        C15149k.m383a((Object) build, "PlaybackParams.Builder()….0f)\n            .build()");
        getMediaPlayer().setPlaybackParams(build);
        getMediaPlayer().setAudioAttributes(new AudioAttributesCompat.Builder().setUsage(1).setContentType(3).build());
        getMediaPlayer().registerPlayerCallback(mainExecutor, (MediaPlayer.PlayerCallback) new PlayerCallback());
        videoView.removeView(videoView.getMediaControlView());
        videoView.setId(View.generateViewId());
        videoView.setPlayer(getMediaPlayer());
        videoView.setOnTouchListener(this.f8774r);
        MediaPlayer mediaPlayer = getMediaPlayer();
        mediaPlayer.setMediaItem(new UriMediaItem.Builder(Uri.parse(getVastVideoConfig().getDiskMediaFileUrl())).build());
        mediaPlayer.prepare().addListener(new RunnableC3863d(mediaPlayer, this, mainExecutor), mainExecutor);
        return videoView;
    }

    /* renamed from: a */
    public final VastWebView m30391a(final VastCompanionAdConfigTwo vastCompanionAdConfigTwo) {
        VastWebView a = VastWebView.m30385a(m30570b(), vastCompanionAdConfigTwo.getVastResource());
        C15149k.m383a((Object) a, "it");
        a.m30383a(new C3864e(vastCompanionAdConfigTwo));
        a.setWebViewClient(new WebViewClient(vastCompanionAdConfigTwo) { // from class: com.mopub.mobileads.VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$2
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                C15149k.m377b(webView, "view");
                C15149k.m377b(str, "url");
                VastCompanionAdConfigTwo vastCompanionAdConfigTwo2 = VastVideoViewControllerTwo.this.f8764h;
                if (vastCompanionAdConfigTwo2 == null) {
                    return true;
                }
                Context b = VastVideoViewControllerTwo.this.m30570b();
                C15149k.m383a((Object) b, "context");
                vastCompanionAdConfigTwo2.handleClick(b, 1, str, VastVideoViewControllerTwo.this.getVastVideoConfig().getDspCreativeId());
                return true;
            }
        });
        C15149k.m383a((Object) a, "VastWebView.createView(c…}\n            }\n        }");
        return a;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo30393a(int i, int i2, Intent intent) {
        if (isClosing() && i == 1 && i2 == -1) {
            m30573a().onFinish();
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo30245a(Configuration configuration) {
        C15149k.m377b(configuration, "newConfig");
        Context b = m30570b();
        C15149k.m383a((Object) b, "context");
        Resources resources = b.getResources();
        C15149k.m383a((Object) resources, "context.resources");
        int i = resources.getConfiguration().orientation;
        if (getLandscapeCompanionAdView().getVisibility() == 0 || getPortraitCompanionAdView().getVisibility() == 0) {
            if (i == 1) {
                getLandscapeCompanionAdView().setVisibility(4);
                getPortraitCompanionAdView().setVisibility(0);
            } else {
                getLandscapeCompanionAdView().setVisibility(0);
                getPortraitCompanionAdView().setVisibility(4);
            }
        }
        VastCompanionAdConfigTwo vastCompanionAd = getVastVideoConfig().getVastCompanionAd(i);
        if (vastCompanionAd != null) {
            Context b2 = m30570b();
            C15149k.m383a((Object) b2, "context");
            vastCompanionAd.handleImpression(b2, getDuration());
        } else {
            vastCompanionAd = null;
        }
        this.f8764h = vastCompanionAd;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo30244a(Bundle bundle) {
        C15149k.m377b(bundle, "outState");
        bundle.putInt(CURRENT_POSITION, this.f8763g);
        bundle.putSerializable(RESUMED_VAST_CONFIG, getVastVideoConfig());
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    public boolean backButtonEnabled() {
        return this.f8780x || getShouldAllowClose();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: c */
    public View mo30239c() {
        return this.f8761e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0092, code lost:
        if (r7 != null) goto L_0x00a9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View createCompanionAdView(com.mopub.mobileads.VastVideoConfigTwo r7, int r8, int r9) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "$this$createCompanionAdView"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r7
            r1 = r8
            com.mopub.mobileads.VastCompanionAdConfigTwo r0 = r0.getVastCompanionAd(r1)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0098
            android.widget.RelativeLayout r0 = new android.widget.RelativeLayout
            r1 = r0
            r2 = r6
            android.content.Context r2 = r2.m30570b()
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
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f8767k
            r1 = r11
            r0.registerVideoObstruction(r1)
            r0 = r6
            r1 = r10
            com.mopub.mobileads.VastWebView r0 = r0.m30391a(r1)
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
            android.content.Context r3 = r3.m30570b()
            int r2 = com.mopub.common.util.Dips.dipsToIntPixels(r2, r3)
            r3 = r10
            int r3 = r3.getHeight()
            r4 = 16
            int r3 = r3 + r4
            float r3 = (float) r3
            r4 = r6
            android.content.Context r4 = r4.m30570b()
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
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f8767k
            r1 = r7
            r0.registerVideoObstruction(r1)
            r0 = r7
            if (r0 == 0) goto L_0x0098
            goto L_0x00a9
        L_0x0098:
            android.view.View r0 = new android.view.View
            r1 = r0
            r2 = r6
            android.content.Context r2 = r2.m30570b()
            r1.<init>(r2)
            r7 = r0
            r0 = r7
            r1 = 4
            r0.setVisibility(r1)
        L_0x00a9:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastVideoViewControllerTwo.createCompanionAdView(com.mopub.mobileads.VastVideoConfigTwo, int, int):android.view.View");
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: d */
    public void mo30238d() {
        m30389j();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: e */
    public void mo30237e() {
        super.mo30237e();
        VastVideoConfigTwo vastVideoConfig = getVastVideoConfig();
        Context b = m30570b();
        C15149k.m383a((Object) b, "context");
        vastVideoConfig.handleImpression(b, getDuration());
        m30572a(IntentActions.ACTION_INTERSTITIAL_SHOW);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: f */
    public void mo30236f() {
        m30387l();
        this.f8767k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_STOPPED, getCurrentPosition());
        this.f8767k.endVideoSession();
        m30572a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: g */
    public void mo30235g() {
        m30387l();
        this.f8763g = getCurrentPosition();
        getMediaPlayer().pause();
        if (!isClosing()) {
            this.f8767k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_PAUSED, getCurrentPosition());
            VastVideoConfigTwo vastVideoConfig = getVastVideoConfig();
            Context b = m30570b();
            C15149k.m383a((Object) b, "context");
            vastVideoConfig.handlePause(b, this.f8763g);
        }
    }

    public Activity getActivity() {
        return this.f8758D;
    }

    public VastVideoBlurLastVideoFrameTask getBlurLastVideoFrameTask() {
        return this.f8776t;
    }

    public ImageView getBlurredLastVideoFrameImageView() {
        return this.f8768l;
    }

    public VastVideoGradientStripWidget getBottomGradientStripWidget() {
        VastVideoGradientStripWidget vastVideoGradientStripWidget = this.bottomGradientStripWidget;
        if (vastVideoGradientStripWidget != null) {
            return vastVideoGradientStripWidget;
        }
        C15149k.m373d("bottomGradientStripWidget");
        throw null;
    }

    public VastVideoCloseButtonWidget getCloseButtonWidget() {
        VastVideoCloseButtonWidget vastVideoCloseButtonWidget = this.closeButtonWidget;
        if (vastVideoCloseButtonWidget != null) {
            return vastVideoCloseButtonWidget;
        }
        C15149k.m373d("closeButtonWidget");
        throw null;
    }

    public VastVideoCtaButtonWidget getCtaButtonWidget() {
        return this.f8775s;
    }

    public int getCurrentPosition() {
        return (int) getMediaPlayer().getCurrentPosition();
    }

    public int getDuration() {
        return (int) getMediaPlayer().getDuration();
    }

    public Bundle getExtras() {
        return this.f8759E;
    }

    public View getIconView() {
        return this.f8771o;
    }

    public View getLandscapeCompanionAdView() {
        return this.f8769m;
    }

    public MediaMetadataRetriever getMediaMetadataRetriever() {
        return this.f8777u;
    }

    public MediaPlayer getMediaPlayer() {
        return this.f8762f;
    }

    public String getNetworkMediaFileUrl() {
        return getVastVideoConfig().getNetworkMediaFileUrl();
    }

    public View getPortraitCompanionAdView() {
        return this.f8770n;
    }

    public VastVideoProgressBarWidget getProgressBarWidget() {
        VastVideoProgressBarWidget vastVideoProgressBarWidget = this.progressBarWidget;
        if (vastVideoProgressBarWidget != null) {
            return vastVideoProgressBarWidget;
        }
        C15149k.m373d("progressBarWidget");
        throw null;
    }

    public VastVideoRadialCountdownWidget getRadialCountdownWidget() {
        VastVideoRadialCountdownWidget vastVideoRadialCountdownWidget = this.radialCountdownWidget;
        if (vastVideoRadialCountdownWidget != null) {
            return vastVideoRadialCountdownWidget;
        }
        C15149k.m373d("radialCountdownWidget");
        throw null;
    }

    public Bundle getSavedInstanceState() {
        return this.f8760F;
    }

    public boolean getShouldAllowClose() {
        return this.f8779w;
    }

    public int getShowCloseButtonDelay() {
        return this.f8782z;
    }

    public VastVideoGradientStripWidget getTopGradientStripWidget() {
        VastVideoGradientStripWidget vastVideoGradientStripWidget = this.topGradientStripWidget;
        if (vastVideoGradientStripWidget != null) {
            return vastVideoGradientStripWidget;
        }
        C15149k.m373d("topGradientStripWidget");
        throw null;
    }

    public VastIconConfigTwo getVastIconConfig() {
        return this.f8766j;
    }

    public VastVideoConfigTwo getVastVideoConfig() {
        return this.f8765i;
    }

    public boolean getVideoError() {
        return this.f8757C;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: h */
    public void mo30234h() {
        m30388k();
        int i = this.f8763g;
        if (i > 0) {
            this.f8767k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_PLAYING, i);
            C15149k.m383a((Object) getMediaPlayer().seekTo(this.f8763g, 3), "mediaPlayer.seekTo(seeke…MediaPlayer.SEEK_CLOSEST)");
        } else {
            this.f8767k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_LOADED, getDuration());
            if (!isComplete()) {
                getMediaPlayer().play();
            }
        }
        if (this.f8763g != -1) {
            VastVideoConfigTwo vastVideoConfig = getVastVideoConfig();
            Context b = m30570b();
            C15149k.m383a((Object) b, "context");
            vastVideoConfig.handleResume(b, this.f8763g);
        }
    }

    public void handleIconDisplay(int i) {
        Integer durationMS;
        VastIconConfigTwo vastIconConfig;
        VastIconConfigTwo vastIconConfig2 = getVastIconConfig();
        if (vastIconConfig2 != null) {
            int offsetMS = vastIconConfig2.getOffsetMS();
            getIconView().setVisibility(0);
            String networkMediaFileUrl = getNetworkMediaFileUrl();
            if (!(networkMediaFileUrl == null || (vastIconConfig = getVastIconConfig()) == null)) {
                Context b = m30570b();
                C15149k.m383a((Object) b, "context");
                vastIconConfig.handleImpression(b, i, networkMediaFileUrl);
            }
            VastIconConfigTwo vastIconConfig3 = getVastIconConfig();
            if (vastIconConfig3 != null && (durationMS = vastIconConfig3.getDurationMS()) != null && i >= offsetMS + durationMS.intValue()) {
                getIconView().setVisibility(8);
            }
        }
    }

    public void handleViewabilityQuartileEvent$mopub_sdk_base_release(String str) {
        C15149k.m377b(str, "enumValue");
        ExternalViewabilitySession.VideoEvent valueOf = ExternalViewabilitySession.VideoEvent.valueOf(str);
        if (valueOf != null) {
            this.f8767k.recordVideoEvent(valueOf, getCurrentPosition());
        }
    }

    /* renamed from: i */
    public final void m30390i() {
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
            if (skipOffsetMillis != null) {
                setShowCloseButtonDelay(skipOffsetMillis.intValue());
            }
        } catch (NumberFormatException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Failed to parse skipoffset " + getVastVideoConfig().getSkipOffset());
        }
    }

    public boolean isCalibrationDone() {
        return this.f8755A;
    }

    public boolean isClosing() {
        return this.f8756B;
    }

    public boolean isComplete() {
        return this.f8778v;
    }

    /* renamed from: j */
    public final void m30389j() {
        int currentPosition = getCurrentPosition();
        if (isComplete()) {
            this.f8767k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_COMPLETE, getDuration());
            VastVideoConfigTwo vastVideoConfig = getVastVideoConfig();
            Context b = m30570b();
            C15149k.m383a((Object) b, "context");
            vastVideoConfig.handleComplete(b, getDuration());
        } else if (this.f8780x) {
            this.f8767k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_COMPLETE, currentPosition);
            VastVideoConfigTwo vastVideoConfig2 = getVastVideoConfig();
            Context b2 = m30570b();
            C15149k.m383a((Object) b2, "context");
            vastVideoConfig2.handleSkip(b2, currentPosition);
        }
        VastVideoConfigTwo vastVideoConfig3 = getVastVideoConfig();
        Context b3 = m30570b();
        C15149k.m383a((Object) b3, "context");
        vastVideoConfig3.handleClose(b3, getDuration());
    }

    /* renamed from: k */
    public final void m30388k() {
        this.f8772p.startRepeating(50L);
        this.f8773q.startRepeating(250L);
    }

    /* renamed from: l */
    public final void m30387l() {
        this.f8772p.stop();
        this.f8773q.stop();
    }

    public void prepareBlurredLastVideoFrame(ImageView imageView, String str) {
        C15149k.m377b(imageView, "blurredLastVideoFrameImageView");
        C15149k.m377b(str, "diskMediaFileUrl");
        MediaMetadataRetriever mediaMetadataRetriever = getMediaMetadataRetriever();
        if (mediaMetadataRetriever != null) {
            VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask = new VastVideoBlurLastVideoFrameTask(mediaMetadataRetriever, imageView, getDuration());
            AsyncTasks.safeExecuteOnExecutor(vastVideoBlurLastVideoFrameTask, str);
            setBlurLastVideoFrameTask(vastVideoBlurLastVideoFrameTask);
        }
    }

    public void setBlurLastVideoFrameTask(VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask) {
        this.f8776t = vastVideoBlurLastVideoFrameTask;
    }

    public void setBottomGradientStripWidget(VastVideoGradientStripWidget vastVideoGradientStripWidget) {
        C15149k.m377b(vastVideoGradientStripWidget, "<set-?>");
        this.bottomGradientStripWidget = vastVideoGradientStripWidget;
    }

    public void setCalibrationDone(boolean z) {
        this.f8755A = z;
    }

    public void setCloseButtonWidget(VastVideoCloseButtonWidget vastVideoCloseButtonWidget) {
        C15149k.m377b(vastVideoCloseButtonWidget, "<set-?>");
        this.closeButtonWidget = vastVideoCloseButtonWidget;
    }

    public void setClosing(boolean z) {
        this.f8756B = z;
    }

    public void setComplete(boolean z) {
        this.f8778v = z;
    }

    public void setMediaMetadataRetriever(MediaMetadataRetriever mediaMetadataRetriever) {
        this.f8777u = mediaMetadataRetriever;
    }

    public void setProgressBarWidget(VastVideoProgressBarWidget vastVideoProgressBarWidget) {
        C15149k.m377b(vastVideoProgressBarWidget, "<set-?>");
        this.progressBarWidget = vastVideoProgressBarWidget;
    }

    public void setRadialCountdownWidget(VastVideoRadialCountdownWidget vastVideoRadialCountdownWidget) {
        C15149k.m377b(vastVideoRadialCountdownWidget, "<set-?>");
        this.radialCountdownWidget = vastVideoRadialCountdownWidget;
    }

    public void setShouldAllowClose(boolean z) {
        this.f8779w = z;
    }

    public void setShowCloseButtonDelay(int i) {
        this.f8782z = i;
    }

    public void setTopGradientStripWidget(VastVideoGradientStripWidget vastVideoGradientStripWidget) {
        C15149k.m377b(vastVideoGradientStripWidget, "<set-?>");
        this.topGradientStripWidget = vastVideoGradientStripWidget;
    }

    public void setVideoError(boolean z) {
        this.f8757C = z;
    }

    public void updateCountdown$mopub_sdk_base_release(boolean z) {
        if (isCalibrationDone()) {
            getRadialCountdownWidget().updateCountdownProgress(getShowCloseButtonDelay(), getCurrentPosition());
        }
        if (z || getCurrentPosition() >= getShowCloseButtonDelay()) {
            getRadialCountdownWidget().setVisibility(8);
            getCloseButtonWidget().setVisibility(0);
            setShouldAllowClose(true);
            if (this.f8781y || !getVastVideoConfig().isRewarded()) {
                getCtaButtonWidget().m30443b();
            }
        }
    }

    public void updateProgressBar() {
        getProgressBarWidget().updateProgress(getCurrentPosition());
    }
}
