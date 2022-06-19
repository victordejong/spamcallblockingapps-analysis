.class final Landroidx/viewpager2/widget/ViewPager2$f;
.super Landroidx/viewpager2/widget/ViewPager2$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic b:Landroidx/viewpager2/widget/ViewPager2;

.field private final c:Landroidx/core/view/a/f;

.field private final d:Landroidx/core/view/a/f;

.field private e:Landroidx/recyclerview/widget/RecyclerView$c;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 1328
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2$a;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ViewPager2$1;)V

    .line 1329
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$f$1;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$f$1;-><init>(Landroidx/viewpager2/widget/ViewPager2$f;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->c:Landroidx/core/view/a/f;

    .line 1340
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$f$2;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$f$2;-><init>(Landroidx/viewpager2/widget/ViewPager2$f;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->d:Landroidx/core/view/a/f;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1458
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    const-string v0, "androidx.viewpager.widget.ViewPager"

    .line 1459
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 2539
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 3482
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2540
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 3573
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2541
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 4482
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    .line 2541
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    goto :goto_0

    .line 2543
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 5482
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    .line 2543
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    move v3, v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 2546
    :goto_1
    invoke-static {p1}, Landroidx/core/view/a/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/a/c;

    move-result-object v4

    .line 2548
    invoke-static {v0, v3, v2, v2}, Landroidx/core/view/a/c$b;->a(IIZI)Landroidx/core/view/a/c$b;

    move-result-object v0

    .line 2551
    invoke-virtual {v4, v0}, Landroidx/core/view/a/c;->a(Ljava/lang/Object;)V

    .line 1432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_5

    .line 5555
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 6482
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5559
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_5

    .line 5560
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 6803
    iget-boolean v2, v2, Landroidx/viewpager2/widget/ViewPager2;->i:Z

    if-nez v2, :cond_2

    goto :goto_2

    .line 5563
    :cond_2
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->c:I

    if-lez v2, :cond_3

    const/16 v2, 0x2000

    .line 5564
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5566
    :cond_3
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->c:I

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_4

    const/16 v0, 0x1000

    .line 5567
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5569
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    nop

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "*>;)V"
        }
    .end annotation

    .line 1393
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$f;->j()V

    if-eqz p1, :cond_0

    .line 1395
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->e:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$a;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$c;)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x2

    .line 1356
    invoke-static {p1, v0}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    .line 1359
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$f$3;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$f$3;-><init>(Landroidx/viewpager2/widget/ViewPager2$f;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->e:Landroidx/recyclerview/widget/RecyclerView$c;

    .line 1366
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {p1}, Landroidx/core/view/v;->e(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    .line 1368
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)Z
    .locals 1

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.viewpager.widget.ViewPager"

    return-object v0
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1402
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->e:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$a;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$c;)V

    :cond_0
    return-void
.end method

.method public final b(I)Z
    .locals 2

    .line 1445
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 1449
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 7675
    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->c:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 1450
    :cond_0
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 8675
    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->c:I

    add-int/2addr p1, v1

    .line 1452
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$f;->e(I)V

    return v1

    .line 1446
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final c()V
    .locals 0

    .line 1388
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$f;->j()V

    return-void
.end method

.method public final d()V
    .locals 0

    .line 1408
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$f;->j()V

    return-void
.end method

.method public final e()V
    .locals 0

    .line 1413
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$f;->j()V

    return-void
.end method

.method final e(I)V
    .locals 2

    .line 1468
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 10803
    iget-boolean v0, v0, Landroidx/viewpager2/widget/ViewPager2;->i:Z

    if-eqz v0, :cond_0

    .line 1469
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1418
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$f;->j()V

    .line 1419
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1420
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    .line 1426
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$f;->j()V

    return-void
.end method

.method final j()V
    .locals 8

    .line 1478
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    const v1, 0x1020048

    .line 1489
    invoke-static {v0, v1}, Landroidx/core/view/v;->d(Landroid/view/View;I)V

    const v2, 0x1020049

    .line 1490
    invoke-static {v0, v2}, Landroidx/core/view/v;->d(Landroid/view/View;I)V

    const v3, 0x1020046

    .line 1491
    invoke-static {v0, v3}, Landroidx/core/view/v;->d(Landroid/view/View;I)V

    const v4, 0x1020047

    .line 1492
    invoke-static {v0, v4}, Landroidx/core/view/v;->d(Landroid/view/View;I)V

    .line 1494
    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 11482
    iget-object v5, v5, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 1498
    :cond_0
    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 12482
    iget-object v5, v5, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v5

    .line 1498
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 1503
    :cond_1
    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 12803
    iget-boolean v6, v6, Landroidx/viewpager2/widget/ViewPager2;->i:Z

    if-nez v6, :cond_2

    return-void

    .line 1507
    :cond_2
    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 13573
    iget-object v6, v6, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_7

    .line 1508
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    const v4, 0x1020048

    goto :goto_0

    :cond_3
    const v4, 0x1020049

    :goto_0
    if-eqz v3, :cond_4

    const v1, 0x1020049

    .line 1512
    :cond_4
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->c:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_5

    .line 1513
    new-instance v2, Landroidx/core/view/a/c$a;

    invoke-direct {v2, v4, v7}, Landroidx/core/view/a/c$a;-><init>(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2$f;->c:Landroidx/core/view/a/f;

    invoke-static {v0, v2, v3}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a/c$a;Landroidx/core/view/a/f;)V

    .line 1517
    :cond_5
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->c:I

    if-lez v2, :cond_6

    .line 1518
    new-instance v2, Landroidx/core/view/a/c$a;

    invoke-direct {v2, v1, v7}, Landroidx/core/view/a/c$a;-><init>(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->d:Landroidx/core/view/a/f;

    invoke-static {v0, v2, v1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a/c$a;Landroidx/core/view/a/f;)V

    :cond_6
    return-void

    .line 1523
    :cond_7
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/ViewPager2;->c:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_8

    .line 1524
    new-instance v1, Landroidx/core/view/a/c$a;

    invoke-direct {v1, v4, v7}, Landroidx/core/view/a/c$a;-><init>(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$f;->c:Landroidx/core/view/a/f;

    invoke-static {v0, v1, v2}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a/c$a;Landroidx/core/view/a/f;)V

    .line 1528
    :cond_8
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/ViewPager2;->c:I

    if-lez v1, :cond_9

    .line 1529
    new-instance v1, Landroidx/core/view/a/c$a;

    invoke-direct {v1, v3, v7}, Landroidx/core/view/a/c$a;-><init>(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$f;->d:Landroidx/core/view/a/f;

    invoke-static {v0, v1, v2}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a/c$a;Landroidx/core/view/a/f;)V

    :cond_9
    return-void
.end method
