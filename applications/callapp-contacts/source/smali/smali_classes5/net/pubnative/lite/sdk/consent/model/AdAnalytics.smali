.class public final Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008%\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BU\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\rJ\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\'\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010(\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u000b\u0010)\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0010\u0010,\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010-\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJl\u0010.\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010/J\u0013\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00103\u001a\u00020\u0003H\u00d6\u0001J\t\u00104\u001a\u00020\u0007H\u00d6\u0001R \u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\u0008\u0019\u0010\u0013\"\u0004\u0008\u001a\u0010\u0015R\"\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008 \u0010\u001c\"\u0004\u0008!\u0010\u001eR \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000f\"\u0004\u0008#\u0010\u0011R \u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u000f\"\u0004\u0008%\u0010\u0011\u00a8\u00065"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;",
        "",
        "id",
        "",
        "impressions",
        "clicks",
        "time_between_impression_and_click",
        "",
        "average_view_time",
        "time_to_close",
        "percentage_of_view",
        "",
        "percentage_before_skip",
        "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V",
        "getAverage_view_time",
        "()Ljava/lang/String;",
        "setAverage_view_time",
        "(Ljava/lang/String;)V",
        "getClicks",
        "()Ljava/lang/Integer;",
        "setClicks",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getId",
        "()I",
        "getImpressions",
        "setImpressions",
        "getPercentage_before_skip",
        "()Ljava/lang/Double;",
        "setPercentage_before_skip",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "getPercentage_of_view",
        "setPercentage_of_view",
        "getTime_between_impression_and_click",
        "setTime_between_impression_and_click",
        "getTime_to_close",
        "setTime_to_close",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;",
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
    tableName = "ad_analytics"
.end annotation


# instance fields
.field private average_view_time:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "average_view_time"
    .end annotation
.end field

.field private clicks:Ljava/lang/Integer;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "clicks"
    .end annotation
.end field

.field private final id:I
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

.field private percentage_before_skip:Ljava/lang/Double;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "percentage_before_skip"
    .end annotation
.end field

.field private percentage_of_view:Ljava/lang/Double;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "percentage_of_view"
    .end annotation
.end field

.field private time_between_impression_and_click:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "time_between_impression_and_click"
    .end annotation
.end field

.field private time_to_close:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "time_to_close"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->id:I

    iput-object p2, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->impressions:Ljava/lang/Integer;

    iput-object p3, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->clicks:Ljava/lang/Integer;

    iput-object p4, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_between_impression_and_click:Ljava/lang/String;

    iput-object p5, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->average_view_time:Ljava/lang/String;

    iput-object p6, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_to_close:Ljava/lang/String;

    iput-object p7, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_of_view:Ljava/lang/Double;

    iput-object p8, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_before_skip:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 8
    invoke-direct/range {v1 .. v9}, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic copy$default(Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->id:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->impressions:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->clicks:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_between_impression_and_click:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->average_view_time:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_to_close:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_of_view:Ljava/lang/Double;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_before_skip:Ljava/lang/Double;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->copy(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->id:I

    return v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->impressions:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->clicks:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_between_impression_and_click:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->average_view_time:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_to_close:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_of_view:Ljava/lang/Double;

    return-object v0
.end method

.method public final component8()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_before_skip:Ljava/lang/Double;

    return-object v0
.end method

.method public final copy(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;
    .locals 10

    new-instance v9, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;

    move-object v0, v9

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v9
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;

    iget v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->id:I

    iget v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->impressions:Ljava/lang/Integer;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->impressions:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->clicks:Ljava/lang/Integer;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->clicks:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_between_impression_and_click:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_between_impression_and_click:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->average_view_time:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->average_view_time:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_to_close:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_to_close:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_of_view:Ljava/lang/Double;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_of_view:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_before_skip:Ljava/lang/Double;

    iget-object p1, p1, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_before_skip:Ljava/lang/Double;

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

.method public final getAverage_view_time()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->average_view_time:Ljava/lang/String;

    return-object v0
.end method

.method public final getClicks()Ljava/lang/Integer;
    .locals 1

    .line 10
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->clicks:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 8
    iget v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->id:I

    return v0
.end method

.method public final getImpressions()Ljava/lang/Integer;
    .locals 1

    .line 9
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->impressions:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPercentage_before_skip()Ljava/lang/Double;
    .locals 1

    .line 15
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_before_skip:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPercentage_of_view()Ljava/lang/Double;
    .locals 1

    .line 14
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_of_view:Ljava/lang/Double;

    return-object v0
.end method

.method public final getTime_between_impression_and_click()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_between_impression_and_click:Ljava/lang/String;

    return-object v0
.end method

.method public final getTime_to_close()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_to_close:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->impressions:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->clicks:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_between_impression_and_click:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->average_view_time:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_to_close:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_of_view:Ljava/lang/Double;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_before_skip:Ljava/lang/Double;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_6
    add-int/2addr v0, v2

    return v0
.end method

.method public final setAverage_view_time(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->average_view_time:Ljava/lang/String;

    return-void
.end method

.method public final setClicks(Ljava/lang/Integer;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->clicks:Ljava/lang/Integer;

    return-void
.end method

.method public final setImpressions(Ljava/lang/Integer;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->impressions:Ljava/lang/Integer;

    return-void
.end method

.method public final setPercentage_before_skip(Ljava/lang/Double;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_before_skip:Ljava/lang/Double;

    return-void
.end method

.method public final setPercentage_of_view(Ljava/lang/Double;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_of_view:Ljava/lang/Double;

    return-void
.end method

.method public final setTime_between_impression_and_click(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_between_impression_and_click:Ljava/lang/String;

    return-void
.end method

.method public final setTime_to_close(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_to_close:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdAnalytics(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", impressions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->impressions:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clicks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->clicks:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time_between_impression_and_click="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_between_impression_and_click:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", average_view_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->average_view_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time_to_close="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->time_to_close:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", percentage_of_view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_of_view:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", percentage_before_skip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;->percentage_before_skip:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
