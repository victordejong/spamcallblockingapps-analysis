.class public final Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->getWhoICalledTheMostData()Lkotlin/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0005"
    }
    d2 = {
        "com/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$3$1$1",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
        "",
        "callapp-client_playRelease",
        "com/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$$special$$inlined$forEach$lambda$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

.field final synthetic d:Lcom/callapp/contacts/loader/api/ContactLoader;

.field final synthetic e:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic f:Lkotlin/jvm/internal/ab$c;

.field final synthetic g:Ljava/util/ArrayList;

.field final synthetic h:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Lcom/callapp/contacts/loader/api/ContactLoader;Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/ab$c;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->a:Ljava/lang/String;

    iput p2, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->b:I

    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->c:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

    iput-object p4, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->d:Lcom/callapp/contacts/loader/api/ContactLoader;

    iput-object p5, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p6, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->f:Lkotlin/jvm/internal/ab$c;

    iput-object p7, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->g:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->h:Ljava/util/ArrayList;

    .line 189
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 44

    move-object/from16 v1, p0

    .line 191
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->d:Lcom/callapp/contacts/loader/api/ContactLoader;

    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 193
    :try_start_0
    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 195
    new-instance v2, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v23, 0x7f06001b

    .line 196
    invoke-static/range {v23 .. v23}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0xffd6

    const/16 v22, 0x0

    move-object v3, v2

    .line 195
    invoke-direct/range {v3 .. v22}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    new-instance v3, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    .line 202
    iget-object v4, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->f:Lkotlin/jvm/internal/ab$c;

    iget v4, v4, Lkotlin/jvm/internal/ab$c;->a:I

    int-to-float v4, v4

    .line 203
    invoke-static/range {v23 .. v23}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v25

    .line 204
    iget v5, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->b:I

    int-to-float v5, v5

    .line 207
    new-instance v6, Landroid/graphics/PointF;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-direct {v6, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/high16 v30, 0x41900000    # 18.0f

    const/16 v31, 0x1

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const v42, 0xbf8a

    const/16 v43, 0x0

    move-object/from16 v24, v3

    move/from16 v27, v4

    move/from16 v29, v5

    move-object/from16 v40, v6

    .line 201
    invoke-direct/range {v24 .. v43}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 211
    iget v4, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->b:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    aput-object v2, v4, v6

    aput-object v3, v4, v7

    .line 212
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "Arrays.asList(outerCircle, innerCircle)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array v4, v7, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    aput-object v2, v4, v6

    .line 214
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "Arrays.asList(outerCircle)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v6, v2

    .line 219
    new-instance v2, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 221
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getInitialRange()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 222
    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f0a0233

    .line 223
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v3, 0x7f0601ec

    .line 224
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 225
    iget v15, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->b:I

    const-string v3, "contactData"

    .line 226
    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v17

    .line 227
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v18

    .line 228
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v11

    .line 229
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const-string v4, "CallAppApplication.get()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const v26, 0xbc48e

    const/16 v27, 0x0

    move-object v5, v2

    .line 219
    invoke-direct/range {v5 .. v27}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 232
    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1$1;

    invoke-direct {v3, v1, v0}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;Lcom/callapp/contacts/model/contact/ContactData;)V

    check-cast v3, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setEvents(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;)V

    .line 238
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
