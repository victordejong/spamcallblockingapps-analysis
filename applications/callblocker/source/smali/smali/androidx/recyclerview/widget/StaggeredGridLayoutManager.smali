.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$t$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
    }
.end annotation


# instance fields
.field private A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

.field private B:I

.field private final C:Landroid/graphics/Rect;

.field private final D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

.field private E:Z

.field private F:Z

.field private G:[I

.field private final H:Ljava/lang/Runnable;

.field a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

.field b:Landroidx/recyclerview/widget/k;

.field c:Landroidx/recyclerview/widget/k;

.field d:Z

.field e:Z

.field f:I

.field g:I

.field h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

.field private i:I

.field private j:I

.field private k:I

.field private final l:Landroidx/recyclerview/widget/g;

.field private m:Ljava/util/BitSet;

.field private n:I

.field private o:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 229
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 107
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    .line 130
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    .line 135
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    .line 146
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 152
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    .line 158
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 163
    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    .line 202
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    .line 216
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    .line 230
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$i$b;

    move-result-object v0

    .line 231
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->a:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(I)V

    .line 232
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->b:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(I)V

    .line 233
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->c:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 234
    new-instance v0, Landroidx/recyclerview/widget/g;

    invoke-direct {v0}, Landroidx/recyclerview/widget/g;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    .line 235
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O()V

    .line 236
    return-void
.end method

.method private O()V
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/k;->a(Landroidx/recyclerview/widget/RecyclerView$i;I)Landroidx/recyclerview/widget/k;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    .line 259
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    rsub-int/lit8 v0, v0, 0x1

    .line 260
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/k;->a(Landroidx/recyclerview/widget/RecyclerView$i;I)Landroidx/recyclerview/widget/k;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    .line 261
    return-void
.end method

.method private P()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 560
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j()Z

    move-result v1

    if-nez v1, :cond_1

    .line 561
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private Q()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 734
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->h()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    .line 780
    :cond_0
    return-void

    .line 737
    :cond_1
    const/4 v2, 0x0

    .line 738
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v5

    move v4, v3

    .line 739
    :goto_0
    if-ge v4, v5, :cond_3

    .line 740
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 741
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    .line 742
    cmpg-float v6, v1, v2

    if-gez v6, :cond_2

    move v0, v2

    .line 739
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    .line 745
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 746
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 747
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 749
    :goto_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 751
    :cond_3
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 752
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 753
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->h()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_4

    .line 754
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->f()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 756
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(I)V

    .line 757
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    if-eq v0, v4, :cond_0

    move v1, v3

    .line 760
    :goto_3
    if-ge v1, v5, :cond_0

    .line 761
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v2

    .line 762
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 763
    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v3, :cond_5

    .line 760
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 766
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v3, v7, :cond_6

    .line 767
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v3, v3, -0x1

    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    sub-int/2addr v3, v6

    neg-int v3, v3

    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v3, v6

    .line 768
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v6, v6, -0x1

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    sub-int v0, v6, v0

    neg-int v0, v0

    mul-int/2addr v0, v4

    .line 769
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 771
    :cond_6
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v3, v6

    .line 772
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    mul-int/2addr v0, v4

    .line 773
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v6, v7, :cond_7

    .line 774
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 776
    :cond_7
    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_2
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/g;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 18

    .prologue
    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/g;->i:Z

    if-eqz v2, :cond_4

    .line 1581
    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/g;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1582
    const v2, 0x7fffffff

    move v15, v2

    .line 1594
    :goto_0
    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/g;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(II)V

    .line 1601
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    .line 1602
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->d()I

    move-result v2

    move/from16 v16, v2

    .line 1604
    :goto_1
    const/4 v2, 0x0

    .line 1605
    :goto_2
    invoke-virtual/range {p2 .. p3}, Landroidx/recyclerview/widget/g;->a(Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/g;->i:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 1606
    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1607
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/g;->a(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v3

    .line 1608
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 1609
    invoke-virtual {v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f()I

    move-result v6

    .line 1610
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c(I)I

    move-result v5

    .line 1612
    const/4 v2, -0x1

    if-ne v5, v2, :cond_7

    const/4 v2, 0x1

    move v4, v2

    .line 1613
    :goto_3
    if-eqz v4, :cond_9

    .line 1614
    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    .line 1615
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v5, v6, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$e;)V

    move-object/from16 v17, v2

    .line 1626
    :goto_5
    move-object/from16 v0, v17

    iput-object v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    .line 1627
    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/g;->e:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    .line 1628
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)V

    .line 1632
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;Z)V

    .line 1636
    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/g;->e:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    .line 1637
    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(I)I

    move-result v2

    .line 1639
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v5

    add-int v7, v2, v5

    .line 1640
    if-eqz v4, :cond_1e

    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v5, :cond_1e

    .line 1642
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v5

    .line 1643
    const/4 v8, -0x1

    iput v8, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->b:I

    .line 1644
    iput v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    .line 1645
    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;)V

    move v5, v2

    .line 1661
    :goto_8
    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/g;->d:I

    const/4 v8, -0x1

    if-ne v2, v8, :cond_1

    .line 1662
    if-eqz v4, :cond_f

    .line 1663
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 1681
    :cond_1
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v14, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;Landroidx/recyclerview/widget/g;)V

    .line 1684
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    .line 1685
    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->d()I

    move-result v2

    .line 1688
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v4

    sub-int v4, v2, v4

    move v6, v2

    .line 1696
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_17

    move-object/from16 v2, p0

    .line 1697
    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1702
    :goto_c
    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_18

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v2, v2, Landroidx/recyclerview/widget/g;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(II)V

    .line 1707
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/g;)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/g;->h:Z

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1709
    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_19

    .line 1710
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 1715
    :cond_2
    :goto_e
    const/4 v2, 0x1

    .line 1716
    goto/16 :goto_2

    .line 1584
    :cond_3
    const/high16 v2, -0x80000000

    move v15, v2

    goto/16 :goto_0

    .line 1587
    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/g;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1588
    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/g;->g:I

    move-object/from16 v0, p2

    iget v3, v0, Landroidx/recyclerview/widget/g;->b:I

    add-int/2addr v2, v3

    move v15, v2

    goto/16 :goto_0

    .line 1590
    :cond_5
    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/g;->f:I

    move-object/from16 v0, p2

    iget v3, v0, Landroidx/recyclerview/widget/g;->b:I

    sub-int/2addr v2, v3

    move v15, v2

    goto/16 :goto_0

    .line 1602
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    .line 1603
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->c()I

    move-result v2

    move/from16 v16, v2

    goto/16 :goto_1

    .line 1612
    :cond_7
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 1614
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/g;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    move-result-object v2

    goto/16 :goto_4

    .line 1623
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v5

    move-object/from16 v17, v2

    goto/16 :goto_5

    .line 1630
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1638
    :cond_b
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v2

    goto/16 :goto_7

    .line 1648
    :cond_c
    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v2

    .line 1650
    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v5

    sub-int v5, v2, v5

    .line 1651
    if-eqz v4, :cond_d

    iget-boolean v7, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v7, :cond_d

    .line 1653
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v7

    .line 1654
    const/4 v8, 0x1

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->b:I

    .line 1655
    iput v6, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    .line 1656
    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;)V

    :cond_d
    move v7, v2

    goto/16 :goto_8

    .line 1649
    :cond_e
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v2

    goto :goto_f

    .line 1666
    :cond_f
    move-object/from16 v0, p2

    iget v2, v0, Landroidx/recyclerview/widget/g;->e:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    .line 1667
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    .line 1671
    :goto_10
    if-eqz v2, :cond_1

    .line 1672
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 1673
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v2

    .line 1674
    if-eqz v2, :cond_10

    .line 1675
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->d:Z

    .line 1677
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    goto/16 :goto_9

    .line 1667
    :cond_11
    const/4 v2, 0x0

    goto :goto_10

    .line 1669
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_10

    :cond_13
    const/4 v2, 0x0

    goto :goto_10

    .line 1685
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    .line 1686
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->d()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v17

    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v4, v6

    sub-int/2addr v2, v4

    goto/16 :goto_a

    .line 1690
    :cond_15
    iget-boolean v2, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->c()I

    move-result v2

    .line 1693
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v4

    add-int v6, v2, v4

    move v4, v2

    goto/16 :goto_b

    .line 1690
    :cond_16
    move-object/from16 v0, v17

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    .line 1692
    invoke-virtual {v4}, Landroidx/recyclerview/widget/k;->c()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_11

    :cond_17
    move-object/from16 v8, p0

    move-object v9, v3

    move v10, v5

    move v11, v4

    move v12, v7

    move v13, v6

    .line 1699
    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    goto/16 :goto_c

    .line 1705
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v2, v2, Landroidx/recyclerview/widget/g;->e:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;II)V

    goto/16 :goto_d

    .line 1712
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    move-object/from16 v0, v17

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_e

    .line 1717
    :cond_1a
    if-nez v2, :cond_1b

    .line 1718
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/g;)V

    .line 1721
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v2, v2, Landroidx/recyclerview/widget/g;->e:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    .line 1722
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->c()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v2

    .line 1723
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->c()I

    move-result v3

    sub-int v2, v3, v2

    .line 1728
    :goto_12
    if-lez v2, :cond_1d

    move-object/from16 v0, p2

    iget v3, v0, Landroidx/recyclerview/widget/g;->b:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_13
    return v2

    .line 1725
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->d()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(I)I

    move-result v2

    .line 1726
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->d()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_12

    .line 1728
    :cond_1d
    const/4 v2, 0x0

    goto :goto_13

    :cond_1e
    move v5, v2

    goto/16 :goto_8
.end method

.method private a(Landroidx/recyclerview/widget/g;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1980
    iget v0, p1, Landroidx/recyclerview/widget/g;->e:I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(I)Z

    move-result v0

    .line 1982
    if-eqz v0, :cond_0

    .line 1983
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v4, v0, -0x1

    move v0, v1

    move v3, v1

    .line 1991
    :goto_0
    iget v1, p1, Landroidx/recyclerview/widget/g;->e:I

    if-ne v1, v2, :cond_1

    .line 1993
    const v2, 0x7fffffff

    .line 1994
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->c()I

    move-result v7

    move v6, v4

    .line 1995
    :goto_1
    if-eq v6, v3, :cond_2

    .line 1996
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v1, v6

    .line 1997
    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v1

    .line 1998
    if-ge v1, v2, :cond_4

    .line 1995
    :goto_2
    add-int/2addr v6, v0

    move v2, v1

    move-object v5, v4

    goto :goto_1

    .line 1987
    :cond_0
    const/4 v4, 0x0

    .line 1988
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    move v0, v2

    move v3, v1

    .line 1989
    goto :goto_0

    .line 2006
    :cond_1
    const/high16 v2, -0x80000000

    .line 2007
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->d()I

    move-result v7

    move v6, v4

    .line 2008
    :goto_3
    if-eq v6, v3, :cond_2

    .line 2009
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v1, v6

    .line 2010
    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v1

    .line 2011
    if-le v1, v2, :cond_3

    .line 2008
    :goto_4
    add-int/2addr v6, v0

    move v2, v1

    move-object v5, v4

    goto :goto_3

    .line 2016
    :cond_2
    return-object v5

    :cond_3
    move v1, v2

    move-object v4, v5

    goto :goto_4

    :cond_4
    move v1, v2

    move-object v4, v5

    goto :goto_2
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 1819
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_1

    .line 1820
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1819
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1823
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;II)V

    goto :goto_1

    .line 1825
    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 5

    .prologue
    .line 1193
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 1195
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->leftMargin:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->rightMargin:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(III)I

    move-result v1

    .line 1197
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->topMargin:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->bottomMargin:I

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-direct {p0, p3, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(III)I

    move-result v2

    .line 1199
    if-eqz p4, :cond_1

    .line 1200
    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z

    move-result v0

    .line 1202
    :goto_0
    if-eqz v0, :cond_0

    .line 1203
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1206
    :cond_0
    return-void

    .line 1201
    :cond_1
    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;Landroidx/recyclerview/widget/g;)V
    .locals 2

    .prologue
    .line 1750
    iget v0, p3, Landroidx/recyclerview/widget/g;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1751
    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_0

    .line 1752
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(Landroid/view/View;)V

    .line 1763
    :goto_0
    return-void

    .line 1754
    :cond_0
    iget-object v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(Landroid/view/View;)V

    goto :goto_0

    .line 1757
    :cond_1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_2

    .line 1758
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(Landroid/view/View;)V

    goto :goto_0

    .line 1760
    :cond_2
    iget-object v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1128
    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_1

    .line 1129
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v5, :cond_0

    .line 1130
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    .line 1132
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C()I

    move-result v1

    .line 1133
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A()I

    move-result v2

    .line 1134
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->height:I

    .line 1131
    invoke-static {v1, v2, v3, v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 1130
    invoke-direct {p0, p1, v0, v1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    .line 1189
    :goto_0
    return-void

    .line 1142
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B()I

    move-result v0

    .line 1143
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z()I

    move-result v1

    .line 1144
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->width:I

    .line 1141
    invoke-static {v0, v1, v2, v3, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    .line 1139
    invoke-direct {p0, p1, v0, v1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1151
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v5, :cond_2

    .line 1154
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 1158
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z()I

    move-result v1

    iget v2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->width:I

    .line 1156
    invoke-static {v0, v1, v4, v2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    .line 1163
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C()I

    move-result v1

    .line 1164
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A()I

    move-result v2

    .line 1165
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->height:I

    .line 1162
    invoke-static {v1, v2, v3, v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 1154
    invoke-direct {p0, p1, v0, v1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1175
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B()I

    move-result v0

    .line 1176
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z()I

    move-result v1

    .line 1177
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->width:I

    .line 1174
    invoke-static {v0, v1, v2, v3, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 1182
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A()I

    move-result v2

    iget v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->height:I

    .line 1180
    invoke-static {v1, v2, v4, v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 1172
    invoke-direct {p0, p1, v0, v1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1907
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    if-lez v0, :cond_0

    .line 1908
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v2

    .line 1909
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    .line 1910
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/k;->c(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 1911
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 1913
    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v3, :cond_3

    move v0, v1

    .line 1914
    :goto_1
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v3, :cond_2

    .line 1915
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1933
    :cond_0
    return-void

    .line 1914
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1919
    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v3, :cond_4

    .line 1920
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->h()V

    .line 1919
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1923
    :cond_3
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1926
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->h()V

    .line 1928
    :cond_4
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$p;)V

    goto :goto_0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 611
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    .line 612
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-eq v0, v7, :cond_2

    .line 613
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    if-nez v0, :cond_2

    .line 614
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 615
    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    .line 722
    :cond_1
    :goto_0
    return-void

    .line 620
    :cond_2
    iget-boolean v0, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->e:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_9

    :cond_3
    move v0, v2

    .line 622
    :goto_1
    if-eqz v0, :cond_4

    .line 623
    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    .line 624
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    if-eqz v4, :cond_a

    .line 625
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)V

    .line 630
    :goto_2
    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)V

    .line 631
    iput-boolean v2, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->e:Z

    .line 633
    :cond_4
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    if-nez v4, :cond_6

    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-ne v4, v7, :cond_6

    .line 634
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v4, v5, :cond_5

    .line 635
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j()Z

    move-result v4

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eq v4, v5, :cond_6

    .line 636
    :cond_5
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a()V

    .line 637
    iput-boolean v2, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->d:Z

    .line 641
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v4

    if-lez v4, :cond_e

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    if-ge v4, v2, :cond_e

    .line 643
    :cond_7
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->d:Z

    if-eqz v4, :cond_b

    move v0, v1

    .line 644
    :goto_3
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_e

    .line 646
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e()V

    .line 647
    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_8

    .line 648
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v0

    iget v5, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c(I)V

    .line 644
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v1

    .line 620
    goto :goto_1

    .line 627
    :cond_a
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P()V

    .line 628
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    goto :goto_2

    .line 652
    :cond_b
    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    if-nez v0, :cond_12

    :cond_c
    move v0, v1

    .line 653
    :goto_4
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_d

    .line 654
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v0

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iget v6, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(ZI)V

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 657
    :cond_d
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;)V

    .line 667
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 668
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/g;->a:Z

    .line 669
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 670
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(I)V

    .line 671
    iget v0, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 672
    iget-boolean v0, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_13

    .line 674
    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(I)V

    .line 675
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/g;Landroidx/recyclerview/widget/RecyclerView$u;)I

    .line 677
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(I)V

    .line 678
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v5, v5, Landroidx/recyclerview/widget/g;->d:I

    add-int/2addr v4, v5

    iput v4, v0, Landroidx/recyclerview/widget/g;->c:I

    .line 679
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/g;Landroidx/recyclerview/widget/RecyclerView$u;)I

    .line 690
    :goto_5
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q()V

    .line 692
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    if-lez v0, :cond_f

    .line 693
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_14

    .line 694
    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)V

    .line 695
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)V

    .line 702
    :cond_f
    :goto_6
    if-eqz p3, :cond_16

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v0

    if-nez v0, :cond_16

    .line 703
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_15

    .line 704
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    if-lez v0, :cond_15

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    if-nez v0, :cond_10

    .line 705
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    :cond_10
    move v0, v2

    .line 706
    :goto_7
    if-eqz v0, :cond_16

    .line 707
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    .line 708
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    .line 713
    :goto_8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 714
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    .line 716
    :cond_11
    iget-boolean v2, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 717
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j()Z

    move-result v2

    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    .line 718
    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    .line 720
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)V

    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 659
    :goto_9
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_e

    .line 660
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v0

    .line 661
    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e()V

    .line 662
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c(I)V

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 682
    :cond_13
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(I)V

    .line 683
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/g;Landroidx/recyclerview/widget/RecyclerView$u;)I

    .line 685
    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(I)V

    .line 686
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v5, v5, Landroidx/recyclerview/widget/g;->d:I

    add-int/2addr v4, v5

    iput v4, v0, Landroidx/recyclerview/widget/g;->c:I

    .line 687
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/g;Landroidx/recyclerview/widget/RecyclerView$u;)I

    goto/16 :goto_5

    .line 697
    :cond_14
    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)V

    .line 698
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)V

    goto/16 :goto_6

    :cond_15
    move v0, v1

    .line 705
    goto :goto_7

    :cond_16
    move v0, v1

    goto :goto_8
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/g;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1766
    iget-boolean v0, p2, Landroidx/recyclerview/widget/g;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/recyclerview/widget/g;->i:Z

    if-eqz v0, :cond_1

    .line 1802
    :cond_0
    :goto_0
    return-void

    .line 1769
    :cond_1
    iget v0, p2, Landroidx/recyclerview/widget/g;->b:I

    if-nez v0, :cond_3

    .line 1771
    iget v0, p2, Landroidx/recyclerview/widget/g;->e:I

    if-ne v0, v1, :cond_2

    .line 1772
    iget v0, p2, Landroidx/recyclerview/widget/g;->g:I

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;I)V

    goto :goto_0

    .line 1774
    :cond_2
    iget v0, p2, Landroidx/recyclerview/widget/g;->f:I

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;I)V

    goto :goto_0

    .line 1779
    :cond_3
    iget v0, p2, Landroidx/recyclerview/widget/g;->e:I

    if-ne v0, v1, :cond_5

    .line 1781
    iget v0, p2, Landroidx/recyclerview/widget/g;->f:I

    iget v1, p2, Landroidx/recyclerview/widget/g;->f:I

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1783
    if-gez v0, :cond_4

    .line 1784
    iget v0, p2, Landroidx/recyclerview/widget/g;->g:I

    .line 1788
    :goto_1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;I)V

    goto :goto_0

    .line 1786
    :cond_4
    iget v1, p2, Landroidx/recyclerview/widget/g;->g:I

    iget v2, p2, Landroidx/recyclerview/widget/g;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_1

    .line 1791
    :cond_5
    iget v0, p2, Landroidx/recyclerview/widget/g;->g:I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(I)I

    move-result v0

    iget v1, p2, Landroidx/recyclerview/widget/g;->g:I

    sub-int/2addr v0, v1

    .line 1793
    if-gez v0, :cond_6

    .line 1794
    iget v0, p2, Landroidx/recyclerview/widget/g;->f:I

    .line 1798
    :goto_2
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;I)V

    goto :goto_0

    .line 1796
    :cond_6
    iget v1, p2, Landroidx/recyclerview/widget/g;->f:I

    iget v2, p2, Landroidx/recyclerview/widget/g;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method private a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    if-lez v0, :cond_3

    .line 787
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v1, :cond_2

    .line 788
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_3

    .line 789
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e()V

    .line 790
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:[I

    aget v1, v1, v0

    .line 791
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 792
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i:Z

    if-eqz v2, :cond_1

    .line 793
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->d()I

    move-result v2

    add-int/2addr v1, v2

    .line 798
    :cond_0
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c(I)V

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 795
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->c()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 801
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a()V

    .line 802
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:I

    .line 805
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    .line 806
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 807
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P()V

    .line 809
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 810
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 811
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i:Z

    iput-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 815
    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 816
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:[I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    .line 817
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g:Ljava/util/List;

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    .line 819
    :cond_4
    return-void

    .line 813
    :cond_5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    goto :goto_2
.end method

.method private a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1828
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->i()I

    move-result v0

    .line 1829
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1830
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b()I

    move-result v1

    .line 1831
    add-int/2addr v0, v1

    if-gt v0, p3, :cond_0

    .line 1832
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 1840
    :cond_0
    :goto_0
    return-void

    .line 1835
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d()I

    move-result v1

    .line 1836
    sub-int v0, v1, v0

    if-lt v0, p3, :cond_0

    .line 1837
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 403
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d()I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->d()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 406
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    iget-object v3, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 407
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    .line 408
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 416
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 408
    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b()I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->c()I

    move-result v3

    if-le v0, v3, :cond_3

    .line 412
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 413
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    .line 414
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-nez v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    .line 416
    goto :goto_0
.end method

.method private b(III)I
    .locals 3

    .prologue
    .line 1209
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1217
    :cond_0
    :goto_0
    return p1

    .line 1212
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1213
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 1214
    :cond_2
    const/4 v1, 0x0

    .line 1215
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1214
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method private b(ILandroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1448
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iput v1, v0, Landroidx/recyclerview/widget/g;->b:I

    .line 1449
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iput p1, v0, Landroidx/recyclerview/widget/g;->c:I

    .line 1452
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1453
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u;->c()I

    move-result v0

    .line 1454
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 1455
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-ge v0, p1, :cond_1

    move v0, v3

    :goto_0
    if-ne v2, v0, :cond_2

    .line 1456
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->f()I

    move-result v0

    move v2, v1

    .line 1464
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t()Z

    move-result v4

    .line 1465
    if-eqz v4, :cond_3

    .line 1466
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/k;->c()I

    move-result v5

    sub-int v2, v5, v2

    iput v2, v4, Landroidx/recyclerview/widget/g;->f:I

    .line 1467
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/k;->d()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v2, Landroidx/recyclerview/widget/g;->g:I

    .line 1472
    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/g;->h:Z

    .line 1473
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iput-boolean v3, v0, Landroidx/recyclerview/widget/g;->a:Z

    .line 1474
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->h()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    .line 1475
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k;->e()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, v0, Landroidx/recyclerview/widget/g;->i:Z

    .line 1476
    return-void

    :cond_1
    move v0, v1

    .line 1455
    goto :goto_0

    .line 1458
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->f()I

    move-result v2

    move v0, v1

    goto :goto_1

    .line 1469
    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/k;->e()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v4, Landroidx/recyclerview/widget/g;->g:I

    .line 1470
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    neg-int v2, v2

    iput v2, v0, Landroidx/recyclerview/widget/g;->f:I

    goto :goto_2

    :cond_4
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1936
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    .line 1938
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 1939
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v3

    .line 1940
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    .line 1941
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/k;->d(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 1942
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 1944
    iget-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v4, :cond_3

    move v0, v1

    .line 1945
    :goto_1
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_2

    .line 1946
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1964
    :cond_0
    return-void

    .line 1945
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1950
    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_4

    .line 1951
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->g()V

    .line 1950
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1954
    :cond_3
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 1957
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->g()V

    .line 1959
    :cond_4
    invoke-virtual {p0, v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 1938
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 1411
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(I)I

    move-result v0

    .line 1412
    if-ne v0, v1, :cond_1

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1415
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->d()I

    move-result v1

    sub-int v0, v1, v0

    .line 1417
    if-lez v0, :cond_0

    .line 1418
    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v1

    neg-int v1, v1

    .line 1422
    sub-int/2addr v0, v1

    .line 1423
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1424
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/k;->a(I)V

    goto :goto_0
.end method

.method private c(III)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1531
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    move-result v0

    move v2, v0

    .line 1535
    :goto_0
    const/16 v0, 0x8

    if-ne p3, v0, :cond_3

    .line 1536
    if-ge p1, p2, :cond_2

    .line 1537
    add-int/lit8 v1, p2, 0x1

    move v0, p1

    .line 1548
    :goto_1
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    .line 1549
    sparse-switch p3, :sswitch_data_0

    .line 1563
    :goto_2
    if-gt v1, v2, :cond_4

    .line 1571
    :cond_0
    :goto_3
    return-void

    .line 1531
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 1540
    :cond_2
    add-int/lit8 v1, p1, 0x1

    move v0, p2

    .line 1541
    goto :goto_1

    .line 1545
    :cond_3
    add-int v1, p1, p2

    move v0, p1

    goto :goto_1

    .line 1551
    :sswitch_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(II)V

    goto :goto_2

    .line 1554
    :sswitch_1
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(II)V

    goto :goto_2

    .line 1558
    :sswitch_2
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v3, p1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(II)V

    .line 1559
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v3, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(II)V

    goto :goto_2

    .line 1567
    :cond_4
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p()I

    move-result v1

    .line 1568
    :goto_4
    if-gt v0, v1, :cond_0

    .line 1569
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q()V

    goto :goto_3

    .line 1567
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    move-result v1

    goto :goto_4

    .line 1549
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 1430
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v0

    .line 1431
    if-ne v0, v1, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1436
    if-lez v0, :cond_0

    .line 1437
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v1

    .line 1441
    sub-int/2addr v0, v1

    .line 1442
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1443
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/k;->a(I)V

    goto :goto_0
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)Z
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(I)I

    move-result v0

    .line 842
    :goto_0
    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    .line 843
    const/high16 v0, -0x80000000

    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    .line 844
    const/4 v0, 0x1

    return v0

    .line 842
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v(I)I

    move-result v0

    goto :goto_0
.end method

.method private f(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1072
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1076
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_2

    .line 1077
    :goto_2
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    .line 1075
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/k;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;ZZ)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1076
    goto :goto_2
.end method

.method private i(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1092
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1096
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_2

    .line 1097
    :goto_2
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    move-object v0, p1

    move-object v4, p0

    .line 1095
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/k;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1096
    goto :goto_2
.end method

.method private j(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1112
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1116
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_2

    .line 1117
    :goto_2
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    move-object v0, p1

    move-object v4, p0

    .line 1115
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/k;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1116
    goto :goto_2
.end method

.method private m(I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1479
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iput p1, v2, Landroidx/recyclerview/widget/g;->e:I

    .line 1480
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Landroidx/recyclerview/widget/g;->d:I

    .line 1482
    return-void

    .line 1480
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private n(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;
    .locals 4

    .prologue
    .line 1732
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    invoke-direct {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;-><init>()V

    .line 1733
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->c:[I

    .line 1734
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_0

    .line 1735
    iget-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->c:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v0

    .line 1734
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1737
    :cond_0
    return-object v1
.end method

.method private o(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;
    .locals 4

    .prologue
    .line 1741
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    invoke-direct {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;-><init>()V

    .line 1742
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [I

    iput-object v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->c:[I

    .line 1743
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_0

    .line 1744
    iget-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->c:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v0

    .line 1743
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1746
    :cond_0
    return-object v1
.end method

.method private p(I)I
    .locals 3

    .prologue
    .line 1843
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v1

    .line 1844
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_1

    .line 1845
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v2

    .line 1846
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1844
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1850
    :cond_1
    return v1
.end method

.method private p(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1806
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1807
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(Landroid/view/View;)V

    .line 1806
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1809
    :cond_0
    return-void
.end method

.method private q(I)I
    .locals 3

    .prologue
    .line 1854
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v1

    .line 1855
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_1

    .line 1856
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v2

    .line 1857
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1855
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1861
    :cond_1
    return v1
.end method

.method private q(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1813
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1814
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(Landroid/view/View;)V

    .line 1813
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1816
    :cond_0
    return-void
.end method

.method private r(I)I
    .locals 3

    .prologue
    .line 1885
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v1

    .line 1886
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_1

    .line 1887
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v2

    .line 1888
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1886
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1892
    :cond_1
    return v1
.end method

.method private s(I)I
    .locals 3

    .prologue
    .line 1896
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v1

    .line 1897
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_1

    .line 1898
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v2

    .line 1899
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1897
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1903
    :cond_1
    return v1
.end method

.method private t(I)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1970
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_3

    .line 1971
    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eq v0, v3, :cond_2

    .line 1973
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 1971
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1973
    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j()Z

    move-result v3

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private u(I)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 2043
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v2

    if-nez v2, :cond_1

    .line 2044
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v2, :cond_0

    .line 2047
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2044
    goto :goto_0

    .line 2046
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p()I

    move-result v2

    .line 2047
    if-ge p1, v2, :cond_2

    move v2, v0

    :goto_1
    iget-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eq v2, v3, :cond_3

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private v(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2218
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v3

    move v2, v1

    .line 2219
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2220
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 2221
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 2222
    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 2226
    :goto_1
    return v0

    .line 2219
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2226
    goto :goto_1
.end method

.method private w(I)I
    .locals 2

    .prologue
    .line 2235
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2236
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 2237
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 2238
    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 2242
    :goto_1
    return v0

    .line 2235
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2242
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private x(I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    .line 2392
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2425
    :cond_0
    :goto_0
    return v0

    .line 2394
    :sswitch_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-eq v1, v2, :cond_0

    .line 2396
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 2397
    goto :goto_0

    .line 2402
    :sswitch_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 2403
    goto :goto_0

    .line 2404
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 2407
    goto :goto_0

    .line 2410
    :sswitch_2
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2413
    :sswitch_3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2416
    :sswitch_4
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2419
    :sswitch_5
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    .line 2392
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 2033
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1335
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    .line 1336
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    .line 1338
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2284
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 2378
    :cond_0
    :goto_0
    return-object v0

    .line 2288
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 2289
    if-nez v6, :cond_2

    move-object v0, v3

    .line 2290
    goto :goto_0

    .line 2293
    :cond_2
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P()V

    .line 2294
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x(I)I

    move-result v7

    .line 2295
    const/high16 v0, -0x80000000

    if-ne v7, v0, :cond_3

    move-object v0, v3

    .line 2296
    goto :goto_0

    .line 2298
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 2299
    iget-boolean v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    .line 2300
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    .line 2302
    if-ne v7, v5, :cond_4

    .line 2303
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    move-result v0

    .line 2307
    :goto_1
    invoke-direct {p0, v0, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 2308
    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(I)V

    .line 2310
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v4, v4, Landroidx/recyclerview/widget/g;->d:I

    add-int/2addr v4, v0

    iput v4, v1, Landroidx/recyclerview/widget/g;->c:I

    .line 2311
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    const v4, 0x3eaaaaab

    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/k;->f()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v4, v10

    float-to-int v4, v4

    iput v4, v1, Landroidx/recyclerview/widget/g;->b:I

    .line 2312
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iput-boolean v5, v1, Landroidx/recyclerview/widget/g;->h:Z

    .line 2313
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iput-boolean v2, v1, Landroidx/recyclerview/widget/g;->a:Z

    .line 2314
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    invoke-direct {p0, p3, v1, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/g;Landroidx/recyclerview/widget/RecyclerView$u;)I

    .line 2315
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 2316
    if-nez v8, :cond_5

    .line 2317
    invoke-virtual {v9, v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(II)Landroid/view/View;

    move-result-object v1

    .line 2318
    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_5

    move-object v0, v1

    .line 2319
    goto :goto_0

    .line 2305
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p()I

    move-result v0

    goto :goto_1

    .line 2325
    :cond_5
    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2326
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_2
    if-ltz v4, :cond_9

    .line 2327
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v4

    invoke-virtual {v1, v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(II)Landroid/view/View;

    move-result-object v1

    .line 2328
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_6

    move-object v0, v1

    .line 2329
    goto/16 :goto_0

    .line 2326
    :cond_6
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_2

    :cond_7
    move v1, v2

    .line 2333
    :goto_3
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v4, :cond_9

    .line 2334
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(II)Landroid/view/View;

    move-result-object v4

    .line 2335
    if-eqz v4, :cond_8

    if-eq v4, v6, :cond_8

    move-object v0, v4

    .line 2336
    goto/16 :goto_0

    .line 2333
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2345
    :cond_9
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v0, :cond_c

    move v1, v5

    :goto_4
    const/4 v0, -0x1

    if-ne v7, v0, :cond_d

    move v0, v5

    :goto_5
    if-ne v1, v0, :cond_e

    move v4, v5

    .line 2347
    :goto_6
    if-nez v8, :cond_a

    .line 2348
    if-eqz v4, :cond_f

    .line 2349
    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->j()I

    move-result v0

    .line 2348
    :goto_7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2351
    if-eqz v0, :cond_a

    if-ne v0, v6, :cond_0

    .line 2356
    :cond_a
    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2357
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_8
    if-ltz v1, :cond_15

    .line 2358
    iget v0, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    if-ne v1, v0, :cond_10

    .line 2357
    :cond_b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_8

    :cond_c
    move v1, v2

    .line 2345
    goto :goto_4

    :cond_d
    move v0, v2

    goto :goto_5

    :cond_e
    move v4, v2

    goto :goto_6

    .line 2350
    :cond_f
    invoke-virtual {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->k()I

    move-result v0

    goto :goto_7

    .line 2361
    :cond_10
    if-eqz v4, :cond_11

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v0, v0, v1

    .line 2362
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->j()I

    move-result v0

    .line 2361
    :goto_9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2364
    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_b

    goto/16 :goto_0

    .line 2362
    :cond_11
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v0, v0, v1

    .line 2363
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->k()I

    move-result v0

    goto :goto_9

    .line 2369
    :cond_12
    add-int/lit8 v2, v2, 0x1

    :cond_13
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v2, v0, :cond_15

    .line 2370
    if-eqz v4, :cond_14

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v0, v0, v2

    .line 2371
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->j()I

    move-result v0

    .line 2370
    :goto_a
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2373
    if-eqz v0, :cond_12

    if-eq v0, v6, :cond_12

    goto/16 :goto_0

    .line 2371
    :cond_14
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v0, v0, v2

    .line 2372
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->k()I

    move-result v0

    goto :goto_a

    :cond_15
    move-object v0, v3

    .line 2378
    goto/16 :goto_0
.end method

.method public a()Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 2248
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    .line 2249
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(II)V

    .line 2252
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(II)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 1

    .prologue
    .line 2259
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 1

    .prologue
    .line 2264
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2265
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2267
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 430
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-eq p1, v0, :cond_1

    .line 431
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()V

    .line 432
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    .line 433
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 434
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    .line 435
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 436
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    invoke-direct {v2, p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object v2, v1, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q()V

    .line 440
    :cond_1
    return-void
.end method

.method public a(IILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2123
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_1

    .line 2124
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 2155
    :cond_0
    return-void

    :cond_1
    move p1, p2

    .line 2123
    goto :goto_0

    .line 2128
    :cond_2
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 2131
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:[I

    array-length v0, v0

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_4

    .line 2132
    :cond_3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:[I

    :cond_4
    move v0, v1

    move v2, v1

    .line 2136
    :goto_1
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v3, :cond_7

    .line 2138
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v3, v3, Landroidx/recyclerview/widget/g;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v3, v3, Landroidx/recyclerview/widget/g;->f:I

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v0

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v5, v5, Landroidx/recyclerview/widget/g;->f:I

    .line 2139
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2141
    :goto_2
    if-ltz v3, :cond_5

    .line 2143
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:[I

    aput v3, v4, v2

    .line 2144
    add-int/lit8 v2, v2, 0x1

    .line 2136
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2139
    :cond_6
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v4, v4, Landroidx/recyclerview/widget/g;->g:I

    .line 2140
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v4, v4, Landroidx/recyclerview/widget/g;->g:I

    sub-int/2addr v3, v4

    goto :goto_2

    .line 2147
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:[I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 2150
    :goto_3
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/g;->a(Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v0, v0, Landroidx/recyclerview/widget/g;->c:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:[I

    aget v3, v3, v1

    invoke-interface {p4, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$i$a;->b(II)V

    .line 2153
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v3, v0, Landroidx/recyclerview/widget/g;->c:I

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v4, v4, Landroidx/recyclerview/widget/g;->d:I

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/recyclerview/widget/g;->c:I

    .line 2150
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method a(ILandroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2160
    if-lez p1, :cond_0

    .line 2162
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    move-result v2

    move v0, v1

    .line 2167
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iput-boolean v1, v3, Landroidx/recyclerview/widget/g;->a:Z

    .line 2168
    invoke-direct {p0, v2, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 2169
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(I)V

    .line 2170
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v1, v1, Landroidx/recyclerview/widget/g;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/recyclerview/widget/g;->c:I

    .line 2171
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/g;->b:I

    .line 2172
    return-void

    .line 2164
    :cond_0
    const/4 v0, -0x1

    .line 2165
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p()I

    move-result v2

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 4

    .prologue
    .line 587
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F()I

    move-result v1

    add-int/2addr v1, v0

    .line 588
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G()I

    move-result v2

    add-int/2addr v0, v2

    .line 589
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 590
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    .line 591
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K()I

    move-result v2

    invoke-static {p3, v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v0

    .line 592
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 593
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J()I

    move-result v2

    .line 592
    invoke-static {p2, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v1

    .line 600
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(II)V

    .line 601
    return-void

    .line 595
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    .line 596
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v1

    .line 597
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 598
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K()I

    move-result v2

    .line 597
    invoke-static {p3, v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1222
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_0

    .line 1223
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 1224
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q()V

    .line 1228
    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1302
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1303
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    if-lez v0, :cond_0

    .line 1304
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v0

    .line 1305
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v1

    .line 1306
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1319
    :cond_0
    :goto_0
    return-void

    .line 1309
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 1310
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v1

    .line 1311
    if-ge v0, v1, :cond_2

    .line 1312
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1313
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0

    .line 1315
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1316
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;Landroidx/core/h/a/c;)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 1283
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1284
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    if-nez v1, :cond_0

    .line 1285
    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;Landroidx/core/h/a/c;)V

    .line 1298
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 1288
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 1289
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_2

    .line 1291
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    :goto_1
    move v3, v2

    move v5, v4

    .line 1290
    invoke-static/range {v0 .. v5}, Landroidx/core/h/a/c$c;->a(IIIIZZ)Landroidx/core/h/a/c$c;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/core/h/a/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1291
    goto :goto_1

    .line 1296
    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v7

    iget-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_3

    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    :goto_2
    move v5, v2

    move v6, v2

    move v9, v4

    move v10, v4

    .line 1294
    invoke-static/range {v5 .. v10}, Landroidx/core/h/a/c$c;->a(IIIIZZ)Landroidx/core/h/a/c$c;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/core/h/a/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v8, v3

    .line 1296
    goto :goto_2
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 726
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 727
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 728
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 730
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    .line 731
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)V
    .locals 1

    .prologue
    .line 822
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b()V

    .line 832
    const/4 v0, 0x0

    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a()V

    .line 1513
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q()V

    .line 1514
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 1507
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1508
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 1

    .prologue
    .line 1518
    const/16 v0, 0x8

    invoke-direct {p0, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1519
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1524
    const/4 v0, 0x4

    invoke-direct {p0, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1525
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 325
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    .line 326
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 327
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e()V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 331
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;I)V
    .locals 2

    .prologue
    .line 2070
    new-instance v0, Landroidx/recyclerview/widget/h;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/h;-><init>(Landroid/content/Context;)V

    .line 2071
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/h;->c(I)V

    .line 2072
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 2073
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    if-nez v0, :cond_0

    .line 529
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Ljava/lang/String;)V

    .line 531
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h:Z

    if-eq v0, p1, :cond_0

    .line 479
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iput-boolean p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h:Z

    .line 481
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    .line 482
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q()V

    .line 483
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$j;)Z
    .locals 1

    .prologue
    .line 2273
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    return v0
.end method

.method public b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 2039
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 2

    .prologue
    .line 1344
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1345
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    .line 1347
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1108
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method b(Z)Landroid/view/View;
    .locals 8

    .prologue
    .line 1357
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->c()I

    move-result v3

    .line 1358
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v4

    .line 1359
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v5

    .line 1360
    const/4 v0, 0x0

    .line 1361
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_4

    .line 1362
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    .line 1363
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v6

    .line 1364
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v7

    .line 1365
    if-le v7, v3, :cond_0

    if-lt v6, v4, :cond_1

    .line 1361
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1368
    :cond_1
    if-ge v6, v3, :cond_2

    if-nez p1, :cond_3

    .line 1377
    :cond_2
    :goto_2
    return-object v1

    .line 1373
    :cond_3
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1374
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1377
    goto :goto_2
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 449
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid orientation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 453
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne p1, v0, :cond_1

    .line 461
    :goto_0
    return-void

    .line 456
    :cond_1
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    .line 457
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    .line 458
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    iput-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    .line 459
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    .line 460
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q()V

    goto :goto_0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 1502
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(III)V

    .line 1503
    return-void
.end method

.method b()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 270
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    .line 311
    :goto_0
    return v1

    .line 274
    :cond_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    move-result v4

    .line 276
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p()I

    move-result v0

    move v3, v0

    .line 281
    :goto_1
    if-nez v4, :cond_3

    .line 282
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()Landroid/view/View;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a()V

    .line 285
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M()V

    .line 286
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q()V

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p()I

    move-result v4

    .line 279
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    move-result v0

    move v3, v0

    goto :goto_1

    .line 290
    :cond_3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    if-nez v0, :cond_4

    move v1, v2

    .line 291
    goto :goto_0

    .line 293
    :cond_4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    .line 294
    :goto_2
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    add-int/lit8 v6, v3, 0x1

    .line 295
    invoke-virtual {v5, v4, v6, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v5

    .line 296
    if-nez v5, :cond_6

    .line 297
    iput-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 298
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    move v1, v2

    .line 299
    goto :goto_0

    :cond_5
    move v0, v1

    .line 293
    goto :goto_2

    .line 301
    :cond_6
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v3, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    mul-int/lit8 v0, v0, -0x1

    .line 302
    invoke-virtual {v2, v4, v3, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    .line 304
    if-nez v0, :cond_7

    .line 305
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v2, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    .line 309
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M()V

    .line 310
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q()V

    goto :goto_0

    .line 307
    :cond_7
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    goto :goto_3
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v1, 0x1

    .line 849
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-ne v2, v5, :cond_1

    :cond_0
    move v1, v0

    .line 923
    :goto_0
    return v1

    .line 853
    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-ltz v2, :cond_2

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 854
    :cond_2
    iput v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 855
    iput v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    move v1, v0

    .line 856
    goto :goto_0

    .line 859
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:I

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    if-ge v2, v1, :cond_f

    .line 862
    :cond_4
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v2

    .line 863
    if-eqz v2, :cond_c

    .line 866
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    move-result v0

    .line 867
    :goto_1
    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    .line 868
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    if-eq v0, v4, :cond_7

    .line 869
    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_6

    .line 870
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v0

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    sub-int/2addr v0, v3

    .line 872
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_0

    .line 867
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p()I

    move-result v0

    goto :goto_1

    .line 874
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->c()I

    move-result v0

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    add-int/2addr v0, v3

    .line 876
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_0

    .line 882
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v0

    .line 883
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->f()I

    move-result v3

    if-le v0, v3, :cond_9

    .line 885
    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    .line 886
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v0

    .line 887
    :goto_2
    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 886
    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    .line 887
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->c()I

    move-result v0

    goto :goto_2

    .line 891
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    .line 892
    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->c()I

    move-result v3

    sub-int/2addr v0, v3

    .line 893
    if-gez v0, :cond_a

    .line 894
    neg-int v0, v0

    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 897
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    .line 898
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 899
    if-gez v0, :cond_b

    .line 900
    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 904
    :cond_b
    iput v4, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_0

    .line 908
    :cond_c
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iput v2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    .line 909
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    if-ne v2, v4, :cond_e

    .line 910
    iget v2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)I

    move-result v2

    .line 912
    if-ne v2, v1, :cond_d

    move v0, v1

    :cond_d
    iput-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 913
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b()V

    .line 917
    :goto_3
    iput-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->d:Z

    goto/16 :goto_0

    .line 915
    :cond_e
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a(I)V

    goto :goto_3

    .line 920
    :cond_f
    iput v4, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    .line 921
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iput v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    goto/16 :goto_0
.end method

.method c(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2175
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v1

    .line 2199
    :goto_0
    return p1

    .line 2179
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 2180
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    invoke-direct {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/g;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    .line 2181
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iget v2, v2, Landroidx/recyclerview/widget/g;->b:I

    .line 2183
    if-ge v2, v0, :cond_2

    .line 2194
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    neg-int v2, p1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/k;->a(I)V

    .line 2196
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 2197
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    iput v1, v0, Landroidx/recyclerview/widget/g;->b:I

    .line 2198
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/g;

    invoke-direct {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/g;)V

    goto :goto_0

    .line 2185
    :cond_2
    if-gez p1, :cond_3

    .line 2186
    neg-int p1, v0

    goto :goto_1

    :cond_3
    move p1, v0

    .line 2188
    goto :goto_1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1123
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method c(Z)Landroid/view/View;
    .locals 7

    .prologue
    .line 1387
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->c()I

    move-result v3

    .line 1388
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v4

    .line 1389
    const/4 v0, 0x0

    .line 1390
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_4

    .line 1391
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v1

    .line 1392
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v5

    .line 1393
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v6

    .line 1394
    if-le v6, v3, :cond_0

    if-lt v5, v4, :cond_1

    .line 1390
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 1397
    :cond_1
    if-le v6, v4, :cond_2

    if-nez p1, :cond_3

    .line 1406
    :cond_2
    :goto_2
    return-object v1

    .line 1402
    :cond_3
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1403
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1406
    goto :goto_2
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Z)V

    .line 606
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

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
    .line 1068
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public d(I)Landroid/graphics/PointF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2052
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)I

    move-result v1

    .line 2053
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2054
    if-nez v1, :cond_0

    .line 2055
    const/4 v0, 0x0

    .line 2064
    :goto_0
    return-object v0

    .line 2057
    :cond_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez v2, :cond_1

    .line 2058
    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2059
    iput v3, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 2061
    :cond_1
    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 2062
    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public e()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    .line 1232
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_0

    .line 1233
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;)V

    .line 1277
    :goto_0
    return-object v0

    .line 1235
    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    invoke-direct {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;-><init>()V

    .line 1236
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h:Z

    .line 1237
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    iput-boolean v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i:Z

    .line 1238
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    iput-boolean v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j:Z

    .line 1240
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    if-eqz v0, :cond_2

    .line 1241
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:[I

    iput-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:[I

    .line 1242
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:[I

    array-length v0, v0

    iput v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 1243
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Ljava/util/List;

    iput-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g:Ljava/util/List;

    .line 1248
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    if-lez v0, :cond_5

    .line 1249
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()I

    move-result v0

    .line 1250
    :goto_2
    iput v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:I

    .line 1251
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()I

    move-result v0

    iput v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 1252
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    iput v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 1253
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array v0, v0, [I

    iput-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:[I

    move v0, v1

    .line 1254
    :goto_3
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_6

    .line 1256
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v1, :cond_4

    .line 1257
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v1

    .line 1258
    if-eq v1, v4, :cond_1

    .line 1259
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->d()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1267
    :cond_1
    :goto_4
    iget-object v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:[I

    aput v1, v3, v0

    .line 1254
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1245
    :cond_2
    iput v1, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    goto :goto_1

    .line 1250
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p()I

    move-result v0

    goto :goto_2

    .line 1262
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v1

    .line 1263
    if-eq v1, v4, :cond_1

    .line 1264
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/k;->c()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_4

    .line 1270
    :cond_5
    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:I

    .line 1271
    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 1272
    iput v1, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    :cond_6
    move-object v0, v2

    .line 1277
    goto/16 :goto_0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 2077
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:I

    if-eq v0, p1, :cond_0

    .line 2078
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b()V

    .line 2080
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 2081
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    .line 2082
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q()V

    .line 2083
    return-void
.end method

.method f(I)V
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    div-int v0, p1, v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 929
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/k;

    .line 930
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->h()I

    move-result v0

    .line 929
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    .line 931
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 2027
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1088
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2022
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 1103
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method h()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 339
    .line 340
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 341
    new-instance v9, Ljava/util/BitSet;

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    invoke-direct {v9, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 342
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    invoke-virtual {v9, v5, v2, v3}, Ljava/util/BitSet;->set(IIZ)V

    .line 345
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 347
    :goto_0
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v4, :cond_1

    move v8, v0

    .line 354
    :goto_1
    if-ge v1, v8, :cond_2

    move v4, v3

    :goto_2
    move v7, v1

    .line 355
    :goto_3
    if-eq v7, v8, :cond_c

    .line 356
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v6

    .line 357
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 358
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v6

    .line 399
    :goto_4
    return-object v0

    :cond_0
    move v2, v0

    .line 345
    goto :goto_0

    .line 352
    :cond_1
    add-int/lit8 v4, v1, 0x1

    move v8, v4

    move v1, v5

    goto :goto_1

    :cond_2
    move v4, v0

    .line 354
    goto :goto_2

    .line 362
    :cond_3
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->clear(I)V

    .line 364
    :cond_4
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v1, :cond_6

    .line 355
    :cond_5
    add-int v0, v7, v4

    move v7, v0

    goto :goto_3

    .line 368
    :cond_6
    add-int v1, v7, v4

    if-eq v1, v8, :cond_5

    .line 369
    add-int v1, v7, v4

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v10

    .line 371
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v1, :cond_8

    .line 373
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v1

    .line 374
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v11

    .line 375
    if-ge v1, v11, :cond_7

    move-object v0, v6

    .line 376
    goto :goto_4

    .line 377
    :cond_7
    if-ne v1, v11, :cond_d

    move v1, v3

    .line 389
    :goto_5
    if-eqz v1, :cond_5

    .line 391
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 392
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    iget v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_a

    move v1, v3

    :goto_6
    if-gez v2, :cond_b

    move v0, v3

    :goto_7
    if-eq v1, v0, :cond_5

    move-object v0, v6

    .line 393
    goto :goto_4

    .line 381
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v1

    .line 382
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v11

    .line 383
    if-le v1, v11, :cond_9

    move-object v0, v6

    .line 384
    goto :goto_4

    .line 385
    :cond_9
    if-ne v1, v11, :cond_d

    move v1, v3

    .line 386
    goto :goto_5

    :cond_a
    move v1, v5

    .line 392
    goto :goto_6

    :cond_b
    move v0, v5

    goto :goto_7

    .line 399
    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    move v1, v5

    goto :goto_5
.end method

.method public i()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a()V

    .line 550
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q()V

    .line 551
    return-void
.end method

.method public j(I)V
    .locals 2

    .prologue
    .line 1486
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->j(I)V

    .line 1487
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 1488
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d(I)V

    .line 1487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1490
    :cond_0
    return-void
.end method

.method j()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 568
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1327
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v0

    .line 1329
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    .line 1328
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1329
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_1
.end method

.method public k(I)V
    .locals 2

    .prologue
    .line 1494
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->k(I)V

    .line 1495
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 1496
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d(I)V

    .line 1495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1498
    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 0

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b()Z

    .line 319
    :cond_0
    return-void
.end method

.method l()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    .line 1865
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v3

    move v0, v1

    .line 1866
    :goto_0
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_0

    .line 1867
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    .line 1871
    :cond_0
    return v1

    .line 1866
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method m()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    .line 1875
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v3

    move v0, v1

    .line 1876
    :goto_0
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v4, :cond_0

    .line 1877
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    move v1, v2

    .line 1881
    :cond_0
    return v1

    .line 1876
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method o()I
    .locals 1

    .prologue
    .line 2203
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v0

    .line 2204
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method p()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2208
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y()I

    move-result v1

    .line 2209
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method
