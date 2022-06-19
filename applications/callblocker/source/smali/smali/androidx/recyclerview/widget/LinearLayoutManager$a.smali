.class Landroidx/recyclerview/widget/LinearLayoutManager$a;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/recyclerview/widget/k;

.field b:I

.field c:I

.field d:Z

.field e:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2454
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a()V

    .line 2455
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2458
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 2459
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 2460
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 2461
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z

    .line 2462
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2491
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->b()I

    move-result v0

    .line 2492
    if-ltz v0, :cond_1

    .line 2493
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b(Landroid/view/View;I)V

    .line 2535
    :cond_0
    :goto_0
    return-void

    .line 2496
    :cond_1
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 2497
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v1, :cond_2

    .line 2498
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->d()I

    move-result v1

    sub-int v0, v1, v0

    .line 2499
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v1

    .line 2500
    sub-int/2addr v0, v1

    .line 2501
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->d()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 2503
    if-lez v0, :cond_0

    .line 2504
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v1

    .line 2505
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    sub-int v1, v2, v1

    .line 2506
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->c()I

    move-result v2

    .line 2507
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v3, v2

    .line 2509
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2510
    sub-int/2addr v1, v2

    .line 2511
    if-gez v1, :cond_0

    .line 2513
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    goto :goto_0

    .line 2517
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v1

    .line 2518
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->c()I

    move-result v2

    sub-int v2, v1, v2

    .line 2519
    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 2520
    if-lez v2, :cond_0

    .line 2521
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    .line 2522
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2523
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->d()I

    move-result v3

    sub-int v0, v3, v0

    .line 2525
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    .line 2526
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 2527
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->d()I

    move-result v3

    .line 2528
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v3, v0

    .line 2529
    sub-int/2addr v0, v1

    .line 2530
    if-gez v0, :cond_0

    .line 2531
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    goto/16 :goto_0
.end method

.method a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)Z
    .locals 2

    .prologue
    .line 2485
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 2486
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$j;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$j;->f()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2487
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$j;->f()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2486
    :goto_0
    return v0

    .line 2487
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 2469
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    .line 2470
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v0

    .line 2471
    :goto_0
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 2472
    return-void

    .line 2470
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    .line 2471
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->c()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 2538
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v0, :cond_0

    .line 2539
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    .line 2540
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 2545
    :goto_0
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 2546
    return-void

    .line 2542
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
