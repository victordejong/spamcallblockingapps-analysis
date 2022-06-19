.class public Lcom/mopub/mobileads/VastVideoViewController;
.super Lcom/mopub/mobileads/BaseVideoViewController;
.source "SourceFile"


# annotations
.annotation runtime Lcom/mopub/mobileads/Mockable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;,
        Lcom/mopub/mobileads/VastVideoViewController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00da\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0017\u0018\u0000 \u00a6\u00012\u00020\u0001:\u0004\u00a6\u0001\u00a7\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\n\u0010\u0083\u0001\u001a\u00030\u0084\u0001H\u0012J\t\u0010\u0085\u0001\u001a\u00020.H\u0016J\u001d\u0010\u0086\u0001\u001a\u00030\u0082\u00012\u0008\u0010\u0087\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u0089\u0001\u001a\u00020bH\u0012J\t\u0010\u008a\u0001\u001a\u00020bH\u0016J\t\u0010\u008b\u0001\u001a\u00020bH\u0016J\t\u0010\u008c\u0001\u001a\u000205H\u0014J\n\u0010\u008d\u0001\u001a\u00030\u0084\u0001H\u0016J\u0013\u0010\u008e\u0001\u001a\u00030\u0084\u00012\u0007\u0010\u008f\u0001\u001a\u00020bH\u0016J\u0013\u0010\u0090\u0001\u001a\u00030\u0084\u00012\u0007\u0010\u0091\u0001\u001a\u00020IH\u0016J(\u0010\u0092\u0001\u001a\u00030\u0084\u00012\u0007\u0010\u0093\u0001\u001a\u00020b2\u0007\u0010\u0094\u0001\u001a\u00020b2\n\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0096\u0001H\u0014J\n\u0010\u0097\u0001\u001a\u00030\u0084\u0001H\u0014J\u0014\u0010\u0098\u0001\u001a\u00030\u0084\u00012\u0008\u0010\u0099\u0001\u001a\u00030\u009a\u0001H\u0014J\n\u0010\u009b\u0001\u001a\u00030\u0084\u0001H\u0014J\n\u0010\u009c\u0001\u001a\u00030\u0084\u0001H\u0014J\n\u0010\u009d\u0001\u001a\u00030\u0084\u0001H\u0015J\n\u0010\u009e\u0001\u001a\u00030\u0084\u0001H\u0014J\u0013\u0010\u009f\u0001\u001a\u00030\u0084\u00012\u0007\u0010\u00a0\u0001\u001a\u00020\u0005H\u0014J\n\u0010\u00a1\u0001\u001a\u00030\u0084\u0001H\u0012J\n\u0010\u00a2\u0001\u001a\u00030\u0084\u0001H\u0012J\u0015\u0010\u00a3\u0001\u001a\u00030\u0084\u00012\t\u0008\u0002\u0010\u00a4\u0001\u001a\u00020.H\u0016J\n\u0010\u00a5\u0001\u001a\u00030\u0084\u0001H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR$\u0010\u000e\u001a\u00020\u000f8\u0016@\u0016X\u0097.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u00020\u00178\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0018\u0010\u0011\u001a\u0004\u0008\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u001c8\u0016@\u0016X\u0097.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001d\u0010\u0011\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u000e\u0010\"\u001a\u00020#X\u0092\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010$\u001a\u00020%8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008&\u0010\u0011\u001a\u0004\u0008\'\u0010(R\u000e\u0010)\u001a\u00020*X\u0092\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R$\u0010-\u001a\u00020.8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008/\u0010\u0011\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R$\u00104\u001a\u0002058\u0016@\u0016X\u0097.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00086\u0010\u0011\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R$\u0010;\u001a\u00020.8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008<\u0010\u0011\u001a\u0004\u0008;\u00101\"\u0004\u0008=\u00103R$\u0010>\u001a\u00020.8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008?\u0010\u0011\u001a\u0004\u0008>\u00101\"\u0004\u0008@\u00103R$\u0010A\u001a\u00020.8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008B\u0010\u0011\u001a\u0004\u0008A\u00101\"\u0004\u0008C\u00103R\u0014\u0010D\u001a\u00020EX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR\u0016\u0010H\u001a\u0004\u0018\u00010I8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010KR\u0018\u0010L\u001a\u00060MR\u00020\u0000X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010OR$\u0010P\u001a\u00020Q8\u0016@\u0016X\u0097.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008R\u0010\u0011\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR\u000e\u0010W\u001a\u00020XX\u0092\u0004\u00a2\u0006\u0002\n\u0000R$\u0010Y\u001a\u00020Z8\u0016@\u0016X\u0097.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008[\u0010\u0011\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008`\u0010,R\u000e\u0010a\u001a\u00020bX\u0092\u000e\u00a2\u0006\u0002\n\u0000R$\u0010c\u001a\u00020.8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008d\u0010\u0011\u001a\u0004\u0008e\u00101\"\u0004\u0008f\u00103R$\u0010g\u001a\u00020b8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008h\u0010\u0011\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010lR$\u0010m\u001a\u00020\u000f8\u0016@\u0016X\u0097.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008n\u0010\u0011\u001a\u0004\u0008o\u0010\u0013\"\u0004\u0008p\u0010\u0015R\u0014\u0010q\u001a\u0008\u0012\u0004\u0012\u00020s0rX\u0092\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010t\u001a\u0004\u0018\u00010u8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008v\u0010\u0011\u001a\u0004\u0008w\u0010xR\u001c\u0010y\u001a\u00020z8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008{\u0010\u0011\u001a\u0004\u0008|\u0010}R\u001b\u0010~\u001a\u00020.X\u0096\u000e\u00a2\u0006\u000f\n\u0000\u001a\u0004\u0008\u007f\u00101\"\u0005\u0008\u0080\u0001\u00103R\u0010\u0010\u0081\u0001\u001a\u00030\u0082\u0001X\u0092\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00a8\u0001"
    }
    d2 = {
        "Lcom/mopub/mobileads/VastVideoViewController;",
        "Lcom/mopub/mobileads/BaseVideoViewController;",
        "activity",
        "Landroid/app/Activity;",
        "extras",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "broadcastIdentifier",
        "",
        "baseListener",
        "Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;",
        "(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "bottomGradientStripWidget",
        "Lcom/mopub/mobileads/VastVideoGradientStripWidget;",
        "bottomGradientStripWidget$annotations",
        "()V",
        "getBottomGradientStripWidget",
        "()Lcom/mopub/mobileads/VastVideoGradientStripWidget;",
        "setBottomGradientStripWidget",
        "(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V",
        "clickThroughListener",
        "Landroid/view/View$OnTouchListener;",
        "clickThroughListener$annotations",
        "getClickThroughListener",
        "()Landroid/view/View$OnTouchListener;",
        "closeButtonWidget",
        "Lcom/mopub/mobileads/VastVideoCloseButtonWidget;",
        "closeButtonWidget$annotations",
        "getCloseButtonWidget",
        "()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;",
        "setCloseButtonWidget",
        "(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)V",
        "countdownRunnable",
        "Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;",
        "ctaButtonWidget",
        "Lcom/mopub/mobileads/VideoCtaButtonWidget;",
        "ctaButtonWidget$annotations",
        "getCtaButtonWidget",
        "()Lcom/mopub/mobileads/VideoCtaButtonWidget;",
        "externalViewabilitySessionManager",
        "Lcom/mopub/common/ExternalViewabilitySessionManager;",
        "getExtras",
        "()Landroid/os/Bundle;",
        "hasCompanionAd",
        "",
        "hasCompanionAd$annotations",
        "getHasCompanionAd",
        "()Z",
        "setHasCompanionAd",
        "(Z)V",
        "iconView",
        "Landroid/view/View;",
        "iconView$annotations",
        "getIconView",
        "()Landroid/view/View;",
        "setIconView",
        "(Landroid/view/View;)V",
        "isCalibrationDone",
        "isCalibrationDone$annotations",
        "setCalibrationDone",
        "isClosing",
        "isClosing$annotations",
        "setClosing",
        "isComplete",
        "isComplete$annotations",
        "setComplete",
        "mediaPlayer",
        "Landroidx/media2/player/MediaPlayer;",
        "getMediaPlayer",
        "()Landroidx/media2/player/MediaPlayer;",
        "networkMediaFileUrl",
        "",
        "getNetworkMediaFileUrl",
        "()Ljava/lang/String;",
        "playerCallback",
        "Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;",
        "getPlayerCallback",
        "()Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;",
        "progressBarWidget",
        "Lcom/mopub/mobileads/VastVideoProgressBarWidget;",
        "progressBarWidget$annotations",
        "getProgressBarWidget",
        "()Lcom/mopub/mobileads/VastVideoProgressBarWidget;",
        "setProgressBarWidget",
        "(Lcom/mopub/mobileads/VastVideoProgressBarWidget;)V",
        "progressCheckerRunnable",
        "Lcom/mopub/mobileads/VastVideoViewProgressRunnable;",
        "radialCountdownWidget",
        "Lcom/mopub/mobileads/RadialCountdownWidget;",
        "radialCountdownWidget$annotations",
        "getRadialCountdownWidget",
        "()Lcom/mopub/mobileads/RadialCountdownWidget;",
        "setRadialCountdownWidget",
        "(Lcom/mopub/mobileads/RadialCountdownWidget;)V",
        "getSavedInstanceState",
        "seekerPositionOnPause",
        "",
        "shouldAllowClose",
        "shouldAllowClose$annotations",
        "getShouldAllowClose",
        "setShouldAllowClose",
        "showCloseButtonDelay",
        "showCloseButtonDelay$annotations",
        "getShowCloseButtonDelay",
        "()I",
        "setShowCloseButtonDelay",
        "(I)V",
        "topGradientStripWidget",
        "topGradientStripWidget$annotations",
        "getTopGradientStripWidget",
        "setTopGradientStripWidget",
        "vastCompanionAdConfigs",
        "",
        "Lcom/mopub/mobileads/VastCompanionAdConfig;",
        "vastIconConfig",
        "Lcom/mopub/mobileads/VastIconConfig;",
        "vastIconConfig$annotations",
        "getVastIconConfig",
        "()Lcom/mopub/mobileads/VastIconConfig;",
        "vastVideoConfig",
        "Lcom/mopub/mobileads/VastVideoConfig;",
        "vastVideoConfig$annotations",
        "getVastVideoConfig",
        "()Lcom/mopub/mobileads/VastVideoConfig;",
        "videoError",
        "getVideoError",
        "setVideoError",
        "videoView",
        "Landroidx/media2/widget/VideoView;",
        "adjustSkipOffset",
        "",
        "backButtonEnabled",
        "createVideoView",
        "context",
        "Landroid/content/Context;",
        "initialVisibility",
        "getCurrentPosition",
        "getDuration",
        "getVideoView",
        "handleExitTrackers",
        "handleIconDisplay",
        "currentPosition",
        "handleViewabilityQuartileEvent",
        "enumValue",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onBackPressed",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
        "onDestroy",
        "onPause",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "startRunnables",
        "stopRunnables",
        "updateCountdown",
        "forceCloseable",
        "updateProgressBar",
        "Companion",
        "PlayerCallback",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final CURRENT_POSITION:Ljava/lang/String; = "current_position"

.field public static final Companion:Lcom/mopub/mobileads/VastVideoViewController$Companion;

.field public static final DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x1388

.field public static final MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x3e80

.field public static final RESUMED_VAST_CONFIG:Ljava/lang/String; = "resumed_vast_config"

.field public static final VAST_VIDEO_CONFIG:Ljava/lang/String; = "vast_video_config"

.field public static final WEBVIEW_PADDING:I = 0x10


# instance fields
.field public bottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

.field private final c:Landroidx/media2/widget/VideoView;

.field public closeButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

.field private final d:Landroidx/media2/player/MediaPlayer;

.field private final e:Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

.field private f:I

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/mopub/mobileads/VastVideoConfig;

.field private final i:Lcom/mopub/mobileads/VastIconConfig;

.field public iconView:Landroid/view/View;

.field private final j:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field private final k:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

.field private final l:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

.field private final m:Landroid/view/View$OnTouchListener;

.field private final n:Lcom/mopub/mobileads/VideoCtaButtonWidget;

.field private o:Z

.field private p:Z

.field public progressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

.field private q:I

.field private r:Z

.field public radialCountdownWidget:Lcom/mopub/mobileads/RadialCountdownWidget;

.field private s:Z

.field private t:Z

.field public topGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

.field private u:Z

.field private final v:Landroid/app/Activity;

.field private final w:Landroid/os/Bundle;

.field private final x:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VastVideoViewController;->Companion:Lcom/mopub/mobileads/VastVideoViewController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    const-string v4, "activity"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "extras"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "baseListener"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    move-object v4, v1

    check-cast v4, Landroid/content/Context;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v4, v5, v3}, Lcom/mopub/mobileads/BaseVideoViewController;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->v:Landroid/app/Activity;

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->w:Landroid/os/Bundle;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->x:Landroid/os/Bundle;

    .line 80
    sget-object v1, Lcom/mopub/mobileads/factories/MediaPlayerFactory;->Companion:Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;

    .line 14085
    iget-object v2, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v3, "context"

    .line 80
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;->create(Landroid/content/Context;)Landroidx/media2/player/MediaPlayer;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->d:Landroidx/media2/player/MediaPlayer;

    .line 81
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->e:Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

    const/4 v1, -0x1

    .line 83
    iput v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->f:I

    .line 84
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->g:Ljava/util/Set;

    .line 89
    invoke-static {}, Lcom/mopub/common/ExternalViewabilitySessionManager;->create()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v2

    const-string v3, "ExternalViewabilitySessionManager.create()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->j:Lcom/mopub/common/ExternalViewabilitySessionManager;

    const/16 v3, 0x1388

    .line 116
    iput v3, v0, Lcom/mopub/mobileads/VastVideoViewController;->q:I

    .line 129
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v5, "resumed_vast_config"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    instance-of v5, v3, Lcom/mopub/mobileads/VastVideoConfig;

    if-nez v5, :cond_1

    move-object v3, v4

    :cond_1
    check-cast v3, Lcom/mopub/mobileads/VastVideoConfig;

    .line 131
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com_mopub_ad_data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/mopub/mobileads/AdData;

    if-nez v3, :cond_5

    .line 134
    sget-object v6, Lcom/mopub/mobileads/VastVideoConfig;->Companion:Lcom/mopub/mobileads/VastVideoConfig$Companion;

    if-eqz v5, :cond_4

    .line 136
    invoke-virtual {v5}, Lcom/mopub/mobileads/AdData;->getVastVideoConfigString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 134
    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/VastVideoConfig$Companion;->fromVastVideoConfigString(Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 133
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "VastVideoConfig is invalid"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 135
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "VastVideoConfigByteArray is null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 136
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AdData is invalid"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_5
    move-object v6, v3

    .line 133
    :goto_1
    iput-object v6, v0, Lcom/mopub/mobileads/VastVideoViewController;->h:Lcom/mopub/mobileads/VastVideoConfig;

    if-eqz v5, :cond_6

    .line 145
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v6, v5}, Lcom/mopub/mobileads/VastVideoConfig;->setCountdownTimerDuration(I)V

    .line 146
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    :cond_6
    if-eqz v3, :cond_8

    .line 149
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "current_position"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_7
    if-eqz v4, :cond_8

    .line 148
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 150
    :cond_8
    iput v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->f:I

    .line 152
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 156
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAdConfigs()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->g:Ljava/util/Set;

    .line 157
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    .line 158
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 159
    new-instance v7, Lcom/mopub/mobileads/VastResource;

    .line 161
    sget-object v4, Lcom/mopub/mobileads/VastResource$Type;->BLURRED_LAST_FRAME:Lcom/mopub/mobileads/VastResource$Type;

    .line 162
    sget-object v5, Lcom/mopub/mobileads/VastResource$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResource$CreativeType;

    const/4 v6, -0x1

    const/4 v8, -0x1

    move-object p1, v7

    move-object/from16 p2, v1

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v8

    .line 159
    invoke-direct/range {p1 .. p6}, Lcom/mopub/mobileads/VastResource;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastResource$CreativeType;II)V

    .line 166
    iget-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->g:Ljava/util/Set;

    .line 167
    new-instance v12, Lcom/mopub/mobileads/VastCompanionAdConfig;

    const/4 v5, -0x1

    .line 171
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v8

    .line 172
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoConfig;->getClickTrackers()Ljava/util/ArrayList;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/util/List;

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const-string v4, "Collections.emptyList()"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v11

    move-object v4, v12

    .line 167
    invoke-direct/range {v4 .. v11}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 166
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 176
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_2

    .line 179
    :cond_9
    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/VastVideoViewController;->setHasCompanionAd(Z)V

    .line 181
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->i:Lcom/mopub/mobileads/VastIconConfig;

    .line 184
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$1;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    check-cast v1, Landroid/view/View$OnTouchListener;

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->m:Landroid/view/View$OnTouchListener;

    .line 202
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 205
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 14339
    sget-object v4, Lcom/mopub/mobileads/factories/VideoViewFactory;->Companion:Lcom/mopub/mobileads/factories/VideoViewFactory$Companion;

    invoke-virtual {v4, v1}, Lcom/mopub/mobileads/factories/VideoViewFactory$Companion;->create(Landroid/content/Context;)Landroidx/media2/widget/VideoView;

    move-result-object v4

    .line 14340
    invoke-static {v1}, Landroidx/core/content/b;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 14342
    new-instance v5, Landroidx/media2/player/j$a;

    invoke-direct {v5}, Landroidx/media2/player/j$a;-><init>()V

    .line 14343
    invoke-virtual {v5}, Landroidx/media2/player/j$a;->a()Landroidx/media2/player/j$a;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    .line 14344
    invoke-virtual {v5, v6}, Landroidx/media2/player/j$a;->a(F)Landroidx/media2/player/j$a;

    move-result-object v5

    .line 14345
    invoke-virtual {v5}, Landroidx/media2/player/j$a;->c()Landroidx/media2/player/j;

    move-result-object v5

    const-string v6, "PlaybackParams.Builder()\u2026.0f)\n            .build()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14346
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/j;)Lcom/google/common/util/concurrent/a;

    .line 14347
    new-instance v5, Landroidx/media/AudioAttributesCompat$a;

    invoke-direct {v5}, Landroidx/media/AudioAttributesCompat$a;-><init>()V

    .line 14348
    invoke-virtual {v5, v3}, Landroidx/media/AudioAttributesCompat$a;->a(I)Landroidx/media/AudioAttributesCompat$a;

    move-result-object v5

    const/4 v6, 0x3

    .line 14349
    invoke-virtual {v5, v6}, Landroidx/media/AudioAttributesCompat$a;->b(I)Landroidx/media/AudioAttributesCompat$a;

    move-result-object v5

    .line 14350
    invoke-virtual {v5}, Landroidx/media/AudioAttributesCompat$a;->a()Landroidx/media/AudioAttributesCompat;

    move-result-object v5

    .line 14351
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media/AudioAttributesCompat;)Lcom/google/common/util/concurrent/a;

    .line 14352
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getPlayerCallback()Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

    move-result-object v6

    check-cast v6, Landroidx/media2/player/MediaPlayer$i;

    invoke-virtual {v5, v1, v6}, Landroidx/media2/player/MediaPlayer;->a(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer$i;)V

    .line 14471
    iget-object v5, v4, Landroidx/media2/widget/VideoView;->h:Landroidx/media2/widget/MediaControlView;

    .line 14353
    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Landroidx/media2/widget/VideoView;->removeView(Landroid/view/View;)V

    .line 14354
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/media2/widget/VideoView;->setId(I)V

    .line 14355
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v5

    check-cast v5, Landroidx/media2/common/SessionPlayer;

    invoke-virtual {v4, v5}, Landroidx/media2/widget/VideoView;->setPlayer(Landroidx/media2/common/SessionPlayer;)V

    .line 14356
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getClickThroughListener()Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media2/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14358
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v5

    .line 14360
    new-instance v6, Landroidx/media2/common/UriMediaItem$a;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/media2/common/UriMediaItem$a;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v6}, Landroidx/media2/common/UriMediaItem$a;->b()Landroidx/media2/common/UriMediaItem;

    move-result-object v6

    check-cast v6, Landroidx/media2/common/MediaItem;

    .line 14359
    invoke-virtual {v5, v6}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/a;

    .line 14362
    invoke-virtual {v5}, Landroidx/media2/player/MediaPlayer;->c()Lcom/google/common/util/concurrent/a;

    move-result-object v6

    .line 14363
    new-instance v7, Lcom/mopub/mobileads/VastVideoViewController$d;

    invoke-direct {v7, v5, p0, v1}, Lcom/mopub/mobileads/VastVideoViewController$d;-><init>(Landroidx/media2/player/MediaPlayer;Lcom/mopub/mobileads/VastVideoViewController;Ljava/util/concurrent/Executor;)V

    check-cast v7, Ljava/lang/Runnable;

    .line 14362
    invoke-interface {v6, v7, v1}, Lcom/google/common/util/concurrent/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 205
    iput-object v4, v0, Lcom/mopub/mobileads/VastVideoViewController;->c:Landroidx/media2/widget/VideoView;

    .line 206
    invoke-virtual {v4}, Landroidx/media2/widget/VideoView;->requestFocus()Z

    .line 209
    move-object v1, v4

    check-cast v1, Landroid/view/View;

    .line 210
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoConfig;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v5

    .line 208
    invoke-virtual {v2, v1, v5}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createVideoSession(Landroid/view/View;Ljava/util/Set;)V

    .line 214
    iget-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    .line 215
    new-instance v13, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    .line 15085
    iget-object v6, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 217
    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v9, 0x0

    const/4 v10, 0x6

    .line 221
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v5

    const-string v8, "layout"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getId()I

    move-result v11

    const/4 v12, 0x1

    move-object v5, v13

    move v8, v1

    .line 215
    invoke-direct/range {v5 .. v12}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;ZIIIZ)V

    .line 224
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v5

    move-object v6, v13

    check-cast v6, Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 225
    sget-object v5, Lcom/mopub/common/ViewabilityObstruction;->OVERLAY:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v6, v5}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 226
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    .line 223
    invoke-virtual {p0, v13}, Lcom/mopub/mobileads/VastVideoViewController;->setTopGradientStripWidget(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V

    .line 229
    new-instance v5, Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 16085
    iget-object v6, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 229
    invoke-direct {v5, v6}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v4}, Landroidx/media2/widget/VideoView;->getId()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setAnchorId(I)V

    const/4 v4, 0x4

    .line 231
    invoke-virtual {v5, v4}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 232
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    sget-object v6, Lcom/mopub/common/ViewabilityObstruction;->PROGRESS_BAR:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v7, v6}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 234
    sget-object v6, Lkotlin/v;->a:Lkotlin/v;

    .line 229
    invoke-virtual {p0, v5}, Lcom/mopub/mobileads/VastVideoViewController;->setProgressBarWidget(Lcom/mopub/mobileads/VastVideoProgressBarWidget;)V

    .line 237
    new-instance v13, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    .line 17085
    iget-object v6, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 239
    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v9, 0x8

    const/4 v10, 0x2

    .line 243
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->getId()I

    move-result v11

    const/4 v12, 0x0

    move-object v5, v13

    .line 237
    invoke-direct/range {v5 .. v12}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;ZIIIZ)V

    .line 246
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v5

    move-object v6, v13

    check-cast v6, Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 247
    sget-object v5, Lcom/mopub/common/ViewabilityObstruction;->OVERLAY:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v6, v5}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 248
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    .line 245
    invoke-virtual {p0, v13}, Lcom/mopub/mobileads/VastVideoViewController;->setBottomGradientStripWidget(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V

    .line 251
    new-instance v5, Lcom/mopub/mobileads/RadialCountdownWidget;

    .line 18085
    iget-object v6, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 251
    invoke-direct {v5, v6}, Lcom/mopub/mobileads/RadialCountdownWidget;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {v5, v4}, Lcom/mopub/mobileads/RadialCountdownWidget;->setVisibility(I)V

    .line 253
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v4

    move-object v6, v5

    check-cast v6, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    sget-object v4, Lcom/mopub/common/ViewabilityObstruction;->COUNTDOWN_TIMER:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v6, v4}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 255
    sget-object v4, Lcom/mopub/mobileads/VastVideoViewController$b;->INSTANCE:Lcom/mopub/mobileads/VastVideoViewController$b;

    check-cast v4, Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v4}, Lcom/mopub/mobileads/RadialCountdownWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    sget-object v4, Lcom/mopub/mobileads/VastVideoViewController$c;->INSTANCE:Lcom/mopub/mobileads/VastVideoViewController$c;

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v4}, Lcom/mopub/mobileads/RadialCountdownWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    sget-object v4, Lkotlin/v;->a:Lkotlin/v;

    .line 251
    invoke-virtual {p0, v5}, Lcom/mopub/mobileads/VastVideoViewController;->setRadialCountdownWidget(Lcom/mopub/mobileads/RadialCountdownWidget;)V

    .line 19085
    iget-object v4, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 264
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_c

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v5, 0x1

    :goto_4
    xor-int/2addr v3, v5

    .line 261
    new-instance v5, Lcom/mopub/mobileads/VideoCtaButtonWidget;

    invoke-direct {v5, v4, v1, v3}, Lcom/mopub/mobileads/VideoCtaButtonWidget;-><init>(Landroid/content/Context;ZZ)V

    .line 266
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    move-object v3, v5

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 267
    sget-object v1, Lcom/mopub/common/ViewabilityObstruction;->CTA_BUTTON:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v3, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 268
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 269
    invoke-virtual {v5, v1}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->a(Ljava/lang/String;)V

    .line 270
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 271
    :cond_d
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getClickThroughListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 272
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 265
    iput-object v5, v0, Lcom/mopub/mobileads/VastVideoViewController;->n:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    .line 274
    new-instance v1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    .line 20085
    iget-object v3, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 274
    invoke-direct {v1, v3}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x8

    .line 275
    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setVisibility(I)V

    .line 276
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 277
    sget-object v3, Lcom/mopub/common/ViewabilityObstruction;->CLOSE_BUTTON:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v4, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 279
    new-instance v2, Lcom/mopub/mobileads/VastVideoViewController$a;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/VastVideoViewController$a;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    check-cast v2, Landroid/view/View$OnTouchListener;

    .line 20132
    iget-object v3, v1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20133
    iget-object v3, v1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 21105
    iget-object v3, v1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->a:Landroid/widget/TextView;

    if-eqz v3, :cond_e

    .line 21106
    iget-object v3, v1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_e
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 292
    :cond_f
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 21111
    iget-object v3, v1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->c:Lcom/mopub/volley/toolbox/ImageLoader;

    new-instance v4, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;

    invoke-direct {v4, v1, v2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;-><init>(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 294
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 295
    :cond_10
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 274
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->setCloseButtonWidget(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)V

    .line 297
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->isRewarded()Z

    move-result v1

    if-nez v1, :cond_11

    .line 299
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCtaButtonWidget()Lcom/mopub/mobileads/VideoCtaButtonWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->a()V

    .line 302
    :cond_11
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 303
    new-instance v2, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    .line 305
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v3

    .line 303
    invoke-direct {v2, p0, v3, v1}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->k:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    .line 308
    new-instance v2, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-direct {v2, p0, v1}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    return-void

    .line 152
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "VastVideoConfig does not have a video disk path"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final synthetic access$adjustSkipOffset(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 5

    .line 21312
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v0

    .line 21314
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->isRewarded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21315
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getHasCompanionAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21316
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getCountdownTimerDuration()I

    move-result v0

    goto :goto_0

    .line 21317
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCountdownTimerDuration()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 21318
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getCountdownTimerDuration()I

    move-result v0

    .line 21315
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->setShowCloseButtonDelay(I)V

    return-void

    :cond_2
    const/16 v1, 0x3e80

    if-ge v0, v1, :cond_3

    .line 21326
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->setShowCloseButtonDelay(I)V

    .line 21330
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffsetMillis(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 21331
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->setShowCloseButtonDelay(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    .line 21334
    :catch_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    check-cast v0, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse skipoffset "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffset()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-object p0
.end method

.method public static final synthetic access$getVastCompanionAdConfigs$p(Lcom/mopub/mobileads/VastVideoViewController;)Ljava/util/Set;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->g:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getVideoView$p(Lcom/mopub/mobileads/VastVideoViewController;)Landroidx/media2/widget/VideoView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->c:Landroidx/media2/widget/VideoView;

    return-object p0
.end method

.method public static final synthetic access$setVastCompanionAdConfigs$p(Lcom/mopub/mobileads/VastVideoViewController;Ljava/util/Set;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->g:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$stopRunnables(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->f()V

    return-void
.end method

.method public static synthetic bottomGradientStripWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic clickThroughListener$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic closeButtonWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic ctaButtonWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private f()V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->k:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->stop()V

    .line 617
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->stop()V

    return-void
.end method

.method public static synthetic hasCompanionAd$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic iconView$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic isCalibrationDone$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic isClosing$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic isComplete$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic progressBarWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic radialCountdownWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic shouldAllowClose$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic showCloseButtonDelay$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic topGradientStripWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic updateCountdown$default(Lcom/mopub/mobileads/VastVideoViewController;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 486
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->updateCountdown(Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateCountdown"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic vastIconConfig$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic vastVideoConfig$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .line 389
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->a()V

    .line 390
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    .line 1085
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v2, "context"

    .line 390
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleImpression(Landroid/content/Context;I)V

    return-void
.end method

.method protected final a(II)V
    .locals 1

    .line 466
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 4081
    iget-object p1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->b:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    .line 468
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onVideoFinish(I)V

    :cond_0
    return-void
.end method

.method protected final b()Landroid/view/View;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->c:Landroidx/media2/widget/VideoView;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public backButtonEnabled()Z
    .locals 1

    .line 460
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getShouldAllowClose()Z

    move-result v0

    return v0
.end method

.method protected final c()V
    .locals 6

    .line 414
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->f()V

    .line 415
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:I

    .line 416
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->b()Lcom/google/common/util/concurrent/a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 421
    :try_start_0
    const-class v2, Landroidx/media2/player/MediaPlayer;

    const-string v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "audioFocusHandlerField"

    .line 422
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 423
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 425
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "close"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 426
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 428
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    check-cast v3, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Unable to call close() on the AudioFocusHandler due to an exception."

    aput-object v5, v4, v1

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 431
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    .line 3085
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v2, "context"

    .line 432
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handlePause(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->isTracking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->startSession()V

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->k:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->startRepeating(J)V

    .line 1612
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->startRepeating(J)V

    .line 399
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:I

    if-lez v0, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/player/MediaPlayer;->b(J)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    const-string v1, "mediaPlayer.seekTo(seeke\u2026MediaPlayer.SEEK_CLOSEST)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->a()Lcom/google/common/util/concurrent/a;

    .line 407
    :cond_2
    :goto_0
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isComplete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 408
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    .line 2085
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v2, "context"

    .line 408
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleResume(Landroid/content/Context;I)V

    :cond_3
    return-void
.end method

.method protected final e()V
    .locals 1

    .line 437
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoViewController;->f()V

    .line 438
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endSession()V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->v:Landroid/app/Activity;

    return-object v0
.end method

.method public getBottomGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->bottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    if-nez v0, :cond_0

    const-string v1, "bottomGradientStripWidget"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getClickThroughListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->m:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getCloseButtonWidget()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->closeButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    if-nez v0, :cond_0

    const-string v1, "closeButtonWidget"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getCtaButtonWidget()Lcom/mopub/mobileads/VideoCtaButtonWidget;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->n:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 483
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->e()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getDuration()I
    .locals 2

    .line 479
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->f()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->w:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHasCompanionAd()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->t:Z

    return v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->iconView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "iconView"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getMediaPlayer()Landroidx/media2/player/MediaPlayer;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->d:Landroidx/media2/player/MediaPlayer;

    return-object v0
.end method

.method public getNetworkMediaFileUrl()Ljava/lang/String;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerCallback()Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

    return-object v0
.end method

.method public getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->progressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    if-nez v0, :cond_0

    const-string v1, "progressBarWidget"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->radialCountdownWidget:Lcom/mopub/mobileads/RadialCountdownWidget;

    if-nez v0, :cond_0

    const-string v1, "radialCountdownWidget"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getSavedInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->x:Landroid/os/Bundle;

    return-object v0
.end method

.method public getShouldAllowClose()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->p:Z

    return v0
.end method

.method public getShowCloseButtonDelay()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->q:I

    return v0
.end method

.method public getTopGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->topGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    if-nez v0, :cond_0

    const-string v1, "topGradientStripWidget"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->i:Lcom/mopub/mobileads/VastIconConfig;

    return-object v0
.end method

.method public getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:Lcom/mopub/mobileads/VastVideoConfig;

    return-object v0
.end method

.method public getVideoError()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->u:Z

    return v0
.end method

.method public handleExitTrackers()V
    .locals 4

    .line 596
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    .line 597
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isComplete()Z

    move-result v1

    const-string v2, "context"

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 601
    sget-object v3, Lcom/mopub/common/VideoEvent;->AD_SKIPPED:Lcom/mopub/common/VideoEvent;

    .line 600
    invoke-virtual {v1, v3, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    .line 604
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    .line 12085
    iget-object v3, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 604
    invoke-static {v3, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lcom/mopub/mobileads/VastVideoConfig;->handleSkip(Landroid/content/Context;I)V

    goto :goto_1

    .line 598
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    .line 11085
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 598
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/mopub/mobileads/VastVideoConfig;->handleComplete(Landroid/content/Context;I)V

    .line 607
    :goto_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    .line 13085
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 607
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleClose(Landroid/content/Context;I)V

    return-void
.end method

.method public handleIconDisplay(I)V
    .locals 8

    .line 516
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getOffsetMS()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 521
    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/mopub/mobileads/VastVideoViewController;

    iget-object v2, v1, Lcom/mopub/mobileads/VastVideoViewController;->iconView:Landroid/view/View;

    if-nez v2, :cond_4

    .line 522
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 4085
    iget-object v4, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 523
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastIconConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mopub/mobileads/VastWebView;->a(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v4

    const-string v5, "it"

    .line 524
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/mopub/mobileads/VastVideoViewController$e;

    invoke-direct {v5, v2, p0}, Lcom/mopub/mobileads/VastVideoViewController$e;-><init>(Lcom/mopub/mobileads/VastIconConfig;Lcom/mopub/mobileads/VastVideoViewController;)V

    check-cast v5, Lcom/mopub/mobileads/VastWebView$a;

    .line 5047
    iput-object v5, v4, Lcom/mopub/mobileads/VastWebView;->c:Lcom/mopub/mobileads/VastWebView$a;

    .line 534
    new-instance v5, Lcom/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2;

    invoke-direct {v5, v2, p0}, Lcom/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2;-><init>(Lcom/mopub/mobileads/VastIconConfig;Lcom/mopub/mobileads/VastVideoViewController;)V

    check-cast v5, Landroid/webkit/WebViewClient;

    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/VastWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 564
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 565
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 566
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastIconConfig;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 5085
    iget-object v7, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 566
    invoke-static {v6, v7}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v6

    .line 567
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastIconConfig;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 6085
    iget-object v7, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 567
    invoke-static {v2, v7}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 565
    invoke-direct {v5, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 7085
    :goto_0
    iget-object v2, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const/high16 v6, 0x41400000    # 12.0f

    .line 570
    invoke-static {v6, v2}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 8085
    iget-object v7, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 571
    invoke-static {v6, v7}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v6

    if-eqz v5, :cond_2

    .line 572
    invoke-virtual {v5, v2, v6, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 574
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v4, Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 577
    sget-object v5, Lcom/mopub/common/ViewabilityObstruction;->INDUSTRY_ICON:Lcom/mopub/common/ViewabilityObstruction;

    .line 575
    invoke-virtual {v2, v4, v5}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    goto :goto_1

    .line 580
    :cond_3
    new-instance v4, Landroid/view/View;

    .line 9085
    iget-object v2, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 580
    invoke-direct {v4, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {p0, v4}, Lcom/mopub/mobileads/VastVideoViewController;->setIconView(Landroid/view/View;)V

    .line 581
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 584
    :cond_4
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 585
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 10085
    iget-object v4, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v5, "context"

    .line 585
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, p1, v2}, Lcom/mopub/mobileads/VastIconConfig;->handleImpression(Landroid/content/Context;ILjava/lang/String;)V

    .line 588
    :cond_5
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastIconConfig;->getDurationMS()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    if-lt p1, v0, :cond_6

    .line 590
    iget-object p1, v1, Lcom/mopub/mobileads/VastVideoViewController;->iconView:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 591
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getIconView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public handleViewabilityQuartileEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "enumValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    invoke-static {p1}, Lcom/mopub/common/VideoEvent;->valueOf(Ljava/lang/String;)Lcom/mopub/common/VideoEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    :cond_0
    return-void
.end method

.method public isCalibrationDone()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->r:Z

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:Z

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->o:Z

    return v0
.end method

.method public setBottomGradientStripWidget(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->bottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-void
.end method

.method public setCalibrationDone(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->r:Z

    return-void
.end method

.method public setCloseButtonWidget(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->closeButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    return-void
.end method

.method public setClosing(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:Z

    return-void
.end method

.method public setComplete(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->o:Z

    return-void
.end method

.method public setHasCompanionAd(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->t:Z

    return-void
.end method

.method public setIconView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->iconView:Landroid/view/View;

    return-void
.end method

.method public setProgressBarWidget(Lcom/mopub/mobileads/VastVideoProgressBarWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->progressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    return-void
.end method

.method public setRadialCountdownWidget(Lcom/mopub/mobileads/RadialCountdownWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->radialCountdownWidget:Lcom/mopub/mobileads/RadialCountdownWidget;

    return-void
.end method

.method public setShouldAllowClose(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->p:Z

    return-void
.end method

.method public setShowCloseButtonDelay(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->q:I

    return-void
.end method

.method public setTopGradientStripWidget(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->topGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-void
.end method

.method public setVideoError(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->u:Z

    return-void
.end method

.method public updateCountdown(Z)V
    .locals 3

    .line 487
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isCalibrationDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;

    move-result-object v0

    .line 489
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v1

    .line 490
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    .line 488
    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RadialCountdownWidget;->updateCountdownProgress(II)V

    :cond_0
    if-nez p1, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/RadialCountdownWidget;->setVisibility(I)V

    .line 496
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCloseButtonWidget()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setVisibility(I)V

    const/4 p1, 0x1

    .line 497
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->setShouldAllowClose(Z)V

    .line 500
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCtaButtonWidget()Lcom/mopub/mobileads/VideoCtaButtonWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->a()V

    :cond_2
    return-void
.end method

.method public updateProgressBar()V
    .locals 2

    .line 505
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    return-void
.end method
