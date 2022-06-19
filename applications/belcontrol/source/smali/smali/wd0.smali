.class public Lwd0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwd0$b;,
        Lwd0$a;
    }
.end annotation


# instance fields
.field public final a:[Lxd0;

.field public final b:[Landroid/graphics/Matrix;

.field public final c:[Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/PointF;

.field public final e:Lxd0;

.field public final f:[F

.field public final g:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lxd0;

    iput-object v1, p0, Lwd0;->a:[Lxd0;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lwd0;->b:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lwd0;->c:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lwd0;->d:Landroid/graphics/PointF;

    new-instance v1, Lxd0;

    invoke-direct {v1}, Lxd0;-><init>()V

    iput-object v1, p0, Lwd0;->e:Lxd0;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lwd0;->f:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lwd0;->g:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lwd0;->a:[Lxd0;

    new-instance v3, Lxd0;

    invoke-direct {v3}, Lxd0;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lwd0;->b:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lwd0;->c:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 0

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x5a

    int-to-float p1, p1

    return p1
.end method

.method public final b(Lwd0$b;I)V
    .locals 4

    iget-object v0, p0, Lwd0;->f:[F

    iget-object v1, p0, Lwd0;->a:[Lxd0;

    aget-object v2, v1, p2

    iget v2, v2, Lxd0;->a:F

    const/4 v3, 0x0

    aput v2, v0, v3

    aget-object v1, v1, p2

    iget v1, v1, Lxd0;->b:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lwd0;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p1, Lwd0$b;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lwd0;->f:[F

    if-nez p2, :cond_0

    aget v3, v1, v3

    aget v1, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_0
    aget v3, v1, v3

    aget v1, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    iget-object v0, p0, Lwd0;->a:[Lxd0;

    aget-object v0, v0, p2

    iget-object v1, p0, Lwd0;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lwd0$b;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lxd0;->d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object p1, p1, Lwd0$b;->d:Lwd0$a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lwd0;->a:[Lxd0;

    aget-object v0, v0, p2

    iget-object v1, p0, Lwd0;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, Lwd0$a;->b(Lxd0;Landroid/graphics/Matrix;I)V

    :cond_1
    return-void
.end method

.method public final c(Lwd0$b;I)V
    .locals 6

    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lwd0;->f:[F

    iget-object v2, p0, Lwd0;->a:[Lxd0;

    aget-object v3, v2, p2

    iget v3, v3, Lxd0;->c:F

    const/4 v4, 0x0

    aput v3, v1, v4

    aget-object v2, v2, p2

    iget v2, v2, Lxd0;->d:F

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v2, p0, Lwd0;->b:[Landroid/graphics/Matrix;

    aget-object v2, v2, p2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lwd0;->g:[F

    iget-object v2, p0, Lwd0;->a:[Lxd0;

    aget-object v5, v2, v0

    iget v5, v5, Lxd0;->a:F

    aput v5, v1, v4

    aget-object v2, v2, v0

    iget v2, v2, Lxd0;->b:F

    aput v2, v1, v3

    iget-object v2, p0, Lwd0;->b:[Landroid/graphics/Matrix;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lwd0;->f:[F

    aget v1, v0, v4

    iget-object v2, p0, Lwd0;->g:[F

    aget v4, v2, v4

    sub-float/2addr v1, v4

    float-to-double v4, v1

    aget v0, v0, v3

    aget v1, v2, v3

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3a83126f    # 0.001f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p1, Lwd0$b;->c:Landroid/graphics/RectF;

    invoke-virtual {p0, v2, p2}, Lwd0;->g(Landroid/graphics/RectF;I)F

    move-result v2

    iget-object v3, p0, Lwd0;->e:Lxd0;

    invoke-virtual {v3, v1, v1}, Lxd0;->g(FF)V

    iget-object v1, p1, Lwd0$b;->a:Lvd0;

    invoke-virtual {p0, p2, v1}, Lwd0;->h(ILvd0;)Lpd0;

    move-result-object v1

    iget v3, p1, Lwd0$b;->e:F

    iget-object v4, p0, Lwd0;->e:Lxd0;

    invoke-virtual {v1, v0, v2, v3, v4}, Lpd0;->c(FFFLxd0;)V

    iget-object v0, p0, Lwd0;->e:Lxd0;

    iget-object v1, p0, Lwd0;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lwd0$b;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lxd0;->d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object p1, p1, Lwd0$b;->d:Lwd0$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lwd0;->e:Lxd0;

    iget-object v1, p0, Lwd0;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, Lwd0$a;->a(Lxd0;Landroid/graphics/Matrix;I)V

    :cond_0
    return-void
.end method

.method public d(Lvd0;FLandroid/graphics/RectF;Lwd0$a;Landroid/graphics/Path;)V
    .locals 7

    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    new-instance v6, Lwd0$b;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lwd0$b;-><init>(Lvd0;FLandroid/graphics/RectF;Lwd0$a;Landroid/graphics/Path;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x4

    if-ge p2, p3, :cond_0

    invoke-virtual {p0, v6, p2}, Lwd0;->i(Lwd0$b;I)V

    invoke-virtual {p0, p2}, Lwd0;->j(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p3, :cond_1

    invoke-virtual {p0, v6, p1}, Lwd0;->b(Lwd0$b;I)V

    invoke-virtual {p0, v6, p1}, Lwd0;->c(Lwd0$b;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public final e(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
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

.method public final f(ILvd0;)Lnd0;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Lvd0;->h()Lnd0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lvd0;->g()Lnd0;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Lvd0;->b()Lnd0;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Lvd0;->c()Lnd0;

    move-result-object p1

    return-object p1
.end method

.method public final g(Landroid/graphics/RectF;I)F
    .locals 4

    iget-object v0, p0, Lwd0;->f:[F

    iget-object v1, p0, Lwd0;->a:[Lxd0;

    aget-object v2, v1, p2

    iget v2, v2, Lxd0;->c:F

    const/4 v3, 0x0

    aput v2, v0, v3

    aget-object v1, v1, p2

    iget v1, v1, Lxd0;->d:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lwd0;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq p2, v2, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget-object p2, p0, Lwd0;->f:[F

    aget p2, p2, v2

    :goto_0
    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p2, p0, Lwd0;->f:[F

    aget p2, p2, v3

    goto :goto_0
.end method

.method public final h(ILvd0;)Lpd0;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Lvd0;->e()Lpd0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lvd0;->f()Lpd0;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Lvd0;->d()Lpd0;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Lvd0;->a()Lpd0;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lwd0$b;I)V
    .locals 4

    iget-object v0, p1, Lwd0$b;->a:Lvd0;

    invoke-virtual {p0, p2, v0}, Lwd0;->f(ILvd0;)Lnd0;

    move-result-object v0

    iget v1, p1, Lwd0$b;->e:F

    iget-object v2, p0, Lwd0;->a:[Lxd0;

    aget-object v2, v2, p2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0, v3, v1, v2}, Lnd0;->c(FFLxd0;)V

    invoke-virtual {p0, p2}, Lwd0;->a(I)F

    move-result v0

    iget-object v1, p0, Lwd0;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object p1, p1, Lwd0$b;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lwd0;->d:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, p1, v1}, Lwd0;->e(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    iget-object p1, p0, Lwd0;->b:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    iget-object v1, p0, Lwd0;->d:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lwd0;->b:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method public final j(I)V
    .locals 5

    iget-object v0, p0, Lwd0;->f:[F

    iget-object v1, p0, Lwd0;->a:[Lxd0;

    aget-object v2, v1, p1

    iget v2, v2, Lxd0;->c:F

    const/4 v3, 0x0

    aput v2, v0, v3

    aget-object v1, v1, p1

    iget v1, v1, Lxd0;->d:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lwd0;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {p0, p1}, Lwd0;->a(I)F

    move-result v0

    iget-object v1, p0, Lwd0;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lwd0;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v4, p0, Lwd0;->f:[F

    aget v3, v4, v3

    aget v2, v4, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lwd0;->c:[Landroid/graphics/Matrix;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method
