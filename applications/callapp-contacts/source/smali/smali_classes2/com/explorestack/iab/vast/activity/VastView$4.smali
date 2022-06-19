.class final Lcom/explorestack/iab/vast/activity/VastView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/vast/activity/VastView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 1450
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIF)V
    .locals 7

    .line 1455
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->n(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->n(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1457
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v2}, Lcom/explorestack/iab/vast/activity/VastView;->n(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Playing progressing error: seek"

    invoke-static {v0, v2}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->n(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->n(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_2

    .line 1464
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->n(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1465
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v2}, Lcom/explorestack/iab/vast/activity/VastView;->n(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1466
    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v3}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1469
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const-string v5, "Playing progressing position: last=%d, first=%d)"

    .line 1466
    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-le v2, v0, :cond_1

    .line 1472
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->n(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 1474
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->o(Lcom/explorestack/iab/vast/activity/VastView;)I

    .line 1475
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->p(Lcom/explorestack/iab/vast/activity/VastView;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 1476
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Playing progressing error: video hang detected"

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->q(Lcom/explorestack/iab/vast/activity/VastView;)V

    return-void

    .line 1483
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->n(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    if-lez p2, :cond_3

    .line 1484
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/l;

    if-eqz v0, :cond_3

    .line 1485
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playing progressing percent: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->r(Lcom/explorestack/iab/vast/activity/VastView;)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gez v0, :cond_3

    .line 1487
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0, p3}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;F)F

    .line 1488
    div-int/lit16 p1, p1, 0x3e8

    int-to-float p2, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    float-to-double v0, p2

    .line 1490
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1491
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$4;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/l;

    invoke-virtual {v0, p3, p2, p1}, Lcom/explorestack/iab/utils/l;->a(FII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
