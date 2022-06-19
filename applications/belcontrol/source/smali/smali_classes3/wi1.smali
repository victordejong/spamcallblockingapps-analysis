.class public final Lwi1;
.super Landroid/view/animation/Animation;
.source ""


# static fields
.field public static final s:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lwi1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/graphics/Camera;

.field public c:Z

.field public d:F

.field public f:F

.field public g:F

.field public h:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public final p:Landroid/graphics/RectF;

.field public final q:Landroid/graphics/RectF;

.field public final r:Landroid/graphics/Matrix;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lwi1;->s:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lwi1;->b:Landroid/graphics/Camera;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lwi1;->d:F

    iput v0, p0, Lwi1;->l:F

    iput v0, p0, Lwi1;->m:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lwi1;->p:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lwi1;->q:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lwi1;->r:Landroid/graphics/Matrix;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lwi1;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static A(Landroid/view/View;)Lwi1;
    .locals 3

    sget-object v0, Lwi1;->s:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwi1;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Lwi1;

    invoke-direct {v1, p0}, Lwi1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget-object p1, p0, Lwi1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    iget v0, p0, Lwi1;->d:F

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lwi1;->z(Landroid/graphics/Matrix;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lwi1;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0, v0, p2}, Lwi1;->z(Landroid/graphics/Matrix;Landroid/view/View;)V

    iget-object v0, p0, Lwi1;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/RectF;->offset(FF)V

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iput p2, p1, Landroid/graphics/RectF;->left:F

    :cond_0
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_1

    iput p2, p1, Landroid/graphics/RectF;->top:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lwi1;->d:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lwi1;->k:F

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lwi1;->h:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lwi1;->j:F

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lwi1;->l:F

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lwi1;->m:F

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lwi1;->n:F

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lwi1;->o:F

    return v0
.end method

.method public l()F
    .locals 2

    iget-object v0, p0, Lwi1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lwi1;->n:F

    add-float/2addr v0, v1

    return v0
.end method

.method public m()F
    .locals 2

    iget-object v0, p0, Lwi1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lwi1;->o:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final n()V
    .locals 7

    iget-object v0, p0, Lwi1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lwi1;->q:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, v0}, Lwi1;->b(Landroid/graphics/RectF;Landroid/view/View;)V

    iget-object v2, p0, Lwi1;->p:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->invalidate(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lwi1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lwi1;->p:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, v0}, Lwi1;->b(Landroid/graphics/RectF;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public p(F)V
    .locals 1

    iget v0, p0, Lwi1;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lwi1;->d:F

    iget-object p1, p0, Lwi1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public q(F)V
    .locals 1

    iget v0, p0, Lwi1;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwi1;->o()V

    iput p1, p0, Lwi1;->k:F

    invoke-virtual {p0}, Lwi1;->n()V

    :cond_0
    return-void
.end method

.method public r(F)V
    .locals 1

    iget v0, p0, Lwi1;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwi1;->o()V

    iput p1, p0, Lwi1;->h:F

    invoke-virtual {p0}, Lwi1;->n()V

    :cond_0
    return-void
.end method

.method public s(F)V
    .locals 1

    iget v0, p0, Lwi1;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwi1;->o()V

    iput p1, p0, Lwi1;->j:F

    invoke-virtual {p0}, Lwi1;->n()V

    :cond_0
    return-void
.end method

.method public t(F)V
    .locals 1

    iget v0, p0, Lwi1;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwi1;->o()V

    iput p1, p0, Lwi1;->l:F

    invoke-virtual {p0}, Lwi1;->n()V

    :cond_0
    return-void
.end method

.method public u(F)V
    .locals 1

    iget v0, p0, Lwi1;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwi1;->o()V

    iput p1, p0, Lwi1;->m:F

    invoke-virtual {p0}, Lwi1;->n()V

    :cond_0
    return-void
.end method

.method public v(F)V
    .locals 1

    iget v0, p0, Lwi1;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwi1;->o()V

    iput p1, p0, Lwi1;->n:F

    invoke-virtual {p0}, Lwi1;->n()V

    :cond_0
    return-void
.end method

.method public w(F)V
    .locals 1

    iget v0, p0, Lwi1;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwi1;->o()V

    iput p1, p0, Lwi1;->o:F

    invoke-virtual {p0}, Lwi1;->n()V

    :cond_0
    return-void
.end method

.method public x(F)V
    .locals 1

    iget-object v0, p0, Lwi1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lwi1;->v(F)V

    :cond_0
    return-void
.end method

.method public y(F)V
    .locals 1

    iget-object v0, p0, Lwi1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lwi1;->w(F)V

    :cond_0
    return-void
.end method

.method public final z(Landroid/graphics/Matrix;Landroid/view/View;)V
    .locals 8

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget-boolean v1, p0, Lwi1;->c:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    iget v3, p0, Lwi1;->f:F

    goto :goto_0

    :cond_0
    div-float v3, v0, v2

    :goto_0
    if-eqz v1, :cond_1

    iget v1, p0, Lwi1;->g:F

    goto :goto_1

    :cond_1
    div-float v1, p2, v2

    :goto_1
    iget v2, p0, Lwi1;->h:F

    iget v4, p0, Lwi1;->j:F

    iget v5, p0, Lwi1;->k:F

    const/4 v6, 0x0

    cmpl-float v7, v2, v6

    if-nez v7, :cond_2

    cmpl-float v7, v4, v6

    if-nez v7, :cond_2

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lwi1;->b:Landroid/graphics/Camera;

    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    invoke-virtual {v6, v2}, Landroid/graphics/Camera;->rotateX(F)V

    invoke-virtual {v6, v4}, Landroid/graphics/Camera;->rotateY(F)V

    neg-float v2, v5

    invoke-virtual {v6, v2}, Landroid/graphics/Camera;->rotateZ(F)V

    invoke-virtual {v6, p1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    neg-float v2, v3

    neg-float v4, v1

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_3
    iget v2, p0, Lwi1;->l:F

    iget v4, p0, Lwi1;->m:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v5

    if-nez v6, :cond_4

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-float/2addr v3, v0

    neg-float v3, v3

    mul-float v2, v2, v0

    sub-float/2addr v2, v0

    mul-float v3, v3, v2

    div-float/2addr v1, p2

    neg-float v0, v1

    mul-float v4, v4, p2

    sub-float/2addr v4, p2

    mul-float v0, v0, v4

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5
    iget p2, p0, Lwi1;->n:F

    iget v0, p0, Lwi1;->o:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method
