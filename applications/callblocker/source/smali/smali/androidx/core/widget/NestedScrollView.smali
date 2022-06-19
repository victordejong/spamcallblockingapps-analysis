.class public Landroidx/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroidx/core/h/k;
.implements Landroidx/core/h/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/NestedScrollView$a;,
        Landroidx/core/widget/NestedScrollView$c;,
        Landroidx/core/widget/NestedScrollView$b;
    }
.end annotation


# static fields
.field private static final w:Landroidx/core/widget/NestedScrollView$a;

.field private static final x:[I


# instance fields
.field private A:F

.field private B:Landroidx/core/widget/NestedScrollView$b;

.field private a:J

.field private final b:Landroid/graphics/Rect;

.field private c:Landroid/widget/OverScroller;

.field private d:Landroid/widget/EdgeEffect;

.field private e:Landroid/widget/EdgeEffect;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Landroid/view/VelocityTracker;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private final r:[I

.field private final s:[I

.field private t:I

.field private u:I

.field private v:Landroidx/core/widget/NestedScrollView$c;

.field private final y:Landroidx/core/h/p;

.field private final z:Landroidx/core/h/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Landroidx/core/widget/NestedScrollView$a;

    invoke-direct {v0}, Landroidx/core/widget/NestedScrollView$a;-><init>()V

    sput-object v0, Landroidx/core/widget/NestedScrollView;->w:Landroidx/core/widget/NestedScrollView$a;

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Landroidx/core/widget/NestedScrollView;->x:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 198
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    .line 115
    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->g:Z

    .line 116
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->i:Landroid/view/View;

    .line 130
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 146
    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 161
    new-array v0, v3, [I

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->r:[I

    .line 162
    new-array v0, v3, [I

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->s:[I

    .line 199
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->a()V

    .line 201
    sget-object v0, Landroidx/core/widget/NestedScrollView;->x:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    .line 206
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    new-instance v0, Landroidx/core/h/p;

    invoke-direct {v0, p0}, Landroidx/core/h/p;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/h/p;

    .line 209
    new-instance v0, Landroidx/core/h/l;

    invoke-direct {v0, p0}, Landroidx/core/h/l;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->z:Landroidx/core/h/l;

    .line 212
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 214
    sget-object v0, Landroidx/core/widget/NestedScrollView;->w:Landroidx/core/widget/NestedScrollView$a;

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 215
    return-void
.end method

.method private a(ZII)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1140
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 1141
    const/4 v4, 0x0

    .line 1152
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v7, v6

    move v2, v6

    .line 1153
    :goto_0
    if-ge v7, v9, :cond_7

    .line 1154
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1155
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1156
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 1158
    if-ge p2, v10, :cond_8

    if-ge v5, p3, :cond_8

    .line 1164
    if-ge p2, v5, :cond_0

    if-ge v10, p3, :cond_0

    move v1, v3

    .line 1166
    :goto_1
    if-nez v4, :cond_1

    .line 1153
    :goto_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v2, v1

    move-object v4, v0

    goto :goto_0

    :cond_0
    move v1, v6

    .line 1164
    goto :goto_1

    .line 1171
    :cond_1
    if-eqz p1, :cond_2

    .line 1172
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v5, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    .line 1173
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v10, v5, :cond_4

    :cond_3
    move v5, v3

    .line 1175
    :goto_3
    if-eqz v2, :cond_5

    .line 1176
    if-eqz v1, :cond_8

    if-eqz v5, :cond_8

    move v1, v2

    .line 1182
    goto :goto_2

    :cond_4
    move v5, v6

    .line 1173
    goto :goto_3

    .line 1185
    :cond_5
    if-eqz v1, :cond_6

    move v1, v3

    .line 1188
    goto :goto_2

    .line 1189
    :cond_6
    if-eqz v5, :cond_8

    move v1, v2

    .line 1194
    goto :goto_2

    .line 1201
    :cond_7
    return-object v4

    :cond_8
    move v1, v2

    move-object v0, v4

    goto :goto_2
.end method

.method private a()V
    .locals 2

    .prologue
    .line 456
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 457
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    .line 458
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 459
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setWillNotDraw(Z)V

    .line 460
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->n:I

    .line 462
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->o:I

    .line 463
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->p:I

    .line 464
    return-void
.end method

.method private a(II[I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 315
    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    .line 316
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v0

    .line 318
    if-eqz p3, :cond_0

    .line 319
    const/4 v0, 0x1

    aget v3, p3, v0

    add-int/2addr v3, v2

    aput v3, p3, v0

    .line 321
    :cond_0
    sub-int v4, p1, v2

    .line 323
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->z:Landroidx/core/h/l;

    const/4 v5, 0x0

    move v3, v1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Landroidx/core/h/l;->a(IIII[II[I)V

    .line 324
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 989
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 990
    iget v2, p0, Landroidx/core/widget/NestedScrollView;->q:I

    if-ne v1, v2, :cond_0

    .line 994
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 995
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 996
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 997
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1001
    :cond_0
    return-void

    .line 994
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1596
    if-eqz p1, :cond_0

    .line 1597
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroidx/core/widget/NestedScrollView;->a(II)Z

    .line 1601
    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->u:I

    .line 1602
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 1603
    return-void

    .line 1599
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->a(I)V

    goto :goto_0
.end method

.method private a(III)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1287
    .line 1289
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 1290
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    .line 1291
    add-int v5, v4, v0

    .line 1292
    const/16 v0, 0x21

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 1294
    :goto_0
    invoke-direct {p0, v0, p2, p3}, Landroidx/core/widget/NestedScrollView;->a(ZII)Landroid/view/View;

    move-result-object v3

    .line 1295
    if-nez v3, :cond_0

    move-object v3, p0

    .line 1299
    :cond_0
    if-lt p2, v4, :cond_3

    if-gt p3, v5, :cond_3

    .line 1306
    :goto_1
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v3, v0, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1308
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 1292
    goto :goto_0

    .line 1302
    :cond_3
    if-eqz v0, :cond_4

    sub-int v0, p2, v4

    .line 1303
    :goto_2
    invoke-direct {p0, v0}, Landroidx/core/widget/NestedScrollView;->g(I)V

    move v2, v1

    goto :goto_1

    .line 1302
    :cond_4
    sub-int v0, p3, v5

    goto :goto_2
.end method

.method private a(Landroid/graphics/Rect;Z)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1637
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v2

    .line 1638
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1639
    :goto_0
    if-eqz v0, :cond_0

    .line 1640
    if-eqz p2, :cond_2

    .line 1641
    invoke-virtual {p0, v1, v2}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    .line 1646
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 1638
    goto :goto_0

    .line 1643
    :cond_2
    invoke-virtual {p0, v1, v2}, Landroidx/core/widget/NestedScrollView;->b(II)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1373
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private a(Landroid/view/View;II)Z
    .locals 2

    .prologue
    .line 1381
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1382
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1384
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    .line 1385
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1384
    :goto_0
    return v0

    .line 1385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1854
    if-ne p0, p1, :cond_0

    .line 1859
    :goto_0
    return v1

    .line 1858
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1859
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(III)I
    .locals 1

    .prologue
    .line 1981
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 1997
    :cond_0
    const/4 p0, 0x0

    .line 2007
    :cond_1
    :goto_0
    return p0

    .line 1999
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 2005
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1616
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1619
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1621
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v0

    .line 1623
    if-eqz v0, :cond_0

    .line 1624
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    .line 1626
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 519
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 520
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 521
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 522
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 523
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 524
    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    .line 526
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 524
    goto :goto_0

    :cond_1
    move v0, v1

    .line 526
    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 684
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 688
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 692
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 694
    :cond_0
    return-void
.end method

.method private d(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 671
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 672
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 673
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 674
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    .line 675
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v1, v3, v1

    if-ge p2, v1, :cond_0

    .line 676
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 677
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    .line 679
    :cond_0
    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 701
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1607
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->a(I)V

    .line 1608
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1882
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 1884
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->e()V

    .line 1885
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->a(I)V

    .line 1887
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1889
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1891
    :cond_0
    return-void
.end method

.method private g(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1394
    if-eqz p1, :cond_0

    .line 1395
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    if-eqz v0, :cond_1

    .line 1396
    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->b(II)V

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1398
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    .prologue
    .line 1033
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->A:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1034
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1035
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1036
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1038
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1041
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->A:F

    .line 1044
    :cond_1
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->A:F

    return v0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1917
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1918
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 1919
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1920
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 1921
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 1927
    :cond_0
    :goto_0
    return-void

    .line 1924
    :cond_1
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 1925
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/graphics/Rect;)I
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 1658
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1719
    :goto_0
    return v4

    .line 1660
    :cond_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v5

    .line 1661
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1662
    add-int v3, v0, v5

    .line 1665
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1670
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lez v1, :cond_6

    .line 1671
    add-int/2addr v0, v2

    move v1, v0

    .line 1677
    :goto_1
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1678
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1679
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_5

    .line 1680
    sub-int v2, v3, v2

    .line 1685
    :goto_2
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v2, :cond_2

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v1, :cond_2

    .line 1690
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v5, :cond_1

    .line 1692
    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    add-int/2addr v1, v4

    .line 1699
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 1700
    sub-int/2addr v0, v3

    .line 1701
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_4
    move v4, v0

    .line 1719
    goto :goto_0

    .line 1695
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v4

    goto :goto_3

    .line 1703
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_4

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v2, :cond_4

    .line 1708
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v0, v5, :cond_3

    .line 1710
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    sub-int v0, v4, v0

    .line 1717
    :goto_5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4

    .line 1713
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    sub-int v0, v4, v0

    goto :goto_5

    :cond_4
    move v0, v4

    goto :goto_4

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->z:Landroidx/core/h/l;

    invoke-virtual {v0, p1}, Landroidx/core/h/l;->c(I)V

    .line 236
    return-void
.end method

.method public a(IIII[II[I)V
    .locals 8

    .prologue
    .line 222
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->z:Landroidx/core/h/l;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/h/l;->a(IIII[II[I)V

    .line 224
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/h/p;

    invoke-virtual {v0, p1, p2}, Landroidx/core/h/p;->a(Landroid/view/View;I)V

    .line 344
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->a(I)V

    .line 345
    return-void
.end method

.method public a(Landroid/view/View;IIIII)V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, p5, p6, v0}, Landroidx/core/widget/NestedScrollView;->a(II[I)V

    .line 351
    return-void
.end method

.method public a(Landroid/view/View;IIIII[I)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0, p5, p6, p7}, Landroidx/core/widget/NestedScrollView;->a(II[I)V

    .line 311
    return-void
.end method

.method public a(Landroid/view/View;II[II)V
    .locals 6

    .prologue
    .line 356
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->a(II[I[II)Z

    .line 357
    return-void
.end method

.method public a(II)Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->z:Landroidx/core/h/l;

    invoke-virtual {v0, p1, p2}, Landroidx/core/h/l;->a(II)Z

    move-result v0

    return v0
.end method

.method a(IIIIIIIIZ)Z
    .locals 10

    .prologue
    .line 1058
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v4

    .line 1060
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v2

    if-le v1, v2, :cond_6

    const/4 v1, 0x1

    .line 1062
    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v3

    if-le v2, v3, :cond_7

    const/4 v2, 0x1

    move v3, v2

    .line 1063
    :goto_1
    if-eqz v4, :cond_0

    const/4 v2, 0x1

    if-ne v4, v2, :cond_8

    if-eqz v1, :cond_8

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    .line 1065
    :goto_2
    if-eqz v4, :cond_1

    const/4 v1, 0x1

    if-ne v4, v1, :cond_9

    if-eqz v3, :cond_9

    :cond_1
    const/4 v1, 0x1

    .line 1068
    :goto_3
    add-int v7, p3, p1

    .line 1069
    if-nez v2, :cond_2

    .line 1070
    const/16 p7, 0x0

    .line 1073
    :cond_2
    add-int v5, p4, p2

    .line 1074
    if-nez v1, :cond_3

    .line 1075
    const/16 p8, 0x0

    .line 1079
    :cond_3
    move/from16 v0, p7

    neg-int v6, v0

    .line 1080
    add-int v2, p7, p5

    .line 1081
    move/from16 v0, p8

    neg-int v4, v0

    .line 1082
    add-int v3, p8, p6

    .line 1084
    const/4 v1, 0x0

    .line 1085
    if-le v7, v2, :cond_a

    .line 1087
    const/4 v1, 0x1

    move v9, v1

    .line 1093
    :goto_4
    const/4 v1, 0x0

    .line 1094
    if-le v5, v3, :cond_b

    .line 1096
    const/4 v1, 0x1

    move v8, v1

    .line 1102
    :goto_5
    if-eqz v8, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->b(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1103
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1106
    :cond_4
    invoke-virtual {p0, v2, v3, v9, v8}, Landroidx/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    .line 1108
    if-nez v9, :cond_5

    if-eqz v8, :cond_c

    :cond_5
    const/4 v1, 0x1

    :goto_6
    return v1

    .line 1060
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 1062
    :cond_7
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    .line 1063
    :cond_8
    const/4 v1, 0x0

    move v2, v1

    goto :goto_2

    .line 1065
    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    .line 1088
    :cond_a
    if-ge v7, v6, :cond_e

    .line 1090
    const/4 v1, 0x1

    move v9, v1

    move v2, v6

    goto :goto_4

    .line 1097
    :cond_b
    if-ge v5, v4, :cond_d

    .line 1099
    const/4 v1, 0x1

    move v8, v1

    move v3, v4

    goto :goto_5

    .line 1108
    :cond_c
    const/4 v1, 0x0

    goto :goto_6

    :cond_d
    move v8, v1

    move v3, v5

    goto :goto_5

    :cond_e
    move v9, v1

    move v2, v7

    goto :goto_4
.end method

.method public a(II[I[II)Z
    .locals 6

    .prologue
    .line 253
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->z:Landroidx/core/h/l;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/h/l;->a(II[I[II)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/16 v0, 0x21

    const/4 v1, 0x0

    const/16 v2, 0x82

    .line 629
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 631
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 632
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 633
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 634
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 635
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    .line 639
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 667
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 639
    goto :goto_0

    .line 645
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 646
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 648
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 649
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->e(I)Z

    move-result v1

    goto :goto_1

    .line 651
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->d(I)Z

    move-result v1

    goto :goto_1

    .line 655
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 656
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->e(I)Z

    move-result v1

    goto :goto_1

    .line 658
    :cond_5
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->d(I)Z

    move-result v1

    goto :goto_1

    .line 662
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->c(I)Z

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    .line 646
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .prologue
    .line 331
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 468
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 473
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 477
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 478
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 482
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 496
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 500
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 486
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 487
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    return-void
.end method

.method public final b(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1410
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1432
    :goto_0
    return-void

    .line 1414
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->a:J

    sub-long/2addr v0, v2

    .line 1415
    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1416
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1417
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1418
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1419
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1420
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 1421
    sub-int/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1422
    add-int v1, v2, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v0, v2

    .line 1423
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1424
    invoke-direct {p0, v4}, Landroidx/core/widget/NestedScrollView;->a(Z)V

    .line 1431
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/NestedScrollView;->a:J

    goto :goto_0

    .line 1426
    :cond_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1427
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->f()V

    .line 1429
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public b(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/h/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/h/p;->a(Landroid/view/View;Landroid/view/View;II)V

    .line 338
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p4}, Landroidx/core/widget/NestedScrollView;->a(II)Z

    .line 339
    return-void
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->z:Landroidx/core/h/l;

    invoke-virtual {v0, p1}, Landroidx/core/h/l;->a(I)Z

    move-result v0

    return v0
.end method

.method public final c(II)V
    .locals 2

    .prologue
    .line 1441
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroidx/core/widget/NestedScrollView;->b(II)V

    .line 1442
    return-void
.end method

.method public c(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1217
    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 1218
    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    .line 1220
    if-eqz v0, :cond_2

    .line 1221
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1222
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1223
    if-lez v0, :cond_0

    .line 1224
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1225
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1226
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1227
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    if-le v1, v0, :cond_0

    .line 1228
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1237
    :cond_0
    :goto_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1239
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/core/widget/NestedScrollView;->a(III)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 1217
    goto :goto_0

    .line 1232
    :cond_2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1233
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_0

    .line 1234
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 1504
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 1497
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 1490
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 15

    .prologue
    .line 1540
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1593
    :cond_0
    :goto_0
    return-void

    .line 1544
    :cond_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1545
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 1546
    iget v1, p0, Landroidx/core/widget/NestedScrollView;->u:I

    sub-int v2, v0, v1

    .line 1547
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->u:I

    .line 1550
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->s:[I

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 1551
    const/4 v1, 0x0

    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->s:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->a(II[I[II)Z

    .line 1553
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->s:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int/2addr v2, v0

    .line 1555
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    .line 1557
    if-eqz v2, :cond_2

    .line 1559
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    .line 1560
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroidx/core/widget/NestedScrollView;->a(IIIIIIIIZ)Z

    .line 1561
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v9, v0, v4

    .line 1562
    sub-int v11, v2, v9

    .line 1565
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->s:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1566
    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v12, p0, Landroidx/core/widget/NestedScrollView;->r:[I

    const/4 v13, 0x1

    iget-object v14, p0, Landroidx/core/widget/NestedScrollView;->s:[I

    move-object v7, p0

    invoke-virtual/range {v7 .. v14}, Landroidx/core/widget/NestedScrollView;->a(IIII[II[I)V

    .line 1568
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->s:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int v2, v11, v0

    .line 1571
    :cond_2
    if-eqz v2, :cond_5

    .line 1572
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    .line 1573
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    if-lez v6, :cond_6

    :cond_3
    const/4 v0, 0x1

    .line 1575
    :goto_1
    if-eqz v0, :cond_4

    .line 1576
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->h()V

    .line 1577
    if-gez v2, :cond_7

    .line 1578
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1579
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1587
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->f()V

    .line 1590
    :cond_5
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1591
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1573
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 1582
    :cond_7
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1583
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1483
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1476
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1452
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1453
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1454
    if-nez v0, :cond_1

    move v0, v1

    .line 1469
    :cond_0
    :goto_0
    return v0

    .line 1458
    :cond_1
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1459
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1460
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 1461
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 1462
    sub-int v1, v0, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1463
    if-gez v2, :cond_2

    .line 1464
    sub-int/2addr v0, v2

    goto :goto_0

    .line 1465
    :cond_2
    if-le v2, v1, :cond_0

    .line 1466
    sub-int v1, v2, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public d(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1255
    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 1256
    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    .line 1258
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 1259
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1261
    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1263
    if-lez v0, :cond_0

    .line 1264
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1265
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1266
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 1267
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1271
    :cond_0
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/core/widget/NestedScrollView;->a(III)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 1255
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 617
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

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

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->z:Landroidx/core/h/l;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/h/l;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->z:Landroidx/core/h/l;

    invoke-virtual {v0, p1, p2}, Landroidx/core/h/l;->a(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .prologue
    .line 292
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->a(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .prologue
    .line 286
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->z:Landroidx/core/h/l;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/h/l;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0x15

    .line 1931
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1932
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_8

    .line 1933
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    .line 1934
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1935
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1936
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v2

    .line 1937
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    .line 1939
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1940
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1941
    :cond_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v0, v7

    sub-int/2addr v2, v0

    .line 1942
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v1

    .line 1944
    :goto_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1945
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    .line 1946
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v7

    add-int/2addr v3, v7

    .line 1948
    :cond_1
    int-to-float v0, v0

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1949
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v2, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1950
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1951
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 1953
    :cond_2
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1955
    :cond_3
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1956
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1957
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v0

    .line 1958
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    .line 1960
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 1961
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_4

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1962
    :cond_4
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v0, v5

    .line 1963
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v1, v5

    .line 1965
    :cond_5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_6

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1966
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    .line 1967
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v2, v5

    .line 1969
    :cond_6
    sub-int/2addr v1, v0

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1970
    const/high16 v1, 0x43340000    # 180.0f

    int-to-float v2, v0

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v2, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1971
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v0, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1972
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1973
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 1975
    :cond_7
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1978
    :cond_8
    return-void

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public e(I)Z
    .locals 7

    .prologue
    const/16 v6, 0x82

    const/4 v2, 0x0

    .line 1319
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1320
    if-ne v0, p0, :cond_6

    const/4 v0, 0x0

    move-object v1, v0

    .line 1322
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1324
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1326
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1327
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1328
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1329
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v2

    .line 1330
    invoke-direct {p0, v2}, Landroidx/core/widget/NestedScrollView;->g(I)V

    .line 1331
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1353
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    invoke-direct {p0, v1}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getDescendantFocusability()I

    move-result v0

    .line 1361
    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1362
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestFocus()Z

    .line 1363
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1365
    :cond_0
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 1336
    :cond_1
    const/16 v0, 0x21

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 1337
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1347
    :goto_3
    if-nez v0, :cond_3

    move v0, v2

    .line 1348
    goto :goto_2

    .line 1338
    :cond_2
    if-ne p1, v6, :cond_5

    .line 1339
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1340
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1341
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1342
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    .line 1343
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1344
    sub-int/2addr v0, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 1350
    :cond_3
    if-ne p1, v6, :cond_4

    :goto_4
    invoke-direct {p0, v0}, Landroidx/core/widget/NestedScrollView;->g(I)V

    goto :goto_1

    :cond_4
    neg-int v0, v0

    goto :goto_4

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public f(I)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 1870
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1872
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v4, p1

    move v5, v3

    move v6, v3

    move v9, v3

    move v10, v3

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1877
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/core/widget/NestedScrollView;->a(Z)V

    .line 1879
    :cond_0
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 431
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 432
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    .line 435
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 436
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 437
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 438
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 439
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    .line 440
    if-ge v0, v2, :cond_1

    .line 441
    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    goto :goto_0

    .line 444
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 452
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->y:Landroidx/core/h/p;

    invoke-virtual {v0}, Landroidx/core/h/p;->a()I

    move-result v0

    return v0
.end method

.method getScrollRange()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1112
    .line 1113
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1114
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1115
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1116
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 1117
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1118
    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1120
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 426
    :goto_0
    return v0

    .line 420
    :cond_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 421
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 422
    if-ge v1, v0, :cond_1

    .line 423
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 426
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->b(I)Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->z:Landroidx/core/h/l;

    invoke-virtual {v0}, Landroidx/core/h/l;->a()Z

    move-result v0

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1510
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1515
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    .line 1516
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1515
    invoke-static {p2, v1, v0}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1518
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1520
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1521
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 3

    .prologue
    .line 1526
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1529
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1528
    invoke-static {p2, v1, v2}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1531
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1534
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1535
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1825
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1827
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    .line 1828
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1005
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1006
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1029
    :cond_0
    :goto_0
    return v0

    .line 1008
    :pswitch_0
    iget-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    if-nez v1, :cond_0

    .line 1009
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 1010
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 1011
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v2, v1

    .line 1012
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    .line 1013
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    .line 1014
    sub-int v2, v3, v2

    .line 1015
    if-gez v2, :cond_2

    move v1, v0

    .line 1020
    :cond_1
    :goto_1
    if-eq v1, v3, :cond_0

    .line 1021
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1022
    const/4 v0, 0x1

    goto :goto_0

    .line 1017
    :cond_2
    if-gt v2, v1, :cond_1

    move v1, v2

    goto :goto_1

    .line 1006
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 724
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 725
    if-ne v1, v5, :cond_0

    iget-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_0

    .line 819
    :goto_0
    return v0

    .line 729
    :cond_0
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 819
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    goto :goto_0

    .line 740
    :pswitch_1
    iget v1, p0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 741
    if-eq v1, v4, :cond_1

    .line 746
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 747
    if-ne v2, v4, :cond_2

    .line 748
    const-string/jumbo v0, "NestedScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 753
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 754
    iget v2, p0, Landroidx/core/widget/NestedScrollView;->f:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 755
    iget v4, p0, Landroidx/core/widget/NestedScrollView;->n:I

    if-le v2, v4, :cond_1

    .line 756
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 757
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 758
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 759
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->d()V

    .line 760
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 761
    iput v3, p0, Landroidx/core/widget/NestedScrollView;->t:I

    .line 762
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 763
    if-eqz v1, :cond_1

    .line 764
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 771
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 772
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1}, Landroidx/core/widget/NestedScrollView;->d(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 773
    iput-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 774
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->e()V

    goto :goto_1

    .line 782
    :cond_3
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 783
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 785
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->c()V

    .line 786
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 793
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 794
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_2
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 795
    invoke-virtual {p0, v5, v3}, Landroidx/core/widget/NestedScrollView;->a(II)Z

    goto/16 :goto_1

    :cond_4
    move v0, v3

    .line 794
    goto :goto_2

    .line 802
    :pswitch_3
    iput-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 803
    iput v4, p0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 804
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->e()V

    .line 805
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 806
    invoke-static {p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 808
    :cond_5
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->a(I)V

    goto/16 :goto_1

    .line 811
    :pswitch_4
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 729
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1787
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1788
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->g:Z

    .line 1790
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->i:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->i:Landroid/view/View;

    invoke-static {v1, p0}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1791
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->i:Landroid/view/View;

    invoke-direct {p0, v1}, Landroidx/core/widget/NestedScrollView;->b(Landroid/view/View;)V

    .line 1793
    :cond_0
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->i:Landroid/view/View;

    .line 1795
    iget-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    if-nez v1, :cond_3

    .line 1797
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->v:Landroidx/core/widget/NestedScrollView$c;

    if-eqz v1, :cond_1

    .line 1798
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->v:Landroidx/core/widget/NestedScrollView$c;

    iget v2, v2, Landroidx/core/widget/NestedScrollView$c;->a:I

    invoke-virtual {p0, v1, v2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1799
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->v:Landroidx/core/widget/NestedScrollView$c;

    .line 1805
    :cond_1
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1806
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1807
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1808
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1810
    :cond_2
    sub-int v1, p5, p3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1811
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 1812
    invoke-static {v2, v1, v0}, Landroidx/core/widget/NestedScrollView;->b(III)I

    move-result v0

    .line 1813
    if-eq v0, v2, :cond_3

    .line 1814
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1819
    :cond_3
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1820
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    .line 1821
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 581
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 583
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->l:Z

    if-nez v0, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 588
    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 593
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 594
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 596
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 597
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v3

    .line 598
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 599
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    .line 603
    if-ge v2, v3, :cond_0

    .line 605
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 604
    invoke-static {p1, v2, v0}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 607
    const/high16 v2, 0x40000000    # 2.0f

    .line 608
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 609
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 389
    if-nez p4, :cond_0

    .line 390
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3, v0}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 391
    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->f(I)V

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0, p2, p3}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    .prologue
    .line 384
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;II[II)V

    .line 385
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 379
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p5, v0, v1}, Landroidx/core/widget/NestedScrollView;->a(II[I)V

    .line 380
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->b(Landroid/view/View;Landroid/view/View;II)V

    .line 369
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .prologue
    .line 1050
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1051
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1747
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1748
    const/16 p1, 0x82

    .line 1753
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 1754
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1758
    :goto_1
    if-nez v1, :cond_4

    .line 1766
    :cond_1
    :goto_2
    return v0

    .line 1749
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1750
    const/16 p1, 0x21

    goto :goto_0

    .line 1755
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 1762
    :cond_4
    invoke-direct {p0, v1}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1766
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 2012
    instance-of v0, p1, Landroidx/core/widget/NestedScrollView$c;

    if-nez v0, :cond_0

    .line 2013
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2021
    :goto_0
    return-void

    .line 2017
    :cond_0
    check-cast p1, Landroidx/core/widget/NestedScrollView$c;

    .line 2018
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView$c;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2019
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->v:Landroidx/core/widget/NestedScrollView$c;

    .line 2020
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 2025
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2026
    new-instance v1, Landroidx/core/widget/NestedScrollView$c;

    invoke-direct {v1, v0}, Landroidx/core/widget/NestedScrollView$c;-><init>(Landroid/os/Parcelable;)V

    .line 2027
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iput v0, v1, Landroidx/core/widget/NestedScrollView$c;->a:I

    .line 2028
    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .prologue
    .line 572
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 574
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/widget/NestedScrollView$b;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/widget/NestedScrollView$b;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView$b;->a(Landroidx/core/widget/NestedScrollView;IIII)V

    .line 577
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 1832
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1834
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1835
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1848
    :cond_0
    :goto_0
    return-void

    .line 1842
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1843
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1844
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1845
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->a(Landroid/graphics/Rect;)I

    move-result v0

    .line 1846
    invoke-direct {p0, v0}, Landroidx/core/widget/NestedScrollView;->g(I)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;I)V

    .line 374
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    .prologue
    .line 824
    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->d()V

    .line 826
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 828
    if-nez v2, :cond_0

    .line 829
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/core/widget/NestedScrollView;->t:I

    .line 832
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v18

    .line 833
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/core/widget/NestedScrollView;->t:I

    int-to-float v4, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 835
    packed-switch v2, :pswitch_data_0

    .line 979
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 982
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    .line 984
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 837
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 838
    const/4 v2, 0x0

    goto :goto_1

    .line 840
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_4

    .line 841
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 842
    if-eqz v2, :cond_4

    .line 843
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 851
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 852
    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->f()V

    .line 856
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 857
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 858
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroidx/core/widget/NestedScrollView;->a(II)Z

    goto :goto_0

    .line 840
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 862
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->q:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v19

    .line 863
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_7

    .line 864
    const-string/jumbo v2, "NestedScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/core/widget/NestedScrollView;->q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 868
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v8, v2

    .line 869
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->f:I

    sub-int v4, v2, v8

    .line 870
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/core/widget/NestedScrollView;->s:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/core/widget/NestedScrollView;->r:[I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/core/widget/NestedScrollView;->a(II[I[II)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->s:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v4, v2

    .line 873
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->t:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->r:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/core/widget/NestedScrollView;->t:I

    .line 875
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->j:Z

    if-nez v2, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/core/widget/NestedScrollView;->n:I

    if-le v2, v3, :cond_a

    .line 876
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 877
    if-eqz v2, :cond_9

    .line 878
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 880
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 881
    if-lez v4, :cond_f

    .line 882
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->n:I

    sub-int/2addr v4, v2

    .line 887
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_1

    .line 889
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->r:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v8, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 891
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v20

    .line 892
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 893
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v2

    .line 894
    if-eqz v2, :cond_b

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    if-lez v8, :cond_10

    :cond_b
    const/4 v2, 0x1

    move/from16 v17, v2

    .line 899
    :goto_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroidx/core/widget/NestedScrollView;->a(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    .line 900
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->b(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 905
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int v11, v2, v20

    .line 906
    sub-int v13, v4, v11

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->s:[I

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v2, v3

    .line 910
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/core/widget/NestedScrollView;->r:[I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->s:[I

    move-object/from16 v16, v0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v16}, Landroidx/core/widget/NestedScrollView;->a(IIII[II[I)V

    .line 913
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->f:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->r:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 914
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->t:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->r:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/core/widget/NestedScrollView;->t:I

    .line 916
    if-eqz v17, :cond_1

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->s:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v4, v2

    .line 918
    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->h()V

    .line 919
    add-int v3, v20, v2

    .line 920
    if-gez v3, :cond_11

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 922
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 921
    invoke-static {v3, v2, v4}, Landroidx/core/widget/d;->a(Landroid/widget/EdgeEffect;FF)V

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_d

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 934
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 935
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 936
    :cond_e
    invoke-static/range {p0 .. p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    goto/16 :goto_0

    .line 884
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->n:I

    add-int/2addr v4, v2

    goto/16 :goto_3

    .line 894
    :cond_10
    const/4 v2, 0x0

    move/from16 v17, v2

    goto/16 :goto_4

    .line 926
    :cond_11
    if-le v3, v8, :cond_d

    .line 927
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 928
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 929
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 927
    invoke-static {v3, v2, v4}, Landroidx/core/widget/d;->a(Landroid/widget/EdgeEffect;FF)V

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_d

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5

    .line 942
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 943
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/core/widget/NestedScrollView;->p:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 944
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/core/widget/NestedScrollView;->q:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v2, v2

    .line 945
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/core/widget/NestedScrollView;->o:I

    if-le v3, v4, :cond_13

    .line 946
    const/4 v3, 0x0

    neg-int v4, v2

    int-to-float v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_12

    .line 947
    const/4 v3, 0x0

    neg-int v4, v2

    int-to-float v4, v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 948
    neg-int v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->f(I)V

    .line 954
    :cond_12
    :goto_6
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 955
    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->g()V

    goto/16 :goto_0

    .line 950
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 951
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 950
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 952
    invoke-static/range {p0 .. p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    goto :goto_6

    .line 958
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->j:Z

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_14

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 960
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 959
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 961
    invoke-static/range {p0 .. p0}, Landroidx/core/h/u;->e(Landroid/view/View;)V

    .line 964
    :cond_14
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 965
    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->g()V

    goto/16 :goto_0

    .line 968
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 969
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 970
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/core/widget/NestedScrollView;->q:I

    goto/16 :goto_0

    .line 974
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/MotionEvent;)V

    .line 975
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/core/widget/NestedScrollView;->q:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroidx/core/widget/NestedScrollView;->f:I

    goto/16 :goto_0

    .line 835
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

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1724
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->g:Z

    if-nez v0, :cond_0

    .line 1725
    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;->b(Landroid/view/View;)V

    .line 1730
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1731
    return-void

    .line 1728
    :cond_0
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->i:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    .prologue
    .line 1773
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1774
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1773
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1776
    invoke-direct {p0, p2, p3}, Landroidx/core/widget/NestedScrollView;->a(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 705
    if-eqz p1, :cond_0

    .line 706
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->e()V

    .line 708
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 709
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1781
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->g:Z

    .line 1782
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1783
    return-void
.end method

.method public scrollTo(II)V
    .locals 6

    .prologue
    .line 1901
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1902
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1903
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1904
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1905
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1906
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1907
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1908
    invoke-static {p1, v2, v3}, Landroidx/core/widget/NestedScrollView;->b(III)I

    move-result v1

    .line 1909
    invoke-static {p2, v4, v0}, Landroidx/core/widget/NestedScrollView;->b(III)I

    move-result v0

    .line 1910
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 1911
    :cond_0
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1914
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->l:Z

    if-eq p1, v0, :cond_0

    .line 550
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->l:Z

    .line 551
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    .line 553
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->z:Landroidx/core/h/l;

    invoke-virtual {v0, p1}, Landroidx/core/h/l;->a(Z)V

    .line 261
    return-void
.end method

.method public setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->B:Landroidx/core/widget/NestedScrollView$b;

    .line 513
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    .prologue
    .line 567
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    .line 568
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->a(II)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->a(I)V

    .line 276
    return-void
.end method
