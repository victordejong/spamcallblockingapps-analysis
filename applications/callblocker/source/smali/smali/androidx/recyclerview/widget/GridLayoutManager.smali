.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GridLayoutManager$b;,
        Landroidx/recyclerview/widget/GridLayoutManager$a;,
        Landroidx/recyclerview/widget/GridLayoutManager$c;
    }
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:[I

.field d:[Landroid/view/View;

.field final e:Landroid/util/SparseIntArray;

.field final f:Landroid/util/SparseIntArray;

.field g:Landroidx/recyclerview/widget/GridLayoutManager$c;

.field final h:Landroid/graphics/Rect;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 58
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 99
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->a(I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 58
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 74
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$i$b;

    move-result-object v0

    .line 75
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->b:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(I)V

    .line 76
    return-void
.end method

.method private O()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 186
    return-void
.end method

.method private P()V
    .locals 6

    .prologue
    .line 189
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->y()I

    move-result v2

    .line 190
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 191
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 192
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->f()I

    move-result v3

    .line 193
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->B()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->F()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->D()I

    move-result v1

    sub-int/2addr v0, v1

    .line 285
    :goto_0
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->m(I)V

    .line 286
    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->C()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->G()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->E()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private R()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    if-eq v0, v1, :cond_1

    .line 369
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 371
    :cond_1
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I
    .locals 3

    .prologue
    .line 455
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, p3, v1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v0

    .line 467
    :goto_0
    return v0

    .line 458
    :cond_0
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->b(I)I

    move-result v0

    .line 459
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 464
    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x0

    goto :goto_0

    .line 467
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(FI)V
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 752
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->m(I)V

    .line 753
    return-void
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 759
    if-eqz p4, :cond_1

    .line 760
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z

    move-result v0

    .line 764
    :goto_0
    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 767
    :cond_0
    return-void

    .line 762
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 716
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 717
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->d:Landroid/graphics/Rect;

    .line 718
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->bottomMargin:I

    add-int/2addr v2, v3

    .line 720
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->rightMargin:I

    add-int/2addr v3, v1

    .line 722
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->a(II)I

    move-result v1

    .line 725
    iget v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-ne v4, v5, :cond_0

    .line 726
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->width:I

    invoke-static {v1, p2, v3, v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 728
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->f()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->A()I

    move-result v4

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->height:I

    invoke-static {v3, v4, v2, v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v0

    move v2, v1

    .line 736
    :goto_0
    invoke-direct {p0, p1, v2, v0, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    .line 737
    return-void

    .line 731
    :cond_0
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->height:I

    invoke-static {v1, p2, v2, v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 733
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->f()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->z()I

    move-result v4

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->width:I

    invoke-static {v2, v4, v3, v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v2

    move v0, v1

    goto :goto_0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;IZ)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 775
    if-eqz p4, :cond_0

    .line 778
    const/4 v0, 0x1

    move v1, v0

    move v2, v3

    .line 785
    :goto_0
    if-eq v2, p3, :cond_1

    .line 786
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v4, v0, v2

    .line 787
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 788
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v4

    iput v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 789
    iput v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 790
    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    add-int/2addr v3, v0

    .line 785
    add-int/2addr v2, v1

    goto :goto_0

    .line 780
    :cond_0
    add-int/lit8 v2, p3, -0x1

    move v1, v0

    move p3, v0

    .line 782
    goto :goto_0

    .line 792
    :cond_1
    return-void
.end method

.method static a([III)[I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 325
    if-eqz p0, :cond_0

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-eq v0, p2, :cond_1

    .line 327
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array p0, v0, [I

    .line 329
    :cond_1
    aput v4, p0, v4

    .line 330
    div-int v1, p2, p1

    .line 331
    rem-int v6, p2, p1

    .line 334
    const/4 v0, 0x1

    move v3, v0

    move v2, v4

    move v5, v4

    :goto_0
    if-gt v3, p1, :cond_2

    .line 336
    add-int/2addr v2, v6

    .line 337
    if-lez v2, :cond_3

    sub-int v0, p1, v2

    if-ge v0, v6, :cond_3

    .line 338
    add-int/lit8 v0, v1, 0x1

    .line 339
    sub-int/2addr v2, p1

    .line 341
    :goto_1
    add-int v4, v5, v0

    .line 342
    aput v4, p0, v3

    .line 334
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v4

    goto :goto_0

    .line 344
    :cond_2
    return-object p0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 471
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, p3, v1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I

    move-result v0

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 474
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 475
    if-ne v0, v1, :cond_0

    .line 478
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->b(I)I

    move-result v0

    .line 479
    if-ne v0, v1, :cond_2

    .line 484
    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x0

    goto :goto_0

    .line 488
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 391
    if-ne p4, v0, :cond_0

    .line 393
    :goto_0
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v1

    .line 394
    if-eqz v0, :cond_1

    .line 396
    :goto_1
    if-lez v1, :cond_3

    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    if-lez v0, :cond_3

    .line 397
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 398
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v1

    goto :goto_1

    .line 391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 403
    iget v2, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    move v0, v1

    .line 405
    :goto_2
    if-ge v2, v3, :cond_2

    .line 406
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v1

    .line 407
    if-le v1, v0, :cond_2

    .line 408
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .line 413
    goto :goto_2

    .line 414
    :cond_2
    iput v2, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 416
    :cond_3
    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 492
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(I)I

    move-result v0

    .line 509
    :cond_0
    :goto_0
    return v0

    .line 495
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 496
    if-ne v0, v1, :cond_0

    .line 499
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->b(I)I

    move-result v0

    .line 500
    if-ne v0, v1, :cond_2

    .line 505
    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v0, 0x1

    goto :goto_0

    .line 509
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method private i(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1271
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->y()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return v2

    .line 1274
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->j()V

    .line 1276
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->l()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v3

    .line 1277
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->l()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v0

    .line 1279
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1282
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->l()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1283
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 1284
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 1283
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1276
    goto :goto_1

    :cond_3
    move v0, v2

    .line 1277
    goto :goto_2

    .line 1288
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 1289
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1291
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 1292
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v2

    .line 1293
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    iget v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v3, v0, v4}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v0

    .line 1295
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 1297
    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 1300
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    int-to-float v1, v3

    mul-float/2addr v0, v1

    float-to-int v2, v0

    goto :goto_0
.end method

.method private j(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1304
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->y()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 1341
    :cond_0
    :goto_0
    return v2

    .line 1307
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->j()V

    .line 1309
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->l()Z

    move-result v3

    .line 1310
    if-nez v3, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v4

    .line 1311
    if-nez v3, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v0

    .line 1312
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v1

    .line 1317
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v5

    .line 1320
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1321
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1322
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v5, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1325
    iget-boolean v7, p0, Landroidx/recyclerview/widget/GridLayoutManager;->k:Z

    if-eqz v7, :cond_4

    sub-int v1, v5, v1

    add-int/lit8 v1, v1, -0x1

    .line 1326
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1328
    :goto_3
    if-eqz v3, :cond_0

    .line 1331
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 1332
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 1331
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1334
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 1335
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v3, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v3

    .line 1336
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v5, v0, v6}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v0

    .line 1338
    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    .line 1339
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 1341
    int-to-float v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->c()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 1342
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1341
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 1310
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 1311
    goto/16 :goto_2

    .line 1327
    :cond_4
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3
.end method

.method private m(I)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->a([III)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    .line 315
    return-void
.end method


# virtual methods
.method a(II)I
    .locals 3

    .prologue
    .line 348
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 352
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 376
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->Q()V

    .line 377
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->R()V

    .line 378
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 120
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 127
    :goto_0
    return v0

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 123
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 26

    .prologue
    .line 1068
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/GridLayoutManager;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    .line 1069
    if-nez v18, :cond_1

    .line 1070
    const/4 v12, 0x0

    .line 1185
    :cond_0
    :goto_0
    return-object v12

    .line 1072
    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 1073
    iget v0, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    move/from16 v19, v0

    .line 1074
    iget v5, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    iget v4, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    add-int v20, v5, v4

    .line 1075
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v4

    .line 1076
    if-nez v4, :cond_2

    .line 1077
    const/4 v12, 0x0

    goto :goto_0

    .line 1081
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->f(I)I

    move-result v4

    .line 1082
    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->k:Z

    if-eq v4, v5, :cond_5

    const/4 v4, 0x1

    .line 1084
    :goto_2
    if-eqz v4, :cond_6

    .line 1085
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->y()I

    move-result v4

    add-int/lit8 v7, v4, -0x1

    .line 1086
    const/4 v6, -0x1

    .line 1087
    const/4 v4, -0x1

    move v5, v4

    .line 1093
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->i()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v8, v4

    .line 1098
    :goto_4
    const/4 v15, 0x0

    .line 1099
    const/4 v14, -0x1

    .line 1100
    const/4 v13, 0x0

    .line 1108
    const/4 v11, 0x0

    .line 1109
    const/4 v10, -0x1

    .line 1110
    const/4 v9, 0x0

    .line 1117
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v21

    move/from16 v17, v7

    .line 1118
    :goto_5
    move/from16 v0, v17

    if-eq v0, v5, :cond_3

    .line 1119
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v4

    .line 1120
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v12

    .line 1121
    move-object/from16 v0, v18

    if-ne v12, v0, :cond_8

    .line 1185
    :cond_3
    if-eqz v15, :cond_16

    :goto_6
    move-object v12, v15

    goto :goto_0

    .line 1082
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 1089
    :cond_6
    const/4 v7, 0x0

    .line 1090
    const/4 v6, 0x1

    .line 1091
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->y()I

    move-result v4

    move v5, v4

    goto :goto_3

    .line 1093
    :cond_7
    const/4 v4, 0x0

    move v8, v4

    goto :goto_4

    .line 1125
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_a

    move/from16 v0, v21

    if-eq v4, v0, :cond_a

    .line 1130
    if-nez v15, :cond_3

    :cond_9
    move v4, v9

    move v7, v10

    .line 1118
    :goto_7
    add-int v12, v17, v6

    move/from16 v17, v12

    move v9, v4

    move v10, v7

    goto :goto_5

    .line 1136
    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 1137
    iget v0, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    move/from16 v22, v0

    .line 1138
    iget v7, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    iget v0, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    move/from16 v16, v0

    add-int v23, v7, v16

    .line 1139
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_b

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move/from16 v0, v23

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 1143
    :cond_b
    const/4 v7, 0x0

    .line 1144
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-eqz v16, :cond_c

    if-eqz v15, :cond_d

    .line 1145
    :cond_c
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-nez v16, :cond_f

    if-nez v11, :cond_f

    .line 1146
    :cond_d
    const/4 v7, 0x1

    .line 1171
    :cond_e
    :goto_8
    if-eqz v7, :cond_9

    .line 1172
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1174
    iget v14, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 1175
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1176
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v13, v4, v7

    move v4, v9

    move v7, v10

    move-object v15, v12

    goto :goto_7

    .line 1148
    :cond_f
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1149
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 1150
    sub-int v16, v24, v16

    .line 1151
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 1152
    move/from16 v0, v16

    if-le v0, v13, :cond_10

    .line 1153
    const/4 v7, 0x1

    goto :goto_8

    .line 1154
    :cond_10
    move/from16 v0, v16

    if-ne v0, v13, :cond_e

    move/from16 v0, v22

    if-le v0, v14, :cond_11

    const/16 v16, 0x1

    :goto_9
    move/from16 v0, v16

    if-ne v8, v0, :cond_e

    .line 1157
    const/4 v7, 0x1

    goto :goto_8

    .line 1154
    :cond_11
    const/16 v16, 0x0

    goto :goto_9

    .line 1159
    :cond_12
    if-nez v15, :cond_e

    const/16 v24, 0x0

    const/16 v25, 0x1

    .line 1160
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;ZZ)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 1161
    move/from16 v0, v16

    if-le v0, v9, :cond_13

    .line 1162
    const/4 v7, 0x1

    goto :goto_8

    .line 1163
    :cond_13
    move/from16 v0, v16

    if-ne v0, v9, :cond_e

    move/from16 v0, v22

    if-le v0, v10, :cond_14

    const/16 v16, 0x1

    :goto_a
    move/from16 v0, v16

    if-ne v8, v0, :cond_e

    .line 1166
    const/4 v7, 0x1

    goto :goto_8

    .line 1163
    :cond_14
    const/16 v16, 0x0

    goto :goto_a

    .line 1179
    :cond_15
    iget v7, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 1180
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1181
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int/2addr v4, v9

    move-object v11, v12

    goto/16 :goto_7

    :cond_16
    move-object v15, v11

    .line 1185
    goto/16 :goto_6
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 421
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->j()V

    .line 424
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->c()I

    move-result v5

    .line 425
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v6

    .line 426
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v2, v3

    move-object v4, v3

    .line 428
    :goto_1
    if-eq p3, p4, :cond_4

    .line 429
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v3

    .line 430
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 431
    if-ltz v0, :cond_7

    if-ge v0, p5, :cond_7

    .line 432
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v0

    .line 433
    if-eqz v0, :cond_1

    move-object v0, v2

    .line 428
    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    goto :goto_1

    .line 426
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$j;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    if-nez v4, :cond_7

    move-object v0, v2

    move-object v4, v3

    .line 438
    goto :goto_2

    .line 440
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    .line 441
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_5

    .line 442
    :cond_3
    if-nez v2, :cond_7

    move-object v0, v3

    .line 443
    goto :goto_2

    .line 450
    :cond_4
    if-eqz v2, :cond_6

    :goto_3
    move-object v3, v2

    :cond_5
    return-object v3

    :cond_6
    move-object v2, v4

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method

.method public a()Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 231
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(II)V

    .line 235
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(II)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 1

    .prologue
    .line 242
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 1

    .prologue
    .line 247
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 250
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 814
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    if-ne p1, v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 817
    :cond_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    .line 818
    if-ge p1, v1, :cond_1

    .line 819
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_1
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 823
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    .line 824
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->q()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    if-nez v0, :cond_0

    .line 291
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/graphics/Rect;II)V

    .line 294
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->D()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->F()I

    move-result v1

    add-int/2addr v1, v0

    .line 295
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->E()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->G()I

    move-result v2

    add-int/2addr v0, v2

    .line 296
    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    .line 298
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->K()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->a(III)I

    move-result v0

    .line 299
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 300
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->J()I

    move-result v2

    .line 299
    invoke-static {p2, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->a(III)I

    move-result v1

    .line 307
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->f(II)V

    .line 308
    return-void

    .line 302
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    .line 303
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->J()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->a(III)I

    move-result v1

    .line 304
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 305
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->K()I

    move-result v2

    .line 304
    invoke-static {p3, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;Landroidx/core/h/a/c;)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 147
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 148
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    if-nez v1, :cond_0

    .line 149
    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;Landroidx/core/h/a/c;)V

    .line 163
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 152
    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 153
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->f()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v2

    .line 154
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a()I

    move-result v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b()I

    move-result v1

    move v5, v4

    .line 155
    invoke-static/range {v0 .. v5}, Landroidx/core/h/a/c$c;->a(IIIIZZ)Landroidx/core/h/a/c$c;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/core/h/a/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a()I

    move-result v7

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b()I

    move-result v8

    move v5, v2

    move v6, v3

    move v9, v4

    move v10, v4

    .line 159
    invoke-static/range {v5 .. v10}, Landroidx/core/h/a/c$c;->a(IIIIZZ)Landroidx/core/h/a/c$c;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/core/h/a/c;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V

    .line 360
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->Q()V

    .line 361
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V

    .line 364
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->R()V

    .line 365
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V
    .locals 13

    .prologue
    .line 530
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->i()I

    move-result v9

    .line 531
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v9, v1, :cond_1

    const/4 v1, 0x1

    move v2, v1

    .line 532
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->y()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    aget v1, v1, v3

    move v7, v1

    .line 536
    :goto_1
    if-eqz v2, :cond_0

    .line 537
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->Q()V

    .line 539
    :cond_0
    move-object/from16 v0, p3

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    move v3, v1

    .line 541
    :goto_2
    const/4 v5, 0x0

    .line 542
    const/4 v4, 0x0

    .line 543
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 544
    if-nez v3, :cond_1c

    .line 545
    move-object/from16 v0, p3

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v1

    .line 546
    move-object/from16 v0, p3

    iget v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    invoke-direct {p0, p1, p2, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v6

    .line 547
    add-int/2addr v1, v6

    move v8, v5

    .line 549
    :goto_3
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    if-ge v8, v5, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-lez v1, :cond_5

    .line 550
    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 551
    invoke-direct {p0, p1, p2, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v6

    .line 552
    iget v10, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    if-le v6, v10, :cond_4

    .line 553
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Item at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " spans but GridLayoutManager has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " spans."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_0

    .line 532
    :cond_2
    const/4 v1, 0x0

    move v7, v1

    goto :goto_1

    .line 539
    :cond_3
    const/4 v1, 0x0

    move v3, v1

    goto :goto_2

    .line 557
    :cond_4
    sub-int/2addr v1, v6

    .line 558
    if-gez v1, :cond_6

    .line 570
    :cond_5
    if-nez v8, :cond_7

    .line 571
    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    .line 704
    :goto_4
    return-void

    .line 561
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v5

    .line 562
    if-eqz v5, :cond_5

    .line 565
    add-int/2addr v4, v6

    .line 566
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aput-object v5, v6, v8

    .line 567
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    .line 568
    goto :goto_3

    .line 575
    :cond_7
    const/4 v4, 0x0

    .line 576
    const/4 v5, 0x0

    .line 579
    invoke-direct {p0, p1, p2, v8, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;IZ)V

    .line 580
    const/4 v1, 0x0

    move v6, v1

    :goto_5
    if-ge v6, v8, :cond_c

    .line 581
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v10, v1, v6

    .line 582
    move-object/from16 v0, p3

    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    if-nez v1, :cond_a

    .line 583
    if-eqz v3, :cond_9

    .line 584
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroid/view/View;)V

    .line 595
    :goto_6
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v10, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 597
    const/4 v1, 0x0

    invoke-direct {p0, v10, v9, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    .line 598
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v1

    .line 599
    if-le v1, v4, :cond_8

    move v4, v1

    .line 602
    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 603
    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/k;->f(Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v11

    iget v1, v1, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    int-to-float v1, v1

    div-float v1, v10, v1

    .line 605
    cmpl-float v10, v1, v5

    if-lez v10, :cond_1b

    .line 580
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move v5, v1

    goto :goto_5

    .line 586
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v10, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_6

    .line 589
    :cond_a
    if-eqz v3, :cond_b

    .line 590
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;)V

    goto :goto_6

    .line 592
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p0, v10, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;I)V

    goto :goto_6

    .line 609
    :cond_c
    if-eqz v2, :cond_d

    .line 611
    invoke-direct {p0, v5, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->a(FI)V

    .line 613
    const/4 v2, 0x0

    .line 614
    const/4 v1, 0x0

    move v3, v1

    :goto_8
    if-ge v3, v8, :cond_e

    .line 615
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v1, v1, v3

    .line 616
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    invoke-direct {p0, v1, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    .line 617
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v1

    .line 618
    if-le v1, v2, :cond_1a

    .line 614
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_8

    :cond_d
    move v2, v4

    .line 626
    :cond_e
    const/4 v1, 0x0

    move v4, v1

    :goto_a
    if-ge v4, v8, :cond_11

    .line 627
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v5, v1, v4

    .line 628
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v1

    if-eq v1, v2, :cond_f

    .line 629
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 630
    iget-object v3, v1, Landroidx/recyclerview/widget/GridLayoutManager$b;->d:Landroid/graphics/Rect;

    .line 631
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iget v7, v1, Landroidx/recyclerview/widget/GridLayoutManager$b;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v1, Landroidx/recyclerview/widget/GridLayoutManager$b;->bottomMargin:I

    add-int/2addr v6, v7

    .line 633
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    iget v7, v1, Landroidx/recyclerview/widget/GridLayoutManager$b;->leftMargin:I

    add-int/2addr v3, v7

    iget v7, v1, Landroidx/recyclerview/widget/GridLayoutManager$b;->rightMargin:I

    add-int/2addr v3, v7

    .line 635
    iget v7, v1, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    iget v9, v1, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    invoke-virtual {p0, v7, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->a(II)I

    move-result v7

    .line 638
    iget v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    .line 639
    const/high16 v9, 0x40000000    # 2.0f

    iget v1, v1, Landroidx/recyclerview/widget/GridLayoutManager$b;->width:I

    const/4 v10, 0x0

    invoke-static {v7, v9, v3, v1, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v3

    .line 641
    sub-int v1, v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 649
    :goto_b
    const/4 v6, 0x1

    invoke-direct {p0, v5, v3, v1, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    .line 626
    :cond_f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_a

    .line 644
    :cond_10
    sub-int v3, v2, v3

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 646
    const/high16 v9, 0x40000000    # 2.0f

    iget v1, v1, Landroidx/recyclerview/widget/GridLayoutManager$b;->height:I

    const/4 v10, 0x0

    invoke-static {v7, v9, v6, v1, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    goto :goto_b

    .line 653
    :cond_11
    move-object/from16 v0, p4

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    .line 655
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 656
    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    .line 657
    move-object/from16 v0, p3

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_14

    .line 658
    move-object/from16 v0, p3

    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 659
    sub-int v2, v1, v2

    .line 673
    :goto_c
    const/4 v7, 0x0

    move v11, v7

    move v6, v1

    move v9, v2

    move v10, v4

    move v3, v5

    :goto_d
    if-ge v11, v8, :cond_19

    .line 674
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v2, v1, v11

    .line 675
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 676
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_18

    .line 677
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->i()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 678
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->D()I

    move-result v1

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    iget v5, v7, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    sub-int/2addr v4, v5

    aget v3, v3, v4

    add-int v5, v1, v3

    .line 679
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/k;->f(Landroid/view/View;)I

    move-result v1

    sub-int v3, v5, v1

    move v4, v9

    :goto_e
    move-object v1, p0

    .line 690
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 698
    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager$b;->d()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager$b;->e()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 699
    :cond_12
    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    .line 701
    :cond_13
    move-object/from16 v0, p4

    iget-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    or-int/2addr v1, v2

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    .line 673
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    move v9, v4

    move v10, v5

    goto :goto_d

    .line 661
    :cond_14
    move-object/from16 v0, p3

    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 662
    add-int v1, v3, v2

    move v2, v3

    goto :goto_c

    .line 665
    :cond_15
    move-object/from16 v0, p3

    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 666
    move-object/from16 v0, p3

    iget v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 667
    sub-int v5, v4, v2

    move v2, v3

    goto :goto_c

    .line 669
    :cond_16
    move-object/from16 v0, p3

    iget v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    .line 670
    add-int v4, v5, v2

    move v2, v3

    goto :goto_c

    .line 681
    :cond_17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->D()I

    move-result v1

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v4, v7, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    aget v3, v3, v4

    add-int/2addr v3, v1

    .line 682
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/k;->f(Landroid/view/View;)I

    move-result v1

    add-int v5, v3, v1

    move v4, v9

    goto :goto_e

    .line 685
    :cond_18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->E()I

    move-result v1

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->c:[I

    iget v5, v7, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    aget v4, v4, v5

    add-int/2addr v4, v1

    .line 686
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->j:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/k;->f(Landroid/view/View;)I

    move-result v1

    add-int v6, v4, v1

    move v5, v10

    goto :goto_e

    .line 703
    :cond_19
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->d:[Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1a
    move v1, v2

    goto/16 :goto_9

    :cond_1b
    move v1, v5

    goto/16 :goto_7

    :cond_1c
    move v8, v5

    goto/16 :goto_3
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    .line 181
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 515
    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    move v0, v1

    .line 517
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    .line 518
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 519
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$i$a;->b(II)V

    .line 520
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(I)I

    move-result v3

    .line 521
    sub-int/2addr v2, v3

    .line 522
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 523
    add-int/lit8 v0, v0, 0x1

    .line 524
    goto :goto_0

    .line 525
    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    .line 207
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b()V

    .line 208
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    .line 201
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b()V

    .line 202
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    .line 226
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b()V

    .line 227
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    .line 220
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b()V

    .line 221
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Z)V

    .line 114
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$j;)Z
    .locals 1

    .prologue
    .line 256
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager$b;

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    return v0
.end method

.method public b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->Q()V

    .line 385
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->R()V

    .line 386
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 133
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    if-ne v0, v1, :cond_0

    .line 134
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 141
    :goto_0
    return v0

    .line 136
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 137
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1195
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->z:Z

    if-eqz v0, :cond_0

    .line 1196
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    .line 1198
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a()V

    .line 213
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b()V

    .line 214
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1204
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->z:Z

    if-eqz v0, :cond_0

    .line 1205
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    .line 1207
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->P()V

    .line 170
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 174
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->O()V

    .line 175
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->n:Landroidx/recyclerview/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1213
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->z:Z

    if-eqz v0, :cond_0

    .line 1214
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->j(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    .line 1216
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->d(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1222
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->z:Z

    if-eqz v0, :cond_0

    .line 1223
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->j(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    .line 1225
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method
