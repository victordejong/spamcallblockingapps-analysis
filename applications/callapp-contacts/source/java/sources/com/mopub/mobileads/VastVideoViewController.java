package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import androidx.core.content.C0790b;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.UriMediaItem;
import androidx.media2.player.C2187j;
import androidx.media2.player.MediaPlayer;
import androidx.media2.widget.VideoView;
import com.mopub.common.DataKeys;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.IntentActions;
import com.mopub.common.VideoEvent;
import com.mopub.common.ViewabilityObstruction;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.BaseVideoViewController;
import com.mopub.mobileads.VastResource;
import com.mopub.mobileads.VastVideoConfig;
import com.mopub.mobileads.VastWebView;
import com.mopub.mobileads.base.C16855R;
import com.mopub.mobileads.factories.MediaPlayerFactory;
import com.mopub.mobileads.factories.VideoViewFactory;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��Ú\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010#\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0017\u0018�� ¦\u00012\u00020\u0001:\u0004¦\u0001§\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\n\u0010\u0083\u0001\u001a\u00030\u0084\u0001H\u0012J\t\u0010\u0085\u0001\u001a\u00020.H\u0016J\u001d\u0010\u0086\u0001\u001a\u00030\u0082\u00012\b\u0010\u0087\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u0089\u0001\u001a\u00020bH\u0012J\t\u0010\u008a\u0001\u001a\u00020bH\u0016J\t\u0010\u008b\u0001\u001a\u00020bH\u0016J\t\u0010\u008c\u0001\u001a\u000205H\u0014J\n\u0010\u008d\u0001\u001a\u00030\u0084\u0001H\u0016J\u0013\u0010\u008e\u0001\u001a\u00030\u0084\u00012\u0007\u0010\u008f\u0001\u001a\u00020bH\u0016J\u0013\u0010\u0090\u0001\u001a\u00030\u0084\u00012\u0007\u0010\u0091\u0001\u001a\u00020IH\u0016J(\u0010\u0092\u0001\u001a\u00030\u0084\u00012\u0007\u0010\u0093\u0001\u001a\u00020b2\u0007\u0010\u0094\u0001\u001a\u00020b2\n\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0096\u0001H\u0014J\n\u0010\u0097\u0001\u001a\u00030\u0084\u0001H\u0014J\u0014\u0010\u0098\u0001\u001a\u00030\u0084\u00012\b\u0010\u0099\u0001\u001a\u00030\u009a\u0001H\u0014J\n\u0010\u009b\u0001\u001a\u00030\u0084\u0001H\u0014J\n\u0010\u009c\u0001\u001a\u00030\u0084\u0001H\u0014J\n\u0010\u009d\u0001\u001a\u00030\u0084\u0001H\u0015J\n\u0010\u009e\u0001\u001a\u00030\u0084\u0001H\u0014J\u0013\u0010\u009f\u0001\u001a\u00030\u0084\u00012\u0007\u0010 \u0001\u001a\u00020\u0005H\u0014J\n\u0010¡\u0001\u001a\u00030\u0084\u0001H\u0012J\n\u0010¢\u0001\u001a\u00030\u0084\u0001H\u0012J\u0015\u0010£\u0001\u001a\u00030\u0084\u00012\t\b\u0002\u0010¤\u0001\u001a\u00020.H\u0016J\n\u0010¥\u0001\u001a\u00030\u0084\u0001H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR$\u0010\u000e\u001a\u00020\u000f8\u0016@\u0016X\u0097.¢\u0006\u0014\n��\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u00020\u00178\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0018\u0010\u0011\u001a\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u001c8\u0016@\u0016X\u0097.¢\u0006\u0014\n��\u0012\u0004\b\u001d\u0010\u0011\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u000e\u0010\"\u001a\u00020#X\u0092\u0004¢\u0006\u0002\n��R\u001c\u0010$\u001a\u00020%8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b&\u0010\u0011\u001a\u0004\b'\u0010(R\u000e\u0010)\u001a\u00020*X\u0092\u0004¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b+\u0010,R$\u0010-\u001a\u00020.8\u0016@\u0016X\u0097\u000e¢\u0006\u0014\n��\u0012\u0004\b/\u0010\u0011\u001a\u0004\b0\u00101\"\u0004\b2\u00103R$\u00104\u001a\u0002058\u0016@\u0016X\u0097.¢\u0006\u0014\n��\u0012\u0004\b6\u0010\u0011\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R$\u0010;\u001a\u00020.8\u0016@\u0016X\u0097\u000e¢\u0006\u0014\n��\u0012\u0004\b<\u0010\u0011\u001a\u0004\b;\u00101\"\u0004\b=\u00103R$\u0010>\u001a\u00020.8\u0016@\u0016X\u0097\u000e¢\u0006\u0014\n��\u0012\u0004\b?\u0010\u0011\u001a\u0004\b>\u00101\"\u0004\b@\u00103R$\u0010A\u001a\u00020.8\u0016@\u0016X\u0097\u000e¢\u0006\u0014\n��\u0012\u0004\bB\u0010\u0011\u001a\u0004\bA\u00101\"\u0004\bC\u00103R\u0014\u0010D\u001a\u00020EX\u0096\u0004¢\u0006\b\n��\u001a\u0004\bF\u0010GR\u0016\u0010H\u001a\u0004\u0018\u00010I8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010KR\u0018\u0010L\u001a\u00060MR\u00020��X\u0096\u0004¢\u0006\b\n��\u001a\u0004\bN\u0010OR$\u0010P\u001a\u00020Q8\u0016@\u0016X\u0097.¢\u0006\u0014\n��\u0012\u0004\bR\u0010\u0011\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR\u000e\u0010W\u001a\u00020XX\u0092\u0004¢\u0006\u0002\n��R$\u0010Y\u001a\u00020Z8\u0016@\u0016X\u0097.¢\u0006\u0014\n��\u0012\u0004\b[\u0010\u0011\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b`\u0010,R\u000e\u0010a\u001a\u00020bX\u0092\u000e¢\u0006\u0002\n��R$\u0010c\u001a\u00020.8\u0016@\u0016X\u0097\u000e¢\u0006\u0014\n��\u0012\u0004\bd\u0010\u0011\u001a\u0004\be\u00101\"\u0004\bf\u00103R$\u0010g\u001a\u00020b8\u0016@\u0016X\u0097\u000e¢\u0006\u0014\n��\u0012\u0004\bh\u0010\u0011\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR$\u0010m\u001a\u00020\u000f8\u0016@\u0016X\u0097.¢\u0006\u0014\n��\u0012\u0004\bn\u0010\u0011\u001a\u0004\bo\u0010\u0013\"\u0004\bp\u0010\u0015R\u0014\u0010q\u001a\b\u0012\u0004\u0012\u00020s0rX\u0092\u000e¢\u0006\u0002\n��R\u001e\u0010t\u001a\u0004\u0018\u00010u8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\bv\u0010\u0011\u001a\u0004\bw\u0010xR\u001c\u0010y\u001a\u00020z8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b{\u0010\u0011\u001a\u0004\b|\u0010}R\u001b\u0010~\u001a\u00020.X\u0096\u000e¢\u0006\u000f\n��\u001a\u0004\b\u007f\u00101\"\u0005\b\u0080\u0001\u00103R\u0010\u0010\u0081\u0001\u001a\u00030\u0082\u0001X\u0092\u0004¢\u0006\u0002\n��¨\u0006¨\u0001"}, m4298d2 = {"Lcom/mopub/mobileads/VastVideoViewController;", "Lcom/mopub/mobileads/BaseVideoViewController;", "activity", "Landroid/app/Activity;", "extras", "Landroid/os/Bundle;", "savedInstanceState", DataKeys.BROADCAST_IDENTIFIER_KEY, "", "baseListener", "Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;", "(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V", "getActivity", "()Landroid/app/Activity;", "bottomGradientStripWidget", "Lcom/mopub/mobileads/VastVideoGradientStripWidget;", "bottomGradientStripWidget$annotations", "()V", "getBottomGradientStripWidget", "()Lcom/mopub/mobileads/VastVideoGradientStripWidget;", "setBottomGradientStripWidget", "(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V", "clickThroughListener", "Landroid/view/View$OnTouchListener;", "clickThroughListener$annotations", "getClickThroughListener", "()Landroid/view/View$OnTouchListener;", "closeButtonWidget", "Lcom/mopub/mobileads/VastVideoCloseButtonWidget;", "closeButtonWidget$annotations", "getCloseButtonWidget", "()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;", "setCloseButtonWidget", "(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)V", "countdownRunnable", "Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;", "ctaButtonWidget", "Lcom/mopub/mobileads/VideoCtaButtonWidget;", "ctaButtonWidget$annotations", "getCtaButtonWidget", "()Lcom/mopub/mobileads/VideoCtaButtonWidget;", "externalViewabilitySessionManager", "Lcom/mopub/common/ExternalViewabilitySessionManager;", "getExtras", "()Landroid/os/Bundle;", "hasCompanionAd", "", "hasCompanionAd$annotations", "getHasCompanionAd", "()Z", "setHasCompanionAd", "(Z)V", "iconView", "Landroid/view/View;", "iconView$annotations", "getIconView", "()Landroid/view/View;", "setIconView", "(Landroid/view/View;)V", "isCalibrationDone", "isCalibrationDone$annotations", "setCalibrationDone", "isClosing", "isClosing$annotations", "setClosing", "isComplete", "isComplete$annotations", "setComplete", "mediaPlayer", "Landroidx/media2/player/MediaPlayer;", "getMediaPlayer", "()Landroidx/media2/player/MediaPlayer;", "networkMediaFileUrl", "", "getNetworkMediaFileUrl", "()Ljava/lang/String;", "playerCallback", "Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;", "getPlayerCallback", "()Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;", "progressBarWidget", "Lcom/mopub/mobileads/VastVideoProgressBarWidget;", "progressBarWidget$annotations", "getProgressBarWidget", "()Lcom/mopub/mobileads/VastVideoProgressBarWidget;", "setProgressBarWidget", "(Lcom/mopub/mobileads/VastVideoProgressBarWidget;)V", "progressCheckerRunnable", "Lcom/mopub/mobileads/VastVideoViewProgressRunnable;", "radialCountdownWidget", "Lcom/mopub/mobileads/RadialCountdownWidget;", "radialCountdownWidget$annotations", "getRadialCountdownWidget", "()Lcom/mopub/mobileads/RadialCountdownWidget;", "setRadialCountdownWidget", "(Lcom/mopub/mobileads/RadialCountdownWidget;)V", "getSavedInstanceState", "seekerPositionOnPause", "", "shouldAllowClose", "shouldAllowClose$annotations", "getShouldAllowClose", "setShouldAllowClose", "showCloseButtonDelay", "showCloseButtonDelay$annotations", "getShowCloseButtonDelay", "()I", "setShowCloseButtonDelay", "(I)V", "topGradientStripWidget", "topGradientStripWidget$annotations", "getTopGradientStripWidget", "setTopGradientStripWidget", "vastCompanionAdConfigs", "", "Lcom/mopub/mobileads/VastCompanionAdConfig;", "vastIconConfig", "Lcom/mopub/mobileads/VastIconConfig;", "vastIconConfig$annotations", "getVastIconConfig", "()Lcom/mopub/mobileads/VastIconConfig;", "vastVideoConfig", "Lcom/mopub/mobileads/VastVideoConfig;", "vastVideoConfig$annotations", "getVastVideoConfig", "()Lcom/mopub/mobileads/VastVideoConfig;", "videoError", "getVideoError", "setVideoError", "videoView", "Landroidx/media2/widget/VideoView;", "adjustSkipOffset", "", "backButtonEnabled", "createVideoView", "context", "Landroid/content/Context;", "initialVisibility", "getCurrentPosition", "getDuration", "getVideoView", "handleExitTrackers", "handleIconDisplay", "currentPosition", "handleViewabilityQuartileEvent", "enumValue", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onBackPressed", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "onCreate", "onDestroy", "onPause", "onResume", "onSaveInstanceState", "outState", "startRunnables", "stopRunnables", "updateCountdown", "forceCloseable", "updateProgressBar", "Companion", "PlayerCallback", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
@Mockable
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoViewController.class */
public class VastVideoViewController extends BaseVideoViewController {
    public static final String CURRENT_POSITION = "current_position";
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON = 5000;
    public static final int MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON = 16000;
    public static final String RESUMED_VAST_CONFIG = "resumed_vast_config";
    public static final String VAST_VIDEO_CONFIG = "vast_video_config";
    public static final int WEBVIEW_PADDING = 16;
    public VastVideoGradientStripWidget bottomGradientStripWidget;

    /* renamed from: c */
    private final VideoView f59570c;
    public VastVideoCloseButtonWidget closeButtonWidget;

    /* renamed from: d */
    private final MediaPlayer f59571d;

    /* renamed from: f */
    private int f59573f;

    /* renamed from: g */
    private Set<VastCompanionAdConfig> f59574g;

    /* renamed from: h */
    private final VastVideoConfig f59575h;

    /* renamed from: i */
    private final VastIconConfig f59576i;
    public View iconView;

    /* renamed from: j */
    private final ExternalViewabilitySessionManager f59577j;

    /* renamed from: k */
    private final VastVideoViewProgressRunnable f59578k;

    /* renamed from: l */
    private final VastVideoViewCountdownRunnable f59579l;

    /* renamed from: m */
    private final View.OnTouchListener f59580m;

    /* renamed from: n */
    private final VideoCtaButtonWidget f59581n;

    /* renamed from: o */
    private boolean f59582o;

    /* renamed from: p */
    private boolean f59583p;
    public VastVideoProgressBarWidget progressBarWidget;

    /* renamed from: r */
    private boolean f59585r;
    public RadialCountdownWidget radialCountdownWidget;

    /* renamed from: s */
    private boolean f59586s;

    /* renamed from: t */
    private boolean f59587t;
    public VastVideoGradientStripWidget topGradientStripWidget;

    /* renamed from: u */
    private boolean f59588u;

    /* renamed from: v */
    private final Activity f59589v;

    /* renamed from: w */
    private final Bundle f59590w;

    /* renamed from: x */
    private final Bundle f59591x;

    /* renamed from: e */
    private final PlayerCallback f59572e = new PlayerCallback();

    /* renamed from: q */
    private int f59584q = 5000;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\fX\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lcom/mopub/mobileads/VastVideoViewController$Companion;", "", "()V", "CURRENT_POSITION", "", "DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON", "", "MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON", "RESUMED_VAST_CONFIG", "SEEKER_POSITION_NOT_INITIALIZED", "VAST_VIDEO_CONFIG", "VIDEO_COUNTDOWN_UPDATE_INTERVAL", "", "VIDEO_PROGRESS_TIMER_CHECKER_DELAY", "WEBVIEW_PADDING", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0018\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000fH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0016"}, m4298d2 = {"Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;", "Landroidx/media2/player/MediaPlayer$PlayerCallback;", "(Lcom/mopub/mobileads/VastVideoViewController;)V", EventConstants.COMPLETE, "", "getComplete", "()Z", "setComplete", "(Z)V", "onPlaybackCompleted", "", "player", "Landroidx/media2/common/SessionPlayer;", "onPlayerStateChanged", "playerState", "", "onSeekCompleted", "position", "", "playerStateToString", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$PlayerCallback.class */
    public final class PlayerCallback extends MediaPlayer.AbstractC2120i {

        /* renamed from: b */
        private boolean f59594b;

        public PlayerCallback() {
            VastVideoViewController.this = r4;
        }

        public final boolean getComplete() {
            return this.f59594b;
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onPlaybackCompleted(SessionPlayer player) {
            C18524p.m3841c(player, "player");
            VastVideoViewController.this.m6387f();
            VastVideoViewController.updateCountdown$default(VastVideoViewController.this, false, 1, null);
            VastVideoViewController.this.setComplete(true);
            if (!VastVideoViewController.this.getVideoError() && VastVideoViewController.this.getVastVideoConfig().getRemainingProgressTrackerCount() == 0) {
                VastVideoViewController.this.f59577j.recordVideoEvent(VideoEvent.AD_COMPLETE, VastVideoViewController.this.getCurrentPosition());
                VastVideoConfig vastVideoConfig = VastVideoViewController.this.getVastVideoConfig();
                Context context = VastVideoViewController.this.f59125a;
                C18524p.m3849a((Object) context, "context");
                vastVideoConfig.handleComplete(context, VastVideoViewController.this.getCurrentPosition());
            }
            VastVideoViewController.this.f59570c.setVisibility(4);
            VastVideoViewController.this.getProgressBarWidget().setVisibility(8);
            if (VastVideoViewController.this.iconView != null) {
                VastVideoViewController.this.getIconView().setVisibility(8);
            }
            VastVideoViewController.this.getTopGradientStripWidget().m6395a();
            VastVideoViewController.this.getBottomGradientStripWidget().m6395a();
            VastVideoViewController.this.getCtaButtonWidget().m6360b();
            VastVideoCloseButtonWidget closeButtonWidget = VastVideoViewController.this.getCloseButtonWidget();
            if (!closeButtonWidget.f59520d) {
                closeButtonWidget.f59518b.setImageDrawable(C0790b.m44502a(closeButtonWidget.getContext(), C16855R.C16856drawable.ic_mopub_close_button));
            }
            VastVideoViewController vastVideoViewController = VastVideoViewController.this;
            vastVideoViewController.f59126b.onVideoFinish(vastVideoViewController.getDuration());
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onPlayerStateChanged(SessionPlayer player, int i) {
            C18524p.m3841c(player, "player");
            super.onPlayerStateChanged(player, i);
            if (i == 1) {
                if (!VastVideoViewController.this.f59577j.hasImpressionOccurred()) {
                    return;
                }
                VastVideoViewController.this.f59577j.recordVideoEvent(VideoEvent.AD_PAUSED, VastVideoViewController.this.getCurrentPosition());
            } else if (i == 2) {
                if (VastVideoViewController.this.f59577j.hasImpressionOccurred()) {
                    VastVideoViewController.this.f59577j.recordVideoEvent(VideoEvent.AD_RESUMED, VastVideoViewController.this.getCurrentPosition());
                } else {
                    VastVideoViewController.this.f59577j.trackImpression();
                }
            } else if (i != 3) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                StringBuilder sb = new StringBuilder("Player state changed to ");
                sb.append(i != 0 ? i != 1 ? i != 2 ? i != 3 ? "UNKNOWN" : "PLAYER_STATE_ERROR" : "PLAYER_STATE_PLAYING" : "PLAYER_STATE_PAUSED" : "PLAYER_STATE_IDLE");
                MoPubLog.log(sdkLogEvent, sb.toString());
            } else {
                VastVideoViewController.this.f59577j.recordVideoEvent(VideoEvent.RECORD_AD_ERROR, VastVideoViewController.this.getCurrentPosition());
                VastVideoViewController.this.m6387f();
                VastVideoViewController.this.updateCountdown(true);
                VastVideoViewController vastVideoViewController = VastVideoViewController.this;
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Video cannot be played.");
                vastVideoViewController.m6552a(IntentActions.ACTION_FULLSCREEN_FAIL);
                VastVideoViewController.this.setVideoError(true);
                VastVideoConfig vastVideoConfig = VastVideoViewController.this.getVastVideoConfig();
                Context context = VastVideoViewController.this.f59125a;
                C18524p.m3849a((Object) context, "context");
                vastVideoConfig.handleError(context, VastErrorCode.GENERAL_LINEAR_AD_ERROR, VastVideoViewController.this.getCurrentPosition());
            }
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onSeekCompleted(SessionPlayer player, long j) {
            C18524p.m3841c(player, "player");
            VastVideoViewController.this.getMediaPlayer().mo41388a();
        }

        public final void setComplete(boolean z) {
            this.f59594b = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007¨\u0006\b"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/view/View;", "kotlin.jvm.PlatformType", "event", "Landroid/view/MotionEvent;", "onTouch", "com/mopub/mobileads/VastVideoViewController$14$1"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: com.mopub.mobileads.VastVideoViewController$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$a.class */
    public static final class View$OnTouchListenerC16824a implements View.OnTouchListener {
        View$OnTouchListenerC16824a() {
            VastVideoViewController.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent event) {
            C18524p.m3849a((Object) event, "event");
            if (event.getAction() != 1) {
                return true;
            }
            VastVideoViewController vastVideoViewController = VastVideoViewController.this;
            vastVideoViewController.setClosing(vastVideoViewController.isComplete());
            VastVideoViewController.this.handleExitTrackers();
            VastVideoViewController.this.f59126b.onVideoFinish(VastVideoViewController.this.getCurrentPosition());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "view", "Landroid/view/View;", "kotlin.jvm.PlatformType", "event", "Landroid/view/MotionEvent;", "onTouch"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: com.mopub.mobileads.VastVideoViewController$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$b.class */
    public static final class View$OnTouchListenerC16825b implements View.OnTouchListener {
        public static final View$OnTouchListenerC16825b INSTANCE = new View$OnTouchListenerC16825b();

        View$OnTouchListenerC16825b() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: com.mopub.mobileads.VastVideoViewController$c */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$c.class */
    public static final class View$OnClickListenerC16826c implements View.OnClickListener {
        public static final View$OnClickListenerC16826c INSTANCE = new View$OnClickListenerC16826c();

        View$OnClickListenerC16826c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, m4298d2 = {"<anonymous>", "", "run", "com/mopub/mobileads/VastVideoViewController$createVideoView$1$1"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: com.mopub.mobileads.VastVideoViewController$d */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$d.class */
    public static final class RunnableC16827d implements Runnable {

        /* renamed from: a */
        final /* synthetic */ MediaPlayer f59596a;

        /* renamed from: b */
        final /* synthetic */ VastVideoViewController f59597b;

        /* renamed from: c */
        final /* synthetic */ Executor f59598c;

        RunnableC16827d(MediaPlayer mediaPlayer, VastVideoViewController vastVideoViewController, Executor executor) {
            this.f59596a = mediaPlayer;
            this.f59597b = vastVideoViewController;
            this.f59598c = executor;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f59597b.f59577j.onVideoPrepared(this.f59596a.mo41349f());
            VastVideoViewController.access$adjustSkipOffset(this.f59597b);
            this.f59597b.getMediaPlayer().m41365b(1.0f);
            this.f59597b.f59126b.onCompanionAdsReady(this.f59597b.f59574g, (int) this.f59596a.mo41349f());
            this.f59597b.getProgressBarWidget().calibrateAndMakeVisible((int) this.f59596a.mo41349f(), this.f59597b.getShowCloseButtonDelay());
            this.f59597b.getRadialCountdownWidget().calibrateAndMakeVisible(this.f59597b.getShowCloseButtonDelay());
            this.f59597b.getRadialCountdownWidget().updateCountdownProgress(this.f59597b.getShowCloseButtonDelay(), (int) this.f59596a.mo41351e());
            this.f59597b.setCalibrationDone(true);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0004"}, m4298d2 = {"<anonymous>", "", "onVastWebViewClick", "com/mopub/mobileads/VastVideoViewController$handleIconDisplay$2$1$1", "com/mopub/mobileads/VastVideoViewController$$special$$inlined$also$lambda$1"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: com.mopub.mobileads.VastVideoViewController$e */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$e.class */
    public static final class C16828e implements VastWebView.AbstractC16829a {

        /* renamed from: a */
        final /* synthetic */ VastIconConfig f59599a;

        /* renamed from: b */
        final /* synthetic */ VastVideoViewController f59600b;

        C16828e(VastIconConfig vastIconConfig, VastVideoViewController vastVideoViewController) {
            this.f59599a = vastIconConfig;
            this.f59600b = vastVideoViewController;
        }

        @Override // com.mopub.mobileads.VastWebView.AbstractC16829a
        public final void onVastWebViewClick() {
            TrackingRequest.makeVastTrackingHttpRequest(this.f59599a.getClickTrackingUris(), null, Integer.valueOf(this.f59600b.getCurrentPosition()), this.f59600b.getNetworkMediaFileUrl(), this.f59600b.f59125a);
            VastIconConfig vastIconConfig = this.f59600b.getVastIconConfig();
            if (vastIconConfig != null) {
                Context context = this.f59600b.f59125a;
                C18524p.m3849a((Object) context, "context");
                vastIconConfig.handleClick(context, null, this.f59600b.getVastVideoConfig().getDspCreativeId());
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastVideoViewController(Activity activity, Bundle extras, Bundle bundle, long j, BaseVideoViewController.BaseVideoViewControllerListener baseListener) {
        super(activity, Long.valueOf(j), baseListener);
        VastVideoConfig vastVideoConfig;
        C18524p.m3841c(activity, "activity");
        C18524p.m3841c(extras, "extras");
        C18524p.m3841c(baseListener, "baseListener");
        this.f59589v = activity;
        this.f59590w = extras;
        this.f59591x = bundle;
        MediaPlayerFactory.Companion companion = MediaPlayerFactory.Companion;
        Context context = this.f59125a;
        C18524p.m3849a((Object) context, "context");
        this.f59571d = companion.create(context);
        this.f59573f = -1;
        this.f59574g = new HashSet();
        ExternalViewabilitySessionManager create = ExternalViewabilitySessionManager.create();
        C18524p.m3849a((Object) create, "ExternalViewabilitySessionManager.create()");
        this.f59577j = create;
        Bundle savedInstanceState = getSavedInstanceState();
        VastVideoConfig serializable = savedInstanceState != null ? savedInstanceState.getSerializable(RESUMED_VAST_CONFIG) : null;
        VastVideoConfig vastVideoConfig2 = !(serializable instanceof VastVideoConfig) ? null : serializable;
        AdData adData = (AdData) getExtras().getParcelable(DataKeys.AD_DATA_KEY);
        if (vastVideoConfig2 == null) {
            VastVideoConfig.Companion companion2 = VastVideoConfig.Companion;
            if (adData == null) {
                throw new IllegalArgumentException("AdData is invalid".toString());
            }
            String vastVideoConfigString = adData.getVastVideoConfigString();
            if (vastVideoConfigString == null) {
                throw new IllegalArgumentException("VastVideoConfigByteArray is null".toString());
            }
            vastVideoConfig = companion2.fromVastVideoConfigString(vastVideoConfigString);
            if (vastVideoConfig == null) {
                throw new IllegalArgumentException("VastVideoConfig is invalid".toString());
            }
        } else {
            vastVideoConfig = vastVideoConfig2;
        }
        this.f59575h = vastVideoConfig;
        if (adData != null) {
            getVastVideoConfig().setCountdownTimerDuration(adData.getRewardedDurationSeconds() * 1000);
            C20128v c20128v = C20128v.f66529a;
        }
        int i = -1;
        if (vastVideoConfig2 != null) {
            Bundle savedInstanceState2 = getSavedInstanceState();
            Integer valueOf = savedInstanceState2 != null ? Integer.valueOf(savedInstanceState2.getInt(CURRENT_POSITION, -1)) : null;
            i = -1;
            if (valueOf != null) {
                i = valueOf.intValue();
            }
        }
        this.f59573f = i;
        if (getVastVideoConfig().getDiskMediaFileUrl() != null) {
            Set<VastCompanionAdConfig> vastCompanionAdConfigs = getVastVideoConfig().getVastCompanionAdConfigs();
            this.f59574g = vastCompanionAdConfigs;
            if (vastCompanionAdConfigs.isEmpty()) {
                String diskMediaFileUrl = getVastVideoConfig().getDiskMediaFileUrl();
                if (diskMediaFileUrl != null) {
                    VastResource vastResource = new VastResource(diskMediaFileUrl, VastResource.Type.BLURRED_LAST_FRAME, VastResource.CreativeType.IMAGE, -1, -1);
                    Set<VastCompanionAdConfig> set = this.f59574g;
                    String clickThroughUrl = getVastVideoConfig().getClickThroughUrl();
                    ArrayList<VastTracker> clickTrackers = getVastVideoConfig().getClickTrackers();
                    List emptyList = Collections.emptyList();
                    C18524p.m3849a((Object) emptyList, "Collections.emptyList()");
                    set.add(new VastCompanionAdConfig(-1, -1, vastResource, clickThroughUrl, clickTrackers, emptyList, getVastVideoConfig().getCustomCtaText()));
                }
            } else {
                setHasCompanionAd(true);
            }
            this.f59576i = getVastVideoConfig().getVastIconConfig();
            this.f59580m = new View.OnTouchListener() { // from class: com.mopub.mobileads.VastVideoViewController.1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent event) {
                    C18524p.m3849a((Object) event, "event");
                    if (event.getAction() == 1) {
                        String clickThroughUrl2 = VastVideoViewController.this.getVastVideoConfig().getClickThroughUrl();
                        if (clickThroughUrl2 == null || clickThroughUrl2.length() == 0) {
                            return true;
                        }
                        if (VastVideoViewController.this.getVastVideoConfig().isRewarded() && !VastVideoViewController.this.getShouldAllowClose()) {
                            return true;
                        }
                        VastVideoViewController.this.f59577j.recordVideoEvent(VideoEvent.AD_CLICK_THRU, VastVideoViewController.this.getCurrentPosition());
                        VastVideoViewController vastVideoViewController = VastVideoViewController.this;
                        vastVideoViewController.setClosing(vastVideoViewController.isComplete());
                        VastVideoViewController.this.m6552a(IntentActions.ACTION_FULLSCREEN_CLICK);
                        VastVideoConfig vastVideoConfig3 = VastVideoViewController.this.getVastVideoConfig();
                        Activity activity2 = VastVideoViewController.this.getActivity();
                        Integer valueOf2 = Integer.valueOf(VastVideoViewController.this.getDuration());
                        valueOf2.intValue();
                        if (!VastVideoViewController.this.isComplete()) {
                            valueOf2 = null;
                        }
                        vastVideoConfig3.handleClickForResult(activity2, valueOf2 != null ? valueOf2.intValue() : VastVideoViewController.this.getCurrentPosition(), 1);
                        return true;
                    }
                    return true;
                }
            };
            getLayout().setBackgroundColor(-16777216);
            Activity activity2 = getActivity();
            VideoView create2 = VideoViewFactory.Companion.create(activity2);
            Executor m44490e = C0790b.m44490e(activity2);
            C2187j m41184c = new C2187j.C2188a().m41187a().m41186a(1.0f).m41184c();
            C18524p.m3849a((Object) m41184c, "PlaybackParams.Builder()….0f)\n            .build()");
            getMediaPlayer().m41369a(m41184c);
            getMediaPlayer().m41379a(new AudioAttributesCompat.C1287a().m43261a(1).m43260b(3).m43262a());
            getMediaPlayer().m41367a(m44490e, (MediaPlayer.AbstractC2120i) getPlayerCallback());
            create2.removeView(create2.f9594h);
            create2.setId(View.generateViewId());
            create2.setPlayer(getMediaPlayer());
            create2.setOnTouchListener(getClickThroughListener());
            MediaPlayer mediaPlayer = getMediaPlayer();
            mediaPlayer.m41378a(new UriMediaItem.C1353a(Uri.parse(getVastVideoConfig().getDiskMediaFileUrl())).mo43177a());
            mediaPlayer.mo41358c().mo8638a(new RunnableC16827d(mediaPlayer, this, m44490e), m44490e);
            this.f59570c = create2;
            create2.requestFocus();
            create.createVideoSession(create2, getVastVideoConfig().getViewabilityVendors());
            boolean z = !this.f59574g.isEmpty();
            Context context2 = this.f59125a;
            GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
            ViewGroup layout = getLayout();
            C18524p.m3849a((Object) layout, "layout");
            VastVideoGradientStripWidget vastVideoGradientStripWidget = new VastVideoGradientStripWidget(context2, orientation, z, 0, 6, layout.getId(), true);
            VastVideoGradientStripWidget vastVideoGradientStripWidget2 = vastVideoGradientStripWidget;
            getLayout().addView(vastVideoGradientStripWidget2);
            create.registerVideoObstruction(vastVideoGradientStripWidget2, ViewabilityObstruction.OVERLAY);
            C20128v c20128v2 = C20128v.f66529a;
            setTopGradientStripWidget(vastVideoGradientStripWidget);
            VastVideoProgressBarWidget vastVideoProgressBarWidget = new VastVideoProgressBarWidget(this.f59125a);
            vastVideoProgressBarWidget.setAnchorId(create2.getId());
            vastVideoProgressBarWidget.setVisibility(4);
            VastVideoProgressBarWidget vastVideoProgressBarWidget2 = vastVideoProgressBarWidget;
            getLayout().addView(vastVideoProgressBarWidget2);
            create.registerVideoObstruction(vastVideoProgressBarWidget2, ViewabilityObstruction.PROGRESS_BAR);
            C20128v c20128v3 = C20128v.f66529a;
            setProgressBarWidget(vastVideoProgressBarWidget);
            VastVideoGradientStripWidget vastVideoGradientStripWidget3 = new VastVideoGradientStripWidget(this.f59125a, GradientDrawable.Orientation.BOTTOM_TOP, z, 8, 2, getProgressBarWidget().getId(), false);
            VastVideoGradientStripWidget vastVideoGradientStripWidget4 = vastVideoGradientStripWidget3;
            getLayout().addView(vastVideoGradientStripWidget4);
            create.registerVideoObstruction(vastVideoGradientStripWidget4, ViewabilityObstruction.OVERLAY);
            C20128v c20128v4 = C20128v.f66529a;
            setBottomGradientStripWidget(vastVideoGradientStripWidget3);
            RadialCountdownWidget radialCountdownWidget = new RadialCountdownWidget(this.f59125a);
            radialCountdownWidget.setVisibility(4);
            RadialCountdownWidget radialCountdownWidget2 = radialCountdownWidget;
            getLayout().addView(radialCountdownWidget2);
            create.registerVideoObstruction(radialCountdownWidget2, ViewabilityObstruction.COUNTDOWN_TIMER);
            radialCountdownWidget.setOnTouchListener(View$OnTouchListenerC16825b.INSTANCE);
            radialCountdownWidget.setOnClickListener(View$OnClickListenerC16826c.INSTANCE);
            C20128v c20128v5 = C20128v.f66529a;
            setRadialCountdownWidget(radialCountdownWidget);
            Context context3 = this.f59125a;
            String clickThroughUrl2 = getVastVideoConfig().getClickThroughUrl();
            VideoCtaButtonWidget videoCtaButtonWidget = new VideoCtaButtonWidget(context3, z, true ^ (clickThroughUrl2 == null || clickThroughUrl2.length() == 0));
            VideoCtaButtonWidget videoCtaButtonWidget2 = videoCtaButtonWidget;
            getLayout().addView(videoCtaButtonWidget2);
            create.registerVideoObstruction(videoCtaButtonWidget2, ViewabilityObstruction.CTA_BUTTON);
            String customCtaText = getVastVideoConfig().getCustomCtaText();
            if (customCtaText != null) {
                videoCtaButtonWidget.m6361a(customCtaText);
                C20128v c20128v6 = C20128v.f66529a;
            }
            videoCtaButtonWidget.setOnTouchListener(getClickThroughListener());
            C20128v c20128v7 = C20128v.f66529a;
            this.f59581n = videoCtaButtonWidget;
            final VastVideoCloseButtonWidget vastVideoCloseButtonWidget = new VastVideoCloseButtonWidget(this.f59125a);
            vastVideoCloseButtonWidget.setVisibility(8);
            VastVideoCloseButtonWidget vastVideoCloseButtonWidget2 = vastVideoCloseButtonWidget;
            getLayout().addView(vastVideoCloseButtonWidget2);
            create.registerVideoObstruction(vastVideoCloseButtonWidget2, ViewabilityObstruction.CLOSE_BUTTON);
            View$OnTouchListenerC16824a view$OnTouchListenerC16824a = new View$OnTouchListenerC16824a();
            vastVideoCloseButtonWidget.f59518b.setOnTouchListener(view$OnTouchListenerC16824a);
            vastVideoCloseButtonWidget.f59517a.setOnTouchListener(view$OnTouchListenerC16824a);
            String customSkipText = getVastVideoConfig().getCustomSkipText();
            if (customSkipText != null) {
                if (vastVideoCloseButtonWidget.f59517a != null) {
                    vastVideoCloseButtonWidget.f59517a.setText(customSkipText);
                }
                C20128v c20128v8 = C20128v.f66529a;
            }
            final String customCloseIconUrl = getVastVideoConfig().getCustomCloseIconUrl();
            if (customCloseIconUrl != null) {
                vastVideoCloseButtonWidget.f59519c.get(customCloseIconUrl, new ImageLoader.ImageListener() { // from class: com.mopub.mobileads.VastVideoCloseButtonWidget.1
                    @Override // com.mopub.volley.Response.ErrorListener
                    public final void onErrorResponse(VolleyError volleyError) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to load image.", volleyError);
                    }

                    @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
                    public final void onResponse(ImageLoader.ImageContainer imageContainer, boolean z2) {
                        Bitmap bitmap = imageContainer.getBitmap();
                        if (bitmap == null) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("%s returned null bitmap", customCloseIconUrl));
                            return;
                        }
                        vastVideoCloseButtonWidget.f59518b.setImageBitmap(bitmap);
                        vastVideoCloseButtonWidget.f59520d = true;
                    }
                });
                C20128v c20128v9 = C20128v.f66529a;
            }
            C20128v c20128v10 = C20128v.f66529a;
            setCloseButtonWidget(vastVideoCloseButtonWidget);
            if (!getVastVideoConfig().isRewarded()) {
                getCtaButtonWidget().m6362a();
            }
            Handler handler = new Handler(Looper.getMainLooper());
            this.f59578k = new VastVideoViewProgressRunnable(this, getVastVideoConfig(), handler);
            this.f59579l = new VastVideoViewCountdownRunnable(this, handler);
            return;
        }
        throw new IllegalArgumentException("VastVideoConfig does not have a video disk path".toString());
    }

    public static final /* synthetic */ void access$adjustSkipOffset(VastVideoViewController vastVideoViewController) {
        int i;
        int duration = vastVideoViewController.getDuration();
        if (vastVideoViewController.getVastVideoConfig().isRewarded()) {
            if (vastVideoViewController.getHasCompanionAd()) {
                i = vastVideoViewController.getVastVideoConfig().getCountdownTimerDuration();
            } else {
                i = duration;
                if (duration > vastVideoViewController.getVastVideoConfig().getCountdownTimerDuration()) {
                    i = vastVideoViewController.getVastVideoConfig().getCountdownTimerDuration();
                }
            }
            vastVideoViewController.setShowCloseButtonDelay(i);
            return;
        }
        if (duration < 16000) {
            vastVideoViewController.setShowCloseButtonDelay(duration);
        }
        try {
            Integer skipOffsetMillis = vastVideoViewController.getVastVideoConfig().getSkipOffsetMillis(duration);
            if (skipOffsetMillis == null) {
                return;
            }
            vastVideoViewController.setShowCloseButtonDelay(skipOffsetMillis.intValue());
        } catch (NumberFormatException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Failed to parse skipoffset " + vastVideoViewController.getVastVideoConfig().getSkipOffset());
        }
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

    /* renamed from: f */
    public void m6387f() {
        this.f59578k.stop();
        this.f59579l.stop();
    }

    @VisibleForTesting
    public static /* synthetic */ void hasCompanionAd$annotations() {
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
    /* renamed from: a */
    public final void mo6393a() {
        super.mo6393a();
        VastVideoConfig vastVideoConfig = getVastVideoConfig();
        Context context = this.f59125a;
        C18524p.m3849a((Object) context, "context");
        vastVideoConfig.handleImpression(context, getCurrentPosition());
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public final void mo6392a(int i, int i2) {
        if (isClosing() && i == 1 && i2 == -1) {
            this.f59126b.onVideoFinish(getCurrentPosition());
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: b */
    protected final View mo6391b() {
        return this.f59570c;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    public boolean backButtonEnabled() {
        return getShouldAllowClose();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: c */
    public final void mo6390c() {
        m6387f();
        this.f59573f = getCurrentPosition();
        getMediaPlayer().mo41366b();
        try {
            Field audioFocusHandlerField = MediaPlayer.class.getDeclaredField("k");
            C18524p.m3849a((Object) audioFocusHandlerField, "audioFocusHandlerField");
            audioFocusHandlerField.setAccessible(true);
            Object obj = audioFocusHandlerField.get(getMediaPlayer());
            obj.getClass().getMethod(EventConstants.CLOSE, new Class[0]).invoke(obj, new Object[0]);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Unable to call close() on the AudioFocusHandler due to an exception.", e);
        }
        if (!isComplete()) {
            VastVideoConfig vastVideoConfig = getVastVideoConfig();
            Context context = this.f59125a;
            C18524p.m3849a((Object) context, "context");
            vastVideoConfig.handlePause(context, this.f59573f);
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: d */
    public final void mo6389d() {
        if (!this.f59577j.isTracking()) {
            this.f59577j.startSession();
        }
        this.f59578k.startRepeating(50L);
        this.f59579l.startRepeating(250L);
        if (this.f59573f > 0) {
            C18524p.m3849a((Object) getMediaPlayer().m41361b(this.f59573f), "mediaPlayer.seekTo(seeke…MediaPlayer.SEEK_CLOSEST)");
        } else if (!isComplete()) {
            getMediaPlayer().mo41388a();
        }
        if (this.f59573f == -1 || isComplete()) {
            return;
        }
        VastVideoConfig vastVideoConfig = getVastVideoConfig();
        Context context = this.f59125a;
        C18524p.m3849a((Object) context, "context");
        vastVideoConfig.handleResume(context, this.f59573f);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: e */
    public final void mo6388e() {
        m6387f();
        this.f59577j.endSession();
    }

    public Activity getActivity() {
        return this.f59589v;
    }

    public VastVideoGradientStripWidget getBottomGradientStripWidget() {
        VastVideoGradientStripWidget vastVideoGradientStripWidget = this.bottomGradientStripWidget;
        if (vastVideoGradientStripWidget == null) {
            C18524p.m3848a("bottomGradientStripWidget");
        }
        return vastVideoGradientStripWidget;
    }

    public View.OnTouchListener getClickThroughListener() {
        return this.f59580m;
    }

    public VastVideoCloseButtonWidget getCloseButtonWidget() {
        VastVideoCloseButtonWidget vastVideoCloseButtonWidget = this.closeButtonWidget;
        if (vastVideoCloseButtonWidget == null) {
            C18524p.m3848a("closeButtonWidget");
        }
        return vastVideoCloseButtonWidget;
    }

    public VideoCtaButtonWidget getCtaButtonWidget() {
        return this.f59581n;
    }

    public int getCurrentPosition() {
        return (int) getMediaPlayer().mo41351e();
    }

    public int getDuration() {
        return (int) getMediaPlayer().mo41349f();
    }

    public Bundle getExtras() {
        return this.f59590w;
    }

    public boolean getHasCompanionAd() {
        return this.f59587t;
    }

    public View getIconView() {
        View view = this.iconView;
        if (view == null) {
            C18524p.m3848a("iconView");
        }
        return view;
    }

    public MediaPlayer getMediaPlayer() {
        return this.f59571d;
    }

    public String getNetworkMediaFileUrl() {
        return getVastVideoConfig().getNetworkMediaFileUrl();
    }

    public PlayerCallback getPlayerCallback() {
        return this.f59572e;
    }

    public VastVideoProgressBarWidget getProgressBarWidget() {
        VastVideoProgressBarWidget vastVideoProgressBarWidget = this.progressBarWidget;
        if (vastVideoProgressBarWidget == null) {
            C18524p.m3848a("progressBarWidget");
        }
        return vastVideoProgressBarWidget;
    }

    public RadialCountdownWidget getRadialCountdownWidget() {
        RadialCountdownWidget radialCountdownWidget = this.radialCountdownWidget;
        if (radialCountdownWidget == null) {
            C18524p.m3848a("radialCountdownWidget");
        }
        return radialCountdownWidget;
    }

    public Bundle getSavedInstanceState() {
        return this.f59591x;
    }

    public boolean getShouldAllowClose() {
        return this.f59583p;
    }

    public int getShowCloseButtonDelay() {
        return this.f59584q;
    }

    public VastVideoGradientStripWidget getTopGradientStripWidget() {
        VastVideoGradientStripWidget vastVideoGradientStripWidget = this.topGradientStripWidget;
        if (vastVideoGradientStripWidget == null) {
            C18524p.m3848a("topGradientStripWidget");
        }
        return vastVideoGradientStripWidget;
    }

    public VastIconConfig getVastIconConfig() {
        return this.f59576i;
    }

    public VastVideoConfig getVastVideoConfig() {
        return this.f59575h;
    }

    public boolean getVideoError() {
        return this.f59588u;
    }

    public void handleExitTrackers() {
        int currentPosition = getCurrentPosition();
        if (isComplete() || currentPosition >= getDuration()) {
            VastVideoConfig vastVideoConfig = getVastVideoConfig();
            Context context = this.f59125a;
            C18524p.m3849a((Object) context, "context");
            vastVideoConfig.handleComplete(context, getDuration());
        } else {
            this.f59577j.recordVideoEvent(VideoEvent.AD_SKIPPED, currentPosition);
            VastVideoConfig vastVideoConfig2 = getVastVideoConfig();
            Context context2 = this.f59125a;
            C18524p.m3849a((Object) context2, "context");
            vastVideoConfig2.handleSkip(context2, currentPosition);
        }
        VastVideoConfig vastVideoConfig3 = getVastVideoConfig();
        Context context3 = this.f59125a;
        C18524p.m3849a((Object) context3, "context");
        vastVideoConfig3.handleClose(context3, getDuration());
    }

    public void handleIconDisplay(int i) {
        int offsetMS;
        Integer durationMS;
        VastIconConfig vastIconConfig;
        VastWebView vastWebView;
        VastIconConfig vastIconConfig2 = getVastIconConfig();
        if (vastIconConfig2 == null || i < (offsetMS = vastIconConfig2.getOffsetMS())) {
            return;
        }
        VastVideoViewController vastVideoViewController = this;
        if (vastVideoViewController.iconView == null) {
            final VastIconConfig vastIconConfig3 = getVastIconConfig();
            if (vastIconConfig3 != null) {
                VastWebView it2 = VastWebView.m6386a(this.f59125a, vastIconConfig3.getVastResource());
                C18524p.m3849a((Object) it2, "it");
                it2.f59606c = new C16828e(vastIconConfig3, this);
                it2.setWebViewClient(new WebViewClient() { // from class: com.mopub.mobileads.VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2
                    @Override // android.webkit.WebViewClient
                    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onRenderProcessGone() called from the IconView. Ignoring the icon.");
                        VastVideoConfig vastVideoConfig = this.getVastVideoConfig();
                        Context context = this.f59125a;
                        C18524p.m3849a((Object) context, "context");
                        vastVideoConfig.handleError(context, VastErrorCode.UNDEFINED_ERROR, this.getCurrentPosition());
                        return true;
                    }

                    @Override // android.webkit.WebViewClient
                    public final boolean shouldOverrideUrlLoading(WebView view, String url) {
                        C18524p.m3841c(view, "view");
                        C18524p.m3841c(url, "url");
                        VastIconConfig vastIconConfig4 = this.getVastIconConfig();
                        if (vastIconConfig4 != null) {
                            Context context = this.f59125a;
                            C18524p.m3849a((Object) context, "context");
                            vastIconConfig4.handleClick(context, url, this.getVastVideoConfig().getDspCreativeId());
                            return true;
                        }
                        return true;
                    }
                });
                RelativeLayout.LayoutParams layoutParams = getVastIconConfig() != null ? new RelativeLayout.LayoutParams(Dips.asIntPixels(vastIconConfig3.getWidth(), this.f59125a), Dips.asIntPixels(vastIconConfig3.getHeight(), this.f59125a)) : null;
                int dipsToIntPixels = Dips.dipsToIntPixels(12.0f, this.f59125a);
                int dipsToIntPixels2 = Dips.dipsToIntPixels(12.0f, this.f59125a);
                if (layoutParams != null) {
                    layoutParams.setMargins(dipsToIntPixels, dipsToIntPixels2, 0, 0);
                }
                VastWebView vastWebView2 = it2;
                getLayout().addView(vastWebView2, layoutParams);
                this.f59577j.registerVideoObstruction(vastWebView2, ViewabilityObstruction.INDUSTRY_ICON);
                vastWebView = vastWebView2;
            } else {
                vastWebView = new View(this.f59125a);
            }
            setIconView(vastWebView);
            getIconView().setVisibility(0);
        }
        String networkMediaFileUrl = getNetworkMediaFileUrl();
        if (networkMediaFileUrl != null && (vastIconConfig = getVastIconConfig()) != null) {
            Context context = this.f59125a;
            C18524p.m3849a((Object) context, "context");
            vastIconConfig.handleImpression(context, i, networkMediaFileUrl);
        }
        VastIconConfig vastIconConfig4 = getVastIconConfig();
        if (vastIconConfig4 == null || (durationMS = vastIconConfig4.getDurationMS()) == null || i < offsetMS + durationMS.intValue() || vastVideoViewController.iconView == null) {
            return;
        }
        getIconView().setVisibility(8);
    }

    public void handleViewabilityQuartileEvent(String enumValue) {
        C18524p.m3841c(enumValue, "enumValue");
        VideoEvent valueOf = VideoEvent.valueOf(enumValue);
        if (valueOf != null) {
            this.f59577j.recordVideoEvent(valueOf, getCurrentPosition());
        }
    }

    public boolean isCalibrationDone() {
        return this.f59585r;
    }

    public boolean isClosing() {
        return this.f59586s;
    }

    public boolean isComplete() {
        return this.f59582o;
    }

    public void setBottomGradientStripWidget(VastVideoGradientStripWidget vastVideoGradientStripWidget) {
        C18524p.m3841c(vastVideoGradientStripWidget, "<set-?>");
        this.bottomGradientStripWidget = vastVideoGradientStripWidget;
    }

    public void setCalibrationDone(boolean z) {
        this.f59585r = z;
    }

    public void setCloseButtonWidget(VastVideoCloseButtonWidget vastVideoCloseButtonWidget) {
        C18524p.m3841c(vastVideoCloseButtonWidget, "<set-?>");
        this.closeButtonWidget = vastVideoCloseButtonWidget;
    }

    public void setClosing(boolean z) {
        this.f59586s = z;
    }

    public void setComplete(boolean z) {
        this.f59582o = z;
    }

    public void setHasCompanionAd(boolean z) {
        this.f59587t = z;
    }

    public void setIconView(View view) {
        C18524p.m3841c(view, "<set-?>");
        this.iconView = view;
    }

    public void setProgressBarWidget(VastVideoProgressBarWidget vastVideoProgressBarWidget) {
        C18524p.m3841c(vastVideoProgressBarWidget, "<set-?>");
        this.progressBarWidget = vastVideoProgressBarWidget;
    }

    public void setRadialCountdownWidget(RadialCountdownWidget radialCountdownWidget) {
        C18524p.m3841c(radialCountdownWidget, "<set-?>");
        this.radialCountdownWidget = radialCountdownWidget;
    }

    public void setShouldAllowClose(boolean z) {
        this.f59583p = z;
    }

    public void setShowCloseButtonDelay(int i) {
        this.f59584q = i;
    }

    public void setTopGradientStripWidget(VastVideoGradientStripWidget vastVideoGradientStripWidget) {
        C18524p.m3841c(vastVideoGradientStripWidget, "<set-?>");
        this.topGradientStripWidget = vastVideoGradientStripWidget;
    }

    public void setVideoError(boolean z) {
        this.f59588u = z;
    }

    public void updateCountdown(boolean z) {
        if (isCalibrationDone()) {
            getRadialCountdownWidget().updateCountdownProgress(getShowCloseButtonDelay(), getCurrentPosition());
        }
        if (z || getCurrentPosition() >= getShowCloseButtonDelay()) {
            getRadialCountdownWidget().setVisibility(8);
            getCloseButtonWidget().setVisibility(0);
            setShouldAllowClose(true);
            getCtaButtonWidget().m6362a();
        }
    }

    public void updateProgressBar() {
        getProgressBarWidget().updateProgress(getCurrentPosition());
    }
}
