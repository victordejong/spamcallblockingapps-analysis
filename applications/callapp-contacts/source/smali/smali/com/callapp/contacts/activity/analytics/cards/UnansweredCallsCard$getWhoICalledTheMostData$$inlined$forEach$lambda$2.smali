.class public final Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;
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
        "com/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$3$2$1",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
        "",
        "callapp-client_playRelease",
        "com/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$$special$$inlined$forEach$lambda$2"
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

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->a:Ljava/lang/String;

    iput p2, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->b:I

    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->c:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

    iput-object p4, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->d:Lcom/callapp/contacts/loader/api/ContactLoader;

    iput-object p5, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->e:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p6, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->f:Lkotlin/jvm/internal/ab$c;

    iput-object p7, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->g:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->h:Ljava/util/ArrayList;

    .line 250
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 28

    move-object/from16 v1, p0

    .line 252
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->d:Lcom/callapp/contacts/loader/api/ContactLoader;

    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 254
    :try_start_0
    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 256
    new-instance v2, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v3, 0x7f060244

    .line 257
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    .line 258
    iget-object v3, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->f:Lkotlin/jvm/internal/ab$c;

    iget v3, v3, Lkotlin/jvm/internal/ab$c;->a:I

    int-to-float v6, v3

    const/4 v7, 0x0

    .line 259
    iget v3, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->b:I

    int-to-float v8, v3

    const/high16 v9, 0x41700000    # 15.0f

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 262
    new-instance v3, Landroid/graphics/PointF;

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-direct {v3, v15, v15}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v20, 0x0

    const v21, 0xbf8a

    const/16 v22, 0x0

    move-object/from16 v23, v3

    move-object v3, v2

    const/4 v15, 0x0

    move-object/from16 v19, v23

    .line 256
    invoke-direct/range {v3 .. v22}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IFFFFFZJLjava/lang/Long;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;IIIZLandroid/graphics/PointF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 265
    iget v3, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->b:I

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 266
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Arrays.asList(outerCircle)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const-string v4, "Collections.emptyList()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v6, v3

    .line 271
    new-instance v3, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 273
    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 274
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getInitialRange()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 275
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07006b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const v2, 0x7f0a0233

    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v2, 0x7f06001b

    .line 277
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 278
    iget v15, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->b:I

    const v2, 0x7f0601ec

    .line 279
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 280
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

    const-string v2, "contactData"

    .line 281
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v17

    .line 282
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v11

    .line 283
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const v26, 0x9c40e

    const/16 v27, 0x0

    move-object v5, v3

    .line 271
    invoke-direct/range {v5 .. v27}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 284
    new-instance v2, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2$1;

    invoke-direct {v2, v1, v0}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;Lcom/callapp/contacts/model/contact/ContactData;)V

    check-cast v2, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setEvents(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;)V

    .line 290
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
