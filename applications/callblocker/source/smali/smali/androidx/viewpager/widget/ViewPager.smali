.class public Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/ViewPager$j;,
        Landroidx/viewpager/widget/ViewPager$c;,
        Landroidx/viewpager/widget/ViewPager$h;,
        Landroidx/viewpager/widget/ViewPager$d;,
        Landroidx/viewpager/widget/ViewPager$i;,
        Landroidx/viewpager/widget/ViewPager$a;,
        Landroidx/viewpager/widget/ViewPager$e;,
        Landroidx/viewpager/widget/ViewPager$g;,
        Landroidx/viewpager/widget/ViewPager$f;,
        Landroidx/viewpager/widget/ViewPager$b;
    }
.end annotation


# static fields
.field static final a:[I

.field private static final ai:Landroidx/viewpager/widget/ViewPager$j;

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroidx/viewpager/widget/ViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Landroid/view/animation/Interpolator;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:I

.field private L:Landroid/view/VelocityTracker;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Landroid/widget/EdgeEffect;

.field private S:Landroid/widget/EdgeEffect;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:I

.field private aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/viewpager/widget/ViewPager$f;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Landroidx/viewpager/widget/ViewPager$f;

.field private ac:Landroidx/viewpager/widget/ViewPager$f;

.field private ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/viewpager/widget/ViewPager$e;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Landroidx/viewpager/widget/ViewPager$g;

.field private af:I

.field private ag:I

.field private ah:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final aj:Ljava/lang/Runnable;

.field private ak:I

.field b:Landroidx/viewpager/widget/a;

.field c:I

.field private d:I

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/viewpager/widget/ViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroidx/viewpager/widget/ViewPager$b;

.field private final i:Landroid/graphics/Rect;

.field private j:I

.field private k:Landroid/os/Parcelable;

.field private l:Ljava/lang/ClassLoader;

.field private m:Landroid/widget/Scroller;

.field private n:Z

.field private o:Landroidx/viewpager/widget/ViewPager$h;

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:I

.field private s:I

.field private t:F

.field private u:F

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->a:[I

    .line 140
    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$1;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->e:Ljava/util/Comparator;

    .line 147
    new-instance v0, Landroidx/viewpager/widget/ViewPager$2;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$2;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->f:Landroid/view/animation/Interpolator;

    .line 251
    new-instance v0, Landroidx/viewpager/widget/ViewPager$j;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$j;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->ai:Landroidx/viewpager/widget/ViewPager$j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 391
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Landroidx/viewpager/widget/ViewPager$b;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$b;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->h:Landroidx/viewpager/widget/ViewPager$b;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/graphics/Rect;

    .line 162
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->j:I

    .line 163
    iput-object v4, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/os/Parcelable;

    .line 164
    iput-object v4, p0, Landroidx/viewpager/widget/ViewPager;->l:Ljava/lang/ClassLoader;

    .line 179
    const v0, -0x800001

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    .line 180
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->u:F

    .line 189
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    .line 207
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    .line 234
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->T:Z

    .line 235
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->U:Z

    .line 269
    new-instance v0, Landroidx/viewpager/widget/ViewPager$3;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$3;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aj:Ljava/lang/Runnable;

    .line 277
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->ak:I

    .line 392
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->a()V

    .line 393
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 396
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Landroidx/viewpager/widget/ViewPager$b;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$b;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->h:Landroidx/viewpager/widget/ViewPager$b;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/graphics/Rect;

    .line 162
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->j:I

    .line 163
    iput-object v4, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/os/Parcelable;

    .line 164
    iput-object v4, p0, Landroidx/viewpager/widget/ViewPager;->l:Ljava/lang/ClassLoader;

    .line 179
    const v0, -0x800001

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    .line 180
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->u:F

    .line 189
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    .line 207
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    .line 234
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->T:Z

    .line 235
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->U:Z

    .line 269
    new-instance v0, Landroidx/viewpager/widget/ViewPager$3;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$3;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aj:Ljava/lang/Runnable;

    .line 277
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->ak:I

    .line 397
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->a()V

    .line 398
    return-void
.end method

.method private a(IFII)I
    .locals 3

    .prologue
    .line 2406
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->O:I

    if-le v0, v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->M:I

    if-le v0, v1, :cond_2

    .line 2407
    if-lez p3, :cond_1

    .line 2413
    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2414
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    .line 2415
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$b;

    .line 2418
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2421
    :cond_0
    return p1

    .line 2407
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2409
    :cond_2
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-lt p1, v0, :cond_3

    const v0, 0x3ecccccd    # 0.4f

    .line 2410
    :goto_1
    add-float/2addr v0, p2

    float-to-int v0, v0

    add-int/2addr p1, v0

    goto :goto_0

    .line 2409
    :cond_3
    const v0, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2859
    if-nez p1, :cond_2

    .line 2860
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2862
    :goto_0
    if-nez p2, :cond_0

    .line 2863
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    .line 2881
    :goto_1
    return-object v0

    .line 2866
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2867
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2868
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2869
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2871
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2872
    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    .line 2873
    check-cast v0, Landroid/view/ViewGroup;

    .line 2874
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2875
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2876
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2877
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2879
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 2881
    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private a(IIII)V
    .locals 3

    .prologue
    .line 1655
    if-lez p2, :cond_2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1656
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1657
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 1678
    :cond_0
    :goto_0
    return-void

    .line 1659
    :cond_1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1660
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p4

    .line 1662
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 1663
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 1664
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1666
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1669
    :cond_2
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->b(I)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v0

    .line 1670
    if-eqz v0, :cond_3

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$b;->e:F

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->u:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1672
    :goto_1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1673
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1674
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->a(Z)V

    .line 1675
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1670
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(IZIZ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 676
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->b(I)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_3

    .line 679
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    .line 680
    int-to-float v2, v2

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$b;->e:F

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->u:F

    .line 681
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 680
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 683
    :goto_0
    if-eqz p2, :cond_1

    .line 684
    invoke-virtual {p0, v0, v1, p3}, Landroidx/viewpager/widget/ViewPager;->a(III)V

    .line 685
    if-eqz p4, :cond_0

    .line 686
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->e(I)V

    .line 696
    :cond_0
    :goto_1
    return-void

    .line 689
    :cond_1
    if-eqz p4, :cond_2

    .line 690
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->e(I)V

    .line 692
    :cond_2
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->a(Z)V

    .line 693
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 694
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->d(I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 2644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2645
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2646
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    if-ne v1, v2, :cond_0

    .line 2649
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2650
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    .line 2651
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    .line 2652
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2653
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2656
    :cond_0
    return-void

    .line 2649
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroidx/viewpager/widget/ViewPager$b;ILandroidx/viewpager/widget/ViewPager$b;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 1298
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->b()I

    move-result v7

    .line 1299
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    .line 1300
    if-lez v0, :cond_0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v6, v0

    .line 1302
    :goto_0
    if-eqz p3, :cond_6

    .line 1303
    iget v0, p3, Landroidx/viewpager/widget/ViewPager$b;->b:I

    .line 1305
    iget v1, p1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-ge v0, v1, :cond_3

    .line 1308
    iget v1, p3, Landroidx/viewpager/widget/ViewPager$b;->e:F

    iget v2, p3, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v1, v2

    add-float v3, v1, v6

    .line 1309
    add-int/lit8 v2, v0, 0x1

    move v1, v4

    .line 1310
    :goto_1
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-gt v2, v0, :cond_6

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1311
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    .line 1312
    :goto_2
    iget v5, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-le v2, v5, :cond_1

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_1

    .line 1313
    add-int/lit8 v1, v1, 0x1

    .line 1314
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    goto :goto_2

    .line 1300
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 1316
    :cond_1
    :goto_3
    iget v5, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-ge v2, v5, :cond_2

    .line 1319
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v5, v2}, Landroidx/viewpager/widget/a;->d(I)F

    move-result v5

    add-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 1320
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1322
    :cond_2
    iput v3, v0, Landroidx/viewpager/widget/ViewPager$b;->e:F

    .line 1323
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v0, v6

    add-float/2addr v3, v0

    .line 1310
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1325
    :cond_3
    iget v1, p1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-le v0, v1, :cond_6

    .line 1326
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1328
    iget v3, p3, Landroidx/viewpager/widget/ViewPager$b;->e:F

    .line 1329
    add-int/lit8 v2, v0, -0x1

    .line 1330
    :goto_4
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-lt v2, v0, :cond_6

    if-ltz v1, :cond_6

    .line 1331
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    .line 1332
    :goto_5
    iget v5, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-ge v2, v5, :cond_4

    if-lez v1, :cond_4

    .line 1333
    add-int/lit8 v1, v1, -0x1

    .line 1334
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    goto :goto_5

    .line 1336
    :cond_4
    :goto_6
    iget v5, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-le v2, v5, :cond_5

    .line 1339
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v5, v2}, Landroidx/viewpager/widget/a;->d(I)F

    move-result v5

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 1340
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 1342
    :cond_5
    iget v5, v0, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 1343
    iput v3, v0, Landroidx/viewpager/widget/ViewPager$b;->e:F

    .line 1330
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1349
    :cond_6
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1350
    iget v2, p1, Landroidx/viewpager/widget/ViewPager$b;->e:F

    .line 1351
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    add-int/lit8 v1, v0, -0x1

    .line 1352
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-nez v0, :cond_7

    iget v0, p1, Landroidx/viewpager/widget/ViewPager$b;->e:F

    :goto_7
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    .line 1353
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    add-int/lit8 v3, v7, -0x1

    if-ne v0, v3, :cond_8

    iget v0, p1, Landroidx/viewpager/widget/ViewPager$b;->e:F

    iget v3, p1, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    :goto_8
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->u:F

    .line 1356
    add-int/lit8 v0, p2, -0x1

    move v5, v0

    :goto_9
    if-ltz v5, :cond_b

    .line 1357
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    move v3, v2

    .line 1358
    :goto_a
    iget v2, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-le v1, v2, :cond_9

    .line 1359
    iget-object v9, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v9, v1}, Landroidx/viewpager/widget/a;->d(I)F

    move-result v1

    add-float/2addr v1, v6

    sub-float/2addr v3, v1

    move v1, v2

    goto :goto_a

    .line 1352
    :cond_7
    const v0, -0x800001

    goto :goto_7

    .line 1353
    :cond_8
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1361
    :cond_9
    iget v2, v0, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v2, v6

    sub-float v2, v3, v2

    .line 1362
    iput v2, v0, Landroidx/viewpager/widget/ViewPager$b;->e:F

    .line 1363
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-nez v0, :cond_a

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    .line 1356
    :cond_a
    add-int/lit8 v0, v5, -0x1

    add-int/lit8 v1, v1, -0x1

    move v5, v0

    goto :goto_9

    .line 1365
    :cond_b
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$b;->e:F

    iget v1, p1, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v0, v1

    add-float v2, v0, v6

    .line 1366
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 1368
    add-int/lit8 v0, p2, 0x1

    move v5, v0

    :goto_b
    if-ge v5, v8, :cond_e

    .line 1369
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    move v3, v2

    .line 1370
    :goto_c
    iget v2, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-ge v1, v2, :cond_c

    .line 1371
    iget-object v9, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v9, v1}, Landroidx/viewpager/widget/a;->d(I)F

    move-result v1

    add-float/2addr v1, v6

    add-float/2addr v3, v1

    move v1, v2

    goto :goto_c

    .line 1373
    :cond_c
    iget v2, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    add-int/lit8 v9, v7, -0x1

    if-ne v2, v9, :cond_d

    .line 1374
    iget v2, v0, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v10

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->u:F

    .line 1376
    :cond_d
    iput v3, v0, Landroidx/viewpager/widget/ViewPager$b;->e:F

    .line 1377
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v0, v6

    add-float v2, v3, v0

    .line 1368
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    move v5, v0

    goto :goto_b

    .line 1380
    :cond_e
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->U:Z

    .line 1381
    return-void
.end method

.method private a(Z)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1974
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->ak:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v0, v4

    .line 1975
    :goto_0
    if-eqz v0, :cond_1

    .line 1977
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1978
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    .line 1979
    :goto_1
    if-eqz v1, :cond_1

    .line 1980
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1981
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 1982
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v3

    .line 1983
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1984
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1985
    if-ne v1, v5, :cond_0

    if-eq v3, v6, :cond_1

    .line 1986
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1987
    if-eq v5, v1, :cond_1

    .line 1988
    invoke-direct {p0, v5}, Landroidx/viewpager/widget/ViewPager;->d(I)Z

    .line 1993
    :cond_1
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->z:Z

    move v1, v2

    move v3, v0

    .line 1994
    :goto_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1995
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    .line 1996
    iget-boolean v5, v0, Landroidx/viewpager/widget/ViewPager$b;->c:Z

    if-eqz v5, :cond_2

    .line 1998
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager$b;->c:Z

    move v3, v4

    .line 1994
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 1974
    goto :goto_0

    :cond_4
    move v1, v2

    .line 1978
    goto :goto_1

    .line 2001
    :cond_5
    if-eqz v3, :cond_6

    .line 2002
    if-eqz p1, :cond_7

    .line 2003
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aj:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2008
    :cond_6
    :goto_3
    return-void

    .line 2005
    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aj:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method

.method private a(FF)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2011
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->E:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->E:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(IFI)V
    .locals 3

    .prologue
    .line 1923
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ab:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_0

    .line 1924
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ab:Landroidx/viewpager/widget/ViewPager$f;

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$f;->a(IFI)V

    .line 1926
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1927
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1928
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$f;

    .line 1929
    if-eqz v0, :cond_1

    .line 1930
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$f;->a(IFI)V

    .line 1927
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1934
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ac:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_3

    .line 1935
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ac:Landroidx/viewpager/widget/ViewPager$f;

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$f;->a(IFI)V

    .line 1937
    :cond_3
    return-void
.end method

.method private b(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2015
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

    move v2, v1

    .line 2016
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2017
    if-eqz p1, :cond_0

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->af:I

    .line 2019
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2016
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2017
    goto :goto_1

    .line 2021
    :cond_1
    return-void
.end method

.method private b(F)Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2310
    .line 2312
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    sub-float/2addr v0, p1

    .line 2313
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    .line 2315
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2316
    add-float v5, v1, v0

    .line 2317
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v8

    .line 2319
    int-to-float v0, v8

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    mul-float v4, v0, v1

    .line 2320
    int-to-float v0, v8

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->u:F

    mul-float v7, v0, v1

    .line 2324
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    .line 2325
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$b;

    .line 2326
    iget v6, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-eqz v6, :cond_5

    .line 2328
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$b;->e:F

    int-to-float v4, v8

    mul-float/2addr v4, v0

    move v0, v2

    .line 2330
    :goto_0
    iget v6, v1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iget-object v9, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v9}, Landroidx/viewpager/widget/a;->b()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v6, v9, :cond_4

    .line 2332
    iget v1, v1, Landroidx/viewpager/widget/ViewPager$b;->e:F

    int-to-float v6, v8

    mul-float/2addr v1, v6

    move v6, v2

    .line 2335
    :goto_1
    cmpg-float v7, v5, v4

    if-gez v7, :cond_0

    .line 2336
    if-eqz v0, :cond_3

    .line 2337
    sub-float v0, v4, v5

    .line 2338
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->R:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v8

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2351
    :goto_2
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    .line 2352
    float-to-int v0, v4

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 2353
    float-to-int v0, v4

    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->d(I)Z

    .line 2355
    return v3

    .line 2342
    :cond_0
    cmpl-float v0, v5, v1

    if-lez v0, :cond_2

    .line 2343
    if-eqz v6, :cond_1

    .line 2344
    sub-float v0, v5, v1

    .line 2345
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->S:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v4, v8

    div-float/2addr v0, v4

    invoke-virtual {v2, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_3
    move v4, v1

    .line 2348
    goto :goto_2

    :cond_1
    move v3, v2

    goto :goto_3

    :cond_2
    move v4, v5

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v6, v3

    move v1, v7

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method private c(Z)V
    .locals 1

    .prologue
    .line 2303
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2304
    if-eqz v0, :cond_0

    .line 2305
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2307
    :cond_0
    return-void
.end method

.method private static c(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1498
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1499
    const-class v1, Landroidx/viewpager/widget/ViewPager$a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(I)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1818
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1819
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->T:Z

    if-eqz v1, :cond_1

    .line 1847
    :cond_0
    :goto_0
    return v0

    .line 1824
    :cond_1
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->V:Z

    .line 1825
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->a(IFI)V

    .line 1826
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->V:Z

    if-nez v1, :cond_0

    .line 1827
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1832
    :cond_2
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->i()Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v1

    .line 1833
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    .line 1834
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    add-int/2addr v3, v2

    .line 1835
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1836
    iget v5, v1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    .line 1837
    int-to-float v6, p1

    int-to-float v2, v2

    div-float v2, v6, v2

    iget v6, v1, Landroidx/viewpager/widget/ViewPager$b;->e:F

    sub-float/2addr v2, v6

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v1, v4

    div-float v1, v2, v1

    .line 1839
    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1841
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->V:Z

    .line 1842
    invoke-virtual {p0, v5, v1, v2}, Landroidx/viewpager/widget/ViewPager;->a(IFI)V

    .line 1843
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->V:Z

    if-nez v0, :cond_3

    .line 1844
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1847
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(I)V
    .locals 3

    .prologue
    .line 1940
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ab:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ab:Landroidx/viewpager/widget/ViewPager$f;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$f;->a(I)V

    .line 1943
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1944
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1945
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$f;

    .line 1946
    if-eqz v0, :cond_1

    .line 1947
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$f;->a(I)V

    .line 1944
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1951
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ac:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_3

    .line 1952
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ac:Landroidx/viewpager/widget/ViewPager$f;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$f;->a(I)V

    .line 1954
    :cond_3
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 555
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 556
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$c;

    .line 558
    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->removeViewAt(I)V

    .line 560
    add-int/lit8 v1, v1, -0x1

    .line 555
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 563
    :cond_1
    return-void
.end method

.method private f(I)V
    .locals 3

    .prologue
    .line 1957
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ab:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ab:Landroidx/viewpager/widget/ViewPager$f;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$f;->b(I)V

    .line 1960
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1961
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1962
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$f;

    .line 1963
    if-eqz v0, :cond_1

    .line 1964
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$f;->b(I)V

    .line 1961
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1968
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ac:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_3

    .line 1969
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ac:Landroidx/viewpager/widget/ViewPager$f;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$f;->b(I)V

    .line 1971
    :cond_3
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 1282
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->ag:I

    if-eqz v0, :cond_2

    .line 1283
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ah:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ah:Ljava/util/ArrayList;

    .line 1288
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 1289
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1290
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1291
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->ah:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1286
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1293
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ah:Ljava/util/ArrayList;

    sget-object v1, Landroidx/viewpager/widget/ViewPager;->ai:Landroidx/viewpager/widget/ViewPager$j;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1295
    :cond_2
    return-void
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 600
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 2294
    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    .line 2295
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->j()V

    .line 2296
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2297
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2298
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2299
    :goto_0
    return v0

    .line 2298
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Landroidx/viewpager/widget/ViewPager$b;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2363
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v1

    .line 2364
    if-lez v1, :cond_3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    move v10, v0

    .line 2365
    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    .line 2366
    :goto_1
    const/4 v9, -0x1

    .line 2369
    const/4 v6, 0x1

    .line 2371
    const/4 v0, 0x0

    move v3, v4

    move-object v5, v0

    move v7, v2

    move v8, v2

    .line 2372
    :goto_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 2373
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    .line 2375
    if-nez v6, :cond_6

    iget v2, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    add-int/lit8 v11, v9, 0x1

    if-eq v2, v11, :cond_6

    .line 2377
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->h:Landroidx/viewpager/widget/ViewPager$b;

    .line 2378
    add-float v2, v8, v7

    add-float/2addr v2, v1

    iput v2, v0, Landroidx/viewpager/widget/ViewPager$b;->e:F

    .line 2379
    add-int/lit8 v2, v9, 0x1

    iput v2, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    .line 2380
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    iget v7, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    invoke-virtual {v2, v7}, Landroidx/viewpager/widget/a;->d(I)F

    move-result v2

    iput v2, v0, Landroidx/viewpager/widget/ViewPager$b;->d:F

    .line 2381
    add-int/lit8 v3, v3, -0x1

    move-object v2, v0

    .line 2383
    :goto_3
    iget v8, v2, Landroidx/viewpager/widget/ViewPager$b;->e:F

    .line 2386
    iget v0, v2, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v0, v8

    add-float/2addr v0, v1

    .line 2387
    if-nez v6, :cond_0

    cmpl-float v6, v10, v8

    if-ltz v6, :cond_2

    .line 2388
    :cond_0
    cmpg-float v0, v10, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_5

    :cond_1
    move-object v5, v2

    .line 2401
    :cond_2
    return-object v5

    :cond_3
    move v10, v2

    .line 2364
    goto :goto_0

    :cond_4
    move v1, v2

    .line 2365
    goto :goto_1

    .line 2395
    :cond_5
    iget v9, v2, Landroidx/viewpager/widget/ViewPager$b;->b:I

    .line 2397
    iget v7, v2, Landroidx/viewpager/widget/ViewPager$b;->d:F

    .line 2372
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v5, v2

    move v6, v4

    goto :goto_2

    :cond_6
    move-object v2, v0

    goto :goto_3
.end method

.method private j()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2659
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    .line 2660
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->C:Z

    .line 2662
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2663
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2664
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    .line 2666
    :cond_0
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 2669
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    if-eq v0, p1, :cond_0

    .line 2670
    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    .line 2681
    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 2

    .prologue
    .line 927
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 928
    const v1, 0x3ef1463b

    mul-float/2addr v0, v1

    .line 929
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method a(II)Landroidx/viewpager/widget/ViewPager$b;
    .locals 2

    .prologue
    .line 1008
    new-instance v0, Landroidx/viewpager/widget/ViewPager$b;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$b;-><init>()V

    .line 1009
    iput p1, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    .line 1010
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager$b;->a:Ljava/lang/Object;

    .line 1011
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/a;->d(I)F

    move-result v1

    iput v1, v0, Landroidx/viewpager/widget/ViewPager$b;->d:F

    .line 1012
    if-ltz p2, :cond_0

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1013
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    :goto_0
    return-object v0

    .line 1015
    :cond_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$b;
    .locals 4

    .prologue
    .line 1512
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1513
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    .line 1514
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    iget-object v3, v0, Landroidx/viewpager/widget/ViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/a;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1518
    :goto_1
    return-object v0

    .line 1512
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1518
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setWillNotDraw(Z)V

    .line 402
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setDescendantFocusability(I)V

    .line 403
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->setFocusable(Z)V

    .line 404
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 405
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroidx/viewpager/widget/ViewPager;->f:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    .line 406
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 407
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 409
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->F:I

    .line 410
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->M:I

    .line 411
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->N:I

    .line 412
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->R:Landroid/widget/EdgeEffect;

    .line 413
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->S:Landroid/widget/EdgeEffect;

    .line 415
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->O:I

    .line 416
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    .line 417
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->D:I

    .line 419
    new-instance v0, Landroidx/viewpager/widget/ViewPager$d;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$d;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 421
    invoke-static {p0}, Landroidx/core/h/u;->f(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 423
    invoke-static {p0, v4}, Landroidx/core/h/u;->b(Landroid/view/View;I)V

    .line 427
    :cond_0
    new-instance v0, Landroidx/viewpager/widget/ViewPager$4;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$4;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/q;)V

    .line 475
    return-void
.end method

.method a(I)V
    .locals 13

    .prologue
    .line 1096
    const/4 v0, 0x0

    .line 1097
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-eq v1, p1, :cond_21

    .line 1098
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->b(I)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v0

    .line 1099
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    move-object v1, v0

    .line 1102
    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    if-nez v0, :cond_1

    .line 1103
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->g()V

    .line 1279
    :cond_0
    :goto_1
    return-void

    .line 1111
    :cond_1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->z:Z

    if-eqz v0, :cond_2

    .line 1113
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->g()V

    goto :goto_1

    .line 1120
    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;)V

    .line 1126
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    .line 1127
    const/4 v2, 0x0

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1128
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v2}, Landroidx/viewpager/widget/a;->b()I

    move-result v10

    .line 1129
    add-int/lit8 v2, v10, -0x1

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1131
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->d:I

    if-eq v10, v0, :cond_3

    .line 1134
    :try_start_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1138
    :goto_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Pager id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " Pager class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " Problematic adapter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    .line 1143
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1148
    :cond_3
    const/4 v3, 0x0

    .line 1149
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_20

    .line 1150
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    .line 1151
    iget v4, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-lt v4, v5, :cond_8

    .line 1152
    iget v4, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-ne v4, v5, :cond_20

    .line 1157
    :goto_4
    if-nez v0, :cond_1f

    if-lez v10, :cond_1f

    .line 1158
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/ViewPager;->a(II)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v0

    move-object v8, v0

    .line 1164
    :goto_5
    if-eqz v8, :cond_6

    .line 1165
    const/4 v5, 0x0

    .line 1166
    add-int/lit8 v4, v2, -0x1

    .line 1167
    if-ltz v4, :cond_9

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    .line 1168
    :goto_6
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v12

    .line 1169
    if-gtz v12, :cond_a

    const/4 v3, 0x0

    .line 1171
    :goto_7
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    add-int/lit8 v7, v6, -0x1

    move v6, v2

    :goto_8
    if-ltz v7, :cond_4

    .line 1172
    cmpl-float v2, v5, v3

    if-ltz v2, :cond_d

    if-ge v7, v9, :cond_d

    .line 1173
    if-nez v0, :cond_b

    .line 1199
    :cond_4
    iget v3, v8, Landroidx/viewpager/widget/ViewPager$b;->d:F

    .line 1200
    add-int/lit8 v4, v6, 0x1

    .line 1201
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_5

    .line 1202
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_11

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    move-object v7, v0

    .line 1203
    :goto_9
    if-gtz v12, :cond_12

    const/4 v0, 0x0

    move v2, v0

    .line 1205
    :goto_a
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    add-int/lit8 v5, v0, 0x1

    move-object v0, v7

    :goto_b
    if-ge v5, v10, :cond_5

    .line 1206
    cmpl-float v7, v3, v2

    if-ltz v7, :cond_16

    if-le v5, v11, :cond_16

    .line 1207
    if-nez v0, :cond_13

    .line 1232
    :cond_5
    invoke-direct {p0, v8, v6, v1}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$b;ILandroidx/viewpager/widget/ViewPager$b;)V

    .line 1234
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    iget-object v2, v8, Landroidx/viewpager/widget/ViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Landroidx/viewpager/widget/a;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1244
    :cond_6
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->b(Landroid/view/ViewGroup;)V

    .line 1248
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v2

    .line 1249
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v2, :cond_1a

    .line 1250
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1251
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$c;

    .line 1252
    iput v1, v0, Landroidx/viewpager/widget/ViewPager$c;->f:I

    .line 1253
    iget-boolean v4, v0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-nez v4, :cond_7

    iget v4, v0, Landroidx/viewpager/widget/ViewPager$c;->c:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_7

    .line 1255
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v3

    .line 1256
    if-eqz v3, :cond_7

    .line 1257
    iget v4, v3, Landroidx/viewpager/widget/ViewPager$b;->d:F

    iput v4, v0, Landroidx/viewpager/widget/ViewPager$c;->c:F

    .line 1258
    iget v3, v3, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iput v3, v0, Landroidx/viewpager/widget/ViewPager$c;->e:I

    .line 1249
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 1149
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    .line 1167
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 1169
    :cond_a
    const/high16 v3, 0x40000000    # 2.0f

    iget v6, v8, Landroidx/viewpager/widget/ViewPager$b;->d:F

    sub-float/2addr v3, v6

    .line 1170
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v12

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    goto/16 :goto_7

    .line 1176
    :cond_b
    iget v2, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-ne v7, v2, :cond_1e

    iget-boolean v2, v0, Landroidx/viewpager/widget/ViewPager$b;->c:Z

    if-nez v2, :cond_1e

    .line 1177
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1178
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v2, p0, v7, v0}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1183
    add-int/lit8 v2, v4, -0x1

    .line 1184
    add-int/lit8 v4, v6, -0x1

    .line 1185
    if-ltz v2, :cond_c

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    :goto_d
    move v6, v4

    .line 1171
    :goto_e
    add-int/lit8 v7, v7, -0x1

    move v4, v2

    goto/16 :goto_8

    .line 1185
    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    .line 1187
    :cond_d
    if-eqz v0, :cond_f

    iget v2, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-ne v7, v2, :cond_f

    .line 1188
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v5, v0

    .line 1189
    add-int/lit8 v2, v4, -0x1

    .line 1190
    if-ltz v2, :cond_e

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    goto :goto_e

    .line 1192
    :cond_f
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v7, v0}, Landroidx/viewpager/widget/ViewPager;->a(II)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v0

    .line 1193
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v5, v0

    .line 1194
    add-int/lit8 v6, v6, 0x1

    .line 1195
    if-ltz v4, :cond_10

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    :goto_f
    move v2, v4

    goto :goto_e

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    .line 1202
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 1204
    :cond_12
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v12

    div-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v0, v2

    move v2, v0

    goto/16 :goto_a

    .line 1210
    :cond_13
    iget v7, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-ne v5, v7, :cond_14

    iget-boolean v7, v0, Landroidx/viewpager/widget/ViewPager$b;->c:Z

    if-nez v7, :cond_14

    .line 1211
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1212
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v7, p0, v5, v0}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1217
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_15

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    .line 1205
    :cond_14
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b

    .line 1217
    :cond_15
    const/4 v0, 0x0

    goto :goto_10

    .line 1219
    :cond_16
    if-eqz v0, :cond_18

    iget v7, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-ne v5, v7, :cond_18

    .line 1220
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v3, v0

    .line 1221
    add-int/lit8 v4, v4, 0x1

    .line 1222
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_17

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    goto :goto_10

    :cond_17
    const/4 v0, 0x0

    goto :goto_10

    .line 1224
    :cond_18
    invoke-virtual {p0, v5, v4}, Landroidx/viewpager/widget/ViewPager;->a(II)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v0

    .line 1225
    add-int/lit8 v4, v4, 0x1

    .line 1226
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v3, v0

    .line 1227
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_19

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    goto :goto_10

    :cond_19
    const/4 v0, 0x0

    goto :goto_10

    .line 1262
    :cond_1a
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->g()V

    .line 1264
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1266
    if-eqz v0, :cond_1d

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v0

    .line 1267
    :goto_11
    if-eqz v0, :cond_1b

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-eq v0, v1, :cond_0

    .line 1268
    :cond_1b
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1269
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1270
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v2

    .line 1271
    if-eqz v2, :cond_1c

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-ne v2, v3, :cond_1c

    .line 1272
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1268
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1266
    :cond_1d
    const/4 v0, 0x0

    goto :goto_11

    :cond_1e
    move v2, v4

    goto/16 :goto_e

    :cond_1f
    move-object v8, v0

    goto/16 :goto_5

    :cond_20
    move-object v0, v3

    goto/16 :goto_4

    :cond_21
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected a(IFI)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 1865
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->W:I

    if-lez v0, :cond_2

    .line 1866
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v6

    .line 1867
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1868
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1869
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v7

    .line 1870
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v8

    move v5, v4

    .line 1871
    :goto_0
    if-ge v5, v8, :cond_2

    .line 1872
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1873
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$c;

    .line 1874
    iget-boolean v3, v0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-nez v3, :cond_1

    move v3, v1

    .line 1871
    :cond_0
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v1, v3

    goto :goto_0

    .line 1876
    :cond_1
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$c;->b:I

    and-int/lit8 v0, v0, 0x7

    .line 1878
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v3, v1

    .line 1895
    :goto_2
    add-int/2addr v0, v6

    .line 1897
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1898
    if-eqz v0, :cond_0

    .line 1899
    invoke-virtual {v9, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1884
    :pswitch_1
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v3, v1, v0

    move v0, v1

    .line 1885
    goto :goto_2

    .line 1887
    :pswitch_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v1

    .line 1889
    goto :goto_2

    .line 1891
    :pswitch_3
    sub-int v0, v7, v2

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1892
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    move v3, v1

    goto :goto_2

    .line 1904
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->b(IFI)V

    .line 1906
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ae:Landroidx/viewpager/widget/ViewPager$g;

    if-eqz v0, :cond_4

    .line 1907
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 1908
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

    move v1, v4

    .line 1909
    :goto_3
    if-ge v1, v3, :cond_4

    .line 1910
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1911
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$c;

    .line 1913
    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-eqz v0, :cond_3

    .line 1909
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1914
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 1915
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->ae:Landroidx/viewpager/widget/ViewPager$g;

    invoke-interface {v5, v4, v0}, Landroidx/viewpager/widget/ViewPager$g;->a(Landroid/view/View;F)V

    goto :goto_4

    .line 1919
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->V:Z

    .line 1920
    return-void

    .line 1878
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method a(III)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 950
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 952
    invoke-direct {p0, v6}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1005
    :goto_0
    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    .line 958
    :goto_1
    if-eqz v0, :cond_3

    .line 963
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 965
    :goto_2
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 966
    invoke-direct {p0, v6}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    move v1, v0

    .line 970
    :goto_3
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v2

    .line 971
    sub-int v3, p1, v1

    .line 972
    sub-int v4, p2, v2

    .line 973
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    .line 974
    invoke-direct {p0, v6}, Landroidx/viewpager/widget/ViewPager;->a(Z)V

    .line 975
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->c()V

    .line 976
    invoke-virtual {p0, v6}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    goto :goto_0

    :cond_1
    move v0, v6

    .line 957
    goto :goto_1

    .line 963
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    goto :goto_2

    .line 968
    :cond_3
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    goto :goto_3

    .line 980
    :cond_4
    invoke-direct {p0, v5}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 981
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 983
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    .line 984
    div-int/lit8 v5, v0, 0x2

    .line 985
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v9

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 986
    int-to-float v8, v5

    int-to-float v5, v5

    .line 987
    invoke-virtual {p0, v7}, Landroidx/viewpager/widget/ViewPager;->a(F)F

    move-result v7

    mul-float/2addr v5, v7

    add-float/2addr v5, v8

    .line 990
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 991
    if-lez v7, :cond_5

    .line 992
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 998
    :goto_4
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1002
    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 1003
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1004
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    goto/16 :goto_0

    .line 994
    :cond_5
    int-to-float v0, v0

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    invoke-virtual {v5, v7}, Landroidx/viewpager/widget/a;->d(I)F

    move-result v5

    mul-float/2addr v0, v5

    .line 995
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    int-to-float v7, v7

    add-float/2addr v0, v7

    div-float v0, v5, v0

    .line 996
    add-float/2addr v0, v9

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_4
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 622
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->z:Z

    .line 623
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->a(IZZ)V

    .line 624
    return-void
.end method

.method a(IZZ)V
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/ViewPager;->a(IZZI)V

    .line 632
    return-void
.end method

.method a(IZZI)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 635
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->b()I

    move-result v0

    if-gtz v0, :cond_1

    .line 636
    :cond_0
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 672
    :goto_0
    return-void

    .line 639
    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 644
    :cond_2
    if-gez p1, :cond_5

    move p1, v1

    .line 649
    :cond_3
    :goto_1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    .line 650
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_6

    :cond_4
    move v2, v1

    .line 654
    :goto_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 655
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    iput-boolean v3, v0, Landroidx/viewpager/widget/ViewPager$b;->c:Z

    .line 654
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 646
    :cond_5
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->b()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 647
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->b()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 658
    :cond_6
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-eq v0, p1, :cond_7

    move v1, v3

    .line 660
    :cond_7
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->T:Z

    if-eqz v0, :cond_9

    .line 663
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    .line 664
    if-eqz v1, :cond_8

    .line 665
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->e(I)V

    .line 667
    :cond_8
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    goto :goto_0

    .line 669
    :cond_9
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->a(I)V

    .line 670
    invoke-direct {p0, p1, p2, p4, v1}, Landroidx/viewpager/widget/ViewPager;->a(IZIZ)V

    goto :goto_0
.end method

.method public a(Landroidx/viewpager/widget/ViewPager$e;)V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ad:Ljava/util/List;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ad:Ljava/util/List;

    .line 584
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ad:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    return-void
.end method

.method public a(Landroidx/viewpager/widget/ViewPager$f;)V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    .line 726
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 2756
    const/4 v0, 0x0

    .line 2757
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2758
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2782
    :cond_0
    :goto_0
    return v0

    .line 2760
    :sswitch_0
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2761
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->d()Z

    move-result v0

    goto :goto_0

    .line 2763
    :cond_1
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 2767
    :sswitch_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2768
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()Z

    move-result v0

    goto :goto_0

    .line 2770
    :cond_2
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 2774
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2775
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 2776
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2777
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 2758
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 2719
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 2720
    check-cast v6, Landroid/view/ViewGroup;

    .line 2721
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 2722
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 2723
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2725
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    .line 2728
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2729
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    .line 2730
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    .line 2731
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    .line 2732
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 2731
    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2738
    :cond_0
    :goto_1
    return v2

    .line 2725
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 2738
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2905
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2907
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2909
    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_1

    .line 2910
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2911
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2912
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2913
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v4

    .line 2914
    if-eqz v4, :cond_0

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-ne v4, v5, :cond_0

    .line 2915
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2910
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2925
    :cond_1
    const/high16 v0, 0x40000

    if-ne v2, v0, :cond_2

    .line 2926
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 2929
    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2940
    :cond_3
    :goto_1
    return-void

    .line 2932
    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2933
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2936
    :cond_5
    if-eqz p1, :cond_3

    .line 2937
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2950
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2951
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2952
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2953
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v2

    .line 2954
    if-eqz v2, :cond_0

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-ne v2, v3, :cond_0

    .line 2955
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2950
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2959
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1472
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1473
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 1475
    check-cast v0, Landroidx/viewpager/widget/ViewPager$c;

    .line 1477
    iget-boolean v2, v0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    invoke-static {p1}, Landroidx/viewpager/widget/ViewPager;->c(Landroid/view/View;)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    .line 1478
    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-eqz v2, :cond_1

    .line 1479
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-eqz v2, :cond_0

    .line 1480
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1482
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager$c;->d:Z

    .line 1483
    invoke-virtual {p0, p1, p2, v1}, Landroidx/viewpager/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1495
    :goto_1
    return-void

    .line 1485
    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method b(I)Landroidx/viewpager/widget/ViewPager$b;
    .locals 3

    .prologue
    .line 1533
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1534
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    .line 1535
    iget v2, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-ne v2, p1, :cond_0

    .line 1539
    :goto_1
    return-object v0

    .line 1533
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1539
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method b(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$b;
    .locals 2

    .prologue
    .line 1523
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 1524
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1525
    :cond_0
    const/4 v0, 0x0

    .line 1529
    :goto_1
    return-object v0

    .line 1527
    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 1529
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v0

    goto :goto_1
.end method

.method b()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1023
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->b()I

    move-result v8

    .line 1024
    iput v8, p0, Landroidx/viewpager/widget/ViewPager;->d:I

    .line 1025
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    .line 1026
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_1

    move v0, v1

    .line 1027
    :goto_0
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    move v3, v2

    move v4, v2

    move v6, v0

    .line 1030
    :goto_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 1031
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    .line 1032
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Landroidx/viewpager/widget/a;->a(Ljava/lang/Object;)I

    move-result v7

    .line 1034
    const/4 v9, -0x1

    if-ne v7, v9, :cond_2

    .line 1030
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 1026
    goto :goto_0

    .line 1038
    :cond_2
    const/4 v9, -0x2

    if-ne v7, v9, :cond_4

    .line 1039
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1040
    add-int/lit8 v3, v3, -0x1

    .line 1042
    if-nez v4, :cond_3

    .line 1043
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v4, p0}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;)V

    move v4, v1

    .line 1047
    :cond_3
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    iget v7, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v9}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1050
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-ne v6, v0, :cond_b

    .line 1052
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    add-int/lit8 v5, v8, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v1

    .line 1053
    goto :goto_2

    .line 1058
    :cond_4
    iget v9, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-eq v9, v7, :cond_0

    .line 1059
    iget v6, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iget v9, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-ne v6, v9, :cond_5

    move v5, v7

    .line 1064
    :cond_5
    iput v7, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    move v6, v1

    .line 1065
    goto :goto_2

    .line 1069
    :cond_6
    if-eqz v4, :cond_7

    .line 1070
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->b(Landroid/view/ViewGroup;)V

    .line 1073
    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    sget-object v3, Landroidx/viewpager/widget/ViewPager;->e:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1075
    if-eqz v6, :cond_a

    .line 1077
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    .line 1078
    :goto_3
    if-ge v3, v4, :cond_9

    .line 1079
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1080
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$c;

    .line 1081
    iget-boolean v6, v0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-nez v6, :cond_8

    .line 1082
    const/4 v6, 0x0

    iput v6, v0, Landroidx/viewpager/widget/ViewPager$c;->c:F

    .line 1078
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 1086
    :cond_9
    invoke-virtual {p0, v5, v2, v1}, Landroidx/viewpager/widget/ViewPager;->a(IZZ)V

    .line 1087
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    .line 1089
    :cond_a
    return-void

    :cond_b
    move v6, v1

    goto :goto_2
.end method

.method public b(Landroidx/viewpager/widget/ViewPager$e;)V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ad:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ad:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 597
    :cond_0
    return-void
.end method

.method public b(Landroidx/viewpager/widget/ViewPager$f;)V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 739
    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 1092
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->a(I)V

    .line 1093
    return-void
.end method

.method public c(I)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x42

    const/16 v7, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2793
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2794
    if-ne v2, p0, :cond_1

    move-object v0, v1

    .line 2821
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2823
    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    .line 2824
    if-ne p1, v7, :cond_5

    .line 2827
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2828
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2829
    if-eqz v0, :cond_4

    if-lt v2, v3, :cond_4

    .line 2830
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->d()Z

    move-result v0

    .line 2852
    :goto_1
    if-eqz v0, :cond_0

    .line 2853
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->playSoundEffect(I)V

    .line 2855
    :cond_0
    return v0

    .line 2796
    :cond_1
    if-eqz v2, :cond_c

    .line 2798
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    .line 2800
    if-ne v0, p0, :cond_2

    move v0, v4

    .line 2805
    :goto_3
    if-nez v0, :cond_c

    .line 2807
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2808
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 2811
    const-string/jumbo v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 2799
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    .line 2813
    :cond_3
    const-string/jumbo v0, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2814
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2813
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2815
    goto/16 :goto_0

    .line 2832
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_1

    .line 2834
    :cond_5
    if-ne p1, v8, :cond_b

    .line 2837
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2838
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2839
    if-eqz v0, :cond_6

    if-gt v2, v3, :cond_6

    .line 2840
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()Z

    move-result v0

    goto/16 :goto_1

    .line 2842
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2845
    :cond_7
    if-eq p1, v7, :cond_8

    if-ne p1, v4, :cond_9

    .line 2847
    :cond_8
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->d()Z

    move-result v0

    goto/16 :goto_1

    .line 2848
    :cond_9
    if-eq p1, v8, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 2850
    :cond_a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()Z

    move-result v0

    goto/16 :goto_1

    :cond_b
    move v0, v3

    goto/16 :goto_1

    :cond_c
    move-object v0, v2

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto/16 :goto_3
.end method

.method public canScrollHorizontally(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2692
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    if-nez v2, :cond_1

    .line 2703
    :cond_0
    :goto_0
    return v1

    .line 2696
    :cond_1
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    .line 2697
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v3

    .line 2698
    if-gez p1, :cond_3

    .line 2699
    int-to-float v2, v2

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-le v3, v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 2700
    :cond_3
    if-lez p1, :cond_0

    .line 2701
    int-to-float v2, v2

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->u:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-ge v3, v2, :cond_4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 3029
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$c;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1793
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 1794
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1795
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1796
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v1

    .line 1797
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1798
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1800
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1801
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1802
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1803
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1804
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1809
    :cond_1
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 1815
    :goto_0
    return-void

    .line 1814
    :cond_2
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->a(Z)V

    goto :goto_0
.end method

.method d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2885
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-lez v1, :cond_0

    .line 2886
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    .line 2889
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2744
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2997
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1

    .line 2998
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 3014
    :cond_0
    :goto_0
    return v0

    .line 3002
    :cond_1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 3003
    :goto_1
    if-ge v1, v2, :cond_0

    .line 3004
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3005
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 3006
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v4

    .line 3007
    if-eqz v4, :cond_2

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-ne v4, v5, :cond_2

    .line 3008
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3009
    const/4 v0, 0x1

    goto :goto_0

    .line 3003
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 2426
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2427
    const/4 v0, 0x0

    .line 2429
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getOverScrollMode()I

    move-result v1

    .line 2430
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    .line 2432
    invoke-virtual {v1}, Landroidx/viewpager/widget/a;->b()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 2433
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2434
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2435
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2436
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v3

    .line 2438
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2439
    neg-int v4, v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2440
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2441
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2442
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2444
    :cond_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2445
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2446
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v2

    .line 2447
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2449
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2450
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->u:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2451
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2452
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2453
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2460
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2462
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 2464
    :cond_3
    return-void

    .line 2456
    :cond_4
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    .line 2457
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->S:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 915
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 916
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->q:Landroid/graphics/drawable/Drawable;

    .line 917
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 920
    :cond_0
    return-void
.end method

.method e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2893
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v2}, Landroidx/viewpager/widget/a;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2894
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    .line 2897
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 3019
    new-instance v0, Landroidx/viewpager/widget/ViewPager$c;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$c;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3034
    new-instance v0, Landroidx/viewpager/widget/ViewPager$c;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/viewpager/widget/ViewPager$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 3024
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroidx/viewpager/widget/a;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .prologue
    .line 802
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->ag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    .line 803
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ah:Ljava/util/ArrayList;

    .line 804
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$c;

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$c;->f:I

    .line 805
    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 828
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 884
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1544
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1545
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->T:Z

    .line 1546
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->aj:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 481
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 484
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 485
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .prologue
    .line 2468
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2471
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->p:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    if-eqz v1, :cond_2

    .line 2472
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v7

    .line 2473
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v8

    .line 2475
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->p:I

    int-to-float v1, v1

    int-to-float v2, v8

    div-float v9, v1, v2

    .line 2476
    const/4 v6, 0x0

    .line 2477
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$b;

    .line 2478
    iget v4, v1, Landroidx/viewpager/widget/ViewPager$b;->e:F

    .line 2479
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2480
    iget v3, v1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    .line 2481
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    add-int/lit8 v5, v10, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$b;

    iget v11, v2, Landroidx/viewpager/widget/ViewPager$b;->b:I

    move v5, v3

    move v2, v6

    .line 2482
    :goto_0
    if-ge v5, v11, :cond_2

    .line 2483
    :goto_1
    iget v3, v1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-le v5, v3, :cond_0

    if-ge v2, v10, :cond_0

    .line 2484
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$b;

    goto :goto_1

    .line 2488
    :cond_0
    iget v3, v1, Landroidx/viewpager/widget/ViewPager$b;->b:I

    if-ne v5, v3, :cond_3

    .line 2489
    iget v3, v1, Landroidx/viewpager/widget/ViewPager$b;->e:F

    iget v4, v1, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v3, v4

    int-to-float v4, v8

    mul-float/2addr v3, v4

    .line 2490
    iget v4, v1, Landroidx/viewpager/widget/ViewPager$b;->e:F

    iget v6, v1, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v4, v6

    add-float/2addr v4, v9

    .line 2497
    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->p:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    int-to-float v12, v7

    cmpl-float v6, v6, v12

    if-lez v6, :cond_1

    .line 2498
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroidx/viewpager/widget/ViewPager;->r:I

    move-object/from16 v0, p0

    iget v14, v0, Landroidx/viewpager/widget/ViewPager;->p:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    .line 2499
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroidx/viewpager/widget/ViewPager;->s:I

    .line 2498
    invoke-virtual {v6, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2500
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->q:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2503
    :cond_1
    add-int v6, v7, v8

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    .line 2508
    :cond_2
    return-void

    .line 2492
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v3, v5}, Landroidx/viewpager/widget/a;->d(I)F

    move-result v6

    .line 2493
    add-float v3, v4, v6

    int-to-float v12, v8

    mul-float/2addr v3, v12

    .line 2494
    add-float/2addr v6, v9

    add-float/2addr v4, v6

    goto :goto_2

    .line 2482
    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 2031
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 2034
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    .line 2037
    :cond_0
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->h()Z

    .line 2161
    :cond_1
    :goto_0
    return v2

    .line 2043
    :cond_2
    if-eqz v0, :cond_4

    .line 2044
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    if-eqz v1, :cond_3

    move v2, v6

    .line 2046
    goto :goto_0

    .line 2048
    :cond_3
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->C:Z

    if-nez v1, :cond_1

    .line 2054
    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 2152
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 2153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    .line 2155
    :cond_6
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2161
    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    goto :goto_0

    .line 2065
    :sswitch_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    .line 2066
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 2071
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2072
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 2073
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    sub-float v8, v7, v1

    .line 2074
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 2075
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 2076
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->J:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2079
    cmpl-float v0, v8, v12

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    invoke-direct {p0, v0, v8}, Landroidx/viewpager/widget/ViewPager;->a(FF)Z

    move-result v0

    if-nez v0, :cond_7

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    .line 2080
    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2082
    iput v7, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    .line 2083
    iput v10, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    .line 2084
    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->C:Z

    goto :goto_0

    .line 2087
    :cond_7
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->F:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_a

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_a

    .line 2089
    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    .line 2090
    invoke-direct {p0, v6}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    .line 2091
    invoke-virtual {p0, v6}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 2092
    cmpl-float v0, v8, v12

    if-lez v0, :cond_9

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->F:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    .line 2094
    iput v10, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    .line 2095
    invoke-direct {p0, v6}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2104
    :cond_8
    :goto_3
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    if-eqz v0, :cond_5

    .line 2106
    invoke-direct {p0, v7}, Landroidx/viewpager/widget/ViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2107
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2092
    :cond_9
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->F:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 2096
    :cond_a
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->F:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    .line 2102
    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->C:Z

    goto :goto_3

    .line 2118
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    .line 2119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->J:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    .line 2120
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    .line 2121
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->C:Z

    .line 2123
    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 2124
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2125
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->ak:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    .line 2126
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    if-le v0, v1, :cond_b

    .line 2128
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2129
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->z:Z

    .line 2130
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->c()V

    .line 2131
    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    .line 2132
    invoke-direct {p0, v6}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    .line 2133
    invoke-virtual {p0, v6}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 2135
    :cond_b
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->a(Z)V

    .line 2136
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    goto/16 :goto_1

    .line 2148
    :sswitch_2
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2054
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .prologue
    .line 1682
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v11

    .line 1683
    sub-int v12, p4, p2

    .line 1684
    sub-int v13, p5, p3

    .line 1685
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v8

    .line 1686
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v2

    .line 1687
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v4

    .line 1688
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v3

    .line 1689
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v14

    .line 1691
    const/4 v5, 0x0

    .line 1695
    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_0

    .line 1696
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1697
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_5

    .line 1698
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$c;

    .line 1701
    iget-boolean v6, v1, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-eqz v6, :cond_5

    .line 1702
    iget v6, v1, Landroidx/viewpager/widget/ViewPager$c;->b:I

    and-int/lit8 v6, v6, 0x7

    .line 1703
    iget v1, v1, Landroidx/viewpager/widget/ViewPager$c;->b:I

    and-int/lit8 v16, v1, 0x70

    .line 1704
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move v9, v8

    move v6, v4

    move v7, v8

    .line 1721
    :goto_1
    sparse-switch v16, :sswitch_data_0

    move v1, v2

    move v4, v2

    .line 1738
    :goto_2
    add-int v2, v9, v14

    .line 1740
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v2

    .line 1741
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v1

    .line 1739
    invoke-virtual {v15, v2, v1, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1742
    add-int/lit8 v1, v5, 0x1

    move v2, v4

    .line 1695
    :goto_3
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v5, v1

    move v4, v6

    move v8, v7

    goto :goto_0

    .line 1710
    :pswitch_1
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v7, v8, v1

    move v9, v8

    move v6, v4

    .line 1711
    goto :goto_1

    .line 1713
    :pswitch_2
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v12, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v9, v1

    move v6, v4

    move v7, v8

    .line 1715
    goto :goto_1

    .line 1717
    :pswitch_3
    sub-int v1, v12, v4

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v1, v6

    .line 1718
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    move v9, v1

    move v6, v4

    move v7, v8

    goto :goto_1

    .line 1727
    :sswitch_0
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v4, v2, v1

    move v1, v2

    .line 1728
    goto :goto_2

    .line 1730
    :sswitch_1
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v4, v2

    .line 1732
    goto :goto_2

    .line 1734
    :sswitch_2
    sub-int v1, v13, v3

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v1, v4

    .line 1735
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    move v4, v2

    goto :goto_2

    .line 1747
    :cond_0
    sub-int v1, v12, v8

    sub-int v6, v1, v4

    .line 1749
    const/4 v1, 0x0

    move v4, v1

    :goto_4
    if-ge v4, v11, :cond_3

    .line 1750
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1751
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v9, 0x8

    if-eq v1, v9, :cond_2

    .line 1752
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$c;

    .line 1754
    iget-boolean v9, v1, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-nez v9, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1755
    int-to-float v10, v6

    iget v9, v9, Landroidx/viewpager/widget/ViewPager$b;->e:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 1756
    add-int/2addr v9, v8

    .line 1758
    iget-boolean v10, v1, Landroidx/viewpager/widget/ViewPager$c;->d:Z

    if-eqz v10, :cond_1

    .line 1761
    const/4 v10, 0x0

    iput-boolean v10, v1, Landroidx/viewpager/widget/ViewPager$c;->d:Z

    .line 1762
    int-to-float v10, v6

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$c;->c:F

    mul-float/2addr v1, v10

    float-to-int v1, v1

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1765
    sub-int v10, v13, v2

    sub-int/2addr v10, v3

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1768
    invoke-virtual {v7, v1, v10}, Landroid/view/View;->measure(II)V

    .line 1776
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v9

    .line 1777
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v2

    .line 1775
    invoke-virtual {v7, v9, v2, v1, v10}, Landroid/view/View;->layout(IIII)V

    .line 1749
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    .line 1781
    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Landroidx/viewpager/widget/ViewPager;->r:I

    .line 1782
    sub-int v1, v13, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->s:I

    .line 1783
    move-object/from16 v0, p0

    iput v5, v0, Landroidx/viewpager/widget/ViewPager;->W:I

    .line 1785
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->T:Z

    if-eqz v1, :cond_4

    .line 1786
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/viewpager/widget/ViewPager;->a(IZIZ)V

    .line 1788
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->T:Z

    .line 1789
    return-void

    :cond_5
    move v1, v5

    move v6, v4

    move v7, v8

    goto/16 :goto_3

    .line 1704
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1721
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1555
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroidx/viewpager/widget/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    .line 1556
    invoke-static {v1, p2}, Landroidx/viewpager/widget/ViewPager;->getDefaultSize(II)I

    move-result v1

    .line 1555
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setMeasuredDimension(II)V

    .line 1558
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    .line 1559
    div-int/lit8 v1, v0, 0xa

    .line 1560
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->D:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->E:I

    .line 1563
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    .line 1564
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    .line 1571
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v10

    .line 1572
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_8

    .line 1573
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1574
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 1575
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$c;

    .line 1576
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-eqz v1, :cond_3

    .line 1577
    iget v1, v0, Landroidx/viewpager/widget/ViewPager$c;->b:I

    and-int/lit8 v5, v1, 0x7

    .line 1578
    iget v1, v0, Landroidx/viewpager/widget/ViewPager$c;->b:I

    and-int/lit8 v3, v1, 0x70

    .line 1579
    const/high16 v2, -0x80000000

    .line 1580
    const/high16 v1, -0x80000000

    .line 1581
    const/16 v7, 0x30

    if-eq v3, v7, :cond_0

    const/16 v7, 0x50

    if-ne v3, v7, :cond_4

    :cond_0
    const/4 v3, 0x1

    move v8, v3

    .line 1582
    :goto_1
    const/4 v3, 0x3

    if-eq v5, v3, :cond_1

    const/4 v3, 0x5

    if-ne v5, v3, :cond_5

    :cond_1
    const/4 v3, 0x1

    move v7, v3

    .line 1584
    :goto_2
    if-eqz v8, :cond_6

    .line 1585
    const/high16 v2, 0x40000000    # 2.0f

    .line 1592
    :cond_2
    :goto_3
    iget v3, v0, Landroidx/viewpager/widget/ViewPager$c;->width:I

    const/4 v5, -0x2

    if-eq v3, v5, :cond_e

    .line 1593
    const/high16 v5, 0x40000000    # 2.0f

    .line 1594
    iget v2, v0, Landroidx/viewpager/widget/ViewPager$c;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    .line 1595
    iget v2, v0, Landroidx/viewpager/widget/ViewPager$c;->width:I

    move v3, v2

    .line 1598
    :goto_4
    iget v2, v0, Landroidx/viewpager/widget/ViewPager$c;->height:I

    const/4 v12, -0x2

    if-eq v2, v12, :cond_c

    .line 1599
    const/high16 v1, 0x40000000    # 2.0f

    .line 1600
    iget v2, v0, Landroidx/viewpager/widget/ViewPager$c;->height:I

    const/4 v12, -0x1

    if-eq v2, v12, :cond_c

    .line 1601
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$c;->height:I

    .line 1604
    :goto_5
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1605
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1606
    invoke-virtual {v11, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1608
    if-eqz v8, :cond_7

    .line 1609
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v6, v0

    .line 1572
    :cond_3
    :goto_6
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 1581
    :cond_4
    const/4 v3, 0x0

    move v8, v3

    goto :goto_1

    .line 1582
    :cond_5
    const/4 v3, 0x0

    move v7, v3

    goto :goto_2

    .line 1586
    :cond_6
    if-eqz v7, :cond_2

    .line 1587
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_3

    .line 1610
    :cond_7
    if-eqz v7, :cond_3

    .line 1611
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v4, v0

    goto :goto_6

    .line 1617
    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->v:I

    .line 1618
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    .line 1621
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    .line 1622
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->c()V

    .line 1623
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    .line 1626
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v2

    .line 1627
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_b

    .line 1628
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1629
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_a

    .line 1634
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$c;

    .line 1635
    if-eqz v0, :cond_9

    iget-boolean v5, v0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-nez v5, :cond_a

    .line 1636
    :cond_9
    int-to-float v5, v4

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$c;->c:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1638
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    invoke-virtual {v3, v0, v5}, Landroid/view/View;->measure(II)V

    .line 1627
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1642
    :cond_b
    return-void

    :cond_c
    move v0, v6

    goto :goto_5

    :cond_d
    move v3, v4

    goto/16 :goto_4

    :cond_e
    move v3, v4

    move v5, v2

    goto/16 :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 2970
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 2971
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    move v2, v3

    move v4, v5

    .line 2980
    :goto_0
    if-eq v4, v0, :cond_2

    .line 2981
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2982
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2983
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v6

    .line 2984
    if-eqz v6, :cond_1

    iget v6, v6, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    if-ne v6, v7, :cond_1

    .line 2985
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2991
    :goto_1
    return v3

    .line 2976
    :cond_0
    add-int/lit8 v4, v0, -0x1

    move v0, v1

    move v2, v1

    .line 2978
    goto :goto_0

    .line 2980
    :cond_1
    add-int/2addr v4, v2

    goto :goto_0

    :cond_2
    move v3, v5

    .line 2991
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 1452
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$i;

    if-nez v0, :cond_0

    .line 1453
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1468
    :goto_0
    return-void

    .line 1457
    :cond_0
    check-cast p1, Landroidx/viewpager/widget/ViewPager$i;

    .line 1458
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager$i;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1460
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_1

    .line 1461
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    iget-object v1, p1, Landroidx/viewpager/widget/ViewPager$i;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Landroidx/viewpager/widget/ViewPager$i;->d:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/a;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1462
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$i;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->a(IZZ)V

    goto :goto_0

    .line 1464
    :cond_1
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$i;->a:I

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->j:I

    .line 1465
    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager$i;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/os/Parcelable;

    .line 1466
    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager$i;->d:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->l:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1441
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1442
    new-instance v1, Landroidx/viewpager/widget/ViewPager$i;

    invoke-direct {v1, v0}, Landroidx/viewpager/widget/ViewPager$i;-><init>(Landroid/os/Parcelable;)V

    .line 1443
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    iput v0, v1, Landroidx/viewpager/widget/ViewPager$i;->a:I

    .line 1444
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->a()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroidx/viewpager/widget/ViewPager$i;->b:Landroid/os/Parcelable;

    .line 1447
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 1646
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1649
    if-eq p1, p3, :cond_0

    .line 1650
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroidx/viewpager/widget/ViewPager;->a(IIII)V

    .line 1652
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2166
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 2289
    :goto_0
    return v0

    .line 2173
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 2176
    goto :goto_0

    .line 2179
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->b()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    .line 2181
    goto :goto_0

    .line 2184
    :cond_3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 2185
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    .line 2187
    :cond_4
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2192
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2286
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_6

    .line 2287
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    :cond_6
    move v0, v1

    .line 2289
    goto :goto_0

    .line 2194
    :pswitch_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2195
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->z:Z

    .line 2196
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->c()V

    .line 2199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    .line 2200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->J:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    .line 2201
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    goto :goto_1

    .line 2205
    :pswitch_2
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    if-nez v0, :cond_8

    .line 2206
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2207
    const/4 v3, -0x1

    if-ne v0, v3, :cond_7

    .line 2210
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->h()Z

    move-result v2

    goto :goto_1

    .line 2213
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2214
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2215
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2216
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2220
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->F:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_8

    cmpl-float v0, v4, v0

    if-lez v0, :cond_8

    .line 2222
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    .line 2223
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    .line 2224
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    sub-float v0, v3, v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->F:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_2
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    .line 2226
    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    .line 2227
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 2228
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2231
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2232
    if-eqz v0, :cond_8

    .line 2233
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2238
    :cond_8
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    if-eqz v0, :cond_5

    .line 2240
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2241
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 2242
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->b(F)Z

    move-result v0

    or-int/2addr v2, v0

    .line 2243
    goto/16 :goto_1

    .line 2224
    :cond_9
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->F:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_2

    .line 2246
    :pswitch_3
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    if-eqz v0, :cond_5

    .line 2247
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Landroid/view/VelocityTracker;

    .line 2248
    const/16 v2, 0x3e8

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->N:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2249
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 2250
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->z:Z

    .line 2251
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    .line 2252
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v3

    .line 2253
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->i()Landroidx/viewpager/widget/ViewPager$b;

    move-result-object v4

    .line 2254
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    .line 2255
    iget v6, v4, Landroidx/viewpager/widget/ViewPager$b;->b:I

    .line 2256
    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, v4, Landroidx/viewpager/widget/ViewPager$b;->e:F

    sub-float/2addr v2, v3

    iget v3, v4, Landroidx/viewpager/widget/ViewPager$b;->d:F

    add-float/2addr v3, v5

    div-float/2addr v2, v3

    .line 2258
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 2259
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2260
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 2261
    invoke-direct {p0, v6, v2, v0, v3}, Landroidx/viewpager/widget/ViewPager;->a(IFII)I

    move-result v2

    .line 2263
    invoke-virtual {p0, v2, v1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->a(IZZI)V

    .line 2265
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->h()Z

    move-result v2

    goto/16 :goto_1

    .line 2269
    :pswitch_4
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    if-eqz v0, :cond_5

    .line 2270
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroidx/viewpager/widget/ViewPager;->a(IZIZ)V

    .line 2271
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->h()Z

    move-result v2

    goto/16 :goto_1

    .line 2275
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2276
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2277
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    .line 2278
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    goto/16 :goto_1

    .line 2282
    :pswitch_6
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->a(Landroid/view/MotionEvent;)V

    .line 2283
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->G:F

    goto/16 :goto_1

    .line 2192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1504
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1509
    :goto_0
    return-void

    .line 1507
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroidx/viewpager/widget/a;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 506
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/a;->c(Landroid/database/DataSetObserver;)V

    .line 508
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;)V

    move v1, v2

    .line 509
    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 510
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$b;

    .line 511
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    iget v4, v0, Landroidx/viewpager/widget/ViewPager$b;->b:I

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 509
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->b(Landroid/view/ViewGroup;)V

    .line 514
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->f()V

    .line 516
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->c:I

    .line 517
    invoke-virtual {p0, v2, v2}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 520
    :cond_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    .line 521
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    .line 522
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->d:I

    .line 524
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_3

    .line 525
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->o:Landroidx/viewpager/widget/ViewPager$h;

    if-nez v0, :cond_2

    .line 526
    new-instance v0, Landroidx/viewpager/widget/ViewPager$h;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$h;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->o:Landroidx/viewpager/widget/ViewPager$h;

    .line 528
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->o:Landroidx/viewpager/widget/ViewPager$h;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/a;->c(Landroid/database/DataSetObserver;)V

    .line 529
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->z:Z

    .line 530
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->T:Z

    .line 531
    iput-boolean v6, p0, Landroidx/viewpager/widget/ViewPager;->T:Z

    .line 532
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    invoke-virtual {v3}, Landroidx/viewpager/widget/a;->b()I

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->d:I

    .line 533
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->j:I

    if-ltz v3, :cond_4

    .line 534
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Landroidx/viewpager/widget/a;

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/os/Parcelable;

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->l:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v3, v4}, Landroidx/viewpager/widget/a;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 535
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->j:I

    invoke-virtual {p0, v0, v2, v6}, Landroidx/viewpager/widget/ViewPager;->a(IZZ)V

    .line 536
    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->j:I

    .line 537
    iput-object v5, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/os/Parcelable;

    .line 538
    iput-object v5, p0, Landroidx/viewpager/widget/ViewPager;->l:Ljava/lang/ClassLoader;

    .line 547
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ad:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 548
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_6

    .line 549
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ad:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$e;

    invoke-interface {v0, p0, v1, p1}, Landroidx/viewpager/widget/ViewPager$e;->a(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/a;Landroidx/viewpager/widget/a;)V

    .line 548
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 539
    :cond_4
    if-nez v0, :cond_5

    .line 540
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->c()V

    goto :goto_1

    .line 542
    :cond_5
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    goto :goto_1

    .line 552
    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 611
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->z:Z

    .line 612
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->T:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->a(IZZ)V

    .line 613
    return-void

    :cond_0
    move v0, v1

    .line 612
    goto :goto_0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 849
    if-ge p1, v0, :cond_0

    .line 850
    const-string/jumbo v1, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 854
    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    if-eq p1, v0, :cond_1

    .line 855
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    .line 856
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->c()V

    .line 858
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 709
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->ab:Landroidx/viewpager/widget/ViewPager$f;

    .line 710
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .prologue
    .line 869
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    .line 870
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    .line 872
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v1

    .line 873
    invoke-direct {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->a(IIII)V

    .line 875
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    .line 876
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .prologue
    .line 905
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 906
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 893
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->q:Landroid/graphics/drawable/Drawable;

    .line 894
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->refreshDrawableState()V

    .line 895
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setWillNotDraw(Z)V

    .line 896
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->invalidate()V

    .line 897
    return-void

    .line 895
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setScrollState(I)V
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->ak:I

    if-ne v0, p1, :cond_0

    .line 498
    :goto_0
    return-void

    .line 492
    :cond_0
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->ak:I

    .line 493
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->ae:Landroidx/viewpager/widget/ViewPager$g;

    if-eqz v0, :cond_1

    .line 495
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->b(Z)V

    .line 497
    :cond_1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->f(I)V

    goto :goto_0

    .line 495
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 910
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->q:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
