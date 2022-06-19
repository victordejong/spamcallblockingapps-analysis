.class public Le/c/a/b/w/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/b/w/n$c;,
        Le/c/a/b/w/n$b;,
        Le/c/a/b/w/n$a;
    }
.end annotation


# instance fields
.field private final a:[Le/c/a/b/w/o;

.field private final b:[Landroid/graphics/Matrix;

.field private final c:[Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/PointF;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Path;

.field private final g:Le/c/a/b/w/o;

.field private final h:[F

.field private final i:[F

.field private final j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Path;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Le/c/a/b/w/o;

    iput-object v1, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Le/c/a/b/w/n;->b:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Le/c/a/b/w/n;->c:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Le/c/a/b/w/n;->d:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Le/c/a/b/w/n;->e:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Le/c/a/b/w/n;->f:Landroid/graphics/Path;

    new-instance v1, Le/c/a/b/w/o;

    invoke-direct {v1}, Le/c/a/b/w/o;-><init>()V

    iput-object v1, p0, Le/c/a/b/w/n;->g:Le/c/a/b/w/o;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Le/c/a/b/w/n;->h:[F

    new-array v1, v1, [F

    iput-object v1, p0, Le/c/a/b/w/n;->i:[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Le/c/a/b/w/n;->j:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Le/c/a/b/w/n;->k:Landroid/graphics/Path;

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/c/a/b/w/n;->l:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    new-instance v3, Le/c/a/b/w/o;

    invoke-direct {v3}, Le/c/a/b/w/o;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Le/c/a/b/w/n;->b:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Le/c/a/b/w/n;->c:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(I)F
    .locals 0

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x5a

    int-to-float p1, p1

    return p1
.end method

.method private b(Le/c/a/b/w/n$c;I)V
    .locals 4

    iget-object v0, p0, Le/c/a/b/w/n;->h:[F

    iget-object v1, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Le/c/a/b/w/o;->k()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Le/c/a/b/w/n;->h:[F

    iget-object v1, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Le/c/a/b/w/o;->l()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Le/c/a/b/w/n;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Le/c/a/b/w/n;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p1, Le/c/a/b/w/n$c;->b:Landroid/graphics/Path;

    iget-object v1, p0, Le/c/a/b/w/n;->h:[F

    if-nez p2, :cond_0

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_0
    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    iget-object v0, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    aget-object v0, v0, p2

    iget-object v1, p0, Le/c/a/b/w/n;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Le/c/a/b/w/n$c;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Le/c/a/b/w/o;->d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object p1, p1, Le/c/a/b/w/n$c;->d:Le/c/a/b/w/n$b;

    if-eqz p1, :cond_1

    iget-object v0, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    aget-object v0, v0, p2

    iget-object v1, p0, Le/c/a/b/w/n;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, Le/c/a/b/w/n$b;->b(Le/c/a/b/w/o;Landroid/graphics/Matrix;I)V

    :cond_1
    return-void
.end method

.method private c(Le/c/a/b/w/n$c;I)V
    .locals 8

    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Le/c/a/b/w/n;->h:[F

    iget-object v2, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Le/c/a/b/w/o;->i()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v1, p0, Le/c/a/b/w/n;->h:[F

    iget-object v2, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Le/c/a/b/w/o;->j()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v1, p0, Le/c/a/b/w/n;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Le/c/a/b/w/n;->h:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Le/c/a/b/w/n;->i:[F

    iget-object v2, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Le/c/a/b/w/o;->k()F

    move-result v2

    aput v2, v1, v3

    iget-object v1, p0, Le/c/a/b/w/n;->i:[F

    iget-object v2, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Le/c/a/b/w/o;->l()F

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, Le/c/a/b/w/n;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, v0

    iget-object v2, p0, Le/c/a/b/w/n;->i:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Le/c/a/b/w/n;->h:[F

    aget v2, v1, v3

    iget-object v5, p0, Le/c/a/b/w/n;->i:[F

    aget v6, v5, v3

    sub-float/2addr v2, v6

    float-to-double v6, v2

    aget v1, v1, v4

    aget v2, v5, v4

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3a83126f    # 0.001f

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v5, p1, Le/c/a/b/w/n$c;->c:Landroid/graphics/RectF;

    invoke-direct {p0, v5, p2}, Le/c/a/b/w/n;->i(Landroid/graphics/RectF;I)F

    move-result v5

    iget-object v6, p0, Le/c/a/b/w/n;->g:Le/c/a/b/w/o;

    invoke-virtual {v6, v2, v2}, Le/c/a/b/w/o;->n(FF)V

    iget-object v2, p1, Le/c/a/b/w/n$c;->a:Le/c/a/b/w/m;

    invoke-direct {p0, p2, v2}, Le/c/a/b/w/n;->j(ILe/c/a/b/w/m;)Le/c/a/b/w/f;

    move-result-object v2

    iget v6, p1, Le/c/a/b/w/n$c;->e:F

    iget-object v7, p0, Le/c/a/b/w/n;->g:Le/c/a/b/w/o;

    invoke-virtual {v2, v1, v5, v6, v7}, Le/c/a/b/w/f;->c(FFFLe/c/a/b/w/o;)V

    iget-object v1, p0, Le/c/a/b/w/n;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Le/c/a/b/w/n;->g:Le/c/a/b/w/o;

    iget-object v5, p0, Le/c/a/b/w/n;->c:[Landroid/graphics/Matrix;

    aget-object v5, v5, p2

    iget-object v6, p0, Le/c/a/b/w/n;->j:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v6}, Le/c/a/b/w/o;->d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-boolean v1, p0, Le/c/a/b/w/n;->l:Z

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v1, v5, :cond_1

    invoke-virtual {v2}, Le/c/a/b/w/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Le/c/a/b/w/n;->j:Landroid/graphics/Path;

    invoke-direct {p0, v1, p2}, Le/c/a/b/w/n;->l(Landroid/graphics/Path;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Le/c/a/b/w/n;->j:Landroid/graphics/Path;

    invoke-direct {p0, v1, v0}, Le/c/a/b/w/n;->l(Landroid/graphics/Path;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Le/c/a/b/w/n;->j:Landroid/graphics/Path;

    iget-object v1, p0, Le/c/a/b/w/n;->f:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v0, p0, Le/c/a/b/w/n;->h:[F

    iget-object v1, p0, Le/c/a/b/w/n;->g:Le/c/a/b/w/o;

    invoke-virtual {v1}, Le/c/a/b/w/o;->k()F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Le/c/a/b/w/n;->h:[F

    iget-object v1, p0, Le/c/a/b/w/n;->g:Le/c/a/b/w/o;

    invoke-virtual {v1}, Le/c/a/b/w/o;->l()F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Le/c/a/b/w/n;->c:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Le/c/a/b/w/n;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Le/c/a/b/w/n;->e:Landroid/graphics/Path;

    iget-object v1, p0, Le/c/a/b/w/n;->h:[F

    aget v2, v1, v3

    aget v1, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Le/c/a/b/w/n;->g:Le/c/a/b/w/o;

    iget-object v1, p0, Le/c/a/b/w/n;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Le/c/a/b/w/n;->e:Landroid/graphics/Path;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le/c/a/b/w/n;->g:Le/c/a/b/w/o;

    iget-object v1, p0, Le/c/a/b/w/n;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Le/c/a/b/w/n$c;->b:Landroid/graphics/Path;

    :goto_0
    invoke-virtual {v0, v1, v2}, Le/c/a/b/w/o;->d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object p1, p1, Le/c/a/b/w/n$c;->d:Le/c/a/b/w/n$b;

    if-eqz p1, :cond_2

    iget-object v0, p0, Le/c/a/b/w/n;->g:Le/c/a/b/w/o;

    iget-object v1, p0, Le/c/a/b/w/n;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, Le/c/a/b/w/n$b;->a(Le/c/a/b/w/o;Landroid/graphics/Matrix;I)V

    :cond_2
    return-void
.end method

.method private f(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget p1, p2, Landroid/graphics/RectF;->right:F

    :goto_0
    iget p2, p2, Landroid/graphics/RectF;->top:F

    :goto_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_0
    iget p1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_1
    iget p1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_2

    :cond_2
    iget p1, p2, Landroid/graphics/RectF;->right:F

    :goto_2
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :goto_3
    return-void
.end method

.method private g(ILe/c/a/b/w/m;)Le/c/a/b/w/c;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Le/c/a/b/w/m;->t()Le/c/a/b/w/c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Le/c/a/b/w/m;->r()Le/c/a/b/w/c;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Le/c/a/b/w/m;->j()Le/c/a/b/w/c;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Le/c/a/b/w/m;->l()Le/c/a/b/w/c;

    move-result-object p1

    return-object p1
.end method

.method private h(ILe/c/a/b/w/m;)Le/c/a/b/w/d;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Le/c/a/b/w/m;->s()Le/c/a/b/w/d;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Le/c/a/b/w/m;->q()Le/c/a/b/w/d;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Le/c/a/b/w/m;->i()Le/c/a/b/w/d;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Le/c/a/b/w/m;->k()Le/c/a/b/w/d;

    move-result-object p1

    return-object p1
.end method

.method private i(Landroid/graphics/RectF;I)F
    .locals 4

    iget-object v0, p0, Le/c/a/b/w/n;->h:[F

    iget-object v1, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    aget-object v2, v1, p2

    iget v2, v2, Le/c/a/b/w/o;->c:F

    const/4 v3, 0x0

    aput v2, v0, v3

    aget-object v1, v1, p2

    iget v1, v1, Le/c/a/b/w/o;->d:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Le/c/a/b/w/n;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq p2, v2, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget-object p2, p0, Le/c/a/b/w/n;->h:[F

    aget p2, p2, v2

    :goto_0
    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p2, p0, Le/c/a/b/w/n;->h:[F

    aget p2, p2, v3

    goto :goto_0
.end method

.method private j(ILe/c/a/b/w/m;)Le/c/a/b/w/f;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Le/c/a/b/w/m;->o()Le/c/a/b/w/f;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Le/c/a/b/w/m;->p()Le/c/a/b/w/f;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Le/c/a/b/w/m;->n()Le/c/a/b/w/f;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Le/c/a/b/w/m;->h()Le/c/a/b/w/f;

    move-result-object p1

    return-object p1
.end method

.method public static k()Le/c/a/b/w/n;
    .locals 1

    sget-object v0, Le/c/a/b/w/n$a;->a:Le/c/a/b/w/n;

    return-object v0
.end method

.method private l(Landroid/graphics/Path;I)Z
    .locals 3

    iget-object v0, p0, Le/c/a/b/w/n;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    aget-object v0, v0, p2

    iget-object v1, p0, Le/c/a/b/w/n;->b:[Landroid/graphics/Matrix;

    aget-object p2, v1, p2

    iget-object v1, p0, Le/c/a/b/w/n;->k:Landroid/graphics/Path;

    invoke-virtual {v0, p2, v1}, Le/c/a/b/w/o;->d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v1, p0, Le/c/a/b/w/n;->k:Landroid/graphics/Path;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v1, p0, Le/c/a/b/w/n;->k:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private m(Le/c/a/b/w/n$c;I)V
    .locals 7

    iget-object v0, p1, Le/c/a/b/w/n$c;->a:Le/c/a/b/w/m;

    invoke-direct {p0, p2, v0}, Le/c/a/b/w/n;->g(ILe/c/a/b/w/m;)Le/c/a/b/w/c;

    move-result-object v6

    iget-object v0, p1, Le/c/a/b/w/n$c;->a:Le/c/a/b/w/m;

    invoke-direct {p0, p2, v0}, Le/c/a/b/w/n;->h(ILe/c/a/b/w/m;)Le/c/a/b/w/d;

    move-result-object v1

    iget-object v0, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    aget-object v2, v0, p2

    iget v4, p1, Le/c/a/b/w/n$c;->e:F

    iget-object v5, p1, Le/c/a/b/w/n$c;->c:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual/range {v1 .. v6}, Le/c/a/b/w/d;->b(Le/c/a/b/w/o;FFLandroid/graphics/RectF;Le/c/a/b/w/c;)V

    invoke-direct {p0, p2}, Le/c/a/b/w/n;->a(I)F

    move-result v0

    iget-object v1, p0, Le/c/a/b/w/n;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object p1, p1, Le/c/a/b/w/n$c;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Le/c/a/b/w/n;->d:Landroid/graphics/PointF;

    invoke-direct {p0, p2, p1, v1}, Le/c/a/b/w/n;->f(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    iget-object p1, p0, Le/c/a/b/w/n;->b:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    iget-object v1, p0, Le/c/a/b/w/n;->d:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Le/c/a/b/w/n;->b:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private n(I)V
    .locals 5

    iget-object v0, p0, Le/c/a/b/w/n;->h:[F

    iget-object v1, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Le/c/a/b/w/o;->i()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Le/c/a/b/w/n;->h:[F

    iget-object v1, p0, Le/c/a/b/w/n;->a:[Le/c/a/b/w/o;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Le/c/a/b/w/o;->j()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Le/c/a/b/w/n;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Le/c/a/b/w/n;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-direct {p0, p1}, Le/c/a/b/w/n;->a(I)F

    move-result v0

    iget-object v1, p0, Le/c/a/b/w/n;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Le/c/a/b/w/n;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v4, p0, Le/c/a/b/w/n;->h:[F

    aget v2, v4, v2

    aget v3, v4, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Le/c/a/b/w/n;->c:[Landroid/graphics/Matrix;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method


# virtual methods
.method public d(Le/c/a/b/w/m;FLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Le/c/a/b/w/n;->e(Le/c/a/b/w/m;FLandroid/graphics/RectF;Le/c/a/b/w/n$b;Landroid/graphics/Path;)V

    return-void
.end method

.method public e(Le/c/a/b/w/m;FLandroid/graphics/RectF;Le/c/a/b/w/n$b;Landroid/graphics/Path;)V
    .locals 8

    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Le/c/a/b/w/n;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Le/c/a/b/w/n;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Le/c/a/b/w/n;->f:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    new-instance v0, Le/c/a/b/w/n$c;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Le/c/a/b/w/n$c;-><init>(Le/c/a/b/w/m;FLandroid/graphics/RectF;Le/c/a/b/w/n$b;Landroid/graphics/Path;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x4

    if-ge p2, p3, :cond_0

    invoke-direct {p0, v0, p2}, Le/c/a/b/w/n;->m(Le/c/a/b/w/n$c;I)V

    invoke-direct {p0, p2}, Le/c/a/b/w/n;->n(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p3, :cond_1

    invoke-direct {p0, v0, p1}, Le/c/a/b/w/n;->b(Le/c/a/b/w/n$c;I)V

    invoke-direct {p0, v0, p1}, Le/c/a/b/w/n;->c(Le/c/a/b/w/n$c;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    iget-object p1, p0, Le/c/a/b/w/n;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Le/c/a/b/w/n;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Le/c/a/b/w/n;->e:Landroid/graphics/Path;

    sget-object p2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p5, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_2
    return-void
.end method
