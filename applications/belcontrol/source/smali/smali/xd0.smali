.class public Lxd0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxd0$d;,
        Lxd0$e;,
        Lxd0$f;,
        Lxd0$b;,
        Lxd0$c;,
        Lxd0$g;
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxd0$f;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxd0$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxd0;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxd0;->h:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lxd0;->g(FF)V

    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .locals 4

    new-instance v0, Lxd0$d;

    invoke-direct {v0, p1, p2, p3, p4}, Lxd0$d;-><init>(FFFF)V

    iput p5, v0, Lxd0$d;->f:F

    iput p6, v0, Lxd0$d;->g:F

    iget-object v1, p0, Lxd0;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lxd0$b;

    invoke-direct {v1, v0}, Lxd0$b;-><init>(Lxd0$d;)V

    add-float v0, p5, p6

    const/4 v2, 0x0

    cmpg-float p6, p6, v2

    if-gez p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43340000    # 180.0f

    if-eqz p6, :cond_1

    add-float/2addr p5, v3

    rem-float/2addr p5, v2

    :cond_1
    if-eqz p6, :cond_2

    add-float/2addr v3, v0

    rem-float/2addr v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    invoke-virtual {p0, v1, p5, v3}, Lxd0;->c(Lxd0$g;FF)V

    add-float p5, p1, p3

    const/high16 p6, 0x3f000000    # 0.5f

    mul-float p5, p5, p6

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float p3, p3, v2

    add-float/2addr p5, p3

    iput p5, p0, Lxd0;->c:F

    add-float p3, p2, p4

    mul-float p3, p3, p6

    sub-float/2addr p4, p2

    div-float/2addr p4, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p4, p4, p1

    add-float/2addr p3, p4

    iput p3, p0, Lxd0;->d:F

    return-void
.end method

.method public final b(F)V
    .locals 4

    iget v0, p0, Lxd0;->e:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lxd0$d;

    iget v2, p0, Lxd0;->c:F

    iget v3, p0, Lxd0;->d:F

    invoke-direct {v1, v2, v3, v2, v3}, Lxd0$d;-><init>(FFFF)V

    iget v2, p0, Lxd0;->e:F

    iput v2, v1, Lxd0$d;->f:F

    iput v0, v1, Lxd0$d;->g:F

    iget-object v0, p0, Lxd0;->h:Ljava/util/List;

    new-instance v2, Lxd0$b;

    invoke-direct {v2, v1}, Lxd0$b;-><init>(Lxd0$d;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lxd0;->e:F

    return-void
.end method

.method public final c(Lxd0$g;FF)V
    .locals 0

    invoke-virtual {p0, p2}, Lxd0;->b(F)V

    iget-object p2, p0, Lxd0;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p0, Lxd0;->e:F

    return-void
.end method

.method public d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    iget-object v0, p0, Lxd0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lxd0;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxd0$f;

    invoke-virtual {v2, p1, p2}, Lxd0$f;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Landroid/graphics/Matrix;)Lxd0$g;
    .locals 2

    iget v0, p0, Lxd0;->f:F

    invoke-virtual {p0, v0}, Lxd0;->b(F)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lxd0;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lxd0$a;

    invoke-direct {v1, p0, v0, p1}, Lxd0$a;-><init>(Lxd0;Ljava/util/List;Landroid/graphics/Matrix;)V

    return-object v1
.end method

.method public f(FF)V
    .locals 4

    new-instance v0, Lxd0$e;

    invoke-direct {v0}, Lxd0$e;-><init>()V

    invoke-static {v0, p1}, Lxd0$e;->c(Lxd0$e;F)F

    invoke-static {v0, p2}, Lxd0$e;->e(Lxd0$e;F)F

    iget-object v1, p0, Lxd0;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lxd0$c;

    iget v2, p0, Lxd0;->c:F

    iget v3, p0, Lxd0;->d:F

    invoke-direct {v1, v0, v2, v3}, Lxd0$c;-><init>(Lxd0$e;FF)V

    invoke-virtual {v1}, Lxd0$c;->c()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lxd0$c;->c()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {p0, v1, v0, v3}, Lxd0;->c(Lxd0$g;FF)V

    iput p1, p0, Lxd0;->c:F

    iput p2, p0, Lxd0;->d:F

    return-void
.end method

.method public g(FF)V
    .locals 2

    const/high16 v0, 0x43870000    # 270.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lxd0;->h(FFFF)V

    return-void
.end method

.method public h(FFFF)V
    .locals 0

    iput p1, p0, Lxd0;->a:F

    iput p2, p0, Lxd0;->b:F

    iput p1, p0, Lxd0;->c:F

    iput p2, p0, Lxd0;->d:F

    iput p3, p0, Lxd0;->e:F

    add-float/2addr p3, p4

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p3, p1

    iput p3, p0, Lxd0;->f:F

    iget-object p1, p0, Lxd0;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lxd0;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
