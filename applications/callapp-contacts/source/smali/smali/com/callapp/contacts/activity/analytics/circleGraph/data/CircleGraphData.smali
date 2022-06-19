.class public final Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008G\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u00a7\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0019J\t\u0010I\u001a\u00020\u0003H\u00c6\u0003J\t\u0010J\u001a\u00020\u0011H\u00c6\u0003J\t\u0010K\u001a\u00020\u0003H\u00c6\u0003J\t\u0010L\u001a\u00020\u0003H\u00c6\u0003J\t\u0010M\u001a\u00020\u0003H\u00c6\u0003J\t\u0010N\u001a\u00020\u000cH\u00c6\u0003J\t\u0010O\u001a\u00020\u0017H\u00c6\u0003J\t\u0010P\u001a\u00020\u000cH\u00c6\u0003J\t\u0010Q\u001a\u00020\u0005H\u00c6\u0003J\t\u0010R\u001a\u00020\u0005H\u00c6\u0003J\t\u0010S\u001a\u00020\u0005H\u00c6\u0003J\t\u0010T\u001a\u00020\u0005H\u00c6\u0003J\t\u0010U\u001a\u00020\u0005H\u00c6\u0003J\t\u0010V\u001a\u00020\u000cH\u00c6\u0003J\t\u0010W\u001a\u00020\u000eH\u00c6\u0003J\u0010\u0010X\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003\u00a2\u0006\u0002\u0010;J\u00b0\u0001\u0010Y\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000cH\u00c6\u0001\u00a2\u0006\u0002\u0010ZJ\u0013\u0010[\u001a\u00020\u000c2\u0008\u0010\\\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010]\u001a\u00020\u0003H\u00d6\u0001J\t\u0010^\u001a\u00020_H\u00d6\u0001R\u001a\u0010\u0014\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001b\"\u0004\u0008#\u0010\u001dR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001a\u0010\u0008\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010)\"\u0004\u00081\u0010+R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010)\"\u0004\u00083\u0010+R\u001a\u0010\u0018\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u001b\"\u0004\u00089\u0010\u001dR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010>\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u001a\u0010\u0015\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u00105\"\u0004\u0008@\u00107R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010)\"\u0004\u0008B\u0010+R\u001a\u0010\u0013\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010\u001b\"\u0004\u0008D\u0010\u001dR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u00105\"\u0004\u0008F\u00107R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010)\"\u0004\u0008H\u0010+\u00a8\u0006`"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;",
        "",
        "color",
        "",
        "width",
        "",
        "(IF)V",
        "minRange",
        "maxRange",
        "initialRange",
        "targetRange",
        "updateProgress",
        "",
        "duration",
        "",
        "speedDuration",
        "chartStyle",
        "Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;",
        "spaceMultiple",
        "textGravity",
        "backgroundColor",
        "spinClockwise",
        "inset",
        "Landroid/graphics/PointF;",
        "setPercentageSign",
        "(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;Z)V",
        "getBackgroundColor",
        "()I",
        "setBackgroundColor",
        "(I)V",
        "getChartStyle",
        "()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;",
        "setChartStyle",
        "(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;)V",
        "getColor",
        "setColor",
        "getDuration",
        "()J",
        "setDuration",
        "(J)V",
        "getInitialRange",
        "()F",
        "setInitialRange",
        "(F)V",
        "getInset",
        "()Landroid/graphics/PointF;",
        "setInset",
        "(Landroid/graphics/PointF;)V",
        "getMaxRange",
        "setMaxRange",
        "getMinRange",
        "setMinRange",
        "getSetPercentageSign",
        "()Z",
        "setSetPercentageSign",
        "(Z)V",
        "getSpaceMultiple",
        "setSpaceMultiple",
        "getSpeedDuration",
        "()Ljava/lang/Long;",
        "setSpeedDuration",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getSpinClockwise",
        "setSpinClockwise",
        "getTargetRange",
        "setTargetRange",
        "getTextGravity",
        "setTextGravity",
        "getUpdateProgress",
        "setUpdateProgress",
        "getWidth",
        "setWidth",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;Z)Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:J

.field private i:Ljava/lang/Long;

.field private j:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Landroid/graphics/PointF;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xffff

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 20

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xffff

    const/16 v19, 0x0

    .line 25
    invoke-direct/range {v0 .. v19}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v1, p1

    .line 26
    iput v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->a:I

    move/from16 v1, p2

    .line 27
    iput v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->f:F

    return-void
.end method

.method public constructor <init>(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;Z)V
    .locals 5

    move-object v0, p0

    move-object/from16 v1, p11

    move-object/from16 v2, p16

    const-string v3, "chartStyle"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "inset"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v3, p1

    iput v3, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->a:I

    move v3, p2

    iput v3, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->b:F

    move v3, p3

    iput v3, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->c:F

    move v3, p4

    iput v3, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->d:F

    move v3, p5

    iput v3, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->e:F

    move v3, p6

    iput v3, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->f:F

    move v3, p7

    iput-boolean v3, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->g:Z

    move-wide v3, p8

    iput-wide v3, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->h:J

    move-object v3, p10

    iput-object v3, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->i:Ljava/lang/Long;

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->j:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    move/from16 v1, p12

    iput v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->k:I

    move/from16 v1, p13

    iput v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->l:I

    move/from16 v1, p14

    iput v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->m:I

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->n:Z

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->o:Landroid/graphics/PointF;

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->p:Z

    return-void
.end method

.method public synthetic constructor <init>(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/high16 v5, 0x42c80000    # 100.0f

    goto :goto_2

    :cond_2
    move/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const-wide/16 v10, 0x1

    goto :goto_7

    :cond_7
    move-wide/from16 v10, p8

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v12, p10

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    .line 17
    sget-object v13, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;->STYLE_DONUT:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p11

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    goto :goto_a

    :cond_a
    move/from16 v14, p12

    :goto_a
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    const/16 v15, 0x11

    goto :goto_b

    :cond_b
    move/from16 v15, p13

    :goto_b
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    goto :goto_c

    :cond_c
    move/from16 v2, p14

    :goto_c
    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_d

    :cond_d
    move/from16 v4, p15

    :goto_d
    move/from16 v16, v4

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_e

    .line 22
    new-instance v4, Landroid/graphics/PointF;

    move/from16 v17, v2

    const/4 v2, 0x0

    invoke-direct {v4, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_e

    :cond_e
    move/from16 v17, v2

    move-object/from16 v4, p16

    :goto_e
    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_f

    :cond_f
    move/from16 v0, p17

    :goto_f
    move-object/from16 p1, p0

    move/from16 p2, v1

    move/from16 p3, v3

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-wide/from16 p9, v10

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v15

    move/from16 p15, v17

    move/from16 p16, v16

    move-object/from16 p17, v4

    move/from16 p18, v0

    .line 23
    invoke-direct/range {p1 .. p18}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->a:I

    iget v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->b:F

    iget v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->b:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->c:F

    iget v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->c:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->d:F

    iget v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->d:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->e:F

    iget v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->e:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->f:F

    iget v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->f:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->g:Z

    iget-boolean v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->g:Z

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->h:J

    iget-wide v2, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->i:Ljava/lang/Long;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->i:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->j:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->j:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->k:I

    iget v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->k:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->l:I

    iget v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->l:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->m:I

    iget v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->m:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->n:Z

    iget-boolean v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->n:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->o:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->o:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->p:Z

    iget-boolean p1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->p:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getChartStyle()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->j:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    return-object v0
.end method

.method public final getColor()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->a:I

    return v0
.end method

.method public final getInitialRange()F
    .locals 1

    .line 11
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->d:F

    return v0
.end method

.method public final getInset()Landroid/graphics/PointF;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->o:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getMaxRange()F
    .locals 1

    .line 10
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->c:F

    return v0
.end method

.method public final getMinRange()F
    .locals 1

    .line 9
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->b:F

    return v0
.end method

.method public final getSetPercentageSign()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->p:Z

    return v0
.end method

.method public final getSpinClockwise()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->n:Z

    return v0
.end method

.method public final getTargetRange()F
    .locals 1

    .line 12
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->e:F

    return v0
.end method

.method public final getUpdateProgress()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->g:Z

    return v0
.end method

.method public final getWidth()F
    .locals 1

    .line 13
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->f:F

    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->g:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->h:J

    invoke-static {v3, v4}, L$r8$backportedMethods$utility$Long$1$hashCode;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->i:Ljava/lang/Long;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->j:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->k:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->l:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->n:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->o:Landroid/graphics/PointF;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->p:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final setChartStyle(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->j:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    return-void
.end method

.method public final setInitialRange(F)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->d:F

    return-void
.end method

.method public final setInset(Landroid/graphics/PointF;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->o:Landroid/graphics/PointF;

    return-void
.end method

.method public final setMaxRange(F)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->c:F

    return-void
.end method

.method public final setSetPercentageSign(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->p:Z

    return-void
.end method

.method public final setSpinClockwise(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->n:Z

    return-void
.end method

.method public final setTargetRange(F)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->e:F

    return-void
.end method

.method public final setUpdateProgress(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->g:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CircleGraphData(color="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", initialRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", targetRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", updateProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speedDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->i:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chartStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->j:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spaceMultiple="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textGravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spinClockwise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->o:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", setPercentageSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
