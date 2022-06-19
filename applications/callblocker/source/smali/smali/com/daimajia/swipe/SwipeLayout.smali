.class public Lcom/daimajia/swipe/SwipeLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/daimajia/swipe/SwipeLayout$4;,
        Lcom/daimajia/swipe/SwipeLayout$a;,
        Lcom/daimajia/swipe/SwipeLayout$f;,
        Lcom/daimajia/swipe/SwipeLayout$h;,
        Lcom/daimajia/swipe/SwipeLayout$c;,
        Lcom/daimajia/swipe/SwipeLayout$d;,
        Lcom/daimajia/swipe/SwipeLayout$g;,
        Lcom/daimajia/swipe/SwipeLayout$i;,
        Lcom/daimajia/swipe/SwipeLayout$e;,
        Lcom/daimajia/swipe/SwipeLayout$b;
    }
.end annotation


# static fields
.field private static final c:Lcom/daimajia/swipe/SwipeLayout$b;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnLongClickListener;

.field private d:I

.field private e:Lcom/daimajia/swipe/SwipeLayout$b;

.field private f:Landroidx/d/b/c;

.field private g:I

.field private h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$b;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/daimajia/swipe/SwipeLayout$e;

.field private j:[F

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$i;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$d;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/daimajia/swipe/SwipeLayout$a;

.field private p:Z

.field private q:[Z

.field private r:Z

.field private s:Landroidx/d/b/c$a;

.field private t:I

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:F

.field private x:F

.field private y:Landroid/graphics/Rect;

.field private z:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/daimajia/swipe/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/daimajia/swipe/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v7, 0x4

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    .line 45
    iput v1, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    .line 49
    new-array v0, v7, [F

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->j:[F

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->k:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->l:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->m:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->n:Ljava/util/Map;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->p:Z

    .line 59
    new-array v0, v7, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    .line 60
    iput-boolean v1, p0, Lcom/daimajia/swipe/SwipeLayout;->r:Z

    .line 214
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$1;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/SwipeLayout$1;-><init>(Lcom/daimajia/swipe/SwipeLayout;)V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->s:Landroidx/d/b/c$a;

    .line 482
    iput v1, p0, Lcom/daimajia/swipe/SwipeLayout;->t:I

    .line 881
    iput v2, p0, Lcom/daimajia/swipe/SwipeLayout;->w:F

    iput v2, p0, Lcom/daimajia/swipe/SwipeLayout;->x:F

    .line 1073
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/daimajia/swipe/SwipeLayout$h;

    invoke-direct {v2, p0}, Lcom/daimajia/swipe/SwipeLayout$h;-><init>(Lcom/daimajia/swipe/SwipeLayout;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->z:Landroid/view/GestureDetector;

    .line 84
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->s:Landroidx/d/b/c$a;

    invoke-static {p0, v0}, Landroidx/d/b/c;->a(Landroid/view/ViewGroup;Landroidx/d/b/c$a;)Landroidx/d/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroidx/d/b/c;

    .line 85
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    .line 87
    sget-object v0, Lcom/daimajia/swipe/a$a;->SwipeLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    sget v1, Lcom/daimajia/swipe/a$a;->SwipeLayout_drag_edge:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 89
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->j:[F

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v3

    sget v4, Lcom/daimajia/swipe/a$a;->SwipeLayout_leftEdgeSwipeOffset:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v2, v3

    .line 90
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->j:[F

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v3

    sget v4, Lcom/daimajia/swipe/a$a;->SwipeLayout_rightEdgeSwipeOffset:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v2, v3

    .line 91
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->j:[F

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v3

    sget v4, Lcom/daimajia/swipe/a$a;->SwipeLayout_topEdgeSwipeOffset:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v2, v3

    .line 92
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->j:[F

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v3

    sget v4, Lcom/daimajia/swipe/a$a;->SwipeLayout_bottomEdgeSwipeOffset:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v2, v3

    .line 93
    sget v2, Lcom/daimajia/swipe/a$a;->SwipeLayout_clickToClose:I

    iget-boolean v3, p0, Lcom/daimajia/swipe/SwipeLayout;->r:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/daimajia/swipe/SwipeLayout;->setClickToClose(Z)V

    .line 95
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 96
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v2, v3, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    and-int/lit8 v2, v1, 0x4

    if-ne v2, v7, :cond_1

    .line 99
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v2, v3, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1
    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 102
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v2, v3, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_2
    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 105
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1, v2, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_3
    sget v1, Lcom/daimajia/swipe/a$a;->SwipeLayout_show_mode:I

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$e;->b:Lcom/daimajia/swipe/SwipeLayout$e;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout$e;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 108
    invoke-static {}, Lcom/daimajia/swipe/SwipeLayout$e;->values()[Lcom/daimajia/swipe/SwipeLayout$e;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->i:Lcom/daimajia/swipe/SwipeLayout$e;

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void

    .line 59
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private a(F)I
    .locals 2

    .prologue
    .line 1428
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a(Lcom/daimajia/swipe/SwipeLayout$b;)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    .line 1404
    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne p1, v2, :cond_2

    .line 1405
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v1, v2

    .line 1409
    :cond_0
    :goto_0
    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne p1, v2, :cond_3

    .line 1410
    :cond_1
    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int v3, v1, v2

    .line 1411
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    .line 1416
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v0, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 1406
    :cond_2
    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne p1, v2, :cond_0

    .line 1407
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1413
    :cond_3
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v2

    add-int v3, v1, v2

    .line 1414
    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int/2addr v2, v0

    goto :goto_1
.end method

.method private a(Lcom/daimajia/swipe/SwipeLayout$e;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1367
    .line 1368
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v5

    .line 1370
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 1371
    sget-object v6, Lcom/daimajia/swipe/SwipeLayout$e;->b:Lcom/daimajia/swipe/SwipeLayout$e;

    if-ne p1, v6, :cond_7

    .line 1372
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v3, v4, :cond_1

    .line 1373
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v1, v3

    .line 1380
    :goto_0
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v3, v4, :cond_5

    .line 1381
    :cond_0
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 1382
    if-nez v5, :cond_4

    :goto_1
    add-int v4, v1, v2

    move v2, v3

    .line 1397
    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v0, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    .line 1374
    :cond_1
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v3, v4, :cond_2

    .line 1375
    iget v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1376
    :cond_2
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v0, v3, :cond_3

    .line 1377
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v0, v3

    goto :goto_0

    .line 1378
    :cond_3
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1382
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_1

    .line 1384
    :cond_5
    if-nez v5, :cond_6

    :goto_3
    add-int/2addr v2, v0

    .line 1385
    iget v3, p2, Landroid/graphics/Rect;->right:I

    move v4, v3

    goto :goto_2

    .line 1384
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_3

    .line 1387
    :cond_7
    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$e;->a:Lcom/daimajia/swipe/SwipeLayout$e;

    if-ne p1, v2, :cond_b

    .line 1388
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v2, v5, :cond_8

    .line 1389
    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int v4, v1, v2

    move v2, v3

    goto :goto_2

    .line 1390
    :cond_8
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v2, v5, :cond_9

    .line 1391
    iget v1, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int v1, v4, v1

    move v2, v3

    goto :goto_2

    .line 1392
    :cond_9
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v2, v5, :cond_a

    .line 1393
    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int/2addr v2, v0

    goto :goto_2

    .line 1394
    :cond_a
    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int v0, v3, v0

    move v2, v3

    goto :goto_2

    :cond_b
    move v2, v3

    goto :goto_2
.end method

.method static synthetic a(Lcom/daimajia/swipe/SwipeLayout;Lcom/daimajia/swipe/SwipeLayout$b;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout$b;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    .line 1354
    if-eqz p1, :cond_0

    .line 1355
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v2, v3, :cond_1

    .line 1356
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int/2addr v1, v2

    .line 1363
    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 1357
    :cond_1
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v2, v3, :cond_2

    .line 1358
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 1359
    :cond_2
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v0, v2, :cond_3

    .line 1360
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int/2addr v0, v2

    goto :goto_0

    .line 1361
    :cond_3
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    return-object v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 11

    .prologue
    const/high16 v10, 0x42700000    # 60.0f

    const/high16 v9, 0x41f00000    # 30.0f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 758
    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    if-eqz v0, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$f;

    move-result-object v0

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$f;->a:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v0, v3, :cond_2

    .line 760
    iput-boolean v2, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    goto :goto_0

    .line 763
    :cond_2
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$f;

    move-result-object v4

    .line 764
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->w:F

    sub-float v3, v0, v3

    .line 765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v5, p0, Lcom/daimajia/swipe/SwipeLayout;->x:F

    sub-float v5, v0, v5

    .line 766
    div-float v0, v5, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 767
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 768
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$f;

    move-result-object v0

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$f;->c:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v0, v7, :cond_3

    .line 770
    const/high16 v0, 0x42340000    # 45.0f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_18

    .line 771
    cmpl-float v0, v3, v8

    if-lez v0, :cond_17

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 772
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    .line 784
    :goto_1
    invoke-direct {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/daimajia/swipe/SwipeLayout$b;)V

    .line 788
    :cond_3
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v0, v7, :cond_23

    .line 789
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->b:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v4, v0, :cond_4

    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-gtz v0, :cond_5

    :cond_4
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->c:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v4, v0, :cond_1a

    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1a

    :cond_5
    move v0, v2

    .line 791
    :goto_2
    if-nez v0, :cond_6

    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->a:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v4, v0, :cond_1b

    :cond_6
    move v0, v2

    .line 793
    :goto_3
    cmpl-float v7, v6, v9

    if-gtz v7, :cond_7

    if-nez v0, :cond_23

    :cond_7
    move v0, v2

    .line 798
    :goto_4
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v8, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v7, v8, :cond_c

    .line 799
    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$f;->b:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v4, v7, :cond_8

    iget v7, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-ltz v7, :cond_9

    :cond_8
    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$f;->c:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v4, v7, :cond_1c

    iget v7, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-lez v3, :cond_1c

    :cond_9
    move v3, v2

    .line 801
    :goto_5
    if-nez v3, :cond_a

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$f;->a:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v4, v3, :cond_1d

    :cond_a
    move v3, v2

    .line 803
    :goto_6
    cmpl-float v7, v6, v9

    if-gtz v7, :cond_b

    if-nez v3, :cond_c

    :cond_b
    move v0, v2

    .line 808
    :cond_c
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v3, v7, :cond_11

    .line 809
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$f;->b:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v4, v3, :cond_d

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v5, v3

    if-ltz v3, :cond_e

    :cond_d
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$f;->c:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v4, v3, :cond_1e

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1e

    :cond_e
    move v3, v2

    .line 811
    :goto_7
    if-nez v3, :cond_f

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$f;->a:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v4, v3, :cond_1f

    :cond_f
    move v3, v2

    .line 813
    :goto_8
    cmpg-float v7, v6, v10

    if-ltz v7, :cond_10

    if-nez v3, :cond_11

    :cond_10
    move v0, v2

    .line 818
    :cond_11
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v3, v7, :cond_16

    .line 819
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$f;->b:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v4, v3, :cond_12

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    if-gtz v3, :cond_13

    :cond_12
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$f;->c:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v4, v3, :cond_20

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->d:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_20

    :cond_13
    move v3, v2

    .line 821
    :goto_9
    if-nez v3, :cond_14

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$f;->a:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v4, v3, :cond_21

    :cond_14
    move v3, v2

    .line 823
    :goto_a
    cmpg-float v4, v6, v10

    if-ltz v4, :cond_15

    if-nez v3, :cond_16

    :cond_15
    move v0, v2

    .line 827
    :cond_16
    if-nez v0, :cond_22

    :goto_b
    iput-boolean v2, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    goto/16 :goto_0

    .line 773
    :cond_17
    cmpg-float v0, v3, v8

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    goto/16 :goto_1

    .line 778
    :cond_18
    cmpl-float v0, v5, v8

    if-lez v0, :cond_19

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 779
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    goto/16 :goto_1

    .line 780
    :cond_19
    cmpg-float v0, v5, v8

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    goto/16 :goto_1

    :cond_1a
    move v0, v1

    .line 789
    goto/16 :goto_2

    :cond_1b
    move v0, v1

    .line 791
    goto/16 :goto_3

    :cond_1c
    move v3, v1

    .line 799
    goto/16 :goto_5

    :cond_1d
    move v3, v1

    .line 801
    goto/16 :goto_6

    :cond_1e
    move v3, v1

    .line 809
    goto :goto_7

    :cond_1f
    move v3, v1

    .line 811
    goto :goto_8

    :cond_20
    move v3, v1

    .line 819
    goto :goto_9

    :cond_21
    move v3, v1

    .line 821
    goto :goto_a

    :cond_22
    move v2, v1

    .line 827
    goto :goto_b

    :cond_23
    move v0, v1

    goto/16 :goto_4
.end method

.method static synthetic a(Lcom/daimajia/swipe/SwipeLayout;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/daimajia/swipe/SwipeLayout;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    .line 1064
    if-nez v0, :cond_0

    .line 1065
    const/4 v0, 0x0

    .line 1071
    :goto_0
    return v0

    .line 1067
    :cond_0
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->y:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 1068
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->y:Landroid/graphics/Rect;

    .line 1070
    :cond_1
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1071
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->y:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$e;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->i:Lcom/daimajia/swipe/SwipeLayout$e;

    return-object v0
.end method

.method static synthetic d(Lcom/daimajia/swipe/SwipeLayout;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->l()V

    return-void
.end method

.method static synthetic f(Lcom/daimajia/swipe/SwipeLayout;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/daimajia/swipe/SwipeLayout;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->r:Z

    return v0
.end method

.method private getAdapterView()Landroid/widget/AdapterView;
    .locals 2

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 979
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 980
    check-cast v0, Landroid/widget/AdapterView;

    .line 982
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentOffset()F
    .locals 2

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1492
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->j:[F

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->o:Lcom/daimajia/swipe/SwipeLayout$a;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 541
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$f;

    move-result-object v0

    .line 542
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v1

    .line 544
    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$f;->c:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v0, v2, :cond_1

    .line 545
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 546
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 547
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    .line 552
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 553
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 556
    :cond_2
    return-void
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->getAdapterView()Landroid/widget/AdapterView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 6

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$f;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$f;->c:Lcom/daimajia/swipe/SwipeLayout$f;

    if-eq v0, v1, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 988
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 989
    check-cast v0, Landroid/widget/AdapterView;

    .line 990
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 991
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 992
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method private m()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 998
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$f;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$f;->c:Lcom/daimajia/swipe/SwipeLayout$f;

    if-eq v0, v1, :cond_1

    move v0, v6

    .line 1023
    :cond_0
    :goto_0
    return v0

    .line 999
    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1000
    instance-of v0, v1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_3

    .line 1001
    check-cast v1, Landroid/widget/AdapterView;

    .line 1002
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1003
    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    move v0, v6

    goto :goto_0

    .line 1004
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 1007
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string/jumbo v2, "performLongPress"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/view/View;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1008
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1009
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v2, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1014
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1015
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 1017
    :goto_1
    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {v1, v6}, Landroid/widget/AdapterView;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_3
    move v0, v6

    .line 1023
    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method private n()V
    .locals 3

    .prologue
    .line 1503
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    .line 1504
    if-eqz v0, :cond_1

    .line 1505
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v1, v2, :cond_3

    .line 1506
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentOffset()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->a(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    .line 1511
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->i:Lcom/daimajia/swipe/SwipeLayout$e;

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$e;->b:Lcom/daimajia/swipe/SwipeLayout$e;

    if-ne v0, v1, :cond_4

    .line 1512
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->a()V

    .line 1515
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->j()V

    .line 1516
    return-void

    .line 1508
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentOffset()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->a(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    goto :goto_0

    .line 1513
    :cond_4
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->i:Lcom/daimajia/swipe/SwipeLayout$e;

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$e;->a:Lcom/daimajia/swipe/SwipeLayout$e;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->b()V

    goto :goto_1
.end method

.method private setCurrentDragEdge(Lcom/daimajia/swipe/SwipeLayout$b;)V
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    if-eq v0, p1, :cond_0

    .line 1497
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    .line 1498
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->n()V

    .line 1500
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 469
    .line 470
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v1, v0, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p1

    .line 471
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 472
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 473
    if-ne v0, p0, :cond_1

    .line 477
    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 478
    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 479
    return-object v1

    .line 474
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 475
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method a()V
    .locals 6

    .prologue
    .line 729
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 730
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    .line 731
    if-eqz v1, :cond_0

    .line 732
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 733
    invoke-virtual {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 735
    :cond_0
    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$e;->b:Lcom/daimajia/swipe/SwipeLayout$e;

    invoke-direct {p0, v1, v0}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout$e;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 736
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v1

    .line 737
    if-eqz v1, :cond_1

    .line 738
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 740
    :cond_1
    return-void
.end method

.method protected a(FFZ)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1200
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroidx/d/b/c;

    invoke-virtual {v0}, Landroidx/d/b/c;->a()F

    move-result v1

    .line 1201
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    .line 1202
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    .line 1203
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    if-eqz p3, :cond_2

    const/high16 v0, 0x3e800000    # 0.25f

    .line 1207
    :goto_1
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v2, v3, :cond_6

    .line 1208
    cmpl-float v2, p1, v1

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto :goto_0

    .line 1206
    :cond_2
    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_1

    .line 1209
    :cond_3
    neg-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto :goto_0

    .line 1211
    :cond_4
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1212
    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto :goto_0

    .line 1213
    :cond_5
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto :goto_0

    .line 1215
    :cond_6
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v2, v3, :cond_a

    .line 1216
    cmpl-float v2, p1, v1

    if-lez v2, :cond_7

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto :goto_0

    .line 1217
    :cond_7
    neg-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_8

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto :goto_0

    .line 1219
    :cond_8
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1220
    cmpl-float v0, v1, v0

    if-lez v0, :cond_9

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto :goto_0

    .line 1221
    :cond_9
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto :goto_0

    .line 1223
    :cond_a
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v2, v3, :cond_e

    .line 1224
    cmpl-float v2, p2, v1

    if-lez v2, :cond_b

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto :goto_0

    .line 1225
    :cond_b
    neg-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_c

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto :goto_0

    .line 1227
    :cond_c
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1228
    cmpl-float v0, v1, v0

    if-lez v0, :cond_d

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto/16 :goto_0

    .line 1229
    :cond_d
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto/16 :goto_0

    .line 1231
    :cond_e
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v2, v3, :cond_0

    .line 1232
    cmpl-float v2, p2, v1

    if-lez v2, :cond_f

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto/16 :goto_0

    .line 1233
    :cond_f
    neg-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_10

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto/16 :goto_0

    .line 1235
    :cond_10
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1236
    cmpl-float v0, v1, v0

    if-lez v0, :cond_11

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->h()V

    goto/16 :goto_0

    .line 1237
    :cond_11
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto/16 :goto_0
.end method

.method protected a(IIII)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getDragEdge()Lcom/daimajia/swipe/SwipeLayout$b;

    move-result-object v2

    .line 486
    const/4 v1, 0x1

    .line 487
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v2, v3, :cond_1

    .line 488
    if-gez p3, :cond_2

    .line 497
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/daimajia/swipe/SwipeLayout;->a(IIZ)V

    .line 498
    return-void

    .line 489
    :cond_1
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v2, v3, :cond_3

    .line 490
    if-gtz p3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 491
    :cond_3
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v2, v3, :cond_4

    .line 492
    if-gez p4, :cond_2

    goto :goto_0

    .line 493
    :cond_4
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v2, v3, :cond_2

    .line 494
    if-lez p4, :cond_2

    goto :goto_0
.end method

.method protected a(IIZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 501
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->j()V

    .line 502
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$f;

    move-result-object v1

    .line 504
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 505
    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->t:I

    .line 506
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$i;

    .line 507
    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->t:I

    if-ne v3, v6, :cond_0

    .line 508
    if-eqz p3, :cond_1

    .line 509
    invoke-interface {v0, p0}, Lcom/daimajia/swipe/SwipeLayout$i;->a(Lcom/daimajia/swipe/SwipeLayout;)V

    .line 514
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v4

    sub-int v4, p2, v4

    invoke-interface {v0, p0, v3, v4}, Lcom/daimajia/swipe/SwipeLayout$i;->a(Lcom/daimajia/swipe/SwipeLayout;II)V

    goto :goto_0

    .line 511
    :cond_1
    invoke-interface {v0, p0}, Lcom/daimajia/swipe/SwipeLayout$i;->c(Lcom/daimajia/swipe/SwipeLayout;)V

    goto :goto_1

    .line 517
    :cond_2
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->c:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v1, v0, :cond_4

    .line 518
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$i;

    .line 519
    invoke-interface {v0, p0}, Lcom/daimajia/swipe/SwipeLayout$i;->d(Lcom/daimajia/swipe/SwipeLayout;)V

    goto :goto_2

    .line 521
    :cond_3
    iput v5, p0, Lcom/daimajia/swipe/SwipeLayout;->t:I

    .line 524
    :cond_4
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->b:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v1, v0, :cond_7

    .line 525
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_5

    .line 527
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 529
    :cond_5
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$i;

    .line 530
    invoke-interface {v0, p0}, Lcom/daimajia/swipe/SwipeLayout$i;->b(Lcom/daimajia/swipe/SwipeLayout;)V

    goto :goto_3

    .line 532
    :cond_6
    iput v5, p0, Lcom/daimajia/swipe/SwipeLayout;->t:I

    .line 535
    :cond_7
    return-void
.end method

.method public a(ZZ)V
    .locals 9

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v1

    .line 1255
    if-nez v0, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1259
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/daimajia/swipe/SwipeLayout;->a(Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 1260
    if-eqz p1, :cond_1

    .line 1261
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroidx/d/b/c;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0, v3, v2}, Landroidx/d/b/c;->a(Landroid/view/View;II)Z

    .line 1279
    :goto_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->invalidate()V

    goto :goto_0

    .line 1263
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1264
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1265
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 1266
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$e;

    move-result-object v0

    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$e;->b:Lcom/daimajia/swipe/SwipeLayout$e;

    if-ne v0, v5, :cond_2

    .line 1267
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$e;->b:Lcom/daimajia/swipe/SwipeLayout$e;

    invoke-direct {p0, v0, v2}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout$e;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1268
    if-eqz v1, :cond_2

    .line 1269
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v6, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 1272
    :cond_2
    if-eqz p2, :cond_3

    .line 1273
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/daimajia/swipe/SwipeLayout;->b(IIII)V

    .line 1274
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/daimajia/swipe/SwipeLayout;->a(IIII)V

    goto :goto_1

    .line 1276
    :cond_3
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->j()V

    goto :goto_1
.end method

.method protected a(Landroid/view/View;Landroid/graphics/Rect;Lcom/daimajia/swipe/SwipeLayout$b;IIII)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 400
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    :goto_0
    return v1

    .line 401
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 402
    iget v3, p2, Landroid/graphics/Rect;->right:I

    .line 403
    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 404
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 406
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$e;

    move-result-object v6

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$e;->a:Lcom/daimajia/swipe/SwipeLayout$e;

    if-ne v6, v7, :cond_5

    .line 407
    sget-object v6, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne p3, v6, :cond_1

    if-le p6, v0, :cond_4

    :cond_1
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne p3, v0, :cond_2

    if-ge p4, v3, :cond_4

    :cond_2
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne p3, v0, :cond_3

    if-ge p5, v5, :cond_4

    :cond_3
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne p3, v0, :cond_a

    if-gt p7, v4, :cond_a

    :cond_4
    move v0, v2

    :goto_1
    move v1, v0

    .line 417
    goto :goto_0

    .line 411
    :cond_5
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$e;

    move-result-object v6

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$e;->b:Lcom/daimajia/swipe/SwipeLayout$e;

    if-ne v6, v7, :cond_a

    .line 412
    sget-object v6, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne p3, v6, :cond_6

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getWidth()I

    move-result v6

    if-le v3, v6, :cond_9

    :cond_6
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne p3, v3, :cond_7

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v3

    if-ge v0, v3, :cond_9

    :cond_7
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne p3, v0, :cond_8

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v0

    if-ge v4, v0, :cond_9

    :cond_8
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne p3, v0, :cond_a

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getHeight()I

    move-result v0

    if-gt v5, v0, :cond_a

    :cond_9
    move v0, v2

    .line 415
    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .prologue
    .line 682
    const/4 v1, 0x0

    .line 684
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "gravity"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 689
    :goto_0
    if-lez v0, :cond_5

    .line 690
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/h/c;->a(II)I

    move-result v0

    .line 692
    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 693
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_0
    and-int/lit8 v1, v0, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 696
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_1
    and-int/lit8 v1, v0, 0x30

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2

    .line 699
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_2
    and-int/lit8 v0, v0, 0x50

    const/16 v1, 0x50

    if-ne v0, v1, :cond_3

    .line 702
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_7

    .line 717
    :cond_4
    :goto_2
    return-void

    .line 685
    :catch_0
    move-exception v0

    .line 686
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 705
    :cond_5
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 706
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 708
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 716
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method b()V
    .locals 6

    .prologue
    .line 743
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 744
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    .line 745
    if-eqz v1, :cond_0

    .line 746
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 747
    invoke-virtual {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 749
    :cond_0
    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$e;->a:Lcom/daimajia/swipe/SwipeLayout$e;

    invoke-direct {p0, v1, v0}, Lcom/daimajia/swipe/SwipeLayout;->a(Lcom/daimajia/swipe/SwipeLayout$e;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 750
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v1

    .line 751
    if-eqz v1, :cond_1

    .line 752
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 754
    :cond_1
    return-void
.end method

.method protected b(IIII)V
    .locals 10

    .prologue
    .line 560
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    :cond_0
    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Map$Entry;

    .line 562
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 563
    invoke-virtual {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 564
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/daimajia/swipe/SwipeLayout;->b(Landroid/view/View;Landroid/graphics/Rect;Lcom/daimajia/swipe/SwipeLayout$b;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 566
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->n:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const/4 v3, 0x0

    .line 568
    const/4 v0, 0x0

    .line 569
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$e;

    move-result-object v4

    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$e;->a:Lcom/daimajia/swipe/SwipeLayout$e;

    if-ne v4, v5, :cond_4

    .line 570
    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$4;->a:[I

    iget-object v5, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v5}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    move v4, v0

    .line 609
    :goto_1
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$d;

    .line 610
    iget-object v6, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-interface {v0, v1, v6, v7, v3}, Lcom/daimajia/swipe/SwipeLayout$d;->a(Landroid/view/View;Lcom/daimajia/swipe/SwipeLayout$b;FI)V

    .line 611
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v6

    if-nez v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->n:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 572
    :pswitch_0
    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, p1

    .line 573
    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 574
    goto :goto_0

    .line 576
    :pswitch_1
    iget v0, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, p3

    .line 577
    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 578
    goto :goto_0

    .line 580
    :pswitch_2
    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v0, p2

    .line 581
    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 582
    goto :goto_0

    .line 584
    :pswitch_3
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, p4

    .line 585
    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    goto :goto_0

    .line 588
    :cond_4
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$e;

    move-result-object v4

    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$e;->b:Lcom/daimajia/swipe/SwipeLayout$e;

    if-ne v4, v5, :cond_5

    .line 589
    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$4;->a:[I

    iget-object v5, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v5}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    :cond_5
    move v4, v0

    goto :goto_1

    .line 591
    :pswitch_4
    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, v0, v3

    .line 592
    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    move v4, v0

    .line 593
    goto/16 :goto_1

    .line 595
    :pswitch_5
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getWidth()I

    move-result v3

    sub-int v3, v0, v3

    .line 596
    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    move v4, v0

    .line 597
    goto/16 :goto_1

    .line 599
    :pswitch_6
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v3

    sub-int v3, v0, v3

    .line 600
    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    move v4, v0

    .line 601
    goto/16 :goto_1

    .line 603
    :pswitch_7
    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    .line 604
    int-to-float v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    move v4, v0

    goto/16 :goto_1

    .line 617
    :cond_6
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/daimajia/swipe/SwipeLayout;->a(Landroid/view/View;Landroid/graphics/Rect;Lcom/daimajia/swipe/SwipeLayout$b;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->n:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$d;

    .line 621
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    if-ne v3, v4, :cond_8

    .line 623
    :cond_7
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/daimajia/swipe/SwipeLayout$d;->a(Landroid/view/View;Lcom/daimajia/swipe/SwipeLayout$b;FI)V

    goto :goto_3

    .line 625
    :cond_8
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/daimajia/swipe/SwipeLayout$d;->a(Landroid/view/View;Lcom/daimajia/swipe/SwipeLayout$b;FI)V

    goto :goto_3

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 589
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public b(ZZ)V
    .locals 8

    .prologue
    .line 1315
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    .line 1316
    if-nez v0, :cond_0

    .line 1335
    :goto_0
    return-void

    .line 1320
    :cond_0
    if-eqz p1, :cond_1

    .line 1321
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroidx/d/b/c;

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/d/b/c;->a(Landroid/view/View;II)Z

    .line 1334
    :goto_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->invalidate()V

    goto :goto_0

    .line 1323
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->a(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 1324
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1325
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1326
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1327
    if-eqz p2, :cond_2

    .line 1328
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/daimajia/swipe/SwipeLayout;->b(IIII)V

    .line 1329
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/daimajia/swipe/SwipeLayout;->a(IIII)V

    goto :goto_1

    .line 1331
    :cond_2
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->j()V

    goto :goto_1
.end method

.method protected b(Landroid/view/View;Landroid/graphics/Rect;Lcom/daimajia/swipe/SwipeLayout$b;IIII)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 422
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 423
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 424
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 425
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 426
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$e;

    move-result-object v5

    sget-object v6, Lcom/daimajia/swipe/SwipeLayout$e;->a:Lcom/daimajia/swipe/SwipeLayout$e;

    if-ne v5, v6, :cond_1

    .line 427
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$4;->a:[I

    invoke-virtual {p3}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 465
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 429
    :pswitch_0
    if-le p6, v1, :cond_0

    if-gt p6, v2, :cond_0

    goto :goto_1

    .line 434
    :pswitch_1
    if-ge p4, v2, :cond_0

    if-lt p4, v1, :cond_0

    goto :goto_1

    .line 439
    :pswitch_2
    if-lt p5, v3, :cond_0

    if-ge p5, v4, :cond_0

    goto :goto_1

    .line 444
    :pswitch_3
    if-le p7, v3, :cond_0

    if-gt p7, v4, :cond_0

    goto :goto_1

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$e;

    move-result-object v5

    sget-object v6, Lcom/daimajia/swipe/SwipeLayout$e;->b:Lcom/daimajia/swipe/SwipeLayout$e;

    if-ne v5, v6, :cond_0

    .line 450
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$4;->a:[I

    invoke-virtual {p3}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 458
    :pswitch_4
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v1

    if-ge v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v1

    if-lt v4, v1, :cond_0

    goto :goto_1

    .line 452
    :pswitch_5
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getWidth()I

    move-result v3

    if-gt v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getWidth()I

    move-result v1

    if-le v2, v1, :cond_0

    goto :goto_1

    .line 455
    :pswitch_6
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 461
    :pswitch_7
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getHeight()I

    move-result v1

    if-ge v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 450
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->p:Z

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 634
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 635
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroidx/d/b/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/d/b/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 638
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 936
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 946
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 956
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 966
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBottomViews()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    invoke-static {}, Lcom/daimajia/swipe/SwipeLayout$b;->values()[Lcom/daimajia/swipe/SwipeLayout$b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1158
    iget-object v5, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1160
    :cond_0
    return-object v1
.end method

.method public getCurrentBottomView()Landroid/view/View;
    .locals 3

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v0

    .line 1147
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1148
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragDistance()I
    .locals 1

    .prologue
    .line 1130
    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    return v0
.end method

.method public getDragEdge()Lcom/daimajia/swipe/SwipeLayout$b;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->e:Lcom/daimajia/swipe/SwipeLayout$b;

    return-object v0
.end method

.method public getDragEdgeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$b;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getDragEdges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1455
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$f;
    .locals 4

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    .line 1177
    if-nez v0, :cond_0

    .line 1178
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->c:Lcom/daimajia/swipe/SwipeLayout$f;

    .line 1188
    :goto_0
    return-object v0

    .line 1180
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1181
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1182
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->c:Lcom/daimajia/swipe/SwipeLayout$f;

    goto :goto_0

    .line 1184
    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int/2addr v2, v3

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    .line 1186
    :cond_2
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->b:Lcom/daimajia/swipe/SwipeLayout$f;

    goto :goto_0

    .line 1188
    :cond_3
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$f;->a:Lcom/daimajia/swipe/SwipeLayout$f;

    goto :goto_0
.end method

.method public getShowMode()Lcom/daimajia/swipe/SwipeLayout$e;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->i:Lcom/daimajia/swipe/SwipeLayout$e;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1140
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1246
    invoke-virtual {p0, v0, v0}, Lcom/daimajia/swipe/SwipeLayout;->a(ZZ)V

    .line 1247
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1301
    invoke-virtual {p0, v0, v0}, Lcom/daimajia/swipe/SwipeLayout;->b(ZZ)V

    .line 1302
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1027
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1028
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->a:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$2;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/SwipeLayout$2;-><init>(Lcom/daimajia/swipe/SwipeLayout;)V

    invoke-virtual {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->b:Landroid/view/View$OnLongClickListener;

    if-nez v0, :cond_1

    .line 1038
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$3;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/SwipeLayout$3;-><init>(Lcom/daimajia/swipe/SwipeLayout;)V

    invoke-virtual {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1047
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 831
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 878
    :goto_0
    return v0

    .line 834
    :cond_0
    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->r:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$f;

    move-result-object v0

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$f;->b:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v0, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 835
    goto :goto_0

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$g;

    .line 838
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/daimajia/swipe/SwipeLayout$g;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 839
    goto :goto_0

    .line 843
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 876
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroidx/d/b/c;

    invoke-virtual {v0, p1}, Landroidx/d/b/c;->b(Landroid/view/MotionEvent;)V

    .line 878
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    goto :goto_0

    .line 845
    :pswitch_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroidx/d/b/c;

    invoke-virtual {v0, p1}, Landroidx/d/b/c;->b(Landroid/view/MotionEvent;)V

    .line 846
    iput-boolean v1, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    .line 847
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->w:F

    .line 848
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->x:F

    .line 850
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$f;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$f;->a:Lcom/daimajia/swipe/SwipeLayout$f;

    if-ne v0, v1, :cond_4

    .line 851
    iput-boolean v2, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    goto :goto_1

    .line 855
    :pswitch_1
    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    .line 856
    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->a(Landroid/view/MotionEvent;)V

    .line 857
    iget-boolean v3, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    if-eqz v3, :cond_5

    .line 858
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 859
    if-eqz v3, :cond_5

    .line 860
    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 863
    :cond_5
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 866
    goto :goto_0

    .line 872
    :pswitch_2
    iput-boolean v1, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    .line 873
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroidx/d/b/c;

    invoke-virtual {v0, p1}, Landroidx/d/b/c;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 843
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->n()V

    .line 723
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$c;

    invoke-interface {v0, p0}, Lcom/daimajia/swipe/SwipeLayout$c;->a(Lcom/daimajia/swipe/SwipeLayout;)V

    .line 723
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 726
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 885
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 916
    :cond_0
    :goto_0
    return v0

    .line 887
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 888
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->z:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 890
    packed-switch v2, :pswitch_data_0

    .line 913
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroidx/d/b/c;

    invoke-virtual {v3, p1}, Landroidx/d/b/c;->b(Landroid/view/MotionEvent;)V

    .line 916
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 892
    :pswitch_0
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroidx/d/b/c;

    invoke-virtual {v3, p1}, Landroidx/d/b/c;->b(Landroid/view/MotionEvent;)V

    .line 893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/daimajia/swipe/SwipeLayout;->w:F

    .line 894
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/daimajia/swipe/SwipeLayout;->x:F

    .line 899
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->a(Landroid/view/MotionEvent;)V

    .line 900
    iget-boolean v3, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    if-eqz v3, :cond_2

    .line 901
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 902
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroidx/d/b/c;

    invoke-virtual {v3, p1}, Landroidx/d/b/c;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 908
    :pswitch_2
    iput-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->v:Z

    .line 909
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->f:Landroidx/d/b/c;

    invoke-virtual {v3, p1}, Landroidx/d/b/c;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1442
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1443
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1444
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1447
    :cond_1
    return-void
.end method

.method public setBottomSwipeEnabled(Z)V
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->d:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    .line 972
    return-void
.end method

.method public setClickToClose(Z)V
    .locals 0

    .prologue
    .line 923
    iput-boolean p1, p0, Lcom/daimajia/swipe/SwipeLayout;->r:Z

    .line 924
    return-void
.end method

.method public setDragDistance(I)V
    .locals 1

    .prologue
    .line 1108
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1109
    :cond_0
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->a(F)I

    move-result v0

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->g:I

    .line 1110
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->requestLayout()V

    .line 1111
    return-void
.end method

.method public setDragEdge(Lcom/daimajia/swipe/SwipeLayout$b;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1435
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    :cond_0
    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/daimajia/swipe/SwipeLayout$b;)V

    .line 1439
    return-void
.end method

.method public setDragEdges(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$b;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1461
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    .line 1462
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$b;

    .line 1463
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1465
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/daimajia/swipe/SwipeLayout;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1466
    :cond_1
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-direct {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/daimajia/swipe/SwipeLayout$b;)V

    .line 1470
    :goto_1
    return-void

    .line 1468
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-direct {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/daimajia/swipe/SwipeLayout$b;)V

    goto :goto_1
.end method

.method public varargs setDragEdges([Lcom/daimajia/swipe/SwipeLayout$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1475
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setDragEdges(Ljava/util/List;)V

    .line 1476
    return-void
.end method

.method public setLeftSwipeEnabled(Z)V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->a:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    .line 942
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1051
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1052
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->a:Landroid/view/View$OnClickListener;

    .line 1053
    return-void
.end method

.method public setOnDoubleClickListener(Lcom/daimajia/swipe/SwipeLayout$a;)V
    .locals 0

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->o:Lcom/daimajia/swipe/SwipeLayout$a;

    .line 1421
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .prologue
    .line 1057
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1058
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->b:Landroid/view/View$OnLongClickListener;

    .line 1059
    return-void
.end method

.method public setRightSwipeEnabled(Z)V
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->c:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    .line 952
    return-void
.end method

.method public setShowMode(Lcom/daimajia/swipe/SwipeLayout$e;)V
    .locals 0

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->i:Lcom/daimajia/swipe/SwipeLayout$e;

    .line 1122
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->requestLayout()V

    .line 1123
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    .prologue
    .line 927
    iput-boolean p1, p0, Lcom/daimajia/swipe/SwipeLayout;->p:Z

    .line 928
    return-void
.end method

.method public setTopSwipeEnabled(Z)V
    .locals 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->q:[Z

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$b;->b:Lcom/daimajia/swipe/SwipeLayout$b;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$b;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    .line 962
    return-void
.end method
