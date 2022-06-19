.class public final Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->getWhoICalledTheMostData()Lkotlin/n;
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
        "com/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$3$1$1",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
        "",
        "callapp-client_playRelease",
        "com/callapp/contacts/activity/analytics/cards/HitListsCard$$special$$inlined$forEach$lambda$1"
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

.field final synthetic c:I

.field final synthetic d:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

.field final synthetic e:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

.field final synthetic f:Lcom/callapp/contacts/loader/api/ContactLoader;

.field final synthetic g:Lkotlin/jvm/internal/ab$c;

.field final synthetic h:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic i:Ljava/util/ArrayList;

.field final synthetic j:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/String;IILcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Lcom/callapp/contacts/loader/api/ContactLoader;Lkotlin/jvm/internal/ab$c;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->a:Ljava/lang/String;

    iput p2, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->b:I

    iput p3, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->c:I

    iput-object p4, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->d:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    iput-object p5, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->e:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    iput-object p6, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->f:Lcom/callapp/contacts/loader/api/ContactLoader;

    iput-object p7, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->g:Lkotlin/jvm/internal/ab$c;

    iput-object p8, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->h:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p9, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->i:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->j:Ljava/util/ArrayList;

    .line 480
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 43

    move-object/from16 v1, p0

    .line 482
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->f:Lcom/callapp/contacts/loader/api/ContactLoader;

    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 484
    new-instance v22, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    move-object/from16 v2, v22

    .line 485
    iget v3, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xffd6

    const/16 v21, 0x0

    .line 484
    invoke-direct/range {v2 .. v21}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 490
    new-instance v2, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    move-object/from16 v23, v2

    .line 491
    iget-object v3, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->g:Lkotlin/jvm/internal/ab$c;

    iget v3, v3, Lkotlin/jvm/internal/ab$c;->a:I

    int-to-float v3, v3

    move/from16 v26, v3

    .line 492
    iget v3, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->c:I

    move/from16 v24, v3

    .line 493
    iget v3, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->b:I

    int-to-float v3, v3

    move/from16 v28, v3

    .line 496
    new-instance v3, Landroid/graphics/PointF;

    move-object/from16 v39, v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/high16 v29, 0x41900000    # 18.0f

    const/16 v30, 0x1

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const v41, 0xbf8a

    const/16 v42, 0x0

    .line 490
    invoke-direct/range {v23 .. v42}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 499
    iget v3, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->b:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    aput-object v22, v3, v4

    aput-object v2, v3, v5

    .line 500
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Arrays.asList(outerCircle, innerCircle)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array v3, v5, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    aput-object v22, v3, v4

    .line 502
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Arrays.asList(outerCircle)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v6, v3

    .line 506
    new-instance v3, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    move-object v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 508
    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 509
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getInitialRange()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const v2, 0x7f0a0233

    .line 510
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 511
    iget v2, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 512
    iget v15, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->b:I

    const-string v2, "contactData"

    .line 513
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v17

    .line 514
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v11

    .line 515
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07006b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 516
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const-string v4, "CallAppApplication.get()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0701ff

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    .line 517
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const v26, 0xbc40e

    const/16 v27, 0x0

    .line 506
    invoke-direct/range {v5 .. v27}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 520
    new-instance v2, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1$1;

    invoke-direct {v2, v1, v0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;Lcom/callapp/contacts/model/contact/ContactData;)V

    check-cast v2, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setEvents(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;)V

    .line 528
    :try_start_0
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 529
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->d:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v0, v2, :cond_1

    .line 530
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 532
    :cond_1
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :goto_1
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
