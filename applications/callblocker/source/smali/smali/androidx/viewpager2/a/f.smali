.class public final Landroidx/viewpager2/a/f;
.super Landroid/view/ViewGroup;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/a/f$a;,
        Landroidx/viewpager2/a/f$c;,
        Landroidx/viewpager2/a/f$b;,
        Landroidx/viewpager2/a/f$e;,
        Landroidx/viewpager2/a/f$d;
    }
.end annotation


# static fields
.field static a:Z


# instance fields
.field b:I

.field c:Z

.field d:Landroidx/recyclerview/widget/RecyclerView;

.field e:Landroidx/viewpager2/a/e;

.field f:Landroidx/viewpager2/a/f$a;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Rect;

.field private i:Landroidx/recyclerview/widget/RecyclerView$c;

.field private j:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private k:I

.field private l:Landroid/os/Parcelable;

.field private m:Landroidx/recyclerview/widget/l;

.field private n:Landroidx/viewpager2/a/b;

.field private o:Landroidx/viewpager2/a/c;

.field private p:Landroidx/viewpager2/a/d;

.field private q:Landroidx/recyclerview/widget/RecyclerView$f;

.field private r:Z

.field private s:Z

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/viewpager2/a/f;->a:Z

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 469
    if-eqz p1, :cond_0

    .line 470
    iget-object v0, p0, Landroidx/viewpager2/a/f;->i:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Landroidx/recyclerview/widget/RecyclerView$c;)V

    .line 472
    :cond_0
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 475
    if-eqz p1, :cond_0

    .line 476
    iget-object v0, p0, Landroidx/viewpager2/a/f;->i:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$a;->b(Landroidx/recyclerview/widget/RecyclerView$c;)V

    .line 478
    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 340
    iget v0, p0, Landroidx/viewpager2/a/f;->k:I

    if-ne v0, v3, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_0

    .line 348
    iget-object v0, p0, Landroidx/viewpager2/a/f;->l:Landroid/os/Parcelable;

    if-eqz v0, :cond_3

    .line 349
    instance-of v0, v1, Landroidx/viewpager2/adapter/c;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 350
    check-cast v0, Landroidx/viewpager2/adapter/c;

    iget-object v2, p0, Landroidx/viewpager2/a/f;->l:Landroid/os/Parcelable;

    invoke-interface {v0, v2}, Landroidx/viewpager2/adapter/c;->a(Landroid/os/Parcelable;)V

    .line 352
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/viewpager2/a/f;->l:Landroid/os/Parcelable;

    .line 355
    :cond_3
    const/4 v0, 0x0

    iget v2, p0, Landroidx/viewpager2/a/f;->k:I

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/a/f;->b:I

    .line 356
    iput v3, p0, Landroidx/viewpager2/a/f;->k:I

    .line 357
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Landroidx/viewpager2/a/f;->b:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 358
    iget-object v0, p0, Landroidx/viewpager2/a/f;->f:Landroidx/viewpager2/a/f$a;

    invoke-virtual {v0}, Landroidx/viewpager2/a/f$a;->c()V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Landroidx/viewpager2/a/f;->m:Landroidx/recyclerview/widget/l;

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/a/f;->m:Landroidx/recyclerview/widget/l;

    iget-object v1, p0, Landroidx/viewpager2/a/f;->j:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/l;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;

    move-result-object v0

    .line 542
    if-nez v0, :cond_1

    .line 553
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v1, p0, Landroidx/viewpager2/a/f;->j:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 547
    iget v1, p0, Landroidx/viewpager2/a/f;->b:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getScrollState()I

    move-result v1

    if-nez v1, :cond_2

    .line 549
    iget-object v1, p0, Landroidx/viewpager2/a/f;->n:Landroidx/viewpager2/a/b;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/a/b;->a(I)V

    .line 552
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/a/f;->c:Z

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 2

    .prologue
    .line 603
    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/a/f;->b(IZ)V

    .line 608
    return-void
.end method

.method b(IZ)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 614
    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    .line 615
    if-nez v0, :cond_1

    .line 617
    iget v0, p0, Landroidx/viewpager2/a/f;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 618
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/a/f;->k:I

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v1

    if-lez v1, :cond_0

    .line 626
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 627
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 629
    iget v0, p0, Landroidx/viewpager2/a/f;->b:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Landroidx/viewpager2/a/f;->e:Landroidx/viewpager2/a/e;

    invoke-virtual {v0}, Landroidx/viewpager2/a/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    :cond_2
    iget v0, p0, Landroidx/viewpager2/a/f;->b:I

    if-ne v2, v0, :cond_3

    if-nez p2, :cond_0

    .line 641
    :cond_3
    iget v0, p0, Landroidx/viewpager2/a/f;->b:I

    int-to-double v0, v0

    .line 642
    iput v2, p0, Landroidx/viewpager2/a/f;->b:I

    .line 643
    iget-object v3, p0, Landroidx/viewpager2/a/f;->f:Landroidx/viewpager2/a/f$a;

    invoke-virtual {v3}, Landroidx/viewpager2/a/f$a;->e()V

    .line 645
    iget-object v3, p0, Landroidx/viewpager2/a/f;->e:Landroidx/viewpager2/a/e;

    invoke-virtual {v3}, Landroidx/viewpager2/a/e;->b()Z

    move-result v3

    if-nez v3, :cond_4

    .line 647
    iget-object v0, p0, Landroidx/viewpager2/a/f;->e:Landroidx/viewpager2/a/e;

    invoke-virtual {v0}, Landroidx/viewpager2/a/e;->d()D

    move-result-wide v0

    .line 652
    :cond_4
    iget-object v3, p0, Landroidx/viewpager2/a/f;->e:Landroidx/viewpager2/a/e;

    invoke-virtual {v3, v2, p2}, Landroidx/viewpager2/a/e;->a(IZ)V

    .line 653
    if-nez p2, :cond_5

    .line 654
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 659
    :cond_5
    int-to-double v4, v2

    sub-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_7

    .line 660
    iget-object v3, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    int-to-double v4, v2

    cmpl-double v0, v4, v0

    if-lez v0, :cond_6

    add-int/lit8 v0, v2, -0x3

    :goto_1
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 662
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/viewpager2/a/f$e;

    iget-object v3, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, v2, v3}, Landroidx/viewpager2/a/f$e;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 660
    :cond_6
    add-int/lit8 v0, v2, 0x3

    goto :goto_1

    .line 664
    :cond_7
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 577
    iget-object v1, p0, Landroidx/viewpager2/a/f;->j:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->v()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Landroidx/viewpager2/a/f;->o:Landroidx/viewpager2/a/c;

    invoke-virtual {v0}, Landroidx/viewpager2/a/c;->a()Z

    move-result v0

    return v0
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 930
    iget-object v0, p0, Landroidx/viewpager2/a/f;->p:Landroidx/viewpager2/a/d;

    invoke-virtual {v0}, Landroidx/viewpager2/a/d;->a()Landroidx/viewpager2/a/f$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 938
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/a/f;->e:Landroidx/viewpager2/a/e;

    invoke-virtual {v0}, Landroidx/viewpager2/a/e;->d()D

    move-result-wide v0

    .line 934
    double-to-int v2, v0

    .line 935
    int-to-double v4, v2

    sub-double/2addr v0, v4

    double-to-float v0, v0

    .line 936
    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getPageSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 937
    iget-object v3, p0, Landroidx/viewpager2/a/f;->p:Landroidx/viewpager2/a/d;

    invoke-virtual {v3, v2, v0, v1}, Landroidx/viewpager2/a/d;->a(IFI)V

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 365
    instance-of v1, v0, Landroidx/viewpager2/a/f$d;

    if-eqz v1, :cond_0

    .line 366
    check-cast v0, Landroidx/viewpager2/a/f$d;

    iget v0, v0, Landroidx/viewpager2/a/f$d;->a:I

    .line 367
    iget-object v1, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v1

    .line 368
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 372
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 375
    invoke-direct {p0}, Landroidx/viewpager2/a/f;->e()V

    .line 376
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Landroidx/viewpager2/a/f;->f:Landroidx/viewpager2/a/f$a;

    invoke-virtual {v0}, Landroidx/viewpager2/a/f$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroidx/viewpager2/a/f;->f:Landroidx/viewpager2/a/f$a;

    invoke-virtual {v0}, Landroidx/viewpager2/a/f$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Landroidx/viewpager2/a/f;->b:I

    return v0
.end method

.method public getItemDecorationCount()I
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Landroidx/viewpager2/a/f;->t:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Landroidx/viewpager2/a/f;->j:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result v0

    return v0
.end method

.method getPageSize()I
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 557
    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    .line 558
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    sub-int v0, v1, v0

    .line 557
    :goto_0
    return v0

    .line 559
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Landroidx/viewpager2/a/f;->e:Landroidx/viewpager2/a/e;

    invoke-virtual {v0}, Landroidx/viewpager2/a/e;->a()I

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 949
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 950
    iget-object v0, p0, Landroidx/viewpager2/a/f;->f:Landroidx/viewpager2/a/f$a;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/a/f$a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 951
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 516
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    .line 517
    iget-object v1, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    .line 521
    iget-object v2, p0, Landroidx/viewpager2/a/f;->g:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 522
    iget-object v2, p0, Landroidx/viewpager2/a/f;->g:Landroid/graphics/Rect;

    sub-int v3, p4, p2

    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 523
    iget-object v2, p0, Landroidx/viewpager2/a/f;->g:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getPaddingTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 524
    iget-object v2, p0, Landroidx/viewpager2/a/f;->g:Landroid/graphics/Rect;

    sub-int v3, p5, p3

    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 526
    const v2, 0x800033

    iget-object v3, p0, Landroidx/viewpager2/a/f;->g:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/viewpager2/a/f;->h:Landroid/graphics/Rect;

    invoke-static {v2, v0, v1, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 527
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/viewpager2/a/f;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroidx/viewpager2/a/f;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroidx/viewpager2/a/f;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroidx/viewpager2/a/f;->h:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->layout(IIII)V

    .line 530
    iget-boolean v0, p0, Landroidx/viewpager2/a/f;->c:Z

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->a()V

    .line 533
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 498
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/viewpager2/a/f;->measureChild(Landroid/view/View;II)V

    .line 499
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    .line 500
    iget-object v1, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    .line 501
    iget-object v2, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredState()I

    move-result v2

    .line 503
    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 504
    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 506
    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 507
    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 509
    invoke-static {v0, p1, v2}, Landroidx/viewpager2/a/f;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v2, v2, 0x10

    .line 510
    invoke-static {v1, p2, v2}, Landroidx/viewpager2/a/f;->resolveSizeAndState(III)I

    move-result v1

    .line 509
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager2/a/f;->setMeasuredDimension(II)V

    .line 512
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 328
    instance-of v0, p1, Landroidx/viewpager2/a/f$d;

    if-nez v0, :cond_0

    .line 329
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 337
    :goto_0
    return-void

    .line 333
    :cond_0
    check-cast p1, Landroidx/viewpager2/a/f$d;

    .line 334
    invoke-virtual {p1}, Landroidx/viewpager2/a/f$d;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 335
    iget v0, p1, Landroidx/viewpager2/a/f$d;->b:I

    iput v0, p0, Landroidx/viewpager2/a/f;->k:I

    .line 336
    iget-object v0, p1, Landroidx/viewpager2/a/f$d;->c:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/viewpager2/a/f;->l:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 308
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 309
    new-instance v1, Landroidx/viewpager2/a/f$d;

    invoke-direct {v1, v0}, Landroidx/viewpager2/a/f$d;-><init>(Landroid/os/Parcelable;)V

    .line 311
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v0

    iput v0, v1, Landroidx/viewpager2/a/f$d;->a:I

    .line 312
    iget v0, p0, Landroidx/viewpager2/a/f;->k:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/viewpager2/a/f;->b:I

    :goto_0
    iput v0, v1, Landroidx/viewpager2/a/f$d;->b:I

    .line 314
    iget-object v0, p0, Landroidx/viewpager2/a/f;->l:Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Landroidx/viewpager2/a/f;->l:Landroid/os/Parcelable;

    iput-object v0, v1, Landroidx/viewpager2/a/f$d;->c:Landroid/os/Parcelable;

    .line 323
    :cond_0
    :goto_1
    return-object v1

    .line 312
    :cond_1
    iget v0, p0, Landroidx/viewpager2/a/f;->k:I

    goto :goto_0

    .line 317
    :cond_2
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    .line 318
    instance-of v2, v0, Landroidx/viewpager2/adapter/c;

    if-eqz v2, :cond_0

    .line 319
    check-cast v0, Landroidx/viewpager2/adapter/c;

    invoke-interface {v0}, Landroidx/viewpager2/adapter/c;->b_()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroidx/viewpager2/a/f$d;->c:Landroid/os/Parcelable;

    goto :goto_1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 488
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not support direct child views"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Landroidx/viewpager2/a/f;->f:Landroidx/viewpager2/a/f$a;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/a/f$a;->a(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Landroidx/viewpager2/a/f;->f:Landroidx/viewpager2/a/f$a;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/a/f$a;->b(ILandroid/os/Bundle;)Z

    move-result v0

    .line 959
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    .line 459
    iget-object v1, p0, Landroidx/viewpager2/a/f;->f:Landroidx/viewpager2/a/f$a;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/a/f$a;->b(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 460
    invoke-direct {p0, v0}, Landroidx/viewpager2/a/f;->b(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 461
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 462
    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/a/f;->b:I

    .line 463
    invoke-direct {p0}, Landroidx/viewpager2/a/f;->e()V

    .line 464
    iget-object v0, p0, Landroidx/viewpager2/a/f;->f:Landroidx/viewpager2/a/f$a;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/a/f$a;->a(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 465
    invoke-direct {p0, p1}, Landroidx/viewpager2/a/f;->a(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 466
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/a/f;->a(IZ)V

    .line 592
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    .prologue
    .line 943
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 944
    iget-object v0, p0, Landroidx/viewpager2/a/f;->f:Landroidx/viewpager2/a/f$a;

    invoke-virtual {v0}, Landroidx/viewpager2/a/f$a;->g()V

    .line 945
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 2

    .prologue
    .line 832
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 833
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_0
    iput p1, p0, Landroidx/viewpager2/a/f;->t:I

    .line 838
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 839
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Landroidx/viewpager2/a/f;->j:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)V

    .line 569
    iget-object v0, p0, Landroidx/viewpager2/a/f;->f:Landroidx/viewpager2/a/f$a;

    invoke-virtual {v0}, Landroidx/viewpager2/a/f$a;->d()V

    .line 570
    return-void
.end method

.method public setPageTransformer(Landroidx/viewpager2/a/f$c;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 900
    if-eqz p1, :cond_2

    .line 901
    iget-boolean v0, p0, Landroidx/viewpager2/a/f;->r:Z

    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager2/a/f;->q:Landroidx/recyclerview/widget/RecyclerView$f;

    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/a/f;->r:Z

    .line 905
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 916
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/a/f;->p:Landroidx/viewpager2/a/d;

    invoke-virtual {v0}, Landroidx/viewpager2/a/d;->a()Landroidx/viewpager2/a/f$c;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 921
    :goto_1
    return-void

    .line 907
    :cond_2
    iget-boolean v0, p0, Landroidx/viewpager2/a/f;->r:Z

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Landroidx/viewpager2/a/f;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/viewpager2/a/f;->q:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 909
    iput-object v2, p0, Landroidx/viewpager2/a/f;->q:Landroidx/recyclerview/widget/RecyclerView$f;

    .line 910
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/a/f;->r:Z

    goto :goto_0

    .line 919
    :cond_3
    iget-object v0, p0, Landroidx/viewpager2/a/f;->p:Landroidx/viewpager2/a/d;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/a/d;->a(Landroidx/viewpager2/a/f$c;)V

    .line 920
    invoke-virtual {p0}, Landroidx/viewpager2/a/f;->d()V

    goto :goto_1
.end method

.method public setUserInputEnabled(Z)V
    .locals 1

    .prologue
    .line 792
    iput-boolean p1, p0, Landroidx/viewpager2/a/f;->s:Z

    .line 793
    iget-object v0, p0, Landroidx/viewpager2/a/f;->f:Landroidx/viewpager2/a/f$a;

    invoke-virtual {v0}, Landroidx/viewpager2/a/f$a;->f()V

    .line 794
    return-void
.end method
