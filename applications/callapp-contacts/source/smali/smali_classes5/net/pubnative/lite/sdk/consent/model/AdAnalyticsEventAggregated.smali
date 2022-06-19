.class public final Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008E\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00b5\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010;\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010<\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010=\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010>\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010?\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010@\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010A\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010B\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010C\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010D\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010E\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010F\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010G\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010H\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010I\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010J\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010K\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u00da\u0001\u0010L\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0002\u0010MJ\u0013\u0010N\u001a\u00020O2\u0008\u0010P\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010Q\u001a\u00020\u0003H\u00d6\u0001J\t\u0010R\u001a\u00020SH\u00d6\u0001R\"\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u001f\u001a\u0004\u0008 \u0010\u001cR\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u001f\u001a\u0004\u0008!\u0010\u001cR\"\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008\"\u0010\u001c\"\u0004\u0008#\u0010\u001eR\"\u0010\r\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008$\u0010\u0017\"\u0004\u0008%\u0010\u0019R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u001f\u001a\u0004\u0008&\u0010\u001cR\"\u0010\u0011\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008\'\u0010\u0017\"\u0004\u0008(\u0010\u0019R\"\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008)\u0010\u0017\"\u0004\u0008*\u0010\u0019R\"\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008+\u0010\u0017\"\u0004\u0008,\u0010\u0019R\"\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008-\u0010\u0017\"\u0004\u0008.\u0010\u0019R\"\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008/\u0010\u0017\"\u0004\u00080\u0010\u0019R\"\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u00081\u0010\u0017\"\u0004\u00082\u0010\u0019R\"\u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u00083\u0010\u0017\"\u0004\u00084\u0010\u0019R\"\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u00085\u0010\u0017\"\u0004\u00086\u0010\u0019R\"\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u00087\u0010\u0017\"\u0004\u00088\u0010\u0019R\"\u0010\u000c\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u00089\u0010\u0017\"\u0004\u0008:\u0010\u0019\u00a8\u0006T"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;",
        "",
        "id",
        "",
        "creative_id",
        "placement_id",
        "impressions",
        "clicks",
        "video_started",
        "",
        "video_finished",
        "video_dismissed",
        "video_view_time",
        "interstitial_visible_time",
        "banner_visible_time",
        "video_muted",
        "video_unmuted",
        "time_to_click_html",
        "time_to_click_vast",
        "video_position_click",
        "video_position_dismiss",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V",
        "getBanner_visible_time",
        "()Ljava/lang/Long;",
        "setBanner_visible_time",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getClicks",
        "()Ljava/lang/Integer;",
        "setClicks",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getCreative_id",
        "getId",
        "getImpressions",
        "setImpressions",
        "getInterstitial_visible_time",
        "setInterstitial_visible_time",
        "getPlacement_id",
        "getTime_to_click_html",
        "setTime_to_click_html",
        "getTime_to_click_vast",
        "setTime_to_click_vast",
        "getVideo_dismissed",
        "setVideo_dismissed",
        "getVideo_finished",
        "setVideo_finished",
        "getVideo_muted",
        "setVideo_muted",
        "getVideo_position_click",
        "setVideo_position_click",
        "getVideo_position_dismiss",
        "setVideo_position_dismiss",
        "getVideo_started",
        "setVideo_started",
        "getVideo_unmuted",
        "setVideo_unmuted",
        "getVideo_view_time",
        "setVideo_view_time",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "hybid.sdk.voyager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lnet/pubnative/lite/sdk/consent/db/Database;
    tableName = "ad_analytics_aggregated"
.end annotation


# instance fields
.field private banner_visible_time:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "banner_visible_time"
    .end annotation
.end field

.field private clicks:Ljava/lang/Integer;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "clicks"
    .end annotation
.end field

.field private final creative_id:Ljava/lang/Integer;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "creative_id"
    .end annotation
.end field

.field private final id:Ljava/lang/Integer;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        autoIncrease = true
        field = "Id"
        generatedId = true
        nonNullable = true
    .end annotation
.end field

.field private impressions:Ljava/lang/Integer;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "impressions"
    .end annotation
.end field

.field private interstitial_visible_time:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "interstitial_visible_time"
    .end annotation
.end field

.field private final placement_id:Ljava/lang/Integer;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "placement_id"
    .end annotation
.end field

.field private time_to_click_html:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "time_to_click_html"
    .end annotation
.end field

.field private time_to_click_vast:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "time_to_click_vast"
    .end annotation
.end field

.field private video_dismissed:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "video_dismissed"
    .end annotation
.end field

.field private video_finished:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "video_finished"
    .end annotation
.end field

.field private video_muted:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "video_muted"
    .end annotation
.end field

.field private video_position_click:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "video_position_click"
    .end annotation
.end field

.field private video_position_dismiss:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "video_position_dismiss"
    .end annotation
.end field

.field private video_started:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "video_started"
    .end annotation
.end field

.field private video_unmuted:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "video_unmuted"
    .end annotation
.end field

.field private video_view_time:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "video_view_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    move-object v0, p0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->id:Ljava/lang/Integer;

    move-object v1, p2

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->creative_id:Ljava/lang/Integer;

    move-object v1, p3

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->placement_id:Ljava/lang/Integer;

    move-object v1, p4

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->impressions:Ljava/lang/Integer;

    move-object v1, p5

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->clicks:Ljava/lang/Integer;

    move-object v1, p6

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_started:Ljava/lang/Long;

    move-object v1, p7

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_finished:Ljava/lang/Long;

    move-object v1, p8

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_dismissed:Ljava/lang/Long;

    move-object v1, p9

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_view_time:Ljava/lang/Long;

    move-object v1, p10

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->interstitial_visible_time:Ljava/lang/Long;

    move-object v1, p11

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->banner_visible_time:Ljava/lang/Long;

    move-object v1, p12

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_muted:Ljava/lang/Long;

    move-object v1, p13

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_unmuted:Ljava/lang/Long;

    move-object/from16 v1, p14

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_html:Ljava/lang/Long;

    move-object/from16 v1, p15

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_vast:Ljava/lang/Long;

    move-object/from16 v1, p16

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_click:Ljava/lang/Long;

    move-object/from16 v1, p17

    iput-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_dismiss:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    and-int/lit8 v0, p18, 0x1

    const/4 v1, 0x0

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v0, p18, 0x2

    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v0, p18, 0x4

    if-eqz v0, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    .line 10
    invoke-direct/range {v2 .. v19}, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic copy$default(Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Object;)Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->creative_id:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->placement_id:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->impressions:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->clicks:Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_started:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_finished:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_dismissed:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_view_time:Ljava/lang/Long;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->interstitial_visible_time:Ljava/lang/Long;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->banner_visible_time:Ljava/lang/Long;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_muted:Ljava/lang/Long;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_unmuted:Ljava/lang/Long;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_html:Ljava/lang/Long;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_vast:Ljava/lang/Long;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_click:Ljava/lang/Long;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v1, v1, v16

    if-eqz v1, :cond_10

    iget-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_dismiss:Ljava/lang/Long;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p16, v15

    move-object/from16 p17, v1

    invoke-virtual/range {p0 .. p17}, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component10()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->interstitial_visible_time:Ljava/lang/Long;

    return-object v0
.end method

.method public final component11()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->banner_visible_time:Ljava/lang/Long;

    return-object v0
.end method

.method public final component12()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_muted:Ljava/lang/Long;

    return-object v0
.end method

.method public final component13()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_unmuted:Ljava/lang/Long;

    return-object v0
.end method

.method public final component14()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_html:Ljava/lang/Long;

    return-object v0
.end method

.method public final component15()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_vast:Ljava/lang/Long;

    return-object v0
.end method

.method public final component16()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_click:Ljava/lang/Long;

    return-object v0
.end method

.method public final component17()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_dismiss:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->creative_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->placement_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->impressions:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->clicks:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component6()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_started:Ljava/lang/Long;

    return-object v0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_finished:Ljava/lang/Long;

    return-object v0
.end method

.method public final component8()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_dismissed:Ljava/lang/Long;

    return-object v0
.end method

.method public final component9()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_view_time:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    new-instance v18, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v18
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->id:Ljava/lang/Integer;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->id:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->creative_id:Ljava/lang/Integer;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->creative_id:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->placement_id:Ljava/lang/Integer;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->placement_id:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->impressions:Ljava/lang/Integer;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->impressions:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->clicks:Ljava/lang/Integer;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->clicks:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_started:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_started:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_finished:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_finished:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_dismissed:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_dismissed:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_view_time:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_view_time:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->interstitial_visible_time:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->interstitial_visible_time:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->banner_visible_time:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->banner_visible_time:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_muted:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_muted:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_unmuted:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_unmuted:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_html:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_html:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_vast:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_vast:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_click:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_click:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_dismiss:Ljava/lang/Long;

    iget-object p1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_dismiss:Ljava/lang/Long;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBanner_visible_time()Ljava/lang/Long;
    .locals 1

    .line 18
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->banner_visible_time:Ljava/lang/Long;

    return-object v0
.end method

.method public final getClicks()Ljava/lang/Integer;
    .locals 1

    .line 12
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->clicks:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCreative_id()Ljava/lang/Integer;
    .locals 1

    .line 9
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->creative_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1

    .line 8
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getImpressions()Ljava/lang/Integer;
    .locals 1

    .line 11
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->impressions:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInterstitial_visible_time()Ljava/lang/Long;
    .locals 1

    .line 17
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->interstitial_visible_time:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPlacement_id()Ljava/lang/Integer;
    .locals 1

    .line 10
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->placement_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTime_to_click_html()Ljava/lang/Long;
    .locals 1

    .line 21
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_html:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTime_to_click_vast()Ljava/lang/Long;
    .locals 1

    .line 22
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_vast:Ljava/lang/Long;

    return-object v0
.end method

.method public final getVideo_dismissed()Ljava/lang/Long;
    .locals 1

    .line 15
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_dismissed:Ljava/lang/Long;

    return-object v0
.end method

.method public final getVideo_finished()Ljava/lang/Long;
    .locals 1

    .line 14
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_finished:Ljava/lang/Long;

    return-object v0
.end method

.method public final getVideo_muted()Ljava/lang/Long;
    .locals 1

    .line 19
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_muted:Ljava/lang/Long;

    return-object v0
.end method

.method public final getVideo_position_click()Ljava/lang/Long;
    .locals 1

    .line 23
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_click:Ljava/lang/Long;

    return-object v0
.end method

.method public final getVideo_position_dismiss()Ljava/lang/Long;
    .locals 1

    .line 24
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_dismiss:Ljava/lang/Long;

    return-object v0
.end method

.method public final getVideo_started()Ljava/lang/Long;
    .locals 1

    .line 13
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_started:Ljava/lang/Long;

    return-object v0
.end method

.method public final getVideo_unmuted()Ljava/lang/Long;
    .locals 1

    .line 20
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_unmuted:Ljava/lang/Long;

    return-object v0
.end method

.method public final getVideo_view_time()Ljava/lang/Long;
    .locals 1

    .line 16
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_view_time:Ljava/lang/Long;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->id:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->creative_id:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->placement_id:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->impressions:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->clicks:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_started:Ljava/lang/Long;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_finished:Ljava/lang/Long;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_dismissed:Ljava/lang/Long;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_view_time:Ljava/lang/Long;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->interstitial_visible_time:Ljava/lang/Long;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->banner_visible_time:Ljava/lang/Long;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_muted:Ljava/lang/Long;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_unmuted:Ljava/lang/Long;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_html:Ljava/lang/Long;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_vast:Ljava/lang/Long;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_click:Ljava/lang/Long;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_dismiss:Ljava/lang/Long;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_10
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBanner_visible_time(Ljava/lang/Long;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->banner_visible_time:Ljava/lang/Long;

    return-void
.end method

.method public final setClicks(Ljava/lang/Integer;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->clicks:Ljava/lang/Integer;

    return-void
.end method

.method public final setImpressions(Ljava/lang/Integer;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->impressions:Ljava/lang/Integer;

    return-void
.end method

.method public final setInterstitial_visible_time(Ljava/lang/Long;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->interstitial_visible_time:Ljava/lang/Long;

    return-void
.end method

.method public final setTime_to_click_html(Ljava/lang/Long;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_html:Ljava/lang/Long;

    return-void
.end method

.method public final setTime_to_click_vast(Ljava/lang/Long;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_vast:Ljava/lang/Long;

    return-void
.end method

.method public final setVideo_dismissed(Ljava/lang/Long;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_dismissed:Ljava/lang/Long;

    return-void
.end method

.method public final setVideo_finished(Ljava/lang/Long;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_finished:Ljava/lang/Long;

    return-void
.end method

.method public final setVideo_muted(Ljava/lang/Long;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_muted:Ljava/lang/Long;

    return-void
.end method

.method public final setVideo_position_click(Ljava/lang/Long;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_click:Ljava/lang/Long;

    return-void
.end method

.method public final setVideo_position_dismiss(Ljava/lang/Long;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_dismiss:Ljava/lang/Long;

    return-void
.end method

.method public final setVideo_started(Ljava/lang/Long;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_started:Ljava/lang/Long;

    return-void
.end method

.method public final setVideo_unmuted(Ljava/lang/Long;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_unmuted:Ljava/lang/Long;

    return-void
.end method

.method public final setVideo_view_time(Ljava/lang/Long;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_view_time:Ljava/lang/Long;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdAnalyticsEventAggregated(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creative_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->creative_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placement_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->placement_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", impressions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->impressions:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clicks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->clicks:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video_started="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_started:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video_finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_finished:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video_dismissed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_dismissed:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video_view_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_view_time:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interstitial_visible_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->interstitial_visible_time:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", banner_visible_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->banner_visible_time:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video_muted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_muted:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video_unmuted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_unmuted:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time_to_click_html="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_html:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time_to_click_vast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->time_to_click_vast:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video_position_click="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_click:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video_position_dismiss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;->video_position_dismiss:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
