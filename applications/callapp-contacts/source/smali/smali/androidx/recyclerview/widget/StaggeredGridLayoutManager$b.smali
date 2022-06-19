.class final Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field final e:I

.field final synthetic f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .locals 0

    .line 2489
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2483
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    const/high16 p1, -0x80000000

    .line 2484
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 2485
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    const/4 p1, 0x0

    .line 2486
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:I

    .line 2490
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    return-void
.end method

.method private a(IIZ)I
    .locals 9

    .line 2730
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object p3, p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/j;->b()I

    move-result p3

    .line 2731
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->c()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le p2, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    if-eq p1, p2, :cond_5

    .line 2734
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2735
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v5

    .line 2736
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/j;->b(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x0

    if-gt v5, v0, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-lt v6, p3, :cond_2

    const/4 v7, 0x1

    :cond_2
    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    if-lt v5, p3, :cond_3

    if-le v6, v0, :cond_4

    .line 2753
    :cond_3
    invoke-static {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_4
    add-int/2addr p1, v3

    goto :goto_0

    :cond_5
    return v1
.end method

.method private h()V
    .locals 3

    .line 2505
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12655
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2507
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 2508
    iget-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v0, :cond_0

    .line 2509
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 13060
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$v;->getLayoutPosition()I

    move-result v1

    .line 2510
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2511
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2512
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 2539
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 13655
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2541
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/j;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    .line 2542
    iget-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v0, :cond_0

    .line 2543
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 14060
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$v;->getLayoutPosition()I

    move-result v1

    .line 2544
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2545
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    if-ne v1, v2, :cond_0

    .line 2546
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 2615
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 2616
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .line 2519
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    .line 2522
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->h()V

    .line 2523
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    return v0
.end method

.method final a(I)I
    .locals 2

    .line 2494
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    .line 2497
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    .line 2500
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->h()V

    .line 2501
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    return p1
.end method

.method public final a(II)Landroid/view/View;
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    .line 2777
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_5

    .line 2779
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2780
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroid/view/View;)I

    move-result v3

    if-le v3, p1, :cond_5

    :cond_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v3, :cond_1

    .line 2781
    invoke-static {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroid/view/View;)I

    move-result v3

    if-ge v3, p1, :cond_5

    .line 2784
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_0

    .line 2791
    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_5

    .line 2792
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2793
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroid/view/View;)I

    move-result v2

    if-ge v2, p1, :cond_5

    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v2, :cond_4

    .line 2794
    invoke-static {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroid/view/View;)I

    move-result v2

    if-le v2, p1, :cond_5

    .line 2797
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 p2, p2, -0x1

    move-object v1, v0

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method final a(Landroid/view/View;)V
    .locals 4

    .line 14655
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2562
    iput-object p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 2563
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v1, -0x80000000

    .line 2564
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 2565
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2566
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    .line 15031
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    .line 15042
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2569
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:I

    :cond_2
    return-void
.end method

.method final b()I
    .locals 2

    .line 2553
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    .line 2556
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->i()V

    .line 2557
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    return v0
.end method

.method final b(I)I
    .locals 2

    .line 2527
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    .line 2530
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    .line 2534
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->i()V

    .line 2535
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    return p1
.end method

.method final b(Landroid/view/View;)V
    .locals 4

    .line 15655
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2575
    iput-object p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 2576
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, -0x80000000

    .line 2577
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    .line 2578
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2579
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 16031
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    .line 16042
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2582
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:I

    :cond_2
    return-void
.end method

.method final c()V
    .locals 1

    .line 2609
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2610
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->j()V

    const/4 v0, 0x0

    .line 2611
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:I

    return-void
.end method

.method final c(I)V
    .locals 0

    .line 2620
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    return-void
.end method

.method final d()V
    .locals 4

    .line 2624
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2625
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 16655
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v3, 0x0

    .line 2627
    iput-object v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 17031
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 17042
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$v;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2629
    :cond_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:I

    :cond_1
    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 2632
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 2634
    :cond_2
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    return-void
.end method

.method final d(I)V
    .locals 2

    .line 2659
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    add-int/2addr v0, p1

    .line 2660
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 2662
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    if-eq v0, v1, :cond_1

    add-int/2addr v0, p1

    .line 2663
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    :cond_1
    return-void
.end method

.method final e()V
    .locals 4

    .line 2638
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 17655
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v2, 0x0

    .line 2640
    iput-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 2641
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v3, -0x80000000

    if-nez v2, :cond_0

    .line 2642
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    .line 18031
    :cond_0
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    .line 18042
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$v;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2645
    :cond_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:I

    .line 2647
    :cond_2
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    return-void
.end method

.method public final f()I
    .locals 3

    .line 2674
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2675
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    .line 18767
    invoke-direct {p0, v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(IIZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2676
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 19767
    invoke-direct {p0, v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(IIZ)I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 3

    .line 2692
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2693
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 20767
    invoke-direct {p0, v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(IIZ)I

    move-result v0

    return v0

    .line 2694
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    .line 21767
    invoke-direct {p0, v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(IIZ)I

    move-result v0

    return v0
.end method
