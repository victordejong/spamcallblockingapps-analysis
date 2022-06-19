.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$r$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# instance fields
.field private A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

.field private B:I

.field private final C:Landroid/graphics/Rect;

.field private final D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

.field private E:Z

.field private F:Z

.field private G:[I

.field private final H:Ljava/lang/Runnable;

.field a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

.field b:Landroidx/recyclerview/widget/j;

.field c:Landroidx/recyclerview/widget/j;

.field d:Z

.field e:Z

.field f:I

.field g:I

.field h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private i:I

.field private j:I

.field private k:I

.field private final l:Landroidx/recyclerview/widget/f;

.field private m:Ljava/util/BitSet;

.field private n:I

.field private o:Z

.field private z:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 244
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    const/4 v1, 0x0

    .line 129
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    .line 134
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    .line 145
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    const/high16 v0, -0x80000000

    .line 151
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    .line 157
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    .line 162
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    .line 201
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    .line 215
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    .line 245
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    .line 246
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(I)V

    .line 247
    new-instance p1, Landroidx/recyclerview/widget/f;

    invoke-direct {p1}, Landroidx/recyclerview/widget/f;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    .line 248
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 228
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    const/4 v1, 0x0

    .line 129
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    .line 134
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    .line 145
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    const/high16 v0, -0x80000000

    .line 151
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    .line 157
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    .line 162
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    .line 201
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    .line 215
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    .line 229
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$i$b;

    move-result-object p1

    .line 230
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$i$b;->a:I

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 13449
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid orientation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p3, 0x0

    .line 13451
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 13452
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-eq p2, p3, :cond_2

    .line 13455
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    .line 13456
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    .line 13457
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    iput-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    .line 13458
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    .line 13459
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    .line 231
    :cond_2
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$i$b;->b:I

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(I)V

    .line 232
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$i$b;->c:Z

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 233
    new-instance p1, Landroidx/recyclerview/widget/f;

    invoke-direct {p1}, Landroidx/recyclerview/widget/f;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    .line 234
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1549
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v6}, Ljava/util/BitSet;->set(IIZ)V

    .line 1554
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/f;->i:Z

    if-eqz v3, :cond_1

    .line 1555
    iget v3, v2, Landroidx/recyclerview/widget/f;->e:I

    if-ne v3, v6, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v3, -0x80000000

    goto :goto_0

    .line 1561
    :cond_1
    iget v3, v2, Landroidx/recyclerview/widget/f;->e:I

    if-ne v3, v6, :cond_2

    .line 1562
    iget v3, v2, Landroidx/recyclerview/widget/f;->g:I

    iget v4, v2, Landroidx/recyclerview/widget/f;->b:I

    add-int/2addr v3, v4

    goto :goto_0

    .line 1564
    :cond_2
    iget v3, v2, Landroidx/recyclerview/widget/f;->f:I

    iget v4, v2, Landroidx/recyclerview/widget/f;->b:I

    sub-int/2addr v3, v4

    .line 1568
    :goto_0
    iget v4, v2, Landroidx/recyclerview/widget/f;->e:I

    invoke-direct {v0, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(II)V

    .line 1575
    iget-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v4, :cond_3

    .line 1576
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/j;->c()I

    move-result v4

    goto :goto_1

    .line 1577
    :cond_3
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/j;->b()I

    move-result v4

    :goto_1
    const/4 v7, 0x0

    .line 1579
    :goto_2
    invoke-virtual/range {p2 .. p3}, Landroidx/recyclerview/widget/f;->a(Landroidx/recyclerview/widget/RecyclerView$s;)Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_17

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget-boolean v8, v8, Landroidx/recyclerview/widget/f;->i:Z

    if-nez v8, :cond_4

    iget-object v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 1580
    invoke-virtual {v8}, Ljava/util/BitSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17

    .line 1581
    :cond_4
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/f;->a(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;

    move-result-object v7

    .line 1582
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 26060
    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$v;->getLayoutPosition()I

    move-result v10

    .line 1584
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->c(I)I

    move-result v11

    if-ne v11, v9, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_7

    .line 1588
    iget-boolean v11, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v11, :cond_6

    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v11, v11, v5

    goto :goto_4

    :cond_6
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/f;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    move-result-object v11

    .line 1589
    :goto_4
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v13, v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$b;)V

    goto :goto_5

    .line 1597
    :cond_7
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v11, v13, v11

    .line 1600
    :goto_5
    iput-object v11, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 1601
    iget v13, v2, Landroidx/recyclerview/widget/f;->e:I

    if-ne v13, v6, :cond_8

    .line 1602
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)V

    goto :goto_6

    .line 1604
    :cond_8
    invoke-virtual {v0, v7, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;I)V

    .line 1606
    :goto_6
    invoke-direct {v0, v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;)V

    .line 1610
    iget v13, v2, Landroidx/recyclerview/widget/f;->e:I

    if-ne v13, v6, :cond_a

    .line 1611
    iget-boolean v13, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v13, :cond_9

    invoke-direct {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(I)I

    move-result v13

    goto :goto_7

    .line 1612
    :cond_9
    invoke-virtual {v11, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v13

    .line 1613
    :goto_7
    iget-object v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v14, v7}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result v14

    add-int/2addr v14, v13

    if-eqz v12, :cond_c

    .line 1614
    iget-boolean v15, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v15, :cond_c

    .line 1616
    invoke-direct {v0, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v15

    .line 1617
    iput v9, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1618
    iput v10, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1619
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v5, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    goto :goto_9

    .line 1622
    :cond_a
    iget-boolean v5, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v5, :cond_b

    invoke-direct {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(I)I

    move-result v5

    goto :goto_8

    .line 1623
    :cond_b
    invoke-virtual {v11, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v5

    :goto_8
    move v14, v5

    .line 1624
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result v5

    sub-int v13, v14, v5

    if-eqz v12, :cond_c

    .line 1625
    iget-boolean v5, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v5, :cond_c

    .line 1627
    invoke-direct {v0, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 1628
    iput v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1629
    iput v10, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1630
    iget-object v15, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v15, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1635
    :cond_c
    :goto_9
    iget-boolean v5, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v5, :cond_f

    iget v5, v2, Landroidx/recyclerview/widget/f;->d:I

    if-ne v5, v9, :cond_f

    if-nez v12, :cond_e

    .line 1640
    iget v5, v2, Landroidx/recyclerview/widget/f;->e:I

    if-ne v5, v6, :cond_d

    .line 1641
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p()Z

    move-result v5

    goto :goto_a

    .line 1643
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q()Z

    move-result v5

    :goto_a
    xor-int/2addr v5, v6

    if-eqz v5, :cond_f

    .line 1646
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1647
    invoke-virtual {v5, v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 1649
    iput-boolean v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1651
    :cond_e
    iput-boolean v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 1655
    :cond_f
    invoke-direct {v0, v7, v8, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/f;)V

    .line 1658
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()Z

    move-result v5

    if-eqz v5, :cond_11

    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v5, v6, :cond_11

    .line 1659
    iget-boolean v5, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v5, :cond_10

    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/j;->c()I

    move-result v5

    goto :goto_b

    .line 1661
    :cond_10
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    .line 1660
    invoke-virtual {v5}, Landroidx/recyclerview/widget/j;->c()I

    move-result v5

    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr v9, v6

    iget v10, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    sub-int/2addr v9, v10

    iget v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    mul-int v9, v9, v10

    sub-int/2addr v5, v9

    .line 1662
    :goto_b
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result v9

    sub-int v9, v5, v9

    goto :goto_d

    .line 1664
    :cond_11
    iget-boolean v5, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v5, :cond_12

    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/j;->b()I

    move-result v5

    goto :goto_c

    .line 1666
    :cond_12
    iget v5, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    mul-int v5, v5, v9

    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/j;->b()I

    move-result v9

    add-int/2addr v5, v9

    :goto_c
    move v9, v5

    .line 1667
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v9

    .line 1670
    :goto_d
    iget v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v10, v6, :cond_13

    .line 1671
    invoke-static {v7, v9, v13, v5, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    goto :goto_e

    .line 1673
    :cond_13
    invoke-static {v7, v13, v9, v14, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1676
    :goto_e
    iget-boolean v5, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v5, :cond_14

    .line 1677
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v5, v5, Landroidx/recyclerview/widget/f;->e:I

    invoke-direct {v0, v5, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(II)V

    goto :goto_f

    .line 1679
    :cond_14
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v5, v5, Landroidx/recyclerview/widget/f;->e:I

    invoke-direct {v0, v11, v5, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;II)V

    .line 1681
    :goto_f
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    invoke-direct {v0, v1, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/f;)V

    .line 1682
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/f;->h:Z

    if-eqz v5, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1683
    iget-boolean v5, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v5, :cond_15

    .line 1684
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    goto :goto_10

    .line 1686
    :cond_15
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v7, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/util/BitSet;->set(IZ)V

    :cond_16
    :goto_10
    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_17
    if-nez v7, :cond_18

    .line 1692
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/f;)V

    .line 1695
    :cond_18
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v1, v1, Landroidx/recyclerview/widget/f;->e:I

    if-ne v1, v9, :cond_19

    .line 1696
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/j;->b()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(I)I

    move-result v1

    .line 1697
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j;->b()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_11

    .line 1699
    :cond_19
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/j;->c()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(I)I

    move-result v1

    .line 1700
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j;->c()I

    move-result v3

    sub-int v3, v1, v3

    :goto_11
    if-lez v3, :cond_1a

    .line 1702
    iget v1, v2, Landroidx/recyclerview/widget/f;->b:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method private a(Landroidx/recyclerview/widget/f;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
    .locals 7

    .line 1954
    iget v0, p1, Landroidx/recyclerview/widget/f;->e:I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1957
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr v0, v2

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1962
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    const/4 v3, 0x1

    .line 1965
    :goto_0
    iget p1, p1, Landroidx/recyclerview/widget/f;->e:I

    const/4 v4, 0x0

    if-ne p1, v2, :cond_3

    const p1, 0x7fffffff

    .line 1968
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/j;->b()I

    move-result v2

    :goto_1
    if-eq v0, v1, :cond_2

    .line 1970
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v5, v5, v0

    .line 1971
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v6

    if-ge v6, p1, :cond_1

    move-object v4, v5

    move p1, v6

    :cond_1
    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    const/high16 p1, -0x80000000

    .line 1981
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/j;->c()I

    move-result v2

    :goto_2
    if-eq v0, v1, :cond_5

    .line 1983
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v5, v5, v0

    .line 1984
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v6

    if-le v6, p1, :cond_4

    move-object v4, v5

    move p1, v6

    :cond_4
    add-int/2addr v0, v3

    goto :goto_2

    :cond_5
    return-object v4
.end method

.method private a(I)V
    .locals 2

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 429
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-eq p1, v0, :cond_1

    .line 17548
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 17549
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    .line 431
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    .line 432
    new-instance p1, Ljava/util/BitSet;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 433
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array p1, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    const/4 p1, 0x0

    .line 434
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge p1, v0, :cond_0

    .line 435
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v1, p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    :cond_1
    return-void
.end method

.method private a(ILandroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 4

    .line 1422
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/f;->b:I

    .line 1423
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iput p1, v0, Landroidx/recyclerview/widget/f;->c:I

    .line 1426
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 25976
    iget p2, p2, Landroidx/recyclerview/widget/RecyclerView$s;->a:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 1429
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    .line 1430
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->e()I

    move-result p1

    goto :goto_1

    .line 1432
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->e()I

    move-result p1

    move p2, p1

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 p2, 0x0

    .line 1438
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1440
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j;->b()I

    move-result v3

    sub-int/2addr v3, p2

    iput v3, v0, Landroidx/recyclerview/widget/f;->f:I

    .line 1441
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->c()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p2, Landroidx/recyclerview/widget/f;->g:I

    goto :goto_3

    .line 1443
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j;->d()I

    move-result v3

    add-int/2addr v3, p1

    iput v3, v0, Landroidx/recyclerview/widget/f;->g:I

    .line 1444
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    neg-int p2, p2

    iput p2, p1, Landroidx/recyclerview/widget/f;->f:I

    .line 1446
    :goto_3
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/f;->h:Z

    .line 1447
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iput-boolean v2, p1, Landroidx/recyclerview/widget/f;->a:Z

    .line 1448
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j;->g()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    .line 1449
    invoke-virtual {p2}, Landroidx/recyclerview/widget/j;->d()I

    move-result p2

    if-nez p2, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p1, Landroidx/recyclerview/widget/f;->i:Z

    return-void
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 3

    .line 1201
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1202
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1203
    iget v0, p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(III)I

    move-result p2

    .line 1205
    iget v0, p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-static {p3, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(III)I

    move-result p3

    .line 1209
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1211
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;)V
    .locals 7

    .line 1136
    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1137
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v1, :cond_0

    .line 1138
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    .line 1140
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v3

    .line 1141
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v4

    .line 1142
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    .line 1139
    invoke-static {v3, v4, v5, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result p2

    .line 1138
    invoke-direct {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    return-void

    .line 1150
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    .line 1151
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v3

    .line 1152
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    .line 1149
    invoke-static {v0, v3, v4, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result p2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    .line 1147
    invoke-direct {p0, p1, p2, v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    return-void

    .line 1159
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v1, :cond_2

    .line 1162
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 1166
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v3

    iget v4, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    .line 1164
    invoke-static {v0, v3, v2, v4, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    .line 1171
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v3

    .line 1172
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v4

    .line 1173
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    .line 1170
    invoke-static {v3, v4, v5, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result p2

    .line 1162
    invoke-direct {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    return-void

    .line 1183
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    .line 1184
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v3

    .line 1185
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    .line 1182
    invoke-static {v0, v3, v4, v5, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 1190
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v3

    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    .line 1188
    invoke-static {v1, v3, v2, p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result p2

    .line 1180
    invoke-direct {p0, p1, v0, p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    return-void
.end method

.method private a(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/f;)V
    .locals 1

    .line 1724
    iget p3, p3, Landroidx/recyclerview/widget/f;->e:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1725
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz p3, :cond_0

    .line 1726
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(Landroid/view/View;)V

    return-void

    .line 1728
    :cond_0
    iget-object p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(Landroid/view/View;)V

    return-void

    .line 1731
    :cond_1
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz p3, :cond_2

    .line 1732
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(Landroid/view/View;)V

    return-void

    .line 1734
    :cond_2
    iget-object p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$o;I)V
    .locals 5

    .line 1881
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 1882
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1883
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/j;->b(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    .line 1884
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/j;->c(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    .line 1885
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1887
    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 1888
    :goto_1
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v2, v3, :cond_1

    .line 1889
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1893
    :cond_1
    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_4

    .line 1894
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1897
    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    return-void

    .line 1900
    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e()V

    .line 1902
    :cond_4
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$o;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    .line 1385
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 1389
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->c()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    .line 1392
    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    .line 1398
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/j;->a(I)V

    :cond_1
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/f;)V
    .locals 2

    .line 1740
    iget-boolean v0, p2, Landroidx/recyclerview/widget/f;->a:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p2, Landroidx/recyclerview/widget/f;->i:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1743
    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/f;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 1745
    iget v0, p2, Landroidx/recyclerview/widget/f;->e:I

    if-ne v0, v1, :cond_1

    .line 1746
    iget p2, p2, Landroidx/recyclerview/widget/f;->g:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$o;I)V

    return-void

    .line 1748
    :cond_1
    iget p2, p2, Landroidx/recyclerview/widget/f;->f:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;I)V

    return-void

    .line 1753
    :cond_2
    iget v0, p2, Landroidx/recyclerview/widget/f;->e:I

    if-ne v0, v1, :cond_4

    .line 1755
    iget v0, p2, Landroidx/recyclerview/widget/f;->f:I

    iget v1, p2, Landroidx/recyclerview/widget/f;->f:I

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_3

    .line 1758
    iget p2, p2, Landroidx/recyclerview/widget/f;->g:I

    goto :goto_0

    .line 1760
    :cond_3
    iget v1, p2, Landroidx/recyclerview/widget/f;->g:I

    iget p2, p2, Landroidx/recyclerview/widget/f;->b:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    .line 1762
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$o;I)V

    return-void

    .line 1765
    :cond_4
    iget v0, p2, Landroidx/recyclerview/widget/f;->g:I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(I)I

    move-result v0

    iget v1, p2, Landroidx/recyclerview/widget/f;->g:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    .line 1768
    iget p2, p2, Landroidx/recyclerview/widget/f;->f:I

    goto :goto_1

    .line 1770
    :cond_5
    iget v1, p2, Landroidx/recyclerview/widget/f;->f:I

    iget p2, p2, Landroidx/recyclerview/widget/f;->b:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v1

    .line 1772
    :goto_1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;II)V
    .locals 3

    .line 26651
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 1804
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()I

    move-result p2

    add-int/2addr p2, v0

    if-gt p2, p3, :cond_0

    .line 1806
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {p2, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    return-void

    .line 1809
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b()I

    move-result p2

    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_2

    .line 1811
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {p2, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_2
    return-void
.end method

.method private a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 476
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    .line 478
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 480
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    .line 481
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;)Z
    .locals 4

    .line 402
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b()I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j;->c()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 405
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 15655
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 407
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 409
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()I

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j;->b()I

    move-result v3

    if-le v0, v3, :cond_2

    .line 411
    iget-object p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 16655
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 413
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private static b(III)I
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return p0

    .line 1220
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 1223
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 1222
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private b(Z)Landroid/view/View;
    .locals 8

    .line 1331
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->b()I

    move-result v0

    .line 1332
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/j;->c()I

    move-result v1

    .line 1333
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 1336
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1337
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v6

    .line 1338
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/j;->b(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_2

    if-ge v6, v1, :cond_2

    if-ge v6, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_2

    move-object v3, v5

    goto :goto_2

    :cond_1
    :goto_1
    return-object v5

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private b(ILandroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 4

    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 2136
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r()I

    move-result v1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 2139
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s()I

    move-result v2

    move v1, v2

    const/4 v2, -0x1

    .line 2141
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iput-boolean v0, v3, Landroidx/recyclerview/widget/f;->a:Z

    .line 2142
    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$s;)V

    .line 2143
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)V

    .line 2144
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v0, p2, Landroidx/recyclerview/widget/f;->d:I

    add-int/2addr v1, v0

    iput v1, p2, Landroidx/recyclerview/widget/f;->c:I

    .line 2145
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p2, Landroidx/recyclerview/widget/f;->b:I

    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$o;I)V
    .locals 6

    .line 1910
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 1913
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1914
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    .line 1915
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/j;->d(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    .line 1916
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1918
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1919
    :goto_1
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v4, v5, :cond_1

    .line 1920
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1924
    :cond_1
    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v3, v4, :cond_4

    .line 1925
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1928
    :cond_2
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_3

    return-void

    .line 1931
    :cond_3
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d()V

    .line 1933
    :cond_4
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$o;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;Z)V
    .locals 2

    const v0, 0x7fffffff

    .line 1404
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 1408
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->b()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 1411
    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    .line 1417
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    neg-int p2, v1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/j;->a(I)V

    :cond_1
    return-void
.end method

.method private c(ILandroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 2

    .line 2149
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2153
    :cond_0
    invoke-direct {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$s;)V

    .line 2154
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    invoke-direct {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$s;)I

    move-result p3

    .line 2155
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v0, v0, Landroidx/recyclerview/widget/f;->b:I

    if-ge v0, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    .line 2168
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    neg-int v0, p1

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/j;->a(I)V

    .line 2170
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 2171
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iput v1, p3, Landroidx/recyclerview/widget/f;->b:I

    .line 2172
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/f;)V

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method private c(Z)Landroid/view/View;
    .locals 7

    .line 1361
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->b()I

    move-result v0

    .line 1362
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/j;->c()I

    move-result v1

    .line 1364
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_3

    .line 1365
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1366
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v5

    .line 1367
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/j;->b(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_2

    if-ge v5, v1, :cond_2

    if-le v6, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private c(III)V
    .locals 6

    .line 1505
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    :goto_1
    move v3, p1

    .line 1522
    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(I)I

    const/4 v4, 0x1

    if-eq p3, v4, :cond_5

    const/4 v5, 0x2

    if-eq p3, v5, :cond_4

    if-eq p3, v1, :cond_3

    goto :goto_3

    .line 1532
    :cond_3
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    .line 1533
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_3

    .line 1528
    :cond_4
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    goto :goto_3

    .line 1525
    :cond_5
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    :goto_3
    if-gt v2, v0, :cond_6

    return-void

    .line 1541
    :cond_6
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r()I

    move-result p1

    :goto_4
    if-gt v3, p1, :cond_8

    .line 1543
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    :cond_8
    return-void
.end method

.method private e(I)V
    .locals 1

    .line 935
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    div-int v0, p1, v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 937
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    .line 938
    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->g()I

    move-result v0

    .line 937
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    return-void
.end method

.method private e(II)V
    .locals 2

    const/4 v0, 0x0

    .line 1793
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_1

    .line 1794
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1797
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 7

    .line 1080
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1083
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1084
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1085
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    .line 1083
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/m;->a(Landroidx/recyclerview/widget/RecyclerView$s;Landroidx/recyclerview/widget/j;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;ZZ)I

    move-result p1

    return p1
.end method

.method private i(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 6

    .line 1100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1103
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1104
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1105
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    move-object v0, p1

    move-object v4, p0

    .line 1103
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/m;->a(Landroidx/recyclerview/widget/RecyclerView$s;Landroidx/recyclerview/widget/j;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;Z)I

    move-result p1

    return p1
.end method

.method private i()V
    .locals 1

    .line 257
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/RecyclerView$i;I)Landroidx/recyclerview/widget/j;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    .line 258
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    rsub-int/lit8 v0, v0, 0x1

    .line 259
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/RecyclerView$i;I)Landroidx/recyclerview/widget/j;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    return-void
.end method

.method private i(I)V
    .locals 4

    .line 1453
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iput p1, v0, Landroidx/recyclerview/widget/f;->e:I

    .line 1454
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 1455
    :goto_1
    iput v2, v0, Landroidx/recyclerview/widget/f;->d:I

    return-void
.end method

.method private j(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 6

    .line 1120
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1123
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1124
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1125
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    move-object v0, p1

    move-object v4, p0

    .line 1123
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/m;->b(Landroidx/recyclerview/widget/RecyclerView$s;Landroidx/recyclerview/widget/j;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;Z)I

    move-result p1

    return p1
.end method

.method private j()Landroid/view/View;
    .locals 12

    .line 339
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 340
    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 341
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    .line 344
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v5, -0x1

    if-ne v3, v1, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 346
    :goto_0
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_2
    if-eq v0, v6, :cond_c

    .line 355
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 356
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 357
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 358
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-direct {p0, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;)Z

    move-result v9

    if-eqz v9, :cond_3

    return-object v7

    .line 361
    :cond_3
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 363
    :cond_4
    iget-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-nez v9, :cond_b

    add-int v9, v0, v5

    if-eq v9, v6, :cond_b

    .line 368
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 370
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v10, :cond_6

    .line 372
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/j;->b(Landroid/view/View;)I

    move-result v10

    .line 373
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/j;->b(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_5

    return-object v7

    :cond_5
    if-ne v10, v11, :cond_8

    goto :goto_3

    .line 380
    :cond_6
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v10

    .line 381
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_7

    return-object v7

    :cond_7
    if-ne v10, v11, :cond_8

    :goto_3
    const/4 v10, 0x1

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_b

    .line 390
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 391
    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    if-gez v3, :cond_a

    const/4 v9, 0x1

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    :goto_6
    if-eq v8, v9, :cond_b

    return-object v7

    :cond_b
    add-int/2addr v0, v5

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method private j(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .line 1706
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1707
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v1, 0x0

    .line 1708
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_0

    .line 1709
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private k(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .line 1715
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1716
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v1, 0x0

    .line 1717
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_0

    .line 1718
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private l(I)I
    .locals 3

    .line 1817
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1818
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    .line 1819
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private m(I)I
    .locals 3

    .line 1828
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1829
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    .line 1830
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private n(I)I
    .locals 3

    .line 1859
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1860
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    .line 1861
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private n()V
    .locals 2

    .line 559
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 560
    :cond_2
    :goto_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    .line 562
    :goto_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    return-void
.end method

.method private o(I)I
    .locals 3

    .line 1870
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1871
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    .line 1872
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private o(Landroid/view/View;)V
    .locals 2

    .line 1780
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1781
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o()Z
    .locals 2

    .line 567
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private p(Landroid/view/View;)V
    .locals 2

    .line 1787
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1788
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private p()Z
    .locals 6

    .line 1839
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 1840
    :goto_0
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v4, v5, :cond_1

    .line 1841
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private p(I)Z
    .locals 4

    .line 1944
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1945
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eq p1, v0, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 1947
    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()Z

    move-result v0

    if-ne p1, v0, :cond_5

    return v2

    :cond_5
    return v3
.end method

.method private q(I)I
    .locals 3

    .line 2017
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2018
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 2020
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2021
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eq p1, v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private q()Z
    .locals 6

    .line 1849
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 1850
    :goto_0
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v4, v5, :cond_1

    .line 1851
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private r()I
    .locals 1

    .line 2177
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2178
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private s()I
    .locals 2

    .line 2182
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2183
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(ILandroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    .line 2007
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)Landroid/view/View;
    .locals 9

    .line 2258
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2262
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 2267
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()V

    const/high16 v0, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p2, v3, :cond_a

    const/4 v4, 0x2

    if-eq p2, v4, :cond_7

    const/16 v4, 0x11

    if-eq p2, v4, :cond_6

    const/16 v4, 0x21

    if-eq p2, v4, :cond_5

    const/16 v4, 0x42

    if-eq p2, v4, :cond_4

    const/16 v4, 0x82

    if-eq p2, v4, :cond_3

    :cond_2
    const/high16 p2, -0x80000000

    goto :goto_2

    .line 27387
    :cond_3
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne p2, v3, :cond_2

    goto :goto_0

    .line 27393
    :cond_4
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez p2, :cond_2

    goto :goto_0

    .line 27384
    :cond_5
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne p2, v3, :cond_2

    goto :goto_1

    .line 27390
    :cond_6
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez p2, :cond_2

    goto :goto_1

    .line 27376
    :cond_7
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne p2, v3, :cond_9

    :cond_8
    :goto_0
    const/4 p2, 0x1

    goto :goto_2

    .line 27378
    :cond_9
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_1

    .line 27368
    :cond_a
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne p2, v3, :cond_c

    :cond_b
    :goto_1
    const/4 p2, -0x1

    goto :goto_2

    .line 27370
    :cond_c
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_0

    :goto_2
    if-ne p2, v0, :cond_d

    return-object v1

    .line 2272
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2273
    iget-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    .line 2274
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    if-ne p2, v3, :cond_e

    .line 2277
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r()I

    move-result v5

    goto :goto_3

    .line 2279
    :cond_e
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s()I

    move-result v5

    .line 2281
    :goto_3
    invoke-direct {p0, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$s;)V

    .line 2282
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)V

    .line 2284
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v7, v6, Landroidx/recyclerview/widget/f;->d:I

    add-int/2addr v7, v5

    iput v7, v6, Landroidx/recyclerview/widget/f;->c:I

    .line 2285
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    const v7, 0x3eaaaaab

    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/j;->e()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v7

    float-to-int v7, v8

    iput v7, v6, Landroidx/recyclerview/widget/f;->b:I

    .line 2286
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iput-boolean v3, v6, Landroidx/recyclerview/widget/f;->h:Z

    .line 2287
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/recyclerview/widget/f;->a:Z

    .line 2288
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    invoke-direct {p0, p3, v6, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$s;)I

    .line 2289
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-nez v4, :cond_f

    .line 2291
    invoke-virtual {v0, v5, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_f

    if-eq p3, p1, :cond_f

    return-object p3

    .line 2299
    :cond_f
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 2300
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr p3, v3

    :goto_4
    if-ltz p3, :cond_13

    .line 2301
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object p4, p4, p3

    invoke-virtual {p4, v5, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_10

    if-eq p4, p1, :cond_10

    return-object p4

    :cond_10
    add-int/lit8 p3, p3, -0x1

    goto :goto_4

    :cond_11
    const/4 p3, 0x0

    .line 2307
    :goto_5
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge p3, p4, :cond_13

    .line 2308
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object p4, p4, p3

    invoke-virtual {p4, v5, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_12

    if-eq p4, p1, :cond_12

    return-object p4

    :cond_12
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 2319
    :cond_13
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    xor-int/2addr p3, v3

    if-ne p2, v2, :cond_14

    const/4 p4, 0x1

    goto :goto_6

    :cond_14
    const/4 p4, 0x0

    :goto_6
    if-ne p3, p4, :cond_15

    const/4 p3, 0x1

    goto :goto_7

    :cond_15
    const/4 p3, 0x0

    :goto_7
    if-nez v4, :cond_17

    if-eqz p3, :cond_16

    .line 2323
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f()I

    move-result p4

    goto :goto_8

    .line 2324
    :cond_16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g()I

    move-result p4

    .line 2322
    :goto_8
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_17

    if-eq p4, p1, :cond_17

    return-object p4

    .line 2330
    :cond_17
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 2331
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr p2, v3

    :goto_9
    if-ltz p2, :cond_1d

    .line 2332
    iget p4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    if-eq p2, p4, :cond_19

    if-eqz p3, :cond_18

    .line 2336
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f()I

    move-result p4

    goto :goto_a

    .line 2337
    :cond_18
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g()I

    move-result p4

    .line 2335
    :goto_a
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_19

    if-eq p4, p1, :cond_19

    return-object p4

    :cond_19
    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    .line 2343
    :cond_1a
    :goto_b
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v7, p2, :cond_1d

    if-eqz p3, :cond_1b

    .line 2345
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object p2, p2, v7

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f()I

    move-result p2

    goto :goto_c

    .line 2346
    :cond_1b
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object p2, p2, v7

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g()I

    move-result p2

    .line 2344
    :goto_c
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1c

    if-eq p2, p1, :cond_1c

    return-object p2

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_1d
    return-object v1
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 2233
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 2238
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2239
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2241
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    .line 1486
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 1487
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    return-void
.end method

.method public final a(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1481
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(III)V

    return-void
.end method

.method public final a(IILandroidx/recyclerview/widget/RecyclerView$s;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 4

    .line 2097
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 2098
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_7

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 2102
    :cond_1
    invoke-direct {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$s;)V

    .line 2105
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge p1, p2, :cond_3

    .line 2106
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:[I

    :cond_3
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 2110
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge p2, v1, :cond_6

    .line 2112
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v1, v1, Landroidx/recyclerview/widget/f;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 2113
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v1, v1, Landroidx/recyclerview/widget/f;->f:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v2, v2, p2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v3, v3, Landroidx/recyclerview/widget/f;->f:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v2

    goto :goto_2

    .line 2114
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, p2

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v2, v2, Landroidx/recyclerview/widget/f;->g:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v2, v2, Landroidx/recyclerview/widget/f;->g:I

    :goto_2
    sub-int/2addr v1, v2

    if-ltz v1, :cond_5

    .line 2117
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 2121
    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:[I

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    :goto_3
    if-ge p1, v0, :cond_7

    .line 2124
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/f;->a(Landroidx/recyclerview/widget/RecyclerView$s;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2125
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget p2, p2, Landroidx/recyclerview/widget/f;->c:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:[I

    aget v1, v1, p1

    invoke-interface {p4, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$i$a;->a(II)V

    .line 2127
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v1, p2, Landroidx/recyclerview/widget/f;->c:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v2, v2, Landroidx/recyclerview/widget/f;->d:I

    add-int/2addr v1, v2

    iput v1, p2, Landroidx/recyclerview/widget/f;->c:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public final a(Landroid/graphics/Rect;II)V
    .locals 4

    .line 586
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 587
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 588
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 589
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 590
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(III)I

    move-result p1

    .line 591
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    mul-int p3, p3, v1

    add-int/2addr p3, v0

    .line 592
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v0

    .line 591
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(III)I

    move-result p2

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 595
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(III)I

    move-result p2

    .line 596
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    mul-int p1, p1, v0

    add-int/2addr p1, v1

    .line 597
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v0

    .line 596
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(III)I

    move-result p1

    .line 599
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 2

    .line 1230
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_1

    .line 1231
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 1232
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1233
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 1234
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 1236
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1294
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1295
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 1296
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v1

    .line 1297
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1301
    :cond_0
    invoke-static {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroid/view/View;)I

    move-result v1

    .line 1302
    invoke-static {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroid/view/View;)I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1304
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1305
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    return-void

    .line 1307
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1308
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 0

    .line 734
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$s;)V

    const/4 p1, -0x1

    .line 735
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    const/high16 p1, -0x80000000

    .line 736
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    const/4 p1, 0x0

    .line 737
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 738
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 1

    .line 322
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 324
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    const/4 p2, 0x0

    .line 325
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge p2, v0, :cond_0

    .line 326
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;I)V
    .locals 0

    .line 2044
    new-instance p2, Landroidx/recyclerview/widget/g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/g;-><init>(Landroid/content/Context;)V

    .line 2045
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/g;->setTargetPosition(I)V

    .line 2046
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 527
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 528
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 2247
    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    return p1
.end method

.method public final b(ILandroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    .line 2013
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(ILandroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)I

    move-result p1

    return p1
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    .line 1116
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Landroidx/recyclerview/widget/RecyclerView$s;)I

    move-result p1

    return p1
.end method

.method public final b()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 2222
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 2223
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    .line 2226
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final b(II)V
    .locals 1

    const/4 v0, 0x2

    .line 1476
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(III)V

    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    .line 1131
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(Landroidx/recyclerview/widget/RecyclerView$s;)I

    move-result p1

    return p1
.end method

.method public final c(I)Landroid/graphics/PointF;
    .locals 3

    .line 2026
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(I)I

    move-result p1

    .line 2027
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2031
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    int-to-float p1, p1

    .line 2032
    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 2033
    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 2035
    :cond_1
    iput v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    .line 2036
    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method public final c(II)V
    .locals 1

    const/4 v0, 0x4

    .line 1498
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(III)V

    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 17619
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    .line 17620
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v5, -0x1

    if-nez v4, :cond_0

    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-eq v4, v5, :cond_1

    .line 17621
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$s;->a()I

    move-result v4

    if-nez v4, :cond_1

    .line 17622
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 17623
    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    return-void

    .line 17628
    :cond_1
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->e:Z

    if-eqz v4, :cond_3

    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    :goto_2
    const/high16 v6, -0x80000000

    if-eqz v4, :cond_22

    .line 17631
    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    .line 17632
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_9

    .line 17794
    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v7, :cond_7

    .line 17795
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ne v7, v8, :cond_6

    const/4 v7, 0x0

    .line 17796
    :goto_3
    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v7, v8, :cond_7

    .line 17797
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c()V

    .line 17798
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v8, v8, v7

    if-eq v8, v6, :cond_5

    .line 17800
    iget-object v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v9, :cond_4

    .line 17801
    iget-object v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/j;->c()I

    move-result v9

    goto :goto_4

    .line 17803
    :cond_4
    iget-object v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/j;->b()I

    move-result v9

    :goto_4
    add-int/2addr v8, v9

    .line 17806
    :cond_5
    iget-object v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v9, v9, v7

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 17809
    :cond_6
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 17810
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 17813
    :cond_7
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    .line 17814
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 17815
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()V

    .line 17817
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v7, v5, :cond_8

    .line 17818
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 17819
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    goto :goto_5

    .line 17821
    :cond_8
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 17823
    :goto_5
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    if-le v7, v1, :cond_a

    .line 17824
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    .line 17825
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    goto :goto_6

    .line 17635
    :cond_9
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n()V

    .line 17636
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 18898
    :cond_a
    :goto_6
    iget-boolean v7, p2, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    if-nez v7, :cond_1c

    .line 17857
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-ne v7, v5, :cond_b

    goto/16 :goto_f

    :cond_b
    if-ltz v7, :cond_1b

    .line 17861
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$s;->a()I

    move-result v8

    if-lt v7, v8, :cond_c

    goto/16 :goto_e

    .line 17867
    :cond_c
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_e

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v7, v5, :cond_e

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-gtz v7, :cond_d

    goto :goto_7

    .line 17928
    :cond_d
    iput v6, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    .line 17929
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iput v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    goto/16 :goto_d

    .line 17870
    :cond_e
    :goto_7
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 17874
    iget-boolean v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v8, :cond_f

    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r()I

    move-result v8

    goto :goto_8

    .line 17875
    :cond_f
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s()I

    move-result v8

    :goto_8
    iput v8, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    .line 17876
    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    if-eq v8, v6, :cond_11

    .line 17877
    iget-boolean v8, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v8, :cond_10

    .line 17878
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/j;->c()I

    move-result v8

    iget v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    sub-int/2addr v8, v9

    .line 17880
    iget-object v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/j;->b(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v8, v7

    iput v8, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_d

    .line 17882
    :cond_10
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/j;->b()I

    move-result v8

    iget v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    add-int/2addr v8, v9

    .line 17884
    iget-object v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v8, v7

    iput v8, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_d

    .line 17890
    :cond_11
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result v8

    .line 17891
    iget-object v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/j;->e()I

    move-result v9

    if-le v8, v9, :cond_13

    .line 17893
    iget-boolean v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v7, :cond_12

    .line 17894
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/j;->c()I

    move-result v7

    goto :goto_9

    .line 17895
    :cond_12
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/j;->b()I

    move-result v7

    :goto_9
    iput v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto/16 :goto_d

    .line 17899
    :cond_13
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    .line 17900
    invoke-virtual {v9}, Landroidx/recyclerview/widget/j;->b()I

    move-result v9

    sub-int/2addr v8, v9

    if-gez v8, :cond_14

    neg-int v7, v8

    .line 17902
    iput v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_d

    .line 17905
    :cond_14
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/j;->c()I

    move-result v8

    iget-object v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    .line 17906
    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/j;->b(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v8, v7

    if-gez v8, :cond_15

    .line 17908
    iput v8, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_d

    .line 17912
    :cond_15
    iput v6, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_d

    .line 17916
    :cond_16
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iput v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    .line 17917
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    if-ne v7, v6, :cond_19

    .line 17918
    iget v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(I)I

    move-result v7

    if-ne v7, v1, :cond_17

    const/4 v7, 0x1

    goto :goto_a

    :cond_17
    const/4 v7, 0x0

    .line 17920
    :goto_a
    iput-boolean v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 19270
    iget-boolean v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v7, :cond_18

    iget-object v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/j;->c()I

    move-result v7

    goto :goto_b

    .line 19271
    :cond_18
    iget-object v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/j;->b()I

    move-result v7

    :goto_b
    iput v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_c

    .line 19275
    :cond_19
    iget-boolean v8, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v8, :cond_1a

    .line 19276
    iget-object v8, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/j;->c()I

    move-result v8

    sub-int/2addr v8, v7

    iput v8, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_c

    .line 19278
    :cond_1a
    iget-object v8, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/j;->b()I

    move-result v8

    add-int/2addr v8, v7

    iput v8, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    .line 17925
    :goto_c
    iput-boolean v1, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->d:Z

    :goto_d
    const/4 v7, 0x1

    goto :goto_10

    .line 17862
    :cond_1b
    :goto_e
    iput v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 17863
    iput v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    :cond_1c
    :goto_f
    const/4 v7, 0x0

    :goto_10
    if-nez v7, :cond_21

    .line 19848
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v7, :cond_1e

    .line 19849
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$s;->a()I

    move-result v7

    .line 20209
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v1

    :goto_11
    if-ltz v8, :cond_20

    .line 20210
    invoke-virtual {p0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 20211
    invoke-static {v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroid/view/View;)I

    move-result v9

    if-ltz v9, :cond_1d

    if-ge v9, v7, :cond_1d

    goto :goto_13

    :cond_1d
    add-int/lit8 v8, v8, -0x1

    goto :goto_11

    .line 19850
    :cond_1e
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$s;->a()I

    move-result v7

    .line 21192
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_12
    if-ge v9, v8, :cond_20

    .line 21194
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 21195
    invoke-static {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroid/view/View;)I

    move-result v10

    if-ltz v10, :cond_1f

    if-ge v10, v7, :cond_1f

    move v9, v10

    goto :goto_13

    :cond_1f
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_20
    const/4 v9, 0x0

    .line 19850
    :goto_13
    iput v9, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    .line 19851
    iput v6, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    .line 17639
    :cond_21
    iput-boolean v1, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->e:Z

    .line 17641
    :cond_22
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v7, :cond_24

    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-ne v7, v5, :cond_24

    .line 17642
    iget-boolean v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    iget-boolean v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v7, v8, :cond_23

    .line 17643
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()Z

    move-result v7

    iget-boolean v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eq v7, v8, :cond_24

    .line 17644
    :cond_23
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 17645
    iput-boolean v1, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->d:Z

    .line 17649
    :cond_24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_32

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_25

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-gtz v7, :cond_32

    .line 17651
    :cond_25
    iget-boolean v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->d:Z

    if-eqz v7, :cond_27

    const/4 v4, 0x0

    .line 17652
    :goto_14
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v4, v7, :cond_32

    .line 17654
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c()V

    .line 17655
    iget v7, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    if-eq v7, v6, :cond_26

    .line 17656
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v7, v7, v4

    iget v8, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c(I)V

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_27
    if-nez v4, :cond_29

    .line 17660
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    if-nez v4, :cond_28

    goto :goto_16

    :cond_28
    const/4 v4, 0x0

    .line 17667
    :goto_15
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v4, v7, :cond_32

    .line 17668
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v7, v7, v4

    .line 17669
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c()V

    .line 17670
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_29
    :goto_16
    const/4 v4, 0x0

    .line 17661
    :goto_17
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v4, v7, :cond_2f

    .line 17662
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v7, v7, v4

    iget-boolean v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iget v9, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    if-eqz v8, :cond_2a

    .line 21590
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v10

    goto :goto_18

    .line 21592
    :cond_2a
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v10

    .line 21594
    :goto_18
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c()V

    if-eq v10, v6, :cond_2e

    if-eqz v8, :cond_2b

    .line 21598
    iget-object v11, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v11, v11, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/j;->c()I

    move-result v11

    if-lt v10, v11, :cond_2e

    :cond_2b
    if-nez v8, :cond_2c

    iget-object v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    .line 21599
    invoke-virtual {v8}, Landroidx/recyclerview/widget/j;->b()I

    move-result v8

    if-le v10, v8, :cond_2c

    goto :goto_19

    :cond_2c
    if-eq v9, v6, :cond_2d

    add-int/2addr v10, v9

    .line 21605
    :cond_2d
    iput v10, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:I

    iput v10, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    :cond_2e
    :goto_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 17665
    :cond_2f
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 22259
    array-length v8, v7

    .line 22260
    iget-object v9, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    if-eqz v9, :cond_30

    iget-object v9, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    array-length v9, v9

    if-ge v9, v8, :cond_31

    .line 22261
    :cond_30
    iget-object v9, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    array-length v9, v9

    new-array v9, v9, [I

    iput-object v9, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    :cond_31
    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v8, :cond_32

    .line 22265
    iget-object v10, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    aget-object v11, v7, v9

    invoke-virtual {v11, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v11

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 17675
    :cond_32
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 17676
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iput-boolean v0, v4, Landroidx/recyclerview/widget/f;->a:Z

    .line 17677
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 17678
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/j;->e()I

    move-result v4

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(I)V

    .line 17679
    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$s;)V

    .line 17680
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v4, :cond_33

    .line 17682
    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)V

    .line 17683
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    invoke-direct {p0, p1, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$s;)I

    .line 17685
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)V

    .line 17686
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v5, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v7, v7, Landroidx/recyclerview/widget/f;->d:I

    add-int/2addr v5, v7

    iput v5, v4, Landroidx/recyclerview/widget/f;->c:I

    .line 17687
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    invoke-direct {p0, p1, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$s;)I

    goto :goto_1b

    .line 17690
    :cond_33
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)V

    .line 17691
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    invoke-direct {p0, p1, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$s;)I

    .line 17693
    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)V

    .line 17694
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v5, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    iget v7, v7, Landroidx/recyclerview/widget/f;->d:I

    add-int/2addr v5, v7

    iput v5, v4, Landroidx/recyclerview/widget/f;->c:I

    .line 17695
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/f;

    invoke-direct {p0, p1, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$s;)I

    .line 22742
    :goto_1b
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/j;->g()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v4, v5, :cond_3b

    const/4 v4, 0x0

    .line 22746
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_1c
    if-ge v7, v5, :cond_36

    .line 22748
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 22749
    iget-object v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v10, v9, v4

    if-ltz v10, :cond_35

    .line 22753
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 23462
    iget-boolean v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-eqz v8, :cond_34

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v9, v9, v8

    .line 22755
    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v8, v8

    div-float/2addr v9, v8

    .line 22757
    :cond_34
    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 22759
    :cond_36
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 22760
    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v8, v8

    mul-float v4, v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 22761
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/j;->g()I

    move-result v8

    if-ne v8, v6, :cond_37

    .line 22762
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/j;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/j;->e()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 22764
    :cond_37
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(I)V

    .line 22765
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    if-eq v4, v7, :cond_3b

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v5, :cond_3b

    .line 22769
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 22770
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 22771
    iget-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->b:Z

    if-nez v9, :cond_3a

    .line 22774
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()Z

    move-result v9

    if-eqz v9, :cond_38

    iget v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v9, v1, :cond_38

    .line 22775
    iget v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr v9, v1

    iget-object v10, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    iget v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    mul-int v9, v9, v10

    .line 22776
    iget v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr v10, v1

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    sub-int/2addr v10, v8

    neg-int v8, v10

    mul-int v8, v8, v7

    sub-int/2addr v9, v8

    .line 22777
    invoke-virtual {v6, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1e

    .line 22779
    :cond_38
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    iget v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    mul-int v9, v9, v10

    .line 22780
    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:I

    mul-int v8, v8, v7

    .line 22781
    iget v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v10, v1, :cond_39

    sub-int/2addr v9, v8

    .line 22782
    invoke-virtual {v6, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1e

    :cond_39
    sub-int/2addr v9, v8

    .line 22784
    invoke-virtual {v6, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3a
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 17700
    :cond_3b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3d

    .line 17701
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v4, :cond_3c

    .line 17702
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;Z)V

    .line 17703
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;Z)V

    goto :goto_1f

    .line 17705
    :cond_3c
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;Z)V

    .line 17706
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;Z)V

    :cond_3d
    :goto_1f
    if-eqz v2, :cond_40

    .line 23898
    iget-boolean v2, p2, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    if-nez v2, :cond_40

    .line 17711
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v2, :cond_3f

    .line 17712
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3f

    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    if-nez v2, :cond_3e

    .line 17713
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3f

    :cond_3e
    const/4 v2, 0x1

    goto :goto_20

    :cond_3f
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_40

    .line 17715
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    .line 17716
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g()Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    goto :goto_21

    :cond_40
    const/4 v2, 0x0

    .line 24898
    :goto_21
    iget-boolean v4, p2, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    if-eqz v4, :cond_41

    .line 17722
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    .line 17724
    :cond_41
    iget-boolean v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    iput-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 17725
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz v2, :cond_42

    .line 17727
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_42
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 943
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    .line 1076
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView$s;)I

    move-result p1

    return p1
.end method

.method public final d()Landroid/os/Parcelable;
    .locals 5

    .line 1244
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1245
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;)V

    return-object v1

    .line 1247
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1248
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1249
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1250
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1252
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v1, :cond_1

    .line 1253
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1254
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1255
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    goto :goto_0

    .line 1257
    :cond_1
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1260
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    const/4 v3, -0x1

    if-lez v1, :cond_7

    .line 1261
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r()I

    move-result v1

    goto :goto_1

    .line 1262
    :cond_2
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s()I

    move-result v1

    :goto_1
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 25319
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 25320
    :cond_3
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    .line 25321
    :cond_4
    invoke-static {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroid/view/View;)I

    move-result v3

    .line 1263
    :goto_3
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1264
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1265
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 1266
    :goto_4
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v2, v1, :cond_8

    .line 1268
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_5

    .line 1269
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(I)I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 1271
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j;->c()I

    move-result v3

    goto :goto_5

    .line 1274
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a(I)I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 1276
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/j;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j;->b()I

    move-result v3

    :goto_5
    sub-int/2addr v1, v3

    .line 1279
    :cond_6
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1282
    :cond_7
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1283
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1284
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    :cond_8
    return-object v0
.end method

.method public final d(I)V
    .locals 1

    .line 2051
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, p1, :cond_0

    .line 2052
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2054
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    const/high16 p1, -0x80000000

    .line 2055
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    .line 2056
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    return-void
.end method

.method public final d(II)V
    .locals 1

    const/16 v0, 0x8

    .line 1492
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(III)V

    return-void
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    .line 1091
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView$s;)I

    move-result p1

    return p1
.end method

.method public final e()Z
    .locals 1

    .line 2001
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    .line 1096
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$s;)I

    move-result p1

    return p1
.end method

.method public final f(I)V
    .locals 2

    .line 1460
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f(I)V

    const/4 v0, 0x0

    .line 1461
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 1462
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 2

    .line 1996
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    .line 1111
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(Landroidx/recyclerview/widget/RecyclerView$s;)I

    move-result p1

    return p1
.end method

.method public final g(I)V
    .locals 2

    .line 1468
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g(I)V

    const/4 v0, 0x0

    .line 1469
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 1470
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final g()Z
    .locals 7

    .line 269
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 273
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_1

    .line 274
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r()I

    move-result v0

    .line 275
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s()I

    move-result v2

    goto :goto_0

    .line 277
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s()I

    move-result v0

    .line 278
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 281
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 283
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 13748
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->u:Z

    .line 285
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    return v3

    .line 289
    :cond_2
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    if-nez v4, :cond_3

    return v1

    .line 292
    :cond_3
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    .line 293
    :goto_1
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/2addr v2, v3

    .line 294
    invoke-virtual {v6, v0, v2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(III)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    if-nez v6, :cond_5

    .line 296
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Z

    .line 297
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    return v1

    .line 300
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/lit8 v4, v4, -0x1

    .line 301
    invoke-virtual {v1, v0, v2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(III)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-nez v0, :cond_6

    .line 304
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    goto :goto_2

    .line 306
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    .line 14748
    :goto_2
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->u:Z

    .line 309
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    return v3

    :cond_7
    :goto_3
    return v1
.end method

.method public final h(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 316
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g()Z

    :cond_0
    return-void
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    .line 253
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()V
    .locals 2

    .line 611
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    const/4 v0, 0x0

    .line 612
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 613
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
