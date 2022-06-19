.class public final Lnet/pubnative/lite/sdk/analytics/Reporting$EventType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/analytics/Reporting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EventType"
.end annotation


# static fields
.field public static final AUCTION_FINISHED:Ljava/lang/String; = "auction_finished"

.field public static final AUCTION_NEXT_ITEM:Ljava/lang/String; = "auction_next_item"

.field public static final AUCTION_START:Ljava/lang/String; = "auction_start"

.field public static final CLICK:Ljava/lang/String; = "click"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final FILL:Ljava/lang/String; = "fill"

.field public static final IMPRESSION:Ljava/lang/String; = "impression"

.field public static final INTERSTITIAL_CLOSED:Ljava/lang/String; = "interstitial_closed"

.field public static final NEXT_AD_SOURCE:Ljava/lang/String; = "next_ad_source"

.field public static final NO_FILL:Ljava/lang/String; = "no_fill"

.field public static final VIDEO_AD_BUFFER_FINISH:Ljava/lang/String; = "buffer_finish"

.field public static final VIDEO_AD_BUFFER_START:Ljava/lang/String; = "buffer_start"

.field public static final VIDEO_AD_CLICKED:Ljava/lang/String; = "clicked"

.field public static final VIDEO_AD_COMPLETE:Ljava/lang/String; = "ad_complete"

.field public static final VIDEO_AD_FIRST_QUARTILE:Ljava/lang/String; = "first_quartile"

.field public static final VIDEO_AD_IMPRESSION:Ljava/lang/String; = "impression"

.field public static final VIDEO_AD_MIDPOINT:Ljava/lang/String; = "midpoint"

.field public static final VIDEO_AD_PAUSE:Ljava/lang/String; = "pause"

.field public static final VIDEO_AD_RESUME:Ljava/lang/String; = "resume"

.field public static final VIDEO_AD_SESSION_INITIALIZED:Ljava/lang/String; = "session_initialized"

.field public static final VIDEO_AD_SESSION_LOADED:Ljava/lang/String; = "session_loaded"

.field public static final VIDEO_AD_SESSION_STARTED:Ljava/lang/String; = "session_started"

.field public static final VIDEO_AD_SESSION_STOPPED:Ljava/lang/String; = "session_stopped"

.field public static final VIDEO_AD_SKIPPED:Ljava/lang/String; = "skipped"

.field public static final VIDEO_AD_THIRD_QUARTILE:Ljava/lang/String; = "third_quartile"

.field public static final VIDEO_AD_VOLUME_CHANGE:Ljava/lang/String; = "volume_change"

.field public static final VIDEO_DISMISSED:Ljava/lang/String; = "video_dismissed"

.field public static final VIDEO_FINISHED:Ljava/lang/String; = "video_finished"

.field public static final VIDEO_MUTE:Ljava/lang/String; = "video_mute"

.field public static final VIDEO_STARTED:Ljava/lang/String; = "video_started"

.field public static final VIDEO_UNMUTE:Ljava/lang/String; = "video_unmute"

.field public static final WEB_AD_SESSION_INITIALIZED:Ljava/lang/String; = "web_ad_session_started"

.field public static final WINNER:Ljava/lang/String; = "winner"


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/analytics/Reporting;


# direct methods
.method public constructor <init>(Lnet/pubnative/lite/sdk/analytics/Reporting;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lnet/pubnative/lite/sdk/analytics/Reporting$EventType;->this$0:Lnet/pubnative/lite/sdk/analytics/Reporting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
