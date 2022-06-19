.class public Lcom/a/a/a/a/c/l;
.super Ljava/lang/Object;
.source "RecyclerViewDragDropManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/a/c/l$b;,
        Lcom/a/a/a/a/c/l$d;,
        Lcom/a/a/a/a/c/l$a;,
        Lcom/a/a/a/a/c/l$e;,
        Lcom/a/a/a/a/c/l$c;
    }
.end annotation


# static fields
.field public static final a:Landroid/view/animation/Interpolator;

.field public static final b:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Landroid/view/animation/Interpolator;

.field private B:I

.field private C:Lcom/a/a/a/a/c/h;

.field private D:Lcom/a/a/a/a/c/f;

.field private E:Lcom/a/a/a/a/c/i;

.field private F:Lcom/a/a/a/a/c/g;

.field private G:Lcom/a/a/a/a/c/m;

.field private H:Landroidx/core/widget/NestedScrollView;

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:Lcom/a/a/a/a/c/j;

.field private X:Lcom/a/a/a/a/c/j;

.field private Y:Lcom/a/a/a/a/c/l$b;

.field private Z:Lcom/a/a/a/a/c/l$c;

.field private aa:Z

.field private ab:Z

.field private ac:F

.field private ad:I

.field private ae:Ljava/lang/Object;

.field private af:Lcom/a/a/a/a/c/l$e;

.field private ag:Lcom/a/a/a/a/c/l$a;

.field private final ah:Ljava/lang/Runnable;

.field c:Landroidx/recyclerview/widget/RecyclerView$w;

.field private d:Landroidx/recyclerview/widget/RecyclerView;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Lcom/a/a/a/a/c/l$d;

.field private g:Landroidx/recyclerview/widget/RecyclerView$m;

.field private h:Landroidx/recyclerview/widget/RecyclerView$n;

.field private i:Lcom/a/a/a/a/c/b;

.field private j:Landroid/graphics/drawable/NinePatchDrawable;

.field private k:F

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:J

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private final y:Landroid/graphics/Rect;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/a/a/a/a/c/c;

    invoke-direct {v0}, Lcom/a/a/a/a/c/c;-><init>()V

    sput-object v0, Lcom/a/a/a/a/c/l;->a:Landroid/view/animation/Interpolator;

    .line 65
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/a/a/a/a/c/l;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    sget-object v0, Lcom/a/a/a/a/c/l;->a:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/a/a/a/a/c/l;->e:Landroid/view/animation/Interpolator;

    const-wide/16 v0, -0x1

    .line 216
    iput-wide v0, p0, Lcom/a/a/a/a/c/l;->p:J

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/a/a/a/a/c/l;->s:Z

    .line 226
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a/c/l;->y:Landroid/graphics/Rect;

    const/16 v0, 0xc8

    .line 227
    iput v0, p0, Lcom/a/a/a/a/c/l;->z:I

    .line 228
    sget-object v0, Lcom/a/a/a/a/c/l;->b:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/a/a/a/a/c/l;->A:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lcom/a/a/a/a/c/l;->B:I

    .line 231
    new-instance v1, Lcom/a/a/a/a/c/h;

    invoke-direct {v1}, Lcom/a/a/a/a/c/h;-><init>()V

    iput-object v1, p0, Lcom/a/a/a/a/c/l;->C:Lcom/a/a/a/a/c/h;

    .line 252
    iput v0, p0, Lcom/a/a/a/a/c/l;->U:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 260
    iput v1, p0, Lcom/a/a/a/a/c/l;->ac:F

    .line 261
    iput v0, p0, Lcom/a/a/a/a/c/l;->ad:I

    .line 264
    new-instance v0, Lcom/a/a/a/a/c/l$e;

    invoke-direct {v0}, Lcom/a/a/a/a/c/l$e;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a/c/l;->af:Lcom/a/a/a/a/c/l$e;

    .line 265
    new-instance v0, Lcom/a/a/a/a/c/l$a;

    invoke-direct {v0}, Lcom/a/a/a/a/c/l$a;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a/c/l;->ag:Lcom/a/a/a/a/c/l$a;

    .line 1445
    new-instance v0, Lcom/a/a/a/a/c/l$3;

    invoke-direct {v0, p0}, Lcom/a/a/a/a/c/l$3;-><init>(Lcom/a/a/a/a/c/l;)V

    iput-object v0, p0, Lcom/a/a/a/a/c/l;->ah:Ljava/lang/Runnable;

    .line 271
    new-instance v0, Lcom/a/a/a/a/c/l$1;

    invoke-direct {v0, p0}, Lcom/a/a/a/a/c/l$1;-><init>(Lcom/a/a/a/a/c/l;)V

    iput-object v0, p0, Lcom/a/a/a/a/c/l;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 288
    new-instance v0, Lcom/a/a/a/a/c/l$2;

    invoke-direct {v0, p0}, Lcom/a/a/a/a/c/l$2;-><init>(Lcom/a/a/a/a/c/l;)V

    iput-object v0, p0, Lcom/a/a/a/a/c/l;->h:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 300
    new-instance v0, Lcom/a/a/a/a/c/l$d;

    invoke-direct {v0, p0}, Lcom/a/a/a/a/c/l$d;-><init>(Lcom/a/a/a/a/c/l;)V

    iput-object v0, p0, Lcom/a/a/a/a/c/l;->f:Lcom/a/a/a/a/c/l$d;

    .line 302
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/a/a/a/a/c/l;->t:I

    return-void
.end method

.method private static a(Landroid/view/View;)Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 1455
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 1457
    instance-of v0, p0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    .line 1458
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    return-object p0

    .line 1460
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/a/a/a/a/c/l$a;)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 2

    .line 1801
    iget-object v0, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/a/a/a/a/c/l$a;->d:I

    int-to-float v1, v1

    iget p0, p0, Lcom/a/a/a/a/c/l$a;->e:I

    int-to-float p0, p0

    invoke-static {v0, v1, p0}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/a/a/a/a/c/l$a;Z)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1753
    :cond_0
    invoke-static {p0}, Lcom/a/a/a/a/c/l;->a(Lcom/a/a/a/a/c/l$a;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1756
    invoke-static {p0}, Lcom/a/a/a/a/c/l;->b(Lcom/a/a/a/a/c/l$a;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private a(Lcom/a/a/a/a/a/a;Lcom/a/a/a/a/c/j;)Lcom/a/a/a/a/c/j;
    .locals 3

    .line 2093
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    .line 2095
    iget-object v1, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {p2}, Lcom/a/a/a/a/c/j;->a()I

    move-result v2

    invoke-static {p1, v1, v0, v2}, Lcom/a/a/a/a/d/c;->a(Lcom/a/a/a/a/a/a;Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;I)I

    move-result v1

    .line 2096
    iget-object v2, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {p2}, Lcom/a/a/a/a/c/j;->b()I

    move-result p2

    invoke-static {p1, v2, v0, p2}, Lcom/a/a/a/a/d/c;->a(Lcom/a/a/a/a/a/a;Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;I)I

    move-result p1

    .line 2098
    new-instance p2, Lcom/a/a/a/a/c/j;

    invoke-direct {p2, v1, p1}, Lcom/a/a/a/a/c/j;-><init>(II)V

    return-object p2
.end method

.method private a(Lcom/a/a/a/a/c/l$e;Lcom/a/a/a/a/c/l$a;Z)Lcom/a/a/a/a/c/l$e;
    .locals 8

    .line 1701
    invoke-virtual {p1}, Lcom/a/a/a/a/c/l$e;->a()V

    .line 1703
    iget-object v0, p2, Lcom/a/a/a/a/c/l$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/a/a/a/a/c/l$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 1704
    invoke-direct {p0, v0}, Lcom/a/a/a/a/c/l;->c(Landroidx/recyclerview/widget/RecyclerView$w;)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p2, Lcom/a/a/a/a/c/l$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 1705
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v4

    iget-object v0, p2, Lcom/a/a/a/a/c/l$a;->b:Lcom/a/a/a/a/c/i;

    iget-wide v6, v0, Lcom/a/a/a/a/c/i;->c:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 1707
    :cond_0
    iget v0, p2, Lcom/a/a/a/a/c/l$a;->j:I

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    :cond_1
    move-object p3, v3

    goto :goto_0

    .line 1714
    :cond_2
    invoke-static {p2, p3}, Lcom/a/a/a/a/c/l;->b(Lcom/a/a/a/a/c/l$a;Z)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p3

    goto :goto_0

    .line 1710
    :cond_3
    invoke-static {p2, p3}, Lcom/a/a/a/a/c/l;->a(Lcom/a/a/a/a/c/l$a;Z)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p3

    goto :goto_0

    .line 1718
    :cond_4
    invoke-static {p2, p3}, Lcom/a/a/a/a/c/l;->c(Lcom/a/a/a/a/c/l$a;Z)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p3

    .line 1725
    :goto_0
    iget-object v0, p2, Lcom/a/a/a/a/c/l$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    if-ne p3, v0, :cond_5

    .line 1727
    iput-boolean v2, p1, Lcom/a/a/a/a/c/l$e;->c:Z

    move-object p3, v3

    .line 1730
    :cond_5
    invoke-direct {p0, p3}, Lcom/a/a/a/a/c/l;->c(Landroidx/recyclerview/widget/RecyclerView$w;)I

    move-result v0

    if-eqz p3, :cond_6

    .line 1733
    iget-object v2, p2, Lcom/a/a/a/a/c/l$a;->l:Lcom/a/a/a/a/c/j;

    if-eqz v2, :cond_6

    .line 1734
    iget-object p2, p2, Lcom/a/a/a/a/c/l$a;->l:Lcom/a/a/a/a/c/j;

    invoke-virtual {p2, v0}, Lcom/a/a/a/a/c/j;->a(I)Z

    move-result p2

    if-nez p2, :cond_6

    move-object p3, v3

    .line 1739
    :cond_6
    iput-object p3, p1, Lcom/a/a/a/a/c/l$e;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz p3, :cond_7

    goto :goto_1

    :cond_7
    move v0, v1

    .line 1740
    :goto_1
    iput v0, p1, Lcom/a/a/a/a/c/l$e;->b:I

    return-object p1
.end method

.method private static a(Landroid/view/View;Z)Ljava/lang/Integer;
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1652
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v5, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1525
    iget-object v0, v3, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    iget-object v1, v7, Lcom/a/a/a/a/c/l;->y:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/a/a/a/a/d/a;->a(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1527
    invoke-direct {v7, v3}, Lcom/a/a/a/a/c/l;->c(Landroidx/recyclerview/widget/RecyclerView$w;)I

    move-result v6

    sub-int v0, v5, v6

    .line 1528
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v5, v1, :cond_9

    if-ne v6, v1, :cond_0

    goto/16 :goto_4

    .line 1535
    :cond_0
    iget-object v1, v7, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {v1, v5}, Lcom/a/a/a/a/c/f;->getItemId(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/a/a/a/a/a/d;->a(J)J

    move-result-wide v8

    .line 1536
    iget-object v1, v7, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    iget-wide v10, v1, Lcom/a/a/a/a/c/i;->c:J

    invoke-static {v10, v11}, Lcom/a/a/a/a/a/d;->a(J)J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-eqz v1, :cond_1

    return-void

    .line 1544
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v1

    invoke-static {v1}, Lcom/a/a/a/a/d/a;->b(I)Z

    move-result v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    .line 1545
    iget-boolean v1, v7, Lcom/a/a/a/a/c/l;->u:Z

    if-nez v1, :cond_2

    move v1, v9

    goto :goto_0

    :cond_2
    move v1, v8

    :goto_0
    if-nez v0, :cond_3

    goto/16 :goto_3

    :cond_3
    if-ne v0, v9, :cond_7

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 1550
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 1551
    iget-object v1, v3, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 1552
    iget-object v10, v7, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    iget-object v10, v10, Lcom/a/a/a/a/c/i;->h:Landroid/graphics/Rect;

    .line 1556
    iget-boolean v11, v7, Lcom/a/a/a/a/c/l;->aa:Z

    const/high16 v12, 0x3f000000    # 0.5f

    if-eqz v11, :cond_5

    .line 1557
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    iget v13, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v13

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v13

    iget v14, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1558
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v13

    iget v14, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v14

    iget v15, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v14, v11

    sub-int/2addr v13, v11

    int-to-float v11, v13

    mul-float/2addr v11, v12

    add-float/2addr v14, v11

    .line 1561
    invoke-direct/range {p0 .. p0}, Lcom/a/a/a/a/c/l;->i()I

    move-result v11

    iget-object v13, v7, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    iget v13, v13, Lcom/a/a/a/a/c/i;->f:I

    sub-int/2addr v11, v13

    int-to-float v11, v11

    iget-object v13, v7, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    iget v13, v13, Lcom/a/a/a/a/c/i;->a:I

    int-to-float v13, v13

    mul-float/2addr v13, v12

    add-float/2addr v11, v13

    if-ge v6, v5, :cond_4

    cmpg-float v11, v11, v14

    if-gez v11, :cond_5

    goto :goto_1

    :cond_4
    cmpl-float v11, v11, v14

    if-lez v11, :cond_5

    :goto_1
    move v8, v9

    :cond_5
    if-nez v8, :cond_8

    .line 1576
    iget-boolean v11, v7, Lcom/a/a/a/a/c/l;->ab:Z

    if-eqz v11, :cond_8

    .line 1577
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    iget v13, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v13

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v13

    iget v14, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1578
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v1, v11

    sub-int/2addr v0, v11

    int-to-float v0, v0

    mul-float/2addr v0, v12

    add-float/2addr v1, v0

    .line 1581
    invoke-direct/range {p0 .. p0}, Lcom/a/a/a/a/c/l;->j()I

    move-result v0

    iget-object v10, v7, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    iget v10, v10, Lcom/a/a/a/a/c/i;->g:I

    sub-int/2addr v0, v10

    int-to-float v0, v0

    iget-object v10, v7, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    iget v10, v10, Lcom/a/a/a/a/c/i;->b:I

    int-to-float v10, v10

    mul-float/2addr v10, v12

    add-float/2addr v0, v10

    if-ge v6, v5, :cond_6

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    goto :goto_2

    :cond_6
    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    :cond_7
    :goto_2
    move v8, v9

    :cond_8
    :goto_3
    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v5, p2

    .line 1600
    invoke-direct/range {v0 .. v6}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;Landroid/graphics/Rect;II)V

    :cond_9
    :goto_4
    return-void
.end method

.method private static a(Landroidx/recyclerview/widget/RecyclerView;IZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1645
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 1647
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :goto_0
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;Landroidx/recyclerview/widget/RecyclerView$w;Lcom/a/a/a/a/c/j;Lcom/a/a/a/a/a/a;ILjava/lang/Object;)V
    .locals 6

    .line 722
    invoke-static {p1, p3}, Lcom/a/a/a/a/c/l;->b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 724
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->Y:Lcom/a/a/a/a/c/l$b;

    invoke-virtual {v0}, Lcom/a/a/a/a/c/l$b;->a()V

    .line 726
    new-instance v0, Lcom/a/a/a/a/c/i;

    iget v1, p0, Lcom/a/a/a/a/c/l;->K:I

    iget v2, p0, Lcom/a/a/a/a/c/l;->L:I

    invoke-direct {v0, p1, p3, v1, v2}, Lcom/a/a/a/a/c/i;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;II)V

    iput-object v0, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    .line 727
    iput-object p3, p0, Lcom/a/a/a/a/c/l;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 734
    iput-object p4, p0, Lcom/a/a/a/a/c/l;->W:Lcom/a/a/a/a/c/j;

    .line 735
    iget-object p4, p0, Lcom/a/a/a/a/c/l;->W:Lcom/a/a/a/a/c/j;

    invoke-direct {p0, p5, p4}, Lcom/a/a/a/a/c/l;->a(Lcom/a/a/a/a/a/a;Lcom/a/a/a/a/c/j;)Lcom/a/a/a/a/c/j;

    move-result-object p4

    iput-object p4, p0, Lcom/a/a/a/a/c/l;->X:Lcom/a/a/a/a/c/j;

    .line 737
    iget-object p4, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p4}, Lcom/a/a/a/a/c/l;->a(Landroid/view/View;)Landroidx/core/widget/NestedScrollView;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 738
    iget-object p5, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView;->isNestedScrollingEnabled()Z

    move-result p5

    if-nez p5, :cond_0

    .line 739
    iput-object p4, p0, Lcom/a/a/a/a/c/l;->H:Landroidx/core/widget/NestedScrollView;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 741
    iput-object p4, p0, Lcom/a/a/a/a/c/l;->H:Landroidx/core/widget/NestedScrollView;

    .line 744
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result p4

    iput p4, p0, Lcom/a/a/a/a/c/l;->V:I

    const/4 p4, 0x2

    .line 745
    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 747
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/high16 p4, 0x3f000000    # 0.5f

    add-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p0, Lcom/a/a/a/a/c/l;->K:I

    .line 748
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p0, Lcom/a/a/a/a/c/l;->L:I

    .line 750
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->H:Landroidx/core/widget/NestedScrollView;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    iput p1, p0, Lcom/a/a/a/a/c/l;->I:I

    .line 751
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->H:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p1

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    iput p1, p0, Lcom/a/a/a/a/c/l;->J:I

    .line 754
    iget p1, p0, Lcom/a/a/a/a/c/l;->L:I

    iput p1, p0, Lcom/a/a/a/a/c/l;->R:I

    iput p1, p0, Lcom/a/a/a/a/c/l;->P:I

    iput p1, p0, Lcom/a/a/a/a/c/l;->N:I

    .line 755
    iget p1, p0, Lcom/a/a/a/a/c/l;->K:I

    iput p1, p0, Lcom/a/a/a/a/c/l;->Q:I

    iput p1, p0, Lcom/a/a/a/a/c/l;->O:I

    iput p1, p0, Lcom/a/a/a/a/c/l;->M:I

    .line 756
    iput p2, p0, Lcom/a/a/a/a/c/l;->U:I

    .line 757
    iget p1, p0, Lcom/a/a/a/a/c/l;->B:I

    iput p1, p0, Lcom/a/a/a/a/c/l;->ad:I

    .line 758
    iput-object p7, p0, Lcom/a/a/a/a/c/l;->ae:Ljava/lang/Object;

    .line 760
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p4, 0x1

    invoke-interface {p1, p4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 762
    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->l()V

    .line 764
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    iget-object v1, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    iget-object v3, p0, Lcom/a/a/a/a/c/l;->W:Lcom/a/a/a/a/c/j;

    iget v5, p0, Lcom/a/a/a/a/c/l;->ad:I

    move-object v2, p3

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/a/a/c/f;->a(Lcom/a/a/a/a/c/i;Landroidx/recyclerview/widget/RecyclerView$w;Lcom/a/a/a/a/c/j;II)V

    .line 767
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {p1, p3, p6}, Lcom/a/a/a/a/c/f;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V

    .line 769
    new-instance p1, Lcom/a/a/a/a/c/g;

    iget-object p4, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p5, p0, Lcom/a/a/a/a/c/l;->X:Lcom/a/a/a/a/c/j;

    invoke-direct {p1, p4, p3, p5}, Lcom/a/a/a/a/c/g;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;Lcom/a/a/a/a/c/j;)V

    iput-object p1, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    .line 770
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    iget-object p4, p0, Lcom/a/a/a/a/c/l;->j:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1, p4}, Lcom/a/a/a/a/c/g;->a(Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 771
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    iget-object p4, p0, Lcom/a/a/a/a/c/l;->C:Lcom/a/a/a/a/c/h;

    invoke-virtual {p1, p4}, Lcom/a/a/a/a/c/g;->a(Lcom/a/a/a/a/c/h;)V

    .line 772
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    iget-object p4, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    iget p5, p0, Lcom/a/a/a/a/c/l;->K:I

    iget p6, p0, Lcom/a/a/a/a/c/l;->L:I

    invoke-virtual {p1, p4, p5, p6}, Lcom/a/a/a/a/c/g;->a(Lcom/a/a/a/a/c/i;II)V

    .line 774
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    .line 776
    iget-boolean p4, p0, Lcom/a/a/a/a/c/l;->u:Z

    if-nez p4, :cond_3

    invoke-static {p1}, Lcom/a/a/a/a/d/a;->b(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 777
    new-instance p1, Lcom/a/a/a/a/c/m;

    iget-object p4, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p5, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    invoke-direct {p1, p4, p3, p5}, Lcom/a/a/a/a/c/m;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;Lcom/a/a/a/a/c/i;)V

    iput-object p1, p0, Lcom/a/a/a/a/c/l;->G:Lcom/a/a/a/a/c/m;

    .line 778
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->G:Lcom/a/a/a/a/c/m;

    iget-object p3, p0, Lcom/a/a/a/a/c/l;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Lcom/a/a/a/a/c/m;->b(Landroid/view/animation/Interpolator;)V

    .line 779
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->G:Lcom/a/a/a/a/c/m;

    invoke-virtual {p1}, Lcom/a/a/a/a/c/m;->a()V

    .line 780
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->G:Lcom/a/a/a/a/c/m;

    iget-object p3, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    invoke-virtual {p3}, Lcom/a/a/a/a/c/g;->b()I

    move-result p3

    iget-object p4, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    invoke-virtual {p4}, Lcom/a/a/a/a/c/g;->a()I

    move-result p4

    invoke-virtual {p1, p3, p4}, Lcom/a/a/a/a/c/m;->a(II)V

    .line 783
    :cond_3
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->i:Lcom/a/a/a/a/c/b;

    if-eqz p1, :cond_4

    .line 784
    invoke-virtual {p1}, Lcom/a/a/a/a/c/b;->c()V

    .line 788
    :cond_4
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {p1}, Lcom/a/a/a/a/c/f;->d()V

    .line 790
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->Z:Lcom/a/a/a/a/c/l$c;

    if-eqz p1, :cond_5

    .line 791
    iget-object p3, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {p3}, Lcom/a/a/a/a/c/f;->f()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/a/a/a/a/c/l$c;->a(I)V

    .line 792
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->Z:Lcom/a/a/a/a/c/l$c;

    invoke-interface {p1, p2, p2}, Lcom/a/a/a/a/c/l$c;->b(II)V

    :cond_5
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;Landroid/graphics/Rect;II)V
    .locals 8

    .line 1609
    iget-object p4, p0, Lcom/a/a/a/a/c/l;->Z:Lcom/a/a/a/a/c/l$c;

    if-eqz p4, :cond_0

    .line 1610
    invoke-interface {p4, p5, p6}, Lcom/a/a/a/a/c/l$c;->a(II)V

    .line 1613
    :cond_0
    iget-object p4, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p4

    .line 1614
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    .line 1615
    invoke-static {v0}, Lcom/a/a/a/a/d/a;->a(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 1616
    :goto_0
    iget-object v1, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v2}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;Z)I

    move-result v1

    if-eqz p2, :cond_2

    .line 1617
    iget-object v2, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1618
    :goto_1
    iget-object v4, p3, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 1619
    invoke-static {p4, v1}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView$i;I)Landroid/view/View;

    move-result-object v5

    if-eqz p2, :cond_3

    .line 1620
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result p2

    goto :goto_2

    :cond_3
    const/4 p2, -0x1

    .line 1621
    :goto_2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result p3

    .line 1622
    invoke-static {v2, v3}, Lcom/a/a/a/a/c/l;->a(Landroid/view/View;Z)Ljava/lang/Integer;

    move-result-object v6

    .line 1623
    invoke-static {v4, v3}, Lcom/a/a/a/a/c/l;->a(Landroid/view/View;Z)Ljava/lang/Integer;

    move-result-object v4

    .line 1624
    invoke-static {v5, v3}, Lcom/a/a/a/a/c/l;->a(Landroid/view/View;Z)Ljava/lang/Integer;

    move-result-object v5

    .line 1628
    iget-object v7, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {v7, p5, p6, v0}, Lcom/a/a/a/a/c/f;->b(III)V

    if-ne v1, p2, :cond_4

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 1631
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr p2, p3

    neg-int p2, p2

    invoke-static {p1, p2, v3}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView;IZ)V

    .line 1632
    invoke-static {p1}, Lcom/a/a/a/a/c/l;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_4

    :cond_4
    if-ne v1, p3, :cond_6

    if-eqz v2, :cond_6

    if-eqz v6, :cond_6

    .line 1633
    invoke-virtual {v6, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1634
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_5

    .line 1636
    invoke-virtual {p4, v2}, Landroidx/recyclerview/widget/RecyclerView$i;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p3

    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p4

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_3

    .line 1637
    :cond_5
    invoke-virtual {p4, v2}, Landroidx/recyclerview/widget/RecyclerView$i;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p3

    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, p4

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_3
    add-int/2addr p3, p2

    neg-int p2, p3

    .line 1638
    invoke-static {p1, p2, v3}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView;IZ)V

    .line 1639
    invoke-static {p1}, Lcom/a/a/a/a/c/l;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 7

    .line 1233
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->H:Landroidx/core/widget/NestedScrollView;

    .line 1235
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v1

    .line 1236
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 1238
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1240
    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->i()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1241
    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->j()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1243
    iget-object v4, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v0, v3}, Lcom/a/a/a/a/c/l;->a(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)Z

    .line 1245
    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v1

    .line 1246
    iget v1, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-eqz p2, :cond_0

    .line 1248
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v2, v2

    div-float/2addr v3, v2

    if-eqz p2, :cond_1

    move v1, v4

    :cond_1
    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    .line 1254
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    sub-float v3, v2, v3

    sub-float/2addr v5, v3

    .line 1255
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const v4, 0x40555555

    mul-float/2addr v3, v4

    .line 1256
    iget v4, p0, Lcom/a/a/a/a/c/l;->U:I

    .line 1258
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v5, 0x41c80000    # 25.0f

    iget v6, p0, Lcom/a/a/a/a/c/l;->ac:F

    mul-float/2addr v6, v5

    iget v5, p0, Lcom/a/a/a/a/c/l;->k:F

    mul-float/2addr v6, v5

    mul-float/2addr v6, v3

    add-float/2addr v6, v2

    float-to-int v2, v6

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_3

    if-eqz p2, :cond_2

    const/16 v3, 0x8

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    and-int/2addr v3, v4

    if-nez v3, :cond_5

    :goto_2
    move v1, v2

    goto :goto_4

    :cond_3
    if-gez v1, :cond_5

    if-eqz p2, :cond_4

    const/4 v3, 0x4

    goto :goto_3

    :cond_4
    const/4 v3, 0x1

    :goto_3
    and-int/2addr v3, v4

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_4
    if-eqz v1, :cond_7

    .line 1273
    invoke-direct {p0, p1}, Lcom/a/a/a/a/c/l;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz p2, :cond_6

    .line 1276
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_5

    .line 1278
    :cond_6
    invoke-virtual {v0, v2, v1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    .line 1282
    :cond_7
    :goto_5
    iget-object p2, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->i()I

    move-result v0

    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->j()I

    move-result v1

    invoke-virtual {p2, v0, v1, v2}, Lcom/a/a/a/a/c/g;->a(IIZ)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1285
    iget-object p2, p0, Lcom/a/a/a/a/c/l;->G:Lcom/a/a/a/a/c/m;

    if-eqz p2, :cond_8

    .line 1286
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    invoke-virtual {v0}, Lcom/a/a/a/a/c/g;->b()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    invoke-virtual {v1}, Lcom/a/a/a/a/c/g;->a()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/a/a/a/a/c/m;->a(II)V

    .line 1290
    :cond_8
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/c/l;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1292
    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->k()V

    :cond_9
    return-void
.end method

.method private a(Lcom/a/a/a/a/c/j;I)V
    .locals 4

    .line 1048
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {v0}, Lcom/a/a/a/a/c/f;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1050
    invoke-virtual {p1}, Lcom/a/a/a/a/c/j;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/a/a/a/a/c/j;->b()I

    move-result v2

    const-string v3, ")"

    if-gt v1, v2, :cond_3

    .line 1054
    invoke-virtual {p1}, Lcom/a/a/a/a/c/j;->a()I

    move-result v1

    if-ltz v1, :cond_2

    .line 1058
    invoke-virtual {p1}, Lcom/a/a/a/a/c/j;->b()I

    move-result v1

    if-gt v1, v0, :cond_1

    .line 1062
    invoke-virtual {p1, p2}, Lcom/a/a/a/a/c/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1063
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid wrappedAdapterRange specified --- does not contain drag target item (wrappedAdapterRange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", position = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid wrappedAdapterRange specified --- end >= count (wrappedAdapterRange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1055
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid wrappedAdapterRange specified --- start < 0 (wrappedAdapterRange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1051
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid wrappedAdapterRange specified --- start > wrappedAdapterRange (wrappedAdapterRange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(IZ)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 929
    :goto_0
    invoke-virtual {p0}, Lcom/a/a/a/a/c/l;->b()Z

    move-result p1

    .line 931
    iget-object v2, p0, Lcom/a/a/a/a/c/l;->Y:Lcom/a/a/a/a/c/l$b;

    if-eqz v2, :cond_1

    .line 932
    invoke-virtual {v2}, Lcom/a/a/a/a/c/l$b;->a()V

    .line 935
    :cond_1
    iput v1, p0, Lcom/a/a/a/a/c/l;->n:I

    .line 936
    iput v1, p0, Lcom/a/a/a/a/c/l;->o:I

    .line 937
    iput v1, p0, Lcom/a/a/a/a/c/l;->K:I

    .line 938
    iput v1, p0, Lcom/a/a/a/a/c/l;->L:I

    .line 939
    iput v1, p0, Lcom/a/a/a/a/c/l;->M:I

    .line 940
    iput v1, p0, Lcom/a/a/a/a/c/l;->N:I

    .line 941
    iput v1, p0, Lcom/a/a/a/a/c/l;->O:I

    .line 942
    iput v1, p0, Lcom/a/a/a/a/c/l;->P:I

    .line 943
    iput v1, p0, Lcom/a/a/a/a/c/l;->Q:I

    .line 944
    iput v1, p0, Lcom/a/a/a/a/c/l;->R:I

    .line 945
    iput v1, p0, Lcom/a/a/a/a/c/l;->S:I

    .line 946
    iput v1, p0, Lcom/a/a/a/a/c/l;->T:I

    const-wide/16 v2, -0x1

    .line 947
    iput-wide v2, p0, Lcom/a/a/a/a/c/l;->p:J

    .line 948
    iput-boolean v1, p0, Lcom/a/a/a/a/c/l;->aa:Z

    .line 949
    iput-boolean v1, p0, Lcom/a/a/a/a/c/l;->ab:Z

    if-eqz p2, :cond_2

    .line 951
    invoke-virtual {p0}, Lcom/a/a/a/a/c/l;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 956
    invoke-direct {p0, v0}, Lcom/a/a/a/a/c/l;->g(Z)V

    :cond_2
    return p1
.end method

.method private static a(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 2

    .line 1471
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1473
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1477
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1479
    move-object p0, v0

    check-cast p0, Landroid/view/View;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$w;II)Z
    .locals 7

    .line 1025
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getAdapterPosition()I

    move-result v0

    .line 1026
    iget-object v1, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/a/a/a/a/d/c;->a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v2

    .line 1032
    :cond_0
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 1033
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 1034
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v6

    add-float/2addr v6, v5

    float-to-int v5, v6

    .line 1035
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v6, v4

    sub-int/2addr p2, v6

    .line 1036
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v5

    sub-int/2addr p3, v3

    .line 1038
    iget-object v3, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {v3, p1, v1, p2, p3}, Lcom/a/a/a/a/c/f;->a(Landroidx/recyclerview/widget/RecyclerView$w;III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1040
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getAdapterPosition()I

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;Z)Z
    .locals 12

    .line 971
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 975
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 976
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 978
    iput v0, p0, Lcom/a/a/a/a/c/l;->K:I

    .line 979
    iput v2, p0, Lcom/a/a/a/a/c/l;->L:I

    .line 981
    iget-wide v3, p0, Lcom/a/a/a/a/c/l;->p:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_4

    .line 986
    iget-boolean p3, p0, Lcom/a/a/a/a/c/l;->aa:Z

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/a/a/a/a/c/l;->n:I

    sub-int p3, v0, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v3, p0, Lcom/a/a/a/a/c/l;->l:I

    if-gt p3, v3, :cond_4

    :cond_2
    iget-boolean p3, p0, Lcom/a/a/a/a/c/l;->ab:Z

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/a/a/a/a/c/l;->o:I

    sub-int p3, v2, p3

    .line 987
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v3, p0, Lcom/a/a/a/a/c/l;->l:I

    if-gt p3, v3, :cond_4

    :cond_3
    return v1

    .line 992
    :cond_4
    iget p3, p0, Lcom/a/a/a/a/c/l;->n:I

    int-to-float p3, p3

    iget v3, p0, Lcom/a/a/a/a/c/l;->o:I

    int-to-float v3, v3

    invoke-static {p1, p3, v3}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v7

    if-nez v7, :cond_5

    return v1

    .line 998
    :cond_5
    invoke-direct {p0, v7, v0, v2}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView$w;II)Z

    move-result p3

    if-nez p3, :cond_6

    return v1

    .line 1002
    :cond_6
    iget-object p3, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p3

    .line 1003
    new-instance v9, Lcom/a/a/a/a/a/a;

    invoke-direct {v9}, Lcom/a/a/a/a/a/a;-><init>()V

    .line 1005
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    const/4 v2, 0x0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$w;->getAdapterPosition()I

    move-result v3

    invoke-static {p3, v0, v2, v3, v9}, Lcom/a/a/a/a/d/c;->a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;ILcom/a/a/a/a/a/a;)I

    move-result v10

    .line 1006
    iget-object p3, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {p3, v7, v10}, Lcom/a/a/a/a/c/f;->e(Landroidx/recyclerview/widget/RecyclerView$w;I)Lcom/a/a/a/a/c/j;

    move-result-object p3

    const/4 v0, 0x1

    if-nez p3, :cond_7

    .line 1009
    new-instance p3, Lcom/a/a/a/a/c/j;

    iget-object v2, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {v2}, Lcom/a/a/a/a/c/f;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {p3, v1, v2}, Lcom/a/a/a/a/c/j;-><init>(II)V

    :cond_7
    move-object v8, p3

    .line 1012
    invoke-direct {p0, v8, v10}, Lcom/a/a/a/a/c/l;->a(Lcom/a/a/a/a/c/j;I)V

    .line 1019
    invoke-virtual {v9}, Lcom/a/a/a/a/a/a;->c()Lcom/a/a/a/a/a/b;

    move-result-object p3

    iget-object v11, p3, Lcom/a/a/a/a/a/b;->b:Ljava/lang/Object;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v11}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;Landroidx/recyclerview/widget/RecyclerView$w;Lcom/a/a/a/a/c/j;Lcom/a/a/a/a/a/a;ILjava/lang/Object;)V

    return v0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 1

    .line 1658
    instance-of p1, p2, Lcom/a/a/a/a/c/e;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1662
    :cond_0
    invoke-direct {p0, p2}, Lcom/a/a/a/a/c/l;->c(Landroidx/recyclerview/widget/RecyclerView$w;)I

    move-result p1

    .line 1663
    iget-object p2, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    if-ltz p1, :cond_2

    .line 1667
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p2

    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private static b(Lcom/a/a/a/a/c/l$a;)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 12

    .line 1806
    iget-object v0, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/a/a/a/a/d/a;->d(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    .line 1807
    iget-object v1, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    .line 1808
    iget-object v2, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    .line 1809
    iget-boolean v3, p0, Lcom/a/a/a/a/c/l$a;->k:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 1810
    :goto_0
    iget-boolean v5, p0, Lcom/a/a/a/a/c/l$a;->k:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v4

    .line 1811
    :goto_1
    iget-boolean v6, p0, Lcom/a/a/a/a/c/l$a;->k:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v4

    .line 1812
    :goto_2
    iget-boolean v7, p0, Lcom/a/a/a/a/c/l$a;->k:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    goto :goto_3

    :cond_3
    move v7, v4

    :goto_3
    sub-int/2addr v2, v3

    sub-int/2addr v2, v6

    .line 1813
    div-int/2addr v2, v0

    sub-int/2addr v1, v5

    sub-int/2addr v1, v7

    .line 1814
    div-int/2addr v1, v0

    .line 1816
    iget v6, p0, Lcom/a/a/a/a/c/l$a;->d:I

    .line 1817
    iget v7, p0, Lcom/a/a/a/a/c/l$a;->e:I

    .line 1819
    iget-object v8, p0, Lcom/a/a/a/a/c/l$a;->m:Lcom/a/a/a/a/c/j;

    invoke-virtual {v8}, Lcom/a/a/a/a/c/j;->a()I

    move-result v8

    .line 1820
    iget-object v9, p0, Lcom/a/a/a/a/c/l$a;->m:Lcom/a/a/a/a/c/j;

    invoke-virtual {v9}, Lcom/a/a/a/a/c/j;->b()I

    move-result v9

    .line 1821
    iget-boolean v10, p0, Lcom/a/a/a/a/c/l$a;->k:Z

    if-eqz v10, :cond_4

    sub-int v10, v6, v3

    int-to-float v10, v10

    int-to-float v11, v2

    goto :goto_4

    :cond_4
    sub-int v10, v7, v5

    int-to-float v10, v10

    int-to-float v11, v1

    :goto_4
    div-float/2addr v10, v11

    float-to-int v10, v10

    .line 1825
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_5
    if-ltz v0, :cond_8

    .line 1828
    iget-boolean v4, p0, Lcom/a/a/a/a/c/l$a;->k:Z

    if-eqz v4, :cond_5

    mul-int v4, v2, v0

    add-int/2addr v4, v3

    div-int/lit8 v10, v2, 0x2

    add-int/2addr v4, v10

    goto :goto_6

    :cond_5
    move v4, v6

    .line 1829
    :goto_6
    iget-boolean v10, p0, Lcom/a/a/a/a/c/l$a;->k:Z

    if-nez v10, :cond_6

    mul-int v10, v1, v0

    add-int/2addr v10, v5

    div-int/lit8 v11, v1, 0x2

    add-int/2addr v10, v11

    goto :goto_7

    :cond_6
    move v10, v7

    .line 1830
    :goto_7
    iget-object v11, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v4, v4

    int-to-float v10, v10

    invoke-static {v11, v4, v10}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1833
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$w;->getAdapterPosition()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    if-lt p0, v8, :cond_8

    if-gt p0, v9, :cond_8

    return-object v4

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Lcom/a/a/a/a/c/l$a;Z)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 1768
    :cond_0
    iget-object p1, p0, Lcom/a/a/a/a/c/l$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    if-nez p1, :cond_1

    return-object v0

    .line 1772
    :cond_1
    iget p1, p0, Lcom/a/a/a/a/c/l$a;->f:I

    add-int/lit8 p1, p1, 0x1

    .line 1773
    iget v1, p0, Lcom/a/a/a/a/c/l$a;->f:I

    iget-object v2, p0, Lcom/a/a/a/a/c/l$a;->b:Lcom/a/a/a/a/c/i;

    iget v2, v2, Lcom/a/a/a/a/c/i;->a:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 1774
    iget v2, p0, Lcom/a/a/a/a/c/l$a;->f:I

    iget-object v3, p0, Lcom/a/a/a/a/c/l$a;->b:Lcom/a/a/a/a/c/i;

    iget v3, v3, Lcom/a/a/a/a/c/i;->a:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2

    .line 1775
    iget v3, p0, Lcom/a/a/a/a/c/l$a;->g:I

    add-int/lit8 v3, v3, 0x1

    .line 1776
    iget v4, p0, Lcom/a/a/a/a/c/l$a;->g:I

    iget-object v5, p0, Lcom/a/a/a/a/c/l$a;->b:Lcom/a/a/a/a/c/i;

    iget v5, v5, Lcom/a/a/a/a/c/i;->b:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 1777
    iget v5, p0, Lcom/a/a/a/a/c/l$a;->g:I

    iget-object v6, p0, Lcom/a/a/a/a/c/l$a;->b:Lcom/a/a/a/a/c/i;

    iget v6, v6, Lcom/a/a/a/a/c/i;->b:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    .line 1781
    iget-boolean v6, p0, Lcom/a/a/a/a/c/l$a;->k:Z

    if-eqz v6, :cond_2

    .line 1782
    iget-object v3, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float p1, p1

    int-to-float v4, v4

    invoke-static {v3, p1, v4}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    .line 1783
    iget-object v3, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v2, v2

    invoke-static {v3, v2, v4}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v2

    .line 1784
    iget-object v3, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v1, v1

    invoke-static {v3, v1, v4}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v1

    goto :goto_0

    .line 1786
    :cond_2
    iget-object p1, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v1, v1

    int-to-float v2, v3

    invoke-static {p1, v1, v2}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    .line 1787
    iget-object v2, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v3, v4

    invoke-static {v2, v1, v3}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v2

    .line 1788
    iget-object v3, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v4, v5

    invoke-static {v3, v1, v4}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v1

    .line 1793
    :goto_0
    iget-object p0, p0, Lcom/a/a/a/a/c/l$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eq v1, p0, :cond_4

    if-eq v1, p1, :cond_3

    if-ne v1, v2, :cond_4

    :cond_3
    move-object v0, v1

    :cond_4
    return-object v0
.end method

.method private static b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1679
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 1681
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$f;->d(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :cond_1
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 17

    move-object/from16 v0, p0

    if-eqz p2, :cond_0

    .line 1297
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v1

    div-float/2addr v2, v3

    if-eqz p2, :cond_2

    .line 1304
    invoke-direct/range {p0 .. p0}, Lcom/a/a/a/a/c/l;->i()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/a/a/a/a/c/l;->j()I

    move-result v3

    :goto_1
    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    .line 1308
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3e99999a    # 0.3f

    sub-float v5, v4, v5

    sub-float/2addr v6, v5

    const/4 v5, 0x0

    .line 1309
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const v7, 0x40555555

    mul-float/2addr v6, v7

    .line 1310
    iget v7, v0, Lcom/a/a/a/a/c/l;->U:I

    .line 1311
    iget-object v8, v0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    .line 1313
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    const/high16 v9, 0x41c80000    # 25.0f

    iget v10, v0, Lcom/a/a/a/a/c/l;->ac:F

    mul-float/2addr v10, v9

    iget v9, v0, Lcom/a/a/a/a/c/l;->k:F

    mul-float/2addr v10, v9

    mul-float/2addr v10, v6

    add-float/2addr v10, v4

    float-to-int v6, v10

    mul-int/2addr v3, v6

    .line 1316
    iget-object v6, v0, Lcom/a/a/a/a/c/l;->X:Lcom/a/a/a/a/c/j;

    .line 1318
    iget-object v9, v0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Lcom/a/a/a/a/d/a;->b(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v9

    .line 1319
    iget-object v10, v0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v10}, Lcom/a/a/a/a/d/a;->c(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v9, v11, :cond_5

    .line 1327
    invoke-virtual {v6}, Lcom/a/a/a/a/c/j;->a()I

    move-result v14

    if-gt v9, v14, :cond_3

    move v14, v13

    goto :goto_2

    :cond_3
    move v14, v12

    .line 1330
    :goto_2
    invoke-virtual {v6}, Lcom/a/a/a/a/c/j;->a()I

    move-result v15

    sub-int/2addr v15, v13

    if-gt v9, v15, :cond_4

    move v15, v14

    move v14, v13

    goto :goto_3

    :cond_4
    move v15, v14

    move v14, v12

    goto :goto_3

    :cond_5
    move v14, v12

    move v15, v14

    :goto_3
    if-eq v10, v11, :cond_8

    .line 1336
    invoke-virtual {v6}, Lcom/a/a/a/a/c/j;->b()I

    move-result v11

    if-lt v10, v11, :cond_6

    move v11, v13

    goto :goto_4

    :cond_6
    move v11, v12

    .line 1339
    :goto_4
    invoke-virtual {v6}, Lcom/a/a/a/a/c/j;->b()I

    move-result v6

    add-int/2addr v6, v13

    if-lt v10, v6, :cond_7

    move v6, v13

    goto :goto_5

    :cond_7
    move v6, v12

    goto :goto_5

    :cond_8
    move v6, v12

    move v11, v6

    :goto_5
    const/4 v5, 0x2

    if-lez v3, :cond_a

    if-eqz p2, :cond_9

    const/16 v16, 0x8

    goto :goto_6

    :cond_9
    move/from16 v16, v5

    :goto_6
    and-int v7, v7, v16

    if-nez v7, :cond_c

    :goto_7
    move v3, v12

    goto :goto_9

    :cond_a
    if-gez v3, :cond_c

    if-eqz p2, :cond_b

    const/16 v16, 0x4

    goto :goto_8

    :cond_b
    move/from16 v16, v13

    :goto_8
    and-int v7, v7, v16

    if-nez v7, :cond_c

    goto :goto_7

    :cond_c
    :goto_9
    if-nez v14, :cond_d

    if-ltz v3, :cond_e

    :cond_d
    if-nez v6, :cond_11

    if-lez v3, :cond_11

    .line 1358
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/a/a/a/a/c/l;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz p2, :cond_f

    .line 1361
    invoke-direct {v0, v3}, Lcom/a/a/a/a/c/l;->d(I)I

    move-result v6

    goto :goto_a

    .line 1362
    :cond_f
    invoke-direct {v0, v3}, Lcom/a/a/a/a/c/l;->c(I)I

    move-result v6

    :goto_a
    if-gez v3, :cond_10

    xor-int/lit8 v7, v15, 0x1

    .line 1365
    invoke-virtual {v8, v7}, Lcom/a/a/a/a/c/g;->c(Z)V

    goto :goto_b

    :cond_10
    xor-int/lit8 v7, v11, 0x1

    .line 1367
    invoke-virtual {v8, v7}, Lcom/a/a/a/a/c/g;->c(Z)V

    .line 1370
    :goto_b
    invoke-virtual {v8, v13}, Lcom/a/a/a/a/c/g;->b(Z)Z

    .line 1371
    iget-object v7, v0, Lcom/a/a/a/a/c/l;->G:Lcom/a/a/a/a/c/m;

    if-eqz v7, :cond_12

    .line 1373
    invoke-virtual {v8}, Lcom/a/a/a/a/c/g;->b()I

    move-result v11

    .line 1374
    invoke-virtual {v8}, Lcom/a/a/a/a/c/g;->a()I

    move-result v14

    .line 1372
    invoke-virtual {v7, v11, v14}, Lcom/a/a/a/a/c/m;->a(II)V

    goto :goto_c

    .line 1377
    :cond_11
    invoke-virtual {v8, v12}, Lcom/a/a/a/a/c/g;->c(Z)V

    move v6, v12

    .line 1380
    :cond_12
    :goto_c
    iget-object v7, v0, Lcom/a/a/a/a/c/l;->i:Lcom/a/a/a/a/c/b;

    if-eqz v7, :cond_1d

    .line 1383
    iget v7, v0, Lcom/a/a/a/a/c/l;->V:I

    if-eq v7, v5, :cond_1b

    if-eqz v6, :cond_13

    goto :goto_d

    :cond_13
    move v13, v12

    :goto_d
    if-eqz p2, :cond_14

    .line 1387
    invoke-virtual {v8}, Lcom/a/a/a/a/c/g;->k()I

    move-result v7

    goto :goto_e

    :cond_14
    invoke-virtual {v8}, Lcom/a/a/a/a/c/g;->i()I

    move-result v7

    :goto_e
    if-eqz p2, :cond_15

    .line 1388
    invoke-virtual {v8}, Lcom/a/a/a/a/c/g;->l()I

    move-result v11

    goto :goto_f

    :cond_15
    invoke-virtual {v8}, Lcom/a/a/a/a/c/g;->j()I

    move-result v11

    :goto_f
    add-int v12, v7, v11

    .line 1389
    div-int/2addr v12, v5

    if-nez v9, :cond_17

    if-nez v10, :cond_17

    if-gez v3, :cond_16

    goto :goto_10

    :cond_16
    move v7, v11

    goto :goto_10

    .line 1396
    :cond_17
    div-int/2addr v1, v5

    if-ge v12, v1, :cond_16

    :goto_10
    int-to-float v1, v7

    mul-float/2addr v1, v2

    sub-float/2addr v1, v4

    .line 1400
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3ecccccd    # 0.4f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1b

    if-eqz v3, :cond_1b

    if-nez v13, :cond_1b

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const v3, 0x3ba3d70a    # 0.005f

    if-gez v1, :cond_19

    if-eqz p2, :cond_18

    .line 1404
    invoke-virtual {v8}, Lcom/a/a/a/a/c/g;->g()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_11

    :cond_18
    invoke-virtual {v8}, Lcom/a/a/a/a/c/g;->e()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1405
    :goto_11
    iget v1, v0, Lcom/a/a/a/a/c/l;->k:F

    neg-float v1, v1

    goto :goto_13

    :cond_19
    if-eqz p2, :cond_1a

    .line 1408
    invoke-virtual {v8}, Lcom/a/a/a/a/c/g;->h()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_12

    :cond_1a
    invoke-virtual {v8}, Lcom/a/a/a/a/c/g;->f()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1409
    :goto_12
    iget v1, v0, Lcom/a/a/a/a/c/l;->k:F

    :goto_13
    mul-float v5, v1, v3

    goto :goto_14

    :cond_1b
    const/4 v2, 0x0

    :cond_1c
    move v5, v2

    .line 1415
    :goto_14
    invoke-direct {v0, v5}, Lcom/a/a/a/a/c/l;->d(F)V

    .line 1418
    :cond_1d
    iget-object v1, v0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/a/a/a/a/c/l;->ah:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroidx/core/g/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    if-eqz v6, :cond_1f

    if-eqz p2, :cond_1e

    .line 1422
    iget v1, v0, Lcom/a/a/a/a/c/l;->S:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/a/a/a/a/c/l;->S:I

    goto :goto_15

    .line 1424
    :cond_1e
    iget v1, v0, Lcom/a/a/a/a/c/l;->T:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/a/a/a/a/c/l;->T:I

    .line 1427
    :goto_15
    invoke-direct/range {p0 .. p0}, Lcom/a/a/a/a/c/l;->k()V

    :cond_1f
    return-void
.end method

.method private c(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1488
    iput v0, p0, Lcom/a/a/a/a/c/l;->x:I

    const/4 v1, 0x1

    .line 1489
    iput-boolean v1, p0, Lcom/a/a/a/a/c/l;->v:Z

    .line 1490
    iget-object v1, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 1491
    iput-boolean v0, p0, Lcom/a/a/a/a/c/l;->v:Z

    .line 1493
    iget p1, p0, Lcom/a/a/a/a/c/l;->x:I

    return p1
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$w;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2089
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    iget-object v2, p0, Lcom/a/a/a/a/c/l;->ae:Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getAdapterPosition()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/a/a/a/a/d/c;->a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method private static c(Lcom/a/a/a/a/c/l$a;Z)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 7

    .line 1848
    iget-object v0, p0, Lcom/a/a/a/a/c/l$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1852
    :cond_0
    iget-boolean v0, p0, Lcom/a/a/a/a/c/l$a;->n:Z

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    .line 1853
    iget-object p1, p0, Lcom/a/a/a/a/c/l$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getAdapterPosition()I

    move-result p1

    .line 1854
    iget-boolean v0, p0, Lcom/a/a/a/a/c/l$a;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a/c/l$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a/c/l$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1855
    :goto_0
    iget-boolean v2, p0, Lcom/a/a/a/a/c/l$a;->k:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/a/a/a/a/c/l$a;->g:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/a/a/a/a/c/l$a;->f:I

    :goto_1
    if-ge v2, v0, :cond_3

    if-lez p1, :cond_5

    .line 1859
    iget-object p0, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p0

    :goto_2
    move-object v1, p0

    goto :goto_3

    :cond_3
    if-le v2, v0, :cond_5

    .line 1862
    iget-object v0, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_5

    .line 1863
    iget-object p0, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p0

    goto :goto_2

    .line 1867
    :cond_4
    iget-object p1, p0, Lcom/a/a/a/a/c/l$a;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p1, v0

    .line 1868
    iget-object v0, p0, Lcom/a/a/a/a/c/l$a;->b:Lcom/a/a/a/a/c/i;

    iget v0, v0, Lcom/a/a/a/a/c/i;->a:I

    int-to-float v0, v0

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1869
    iget-object v3, p0, Lcom/a/a/a/a/c/l$a;->b:Lcom/a/a/a/a/c/i;

    iget v3, v3, Lcom/a/a/a/a/c/i;->b:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1870
    iget v2, p0, Lcom/a/a/a/a/c/l$a;->f:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/a/a/a/a/c/l$a;->b:Lcom/a/a/a/a/c/i;

    iget v3, v3, Lcom/a/a/a/a/c/i;->a:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1871
    iget v3, p0, Lcom/a/a/a/a/c/l$a;->g:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/a/a/a/a/c/l$a;->b:Lcom/a/a/a/a/c/i;

    iget v5, v5, Lcom/a/a/a/a/c/i;->b:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 1873
    iget-object v4, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    sub-float v5, v2, v0

    sub-float v6, v3, p1

    invoke-static {v4, v5, v6}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v4

    .line 1874
    iget-object p0, p0, Lcom/a/a/a/a/c/l$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    add-float/2addr v2, v0

    add-float/2addr v3, p1

    invoke-static {p0, v2, v3}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p0

    if-ne v4, p0, :cond_5

    move-object v1, v4

    :cond_5
    :goto_3
    return-object v1
.end method

.method private static c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1686
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 1688
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$f;->d()V

    :cond_1
    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 661
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v0

    .line 663
    invoke-direct {p0, p1, v0}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 667
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 668
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v3

    float-to-int v3, v4

    .line 670
    invoke-direct {p0, v0, v1, v3}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView$w;II)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    .line 674
    :cond_1
    iget-object v4, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4}, Lcom/a/a/a/a/d/a;->e(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v4

    .line 675
    iget-object v5, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v5}, Lcom/a/a/a/a/d/a;->d(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v5

    .line 677
    iput v1, p0, Lcom/a/a/a/a/c/l;->K:I

    iput v1, p0, Lcom/a/a/a/a/c/l;->n:I

    .line 678
    iput v3, p0, Lcom/a/a/a/a/c/l;->L:I

    iput v3, p0, Lcom/a/a/a/a/c/l;->o:I

    .line 679
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/a/c/l;->p:J

    const/4 v0, 0x1

    if-eqz v4, :cond_3

    if-ne v4, v0, :cond_2

    if-le v5, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v0

    .line 680
    :goto_1
    iput-boolean v1, p0, Lcom/a/a/a/a/c/l;->aa:Z

    if-eq v4, v0, :cond_5

    if-nez v4, :cond_4

    if-le v5, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    .line 682
    :cond_5
    :goto_2
    iput-boolean v0, p0, Lcom/a/a/a/a/c/l;->ab:Z

    .line 687
    iget-boolean v0, p0, Lcom/a/a/a/a/c/l;->r:Z

    if-eqz v0, :cond_6

    .line 688
    invoke-direct {p0, p1, p2, v2}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;Z)Z

    move-result v2

    goto :goto_3

    .line 689
    :cond_6
    iget-boolean p1, p0, Lcom/a/a/a/a/c/l;->q:Z

    if-eqz p1, :cond_7

    .line 690
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->Y:Lcom/a/a/a/a/c/l$b;

    iget v0, p0, Lcom/a/a/a/a/c/l;->t:I

    invoke-virtual {p1, p2, v0}, Lcom/a/a/a/a/c/l$b;->a(Landroid/view/MotionEvent;I)V

    :cond_7
    :goto_3
    return v2
.end method

.method private d(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1497
    iput v0, p0, Lcom/a/a/a/a/c/l;->w:I

    const/4 v1, 0x1

    .line 1498
    iput-boolean v1, p0, Lcom/a/a/a/a/c/l;->v:Z

    .line 1499
    iget-object v1, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 1500
    iput-boolean v0, p0, Lcom/a/a/a/a/c/l;->v:Z

    .line 1502
    iget p1, p0, Lcom/a/a/a/a/c/l;->w:I

    return p1
.end method

.method private d(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->i:Lcom/a/a/a/a/c/b;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/c/b;->a(F)V

    goto :goto_0

    .line 1438
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->i:Lcom/a/a/a/a/c/b;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/c/b;->b(F)V

    goto :goto_0

    .line 1441
    :cond_1
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->i:Lcom/a/a/a/a/c/b;

    invoke-virtual {p1}, Lcom/a/a/a/a/c/b;->b()V

    :goto_0
    return-void
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1693
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->G:Lcom/a/a/a/a/c/m;

    if-eqz v0, :cond_0

    .line 1694
    invoke-static {p1}, Lcom/a/a/a/a/c/l;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 963
    iget-boolean v0, p0, Lcom/a/a/a/a/c/l;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 964
    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 3

    .line 1071
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/a/a/a/a/c/l;->K:I

    .line 1072
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/a/a/a/a/c/l;->L:I

    .line 1074
    iget-object p2, p0, Lcom/a/a/a/a/c/l;->H:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput p2, p0, Lcom/a/a/a/a/c/l;->I:I

    .line 1075
    iget-object p2, p0, Lcom/a/a/a/a/c/l;->H:Landroidx/core/widget/NestedScrollView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput p2, p0, Lcom/a/a/a/a/c/l;->J:I

    .line 1077
    iget p2, p0, Lcom/a/a/a/a/c/l;->O:I

    iget v1, p0, Lcom/a/a/a/a/c/l;->K:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/a/a/a/a/c/l;->O:I

    .line 1078
    iget p2, p0, Lcom/a/a/a/a/c/l;->P:I

    iget v1, p0, Lcom/a/a/a/a/c/l;->L:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/a/a/a/a/c/l;->P:I

    .line 1079
    iget p2, p0, Lcom/a/a/a/a/c/l;->Q:I

    iget v1, p0, Lcom/a/a/a/a/c/l;->K:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/a/a/a/a/c/l;->Q:I

    .line 1080
    iget p2, p0, Lcom/a/a/a/a/c/l;->R:I

    iget v1, p0, Lcom/a/a/a/a/c/l;->L:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/a/a/a/a/c/l;->R:I

    .line 1083
    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->h()V

    .line 1086
    iget-object p2, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->i()I

    move-result v1

    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->j()I

    move-result v2

    invoke-virtual {p2, v1, v2, v0}, Lcom/a/a/a/a/c/g;->a(IIZ)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1089
    iget-object p2, p0, Lcom/a/a/a/a/c/l;->G:Lcom/a/a/a/a/c/m;

    if-eqz p2, :cond_2

    .line 1090
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    invoke-virtual {v0}, Lcom/a/a/a/a/c/g;->b()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    invoke-virtual {v1}, Lcom/a/a/a/a/c/g;->a()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/a/a/a/a/c/m;->a(II)V

    .line 1094
    :cond_2
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/c/l;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1096
    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->k()V

    :cond_3
    return-void
.end method

.method private g(Z)V
    .locals 3

    .line 837
    invoke-virtual {p0}, Lcom/a/a/a/a/c/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->Y:Lcom/a/a/a/a/c/l$b;

    if-eqz v0, :cond_1

    .line 843
    invoke-virtual {v0}, Lcom/a/a/a/a/c/l$b;->b()V

    .line 844
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->Y:Lcom/a/a/a/a/c/l$b;

    invoke-virtual {v0}, Lcom/a/a/a/a/c/l$b;->f()V

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/a/a/a/a/c/l;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v1, :cond_2

    .line 849
    iget v1, p0, Lcom/a/a/a/a/c/l;->V:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 852
    :cond_2
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 853
    iget v2, p0, Lcom/a/a/a/a/c/l;->z:I

    invoke-virtual {v0, v2}, Lcom/a/a/a/a/c/g;->a(I)V

    .line 854
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    iget-object v2, p0, Lcom/a/a/a/a/c/l;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Lcom/a/a/a/a/c/g;->a(Landroid/view/animation/Interpolator;)V

    .line 855
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a/c/g;->a(Z)V

    .line 858
    :cond_3
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->G:Lcom/a/a/a/a/c/m;

    if-eqz v0, :cond_4

    .line 859
    iget v2, p0, Lcom/a/a/a/a/c/l;->z:I

    invoke-virtual {v0, v2}, Lcom/a/a/a/a/c/m;->a(I)V

    .line 860
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    iget-object v2, p0, Lcom/a/a/a/a/c/l;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Lcom/a/a/a/a/c/g;->a(Landroid/view/animation/Interpolator;)V

    .line 861
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->G:Lcom/a/a/a/a/c/m;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a/c/m;->a(Z)V

    .line 864
    :cond_4
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->i:Lcom/a/a/a/a/c/b;

    if-eqz v0, :cond_5

    .line 865
    invoke-virtual {v0}, Lcom/a/a/a/a/c/b;->b()V

    .line 868
    :cond_5
    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->m()V

    .line 870
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 871
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 874
    :cond_6
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    .line 875
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_7
    const/4 v0, 0x0

    .line 878
    iput-object v0, p0, Lcom/a/a/a/a/c/l;->W:Lcom/a/a/a/a/c/j;

    .line 879
    iput-object v0, p0, Lcom/a/a/a/a/c/l;->X:Lcom/a/a/a/a/c/j;

    .line 880
    iput-object v0, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    .line 881
    iput-object v0, p0, Lcom/a/a/a/a/c/l;->G:Lcom/a/a/a/a/c/m;

    .line 882
    iput-object v0, p0, Lcom/a/a/a/a/c/l;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 883
    iput-object v0, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    .line 884
    iput-object v0, p0, Lcom/a/a/a/a/c/l;->ae:Ljava/lang/Object;

    .line 885
    iput-object v0, p0, Lcom/a/a/a/a/c/l;->H:Landroidx/core/widget/NestedScrollView;

    .line 887
    iput v1, p0, Lcom/a/a/a/a/c/l;->K:I

    .line 888
    iput v1, p0, Lcom/a/a/a/a/c/l;->L:I

    .line 889
    iput v1, p0, Lcom/a/a/a/a/c/l;->I:I

    .line 890
    iput v1, p0, Lcom/a/a/a/a/c/l;->J:I

    .line 891
    iput v1, p0, Lcom/a/a/a/a/c/l;->M:I

    .line 892
    iput v1, p0, Lcom/a/a/a/a/c/l;->N:I

    .line 893
    iput v1, p0, Lcom/a/a/a/a/c/l;->O:I

    .line 894
    iput v1, p0, Lcom/a/a/a/a/c/l;->P:I

    .line 895
    iput v1, p0, Lcom/a/a/a/a/c/l;->Q:I

    .line 896
    iput v1, p0, Lcom/a/a/a/a/c/l;->R:I

    .line 897
    iput v1, p0, Lcom/a/a/a/a/c/l;->S:I

    .line 898
    iput v1, p0, Lcom/a/a/a/a/c/l;->T:I

    .line 899
    iput-boolean v1, p0, Lcom/a/a/a/a/c/l;->aa:Z

    .line 900
    iput-boolean v1, p0, Lcom/a/a/a/a/c/l;->ab:Z

    .line 906
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 907
    invoke-virtual {v0}, Lcom/a/a/a/a/c/f;->f()I

    move-result v1

    .line 908
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {v0}, Lcom/a/a/a/a/c/f;->g()I

    move-result v0

    .line 909
    iget-object v2, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {v2, v1, v0, p1}, Lcom/a/a/a/a/c/f;->a(IIZ)V

    goto :goto_0

    :cond_8
    move v0, v1

    .line 919
    :goto_0
    iget-object v2, p0, Lcom/a/a/a/a/c/l;->Z:Lcom/a/a/a/a/c/l$c;

    if-eqz v2, :cond_9

    .line 920
    invoke-interface {v2, v1, v0, p1}, Lcom/a/a/a/a/c/l$c;->a(IIZ)V

    :cond_9
    return-void
.end method

.method private h()V
    .locals 4

    .line 1101
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/a/a/a/a/d/a;->e(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1103
    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->j()I

    move-result v0

    .line 1104
    iget v2, p0, Lcom/a/a/a/a/c/l;->N:I

    iget v3, p0, Lcom/a/a/a/a/c/l;->P:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/a/a/a/a/c/l;->m:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/a/a/a/a/c/l;->R:I

    sub-int/2addr v2, v0

    if-le v2, v3, :cond_2

    .line 1106
    :cond_1
    iget v2, p0, Lcom/a/a/a/a/c/l;->U:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/a/a/c/l;->U:I

    .line 1108
    :cond_2
    iget v1, p0, Lcom/a/a/a/a/c/l;->R:I

    iget v2, p0, Lcom/a/a/a/a/c/l;->N:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/a/a/a/a/c/l;->m:I

    if-gt v1, v2, :cond_3

    iget v1, p0, Lcom/a/a/a/a/c/l;->P:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_8

    .line 1110
    :cond_3
    iget v0, p0, Lcom/a/a/a/a/c/l;->U:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/a/a/a/a/c/l;->U:I

    goto :goto_0

    .line 1115
    :cond_4
    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->i()I

    move-result v0

    .line 1116
    iget v1, p0, Lcom/a/a/a/a/c/l;->M:I

    iget v2, p0, Lcom/a/a/a/a/c/l;->O:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/a/a/a/a/c/l;->m:I

    if-gt v1, v2, :cond_5

    iget v1, p0, Lcom/a/a/a/a/c/l;->Q:I

    sub-int/2addr v1, v0

    if-le v1, v2, :cond_6

    .line 1118
    :cond_5
    iget v1, p0, Lcom/a/a/a/a/c/l;->U:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/a/a/a/a/c/l;->U:I

    .line 1120
    :cond_6
    iget v1, p0, Lcom/a/a/a/a/c/l;->Q:I

    iget v2, p0, Lcom/a/a/a/a/c/l;->M:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/a/a/a/a/c/l;->m:I

    if-gt v1, v2, :cond_7

    iget v1, p0, Lcom/a/a/a/a/c/l;->O:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_8

    .line 1122
    :cond_7
    iget v0, p0, Lcom/a/a/a/a/c/l;->U:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/a/a/a/a/c/l;->U:I

    :cond_8
    :goto_0
    return-void
.end method

.method private i()I
    .locals 3

    .line 1130
    iget v0, p0, Lcom/a/a/a/a/c/l;->K:I

    .line 1132
    iget-object v1, p0, Lcom/a/a/a/a/c/l;->H:Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_0

    .line 1133
    invoke-virtual {v1}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/a/a/a/a/c/l;->I:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private j()I
    .locals 3

    .line 1140
    iget v0, p0, Lcom/a/a/a/a/c/l;->L:I

    .line 1142
    iget-object v1, p0, Lcom/a/a/a/a/c/l;->H:Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_0

    .line 1143
    invoke-virtual {v1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/a/a/a/a/c/l;->J:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private k()V
    .locals 3

    .line 1200
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->Z:Lcom/a/a/a/a/c/l$c;

    if-nez v0, :cond_0

    return-void

    .line 1204
    :cond_0
    iget v0, p0, Lcom/a/a/a/a/c/l;->S:I

    iget-object v1, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    invoke-virtual {v1}, Lcom/a/a/a/a/c/g;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 1205
    iget v1, p0, Lcom/a/a/a/a/c/l;->T:I

    iget-object v2, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    invoke-virtual {v2}, Lcom/a/a/a/a/c/g;->c()I

    move-result v2

    add-int/2addr v1, v2

    .line 1207
    iget-object v2, p0, Lcom/a/a/a/a/c/l;->Z:Lcom/a/a/a/a/c/l$c;

    invoke-interface {v2, v0, v1}, Lcom/a/a/a/a/c/l$c;->b(II)V

    return-void
.end method

.method private l()V
    .locals 1

    .line 1510
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->f:Lcom/a/a/a/a/c/l$d;

    invoke-virtual {v0}, Lcom/a/a/a/a/c/l$d;->a()V

    return-void
.end method

.method private m()V
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->f:Lcom/a/a/a/a/c/l$d;

    if-eqz v0, :cond_0

    .line 1515
    invoke-virtual {v0}, Lcom/a/a/a/a/c/l$d;->b()V

    :cond_0
    return-void
.end method

.method private static n()Z
    .locals 2

    .line 1675
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private o()V
    .locals 2

    const-string v0, "ARVDragDropManager"

    const-string v1, "a view holder object which is bound to currently dragging item is recycled"

    .line 2079
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2081
    iput-object v0, p0, Lcom/a/a/a/a/c/l;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 2082
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    invoke-virtual {v0}, Lcom/a/a/a/a/c/g;->m()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$a;)Landroidx/recyclerview/widget/RecyclerView$a;
    .locals 1

    .line 313
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/a/a/a/a/c/f;

    invoke-direct {v0, p0, p1}, Lcom/a/a/a/a/c/f;-><init>(Lcom/a/a/a/a/c/l;Landroidx/recyclerview/widget/RecyclerView$a;)V

    iput-object v0, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    .line 323
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    return-object p1

    .line 318
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already have a wrapped adapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The passed adapter does not support stable IDs"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(F)V
    .locals 1

    .line 2006
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->C:Lcom/a/a/a/a/c/h;

    iput p1, v0, Lcom/a/a/a/a/c/h;->b:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 501
    iput p1, p0, Lcom/a/a/a/a/c/l;->t:I

    return-void
.end method

.method public a(Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/a/a/a/a/c/l;->j:Landroid/graphics/drawable/NinePatchDrawable;

    return-void
.end method

.method a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 700
    iget-boolean v0, p0, Lcom/a/a/a/a/c/l;->q:Z

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;Z)Z

    :cond_0
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 2055
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    if-ne p1, v0, :cond_0

    .line 2056
    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->o()V

    goto :goto_0

    .line 2058
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->G:Lcom/a/a/a/a/c/m;

    if-eqz v0, :cond_1

    .line 2059
    invoke-virtual {v0, p1}, Lcom/a/a/a/a/c/m;->b(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/a/a/a/a/c/l;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 348
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_3

    .line 352
    iput-object p1, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 354
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/a/a/a/a/c/l;->h:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 355
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/a/a/a/a/c/l;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 357
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/a/a/a/a/c/l;->k:F

    .line 358
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/l;->l:I

    .line 359
    iget p1, p0, Lcom/a/a/a/a/c/l;->l:I

    int-to-float p1, p1

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/a/a/a/a/c/l;->m:I

    .line 360
    new-instance p1, Lcom/a/a/a/a/c/l$b;

    invoke-direct {p1, p0}, Lcom/a/a/a/a/c/l$b;-><init>(Lcom/a/a/a/a/c/l;)V

    iput-object p1, p0, Lcom/a/a/a/a/c/l;->Y:Lcom/a/a/a/a/c/l$b;

    .line 362
    invoke-static {}, Lcom/a/a/a/a/c/l;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 364
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/a/a/a/a/d/a;->e(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    new-instance p1, Lcom/a/a/a/a/c/n;

    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, v0}, Lcom/a/a/a/a/c/n;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/a/a/a/a/c/l;->i:Lcom/a/a/a/a/c/b;

    goto :goto_0

    .line 366
    :cond_1
    new-instance p1, Lcom/a/a/a/a/c/k;

    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, v0}, Lcom/a/a/a/a/c/k;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/a/a/a/a/c/l;->i:Lcom/a/a/a/a/c/b;

    .line 372
    :goto_0
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->i:Lcom/a/a/a/a/c/b;

    if-eqz p1, :cond_2

    .line 373
    invoke-virtual {p1}, Lcom/a/a/a/a/c/b;->a()V

    :cond_2
    return-void

    .line 349
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView instance has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 345
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Accessing released object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 655
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/c/l;->f(Z)V

    :cond_0
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 641
    iget-boolean p1, p0, Lcom/a/a/a/a/c/l;->v:Z

    if-eqz p1, :cond_0

    .line 642
    iput p2, p0, Lcom/a/a/a/a/c/l;->w:I

    .line 643
    iput p3, p0, Lcom/a/a/a/a/c/l;->x:I

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/a/a/c/l;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 645
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/a/a/a/a/c/l;->ah:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-static {p1, p2, v0, v1}, Landroidx/core/g/u;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 456
    iput-boolean p1, p0, Lcom/a/a/a/a/c/l;->q:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->g:Landroidx/recyclerview/widget/RecyclerView$m;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 570
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/a/a/c/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    invoke-direct {p0, p1, p2}, Lcom/a/a/a/a/c/l;->e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 595
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/a/a/a/a/c/l;->d(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 580
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/a/a/a/a/c/l;->a(IZ)Z

    move-result v1

    goto :goto_1

    .line 584
    :cond_3
    invoke-virtual {p0}, Lcom/a/a/a/a/c/l;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 585
    invoke-direct {p0, p1, p2}, Lcom/a/a/a/a/c/l;->c(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public b(F)V
    .locals 1

    .line 2024
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->C:Lcom/a/a/a/a/c/h;

    iput p1, v0, Lcom/a/a/a/a/c/h;->c:F

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1928
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->C:Lcom/a/a/a/a/c/h;

    iput p1, v0, Lcom/a/a/a/a/c/h;->a:I

    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 2069
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_0

    .line 2070
    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->o()V

    .line 2072
    :cond_0
    iput-object p1, p0, Lcom/a/a/a/a/c/l;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 2073
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/c/g;->a(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 11

    .line 1150
    iget-object v9, p0, Lcom/a/a/a/a/c/l;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 1152
    iget-object v10, p0, Lcom/a/a/a/a/c/l;->ag:Lcom/a/a/a/a/c/l$a;

    .line 1154
    iget-object v3, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->i()I

    move-result v4

    invoke-direct {p0}, Lcom/a/a/a/a/c/l;->j()I

    move-result v5

    iget-object v6, p0, Lcom/a/a/a/a/c/l;->W:Lcom/a/a/a/a/c/j;

    iget-object v7, p0, Lcom/a/a/a/a/c/l;->X:Lcom/a/a/a/a/c/j;

    iget-boolean v8, p0, Lcom/a/a/a/a/c/l;->u:Z

    move-object v0, v10

    move-object v1, p1

    move-object v2, v9

    invoke-virtual/range {v0 .. v8}, Lcom/a/a/a/a/c/l$a;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;Lcom/a/a/a/a/c/i;IILcom/a/a/a/a/c/j;Lcom/a/a/a/a/c/j;Z)V

    .line 1156
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {v0}, Lcom/a/a/a/a/c/f;->f()I

    move-result v0

    .line 1157
    iget-object v1, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    invoke-virtual {v1}, Lcom/a/a/a/a/c/f;->g()I

    move-result v1

    .line 1161
    iget-object v2, p0, Lcom/a/a/a/a/c/l;->af:Lcom/a/a/a/a/c/l$e;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v10, v3}, Lcom/a/a/a/a/c/l;->a(Lcom/a/a/a/a/c/l$e;Lcom/a/a/a/a/c/l$a;Z)Lcom/a/a/a/a/c/l$e;

    move-result-object v2

    .line 1163
    iget v4, v2, Lcom/a/a/a/a/c/l$e;->b:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 1164
    iget-boolean v3, p0, Lcom/a/a/a/a/c/l;->u:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 1168
    iget-object v3, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    iget v6, v2, Lcom/a/a/a/a/c/l$e;->b:I

    invoke-virtual {v3, v0, v6}, Lcom/a/a/a/a/c/f;->d(II)Z

    move-result v3

    :cond_0
    if-nez v3, :cond_1

    .line 1171
    iget-object v2, p0, Lcom/a/a/a/a/c/l;->af:Lcom/a/a/a/a/c/l$e;

    invoke-direct {p0, v2, v10, v4}, Lcom/a/a/a/a/c/l;->a(Lcom/a/a/a/a/c/l$e;Lcom/a/a/a/a/c/l$a;Z)Lcom/a/a/a/a/c/l$e;

    move-result-object v2

    .line 1173
    iget v4, v2, Lcom/a/a/a/a/c/l$e;->b:I

    if-eq v4, v5, :cond_1

    .line 1174
    iget-object v3, p0, Lcom/a/a/a/a/c/l;->D:Lcom/a/a/a/a/c/f;

    iget v4, v2, Lcom/a/a/a/a/c/l$e;->b:I

    invoke-virtual {v3, v0, v4}, Lcom/a/a/a/a/c/f;->d(II)Z

    move-result v3

    :cond_1
    if-eqz v3, :cond_3

    .line 1179
    iget-object v0, v2, Lcom/a/a/a/a/c/l$e;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1180
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bug check"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 1184
    iget-object v0, v2, Lcom/a/a/a/a/c/l$e;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-direct {p0, p1, v1, v9, v0}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 1187
    :cond_4
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->G:Lcom/a/a/a/a/c/m;

    if-eqz p1, :cond_6

    if-eqz v3, :cond_5

    .line 1188
    iget-object v0, v2, Lcom/a/a/a/a/c/l$e;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/a/a/a/a/c/m;->a(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :cond_6
    if-eqz v3, :cond_7

    .line 1192
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->Y:Lcom/a/a/a/a/c/l$b;

    invoke-virtual {p1}, Lcom/a/a/a/a/c/l$b;->e()V

    .line 1195
    :cond_7
    invoke-virtual {v2}, Lcom/a/a/a/a/c/l$e;->a()V

    .line 1196
    invoke-virtual {v10}, Lcom/a/a/a/a/c/l$a;->a()V

    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 3

    .line 605
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 611
    invoke-virtual {p0}, Lcom/a/a/a/a/c/l;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_0

    .line 623
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/a/a/a/a/c/l;->e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 619
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/a/a/a/a/c/l;->a(IZ)Z

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 474
    iput-boolean p1, p0, Lcom/a/a/a/a/c/l;->s:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/c/l;->Y:Lcom/a/a/a/a/c/l$b;

    invoke-virtual {v0}, Lcom/a/a/a/a/c/l$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method c()V
    .locals 4

    .line 706
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    iget-wide v1, v1, Lcom/a/a/a/a/c/i;->c:J

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 711
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 712
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 714
    iget-object v3, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    iget v3, v3, Lcom/a/a/a/a/c/i;->a:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    iget v1, v1, Lcom/a/a/a/a/c/i;->b:I

    if-eq v2, v1, :cond_2

    .line 715
    :cond_1
    iget-object v1, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    invoke-static {v1, v0}, Lcom/a/a/a/a/c/i;->a(Lcom/a/a/a/a/c/i;Landroidx/recyclerview/widget/RecyclerView$w;)Lcom/a/a/a/a/c/i;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    .line 716
    iget-object v1, p0, Lcom/a/a/a/a/c/l;->F:Lcom/a/a/a/a/c/g;

    iget-object v2, p0, Lcom/a/a/a/a/c/l;->E:Lcom/a/a/a/a/c/i;

    invoke-virtual {v1, v2, v0}, Lcom/a/a/a/a/c/g;->a(Lcom/a/a/a/a/c/i;Landroidx/recyclerview/widget/RecyclerView$w;)V

    :cond_2
    return-void
.end method

.method public c(F)V
    .locals 1

    .line 2042
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->C:Lcom/a/a/a/a/c/h;

    iput p1, v0, Lcom/a/a/a/a/c/h;->d:F

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 492
    iput-boolean p1, p0, Lcom/a/a/a/a/c/l;->r:Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 819
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/c/l;->f(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 557
    iput-boolean p1, p0, Lcom/a/a/a/a/c/l;->u:Z

    return-void
.end method

.method e()V
    .locals 3

    .line 1211
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 1214
    invoke-static {v0}, Lcom/a/a/a/a/d/a;->e(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 1225
    :cond_1
    iget-object v1, p0, Lcom/a/a/a/a/c/l;->H:Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_2

    .line 1226
    invoke-direct {p0, v0, v2}, Lcom/a/a/a/a/c/l;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    goto :goto_0

    .line 1228
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/a/a/a/a/c/l;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    :goto_0
    return-void
.end method

.method e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 631
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/c/l;->f(Z)V

    :cond_0
    return-void
.end method

.method f()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1506
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method f(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 823
    invoke-direct {p0, v1, v0}, Lcom/a/a/a/a/c/l;->a(IZ)Z

    if-eqz p1, :cond_0

    .line 826
    invoke-direct {p0, v0}, Lcom/a/a/a/a/c/l;->g(Z)V

    goto :goto_0

    .line 828
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/a/a/c/l;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 829
    iget-object p1, p0, Lcom/a/a/a/a/c/l;->Y:Lcom/a/a/a/a/c/l$b;

    invoke-virtual {p1}, Lcom/a/a/a/a/c/l$b;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method g()Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 1

    .line 2065
    iget-object v0, p0, Lcom/a/a/a/a/c/l;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    return-object v0
.end method
