.class public Ltb1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public a:I

.field public b:Landroid/view/View;

.field public c:F

.field public d:Landroid/view/View;

.field public f:I

.field public g:F

.field public h:Z

.field public j:I

.field public k:F

.field public l:Landroid/widget/ListView;

.field public m:F

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/widget/ListView;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb1;->l:Landroid/widget/ListView;

    new-instance v0, Ltb1$a;

    invoke-direct {v0, p0}, Ltb1$a;-><init>(Ltb1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Ltb1;->a:I

    iput p2, p0, Ltb1;->f:I

    iput p3, p0, Ltb1;->j:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Ltb1;->m:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Ltb1;->m:F

    :cond_0
    return-void
.end method

.method public static synthetic a(Ltb1;)Z
    .locals 0

    iget-boolean p0, p0, Ltb1;->n:Z

    return p0
.end method

.method public static synthetic b(Ltb1;Z)Z
    .locals 0

    iput-boolean p1, p0, Ltb1;->n:Z

    return p1
.end method

.method public static synthetic c(Ltb1;Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ltb1;->g(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Ltb1;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ltb1;->e(Landroid/view/View;F)V

    const/4 v0, 0x0

    iput-object v0, p0, Ltb1;->d:Landroid/view/View;

    return-void
.end method

.method public final e(Landroid/view/View;F)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lsi1;->a(Landroid/view/View;)Lsi1;

    move-result-object v0

    invoke-virtual {v0, p2}, Lsi1;->d(F)Lsi1;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lsi1;->b(J)Lsi1;

    move-result-object v0

    new-instance v1, Ltb1$b;

    invoke-direct {v1, p0, p1, p2}, Ltb1$b;-><init>(Ltb1;Landroid/view/View;F)V

    invoke-virtual {v0, v1}, Lsi1;->c(Lhi1$a;)Lsi1;

    return-void
.end method

.method public final f(Landroid/view/View;)F
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    return p1

    :cond_0
    iget p1, p0, Ltb1;->c:F

    return p1
.end method

.method public final g(Landroid/view/View;F)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lsi1;->a(Landroid/view/View;)Lsi1;

    move-result-object p1

    invoke-virtual {p1, p2}, Lsi1;->d(F)Lsi1;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lsi1;->b(J)Lsi1;

    iput p2, p0, Ltb1;->c:F

    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget-boolean p1, p0, Ltb1;->n:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_10

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object p1, p0, Ltb1;->b:Landroid/view/View;

    if-nez p1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Ltb1;->g:F

    sub-float/2addr p1, v1

    iget-boolean v1, p0, Ltb1;->h:Z

    if-nez v1, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Ltb1;->a:I

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    iget v5, p0, Ltb1;->m:F

    mul-float v4, v4, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    iget-object p1, p0, Ltb1;->d:Landroid/view/View;

    iget-object p2, p0, Ltb1;->b:Landroid/view/View;

    if-eq p1, p2, :cond_15

    invoke-virtual {p0}, Ltb1;->d()V

    goto/16 :goto_5

    :cond_3
    iget-boolean v0, p0, Ltb1;->h:Z

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v1, p0, Ltb1;->l:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Ltb1;->d:Landroid/view/View;

    iget-object v1, p0, Ltb1;->b:Landroid/view/View;

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Ltb1;->d()V

    :cond_4
    iput-boolean v2, p0, Ltb1;->h:Z

    iget-object v0, p0, Ltb1;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Ltb1;->f(Landroid/view/View;)F

    move-result v0

    cmpg-float v1, p1, v3

    if-gez v1, :cond_5

    iget-object v1, p0, Ltb1;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v4, p0, Ltb1;->l:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_5

    iget-object p1, p0, Ltb1;->b:Landroid/view/View;

    iget-object p2, p0, Ltb1;->l:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getWidth()I

    move-result p2

    iget-object v0, p0, Ltb1;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Ltb1;->g(Landroid/view/View;F)V

    return v2

    :cond_5
    cmpl-float v1, p1, v3

    if-lez v1, :cond_6

    cmpl-float v1, v0, v3

    if-ltz v1, :cond_6

    iget-object p1, p0, Ltb1;->b:Landroid/view/View;

    invoke-virtual {p0, p1, v3}, Ltb1;->g(Landroid/view/View;F)V

    return v2

    :cond_6
    add-float v1, v0, p1

    iget-object v4, p0, Ltb1;->l:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Ltb1;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_7

    iget-object p1, p0, Ltb1;->l:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result p1

    iget-object v1, p0, Ltb1;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    sub-float/2addr p1, v0

    :cond_7
    add-float v1, v0, p1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_8

    neg-float p1, v0

    :cond_8
    iget-object v1, p0, Ltb1;->b:Landroid/view/View;

    add-float/2addr v0, p1

    invoke-virtual {p0, v1, v0}, Ltb1;->g(Landroid/view/View;F)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Ltb1;->g:F

    return v2

    :cond_9
    iget-object p1, p0, Ltb1;->b:Landroid/view/View;

    if-eqz p1, :cond_15

    invoke-virtual {p0, p1}, Ltb1;->f(Landroid/view/View;)F

    move-result p1

    iget-boolean v4, p0, Ltb1;->h:Z

    const/4 v5, 0x0

    if-nez v4, :cond_a

    cmpg-float v4, p1, v3

    if-gez v4, :cond_a

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v4, v6, :cond_a

    new-array v1, v1, [I

    iget-object v4, p0, Ltb1;->l:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    aget v1, v1, v0

    sub-int/2addr v4, v1

    iget-object v1, p0, Ltb1;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Ltb1;->f(Landroid/view/View;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v4, v1

    iget-object v1, p0, Ltb1;->b:Landroid/view/View;

    iget v6, p0, Ltb1;->j:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v7, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v4, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-object v5, p0, Ltb1;->b:Landroid/view/View;

    return v2

    :cond_a
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v1, p0, Ltb1;->k:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    cmpl-float p2, p2, v1

    if-lez p2, :cond_b

    iget-object p2, p0, Ltb1;->b:Landroid/view/View;

    iput-object p2, p0, Ltb1;->d:Landroid/view/View;

    iget-object v1, p0, Ltb1;->l:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    iget-object v6, p0, Ltb1;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {p0, p2, v1}, Ltb1;->e(Landroid/view/View;F)V

    :cond_b
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v1, p0, Ltb1;->k:F

    div-float/2addr v1, v4

    cmpg-float p2, p2, v1

    if-lez p2, :cond_c

    iget-boolean p2, p0, Ltb1;->h:Z

    if-nez p2, :cond_d

    cmpg-float p2, p1, v3

    if-gez p2, :cond_d

    :cond_c
    iput-object v5, p0, Ltb1;->d:Landroid/view/View;

    iget-object p2, p0, Ltb1;->b:Landroid/view/View;

    invoke-virtual {p0, p2, v3}, Ltb1;->e(Landroid/view/View;F)V

    :cond_d
    iput-object v5, p0, Ltb1;->b:Landroid/view/View;

    iget-boolean p2, p0, Ltb1;->h:Z

    if-nez p2, :cond_f

    cmpg-float p1, p1, v3

    if-gez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x0

    :cond_f
    :goto_0
    iput-boolean v0, p0, Ltb1;->h:Z

    return v2

    :cond_10
    iput-boolean v0, p0, Ltb1;->h:Z

    iget-object p1, p0, Ltb1;->l:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    new-array v1, v1, [I

    iget-object v4, p0, Ltb1;->l:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    aget v5, v1, v0

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    aget v1, v1, v2

    sub-int/2addr v5, v1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, p1, :cond_14

    iget-object v7, p0, Ltb1;->l:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_11

    goto :goto_3

    :cond_11
    invoke-virtual {v7, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_13

    iget v8, p0, Ltb1;->f:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Ltb1;->b:Landroid/view/View;

    if-eqz v7, :cond_13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Ltb1;->g:F

    iget-object p1, p0, Ltb1;->b:Landroid/view/View;

    iget-object p2, p0, Ltb1;->d:Landroid/view/View;

    if-ne p1, p2, :cond_12

    iget-object p1, p0, Ltb1;->l:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result p1

    iget-object p2, p0, Ltb1;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    goto :goto_2

    :cond_12
    const/4 p1, 0x0

    :goto_2
    iput p1, p0, Ltb1;->c:F

    iget-object p1, p0, Ltb1;->b:Landroid/view/View;

    iget p2, p0, Ltb1;->j:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Ltb1;->k:F

    goto :goto_4

    :cond_13
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_14
    :goto_4
    iget-object p1, p0, Ltb1;->b:Landroid/view/View;

    if-eqz p1, :cond_15

    invoke-virtual {p0, p1}, Ltb1;->f(Landroid/view/View;)F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_15

    return v2

    :cond_15
    :goto_5
    return v0
.end method
