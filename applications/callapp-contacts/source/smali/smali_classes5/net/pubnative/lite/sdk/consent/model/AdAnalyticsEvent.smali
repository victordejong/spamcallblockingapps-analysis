.class public final Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008,\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bk\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010+\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010 J\u0010\u0010,\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010 J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0019J\u0010\u00103\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0019J\u0010\u00104\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0019J\u0086\u0001\u00105\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u00106J\u0013\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010:\u001a\u00020\u0003H\u00d6\u0001J\t\u0010;\u001a\u00020\u0005H\u00d6\u0001R \u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R \u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\"\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0011\"\u0004\u0008\u001e\u0010\u0013R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010!\u001a\u0004\u0008\u001f\u0010 R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0011\"\u0004\u0008#\u0010\u0013R\"\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008$\u0010\u0019\"\u0004\u0008%\u0010\u001bR\"\u0010\r\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008&\u0010\u0019\"\u0004\u0008\'\u0010\u001bR\"\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010!\u001a\u0004\u0008(\u0010 \"\u0004\u0008)\u0010*\u00a8\u0006<"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;",
        "",
        "id",
        "",
        "placement_id",
        "",
        "event_type",
        "creative_type",
        "ad_format",
        "ad_size",
        "datetime",
        "",
        "time_from_load",
        "time_from_show",
        "video_position",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V",
        "getAd_format",
        "()Ljava/lang/String;",
        "setAd_format",
        "(Ljava/lang/String;)V",
        "getAd_size",
        "setAd_size",
        "getCreative_type",
        "setCreative_type",
        "getDatetime",
        "()Ljava/lang/Long;",
        "setDatetime",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getEvent_type",
        "setEvent_type",
        "getId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getPlacement_id",
        "setPlacement_id",
        "getTime_from_load",
        "setTime_from_load",
        "getTime_from_show",
        "setTime_from_show",
        "getVideo_position",
        "setVideo_position",
        "(Ljava/lang/Integer;)V",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
    tableName = "ad_analytics_event"
.end annotation


# instance fields
.field private ad_format:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "ad_format"
    .end annotation
.end field

.field private ad_size:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "ad_size"
    .end annotation
.end field

.field private creative_type:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "creative_type"
    .end annotation
.end field

.field private datetime:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "datetime"
    .end annotation
.end field

.field private event_type:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "event_type"
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

.field private placement_id:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "placement_id"
    .end annotation
.end field

.field private time_from_load:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "time_from_load"
    .end annotation
.end field

.field private time_from_show:Ljava/lang/Long;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "time_from_show"
    .end annotation
.end field

.field private video_position:Ljava/lang/Integer;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "video_position"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->placement_id:Ljava/lang/String;

    iput-object p3, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->event_type:Ljava/lang/String;

    iput-object p4, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->creative_type:Ljava/lang/String;

    iput-object p5, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_format:Ljava/lang/String;

    iput-object p6, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_size:Ljava/lang/String;

    iput-object p7, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->datetime:Ljava/lang/Long;

    iput-object p8, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_load:Ljava/lang/Long;

    iput-object p9, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_show:Ljava/lang/Long;

    iput-object p10, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->video_position:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p11, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Object;)Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->placement_id:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->event_type:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->creative_type:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_format:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_size:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->datetime:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_load:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_show:Ljava/lang/Long;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->video_position:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->video_position:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->placement_id:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->event_type:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->creative_type:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_format:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_size:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->datetime:Ljava/lang/Long;

    return-object v0
.end method

.method public final component8()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_load:Ljava/lang/Long;

    return-object v0
.end method

.method public final component9()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_show:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;
    .locals 12

    new-instance v11, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-object v11
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->id:Ljava/lang/Integer;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->id:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->placement_id:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->placement_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->event_type:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->event_type:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->creative_type:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->creative_type:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_format:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_format:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_size:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_size:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->datetime:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->datetime:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_load:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_load:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_show:Ljava/lang/Long;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_show:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->video_position:Ljava/lang/Integer;

    iget-object p1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->video_position:Ljava/lang/Integer;

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

.method public final getAd_format()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_format:Ljava/lang/String;

    return-object v0
.end method

.method public final getAd_size()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_size:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreative_type()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->creative_type:Ljava/lang/String;

    return-object v0
.end method

.method public final getDatetime()Ljava/lang/Long;
    .locals 1

    .line 14
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->datetime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getEvent_type()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->event_type:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1

    .line 8
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPlacement_id()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->placement_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getTime_from_load()Ljava/lang/Long;
    .locals 1

    .line 15
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_load:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTime_from_show()Ljava/lang/Long;
    .locals 1

    .line 16
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_show:Ljava/lang/Long;

    return-object v0
.end method

.method public final getVideo_position()Ljava/lang/Integer;
    .locals 1

    .line 17
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->video_position:Ljava/lang/Integer;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->id:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->placement_id:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->event_type:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->creative_type:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_format:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_size:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->datetime:Ljava/lang/Long;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_load:Ljava/lang/Long;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_show:Ljava/lang/Long;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->video_position:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_9
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAd_format(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_format:Ljava/lang/String;

    return-void
.end method

.method public final setAd_size(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_size:Ljava/lang/String;

    return-void
.end method

.method public final setCreative_type(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->creative_type:Ljava/lang/String;

    return-void
.end method

.method public final setDatetime(Ljava/lang/Long;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->datetime:Ljava/lang/Long;

    return-void
.end method

.method public final setEvent_type(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->event_type:Ljava/lang/String;

    return-void
.end method

.method public final setPlacement_id(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->placement_id:Ljava/lang/String;

    return-void
.end method

.method public final setTime_from_load(Ljava/lang/Long;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_load:Ljava/lang/Long;

    return-void
.end method

.method public final setTime_from_show(Ljava/lang/Long;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_show:Ljava/lang/Long;

    return-void
.end method

.method public final setVideo_position(Ljava/lang/Integer;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->video_position:Ljava/lang/Integer;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdAnalyticsEvent(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placement_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->placement_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->event_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creative_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->creative_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ad_format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ad_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->ad_size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", datetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->datetime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time_from_load="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_load:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time_from_show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->time_from_show:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video_position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;->video_position:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
