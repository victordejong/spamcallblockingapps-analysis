.class public Ldc1$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwc1;",
            ">;"
        }
    .end annotation
.end field

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc1$a;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Ldc1$a;->b:F

    const v1, 0x40490fdb    # (float)Math.PI

    iput v1, p0, Ldc1$a;->c:F

    iput v0, p0, Ldc1$a;->d:F

    iput v0, p0, Ldc1$a;->f:F

    iput v0, p0, Ldc1$a;->e:F

    iput v0, p0, Ldc1$a;->h:F

    iput v0, p0, Ldc1$a;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Ldc1$a;->j:F

    iput v1, p0, Ldc1$a;->i:F

    iput v0, p0, Ldc1$a;->k:F

    iput v0, p0, Ldc1$a;->l:F

    iput v0, p0, Ldc1$a;->p:F

    iput v0, p0, Ldc1$a;->o:F

    iput v0, p0, Ldc1$a;->n:F

    iput v0, p0, Ldc1$a;->m:F

    return-void
.end method


# virtual methods
.method public a(Lwc1;)V
    .locals 6

    iget-object v0, p0, Ldc1$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Ldc1$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwc1;

    invoke-virtual {v0, p1}, Lwc1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Ldc1$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwc1;

    invoke-virtual {v0, p1}, Lwc1;->b(Lwc1;)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    :cond_0
    iget-object v0, p0, Ldc1$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Ldc1$a;->l:F

    iget-object v2, p0, Ldc1$a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwc1;

    invoke-virtual {v2, p1}, Lwc1;->b(Lwc1;)F

    move-result v2

    add-float/2addr v0, v2

    iput v0, p0, Ldc1$a;->l:F

    :cond_1
    iget-object v0, p0, Ldc1$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ldc1$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Ldc1$a;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Ldc1$a;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwc1;

    iget-object v1, p0, Ldc1$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwc1;

    iget-object v1, p0, Ldc1$a;->a:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwc1;

    invoke-virtual {p1, v0, v1}, Lwc1;->d(Lwc1;Lwc1;)F

    move-result p1

    iget v0, p0, Ldc1$a;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Ldc1$a;->m:F

    float-to-double v2, p1

    const-wide v4, 0x4007e0485c442d18L    # 2.9845130165391645

    cmpg-double v0, v2, v4

    if-gez v0, :cond_2

    iget v0, p0, Ldc1$a;->n:F

    add-float/2addr v0, v1

    iput v0, p0, Ldc1$a;->n:F

    goto :goto_0

    :cond_2
    const-wide v4, 0x400a63ae4c442d18L    # 3.298672290640422

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_3

    iget v0, p0, Ldc1$a;->p:F

    add-float/2addr v0, v1

    iput v0, p0, Ldc1$a;->p:F

    goto :goto_0

    :cond_3
    iget v0, p0, Ldc1$a;->o:F

    add-float/2addr v0, v1

    iput v0, p0, Ldc1$a;->o:F

    :goto_0
    iget v0, p0, Ldc1$a;->c:F

    sub-float v0, p1, v0

    iget v2, p0, Ldc1$a;->d:F

    cmpg-float v2, v2, p1

    if-gez v2, :cond_4

    iput p1, p0, Ldc1$a;->d:F

    iget v2, p0, Ldc1$a;->l:F

    iput v2, p0, Ldc1$a;->k:F

    iget v2, p0, Ldc1$a;->e:F

    iget v3, p0, Ldc1$a;->g:F

    iget v4, p0, Ldc1$a;->i:F

    invoke-virtual {p0, v2, v3, v4}, Ldc1$a;->d(FFF)F

    move-result v2

    iput v2, p0, Ldc1$a;->b:F

    const/4 v2, 0x0

    iput v2, p0, Ldc1$a;->f:F

    iput v2, p0, Ldc1$a;->h:F

    iput v1, p0, Ldc1$a;->j:F

    goto :goto_1

    :cond_4
    iget v2, p0, Ldc1$a;->h:F

    add-float/2addr v2, v0

    iput v2, p0, Ldc1$a;->h:F

    iget v2, p0, Ldc1$a;->f:F

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    iput v2, p0, Ldc1$a;->f:F

    iget v2, p0, Ldc1$a;->j:F

    add-float/2addr v2, v1

    iput v2, p0, Ldc1$a;->j:F

    :goto_1
    iget v2, p0, Ldc1$a;->g:F

    add-float/2addr v2, v0

    iput v2, p0, Ldc1$a;->g:F

    iget v2, p0, Ldc1$a;->e:F

    mul-float v0, v0, v0

    add-float/2addr v2, v0

    iput v2, p0, Ldc1$a;->e:F

    iget v0, p0, Ldc1$a;->i:F

    add-float/2addr v0, v1

    iput v0, p0, Ldc1$a;->i:F

    iput p1, p0, Ldc1$a;->c:F

    :cond_5
    return-void
.end method

.method public b()F
    .locals 2

    iget v0, p0, Ldc1$a;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    iget v0, p0, Ldc1$a;->n:F

    iget v1, p0, Ldc1$a;->o:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Ldc1$a;->p:F

    add-float/2addr v0, v1

    iget v1, p0, Ldc1$a;->m:F

    div-float/2addr v0, v1

    return v0
.end method

.method public c()F
    .locals 5

    iget v0, p0, Ldc1$a;->e:F

    iget v1, p0, Ldc1$a;->g:F

    iget v2, p0, Ldc1$a;->i:F

    invoke-virtual {p0, v0, v1, v2}, Ldc1$a;->d(FFF)F

    move-result v0

    iget v1, p0, Ldc1$a;->k:F

    iget v2, p0, Ldc1$a;->l:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Ldc1$a;->b:F

    iget v2, p0, Ldc1$a;->f:F

    iget v3, p0, Ldc1$a;->h:F

    iget v4, p0, Ldc1$a;->j:F

    invoke-virtual {p0, v2, v3, v4}, Ldc1$a;->d(FFF)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_0
    return v0
.end method

.method public d(FFF)F
    .locals 0

    div-float/2addr p1, p3

    div-float/2addr p2, p3

    mul-float p2, p2, p2

    sub-float/2addr p1, p2

    return p1
.end method
