.class final Lcom/theartofdev/edmodo/cropper/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/graphics/RectF;

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:F

.field private final l:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->l:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/e;->j:F

    .line 71
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/e;->k:F

    return-void
.end method

.method static a(FFFFF)Z
    .locals 0

    sub-float/2addr p0, p2

    .line 307
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gtz p0, :cond_0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static a(FFFFFF)Z
    .locals 0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    cmpg-float p0, p0, p3

    if-gez p0, :cond_0

    sub-float/2addr p1, p4

    .line 323
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p5

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static b(FFFFFF)Z
    .locals 0

    sub-float/2addr p0, p2

    .line 339
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p5

    if-gtz p0, :cond_0

    cmpl-float p0, p1, p3

    if-lez p0, :cond_0

    cmpg-float p0, p1, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static c(FFFFFF)Z
    .locals 0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    cmpg-float p0, p0, p4

    if-gez p0, :cond_0

    cmpl-float p0, p1, p3

    if-lez p0, :cond_0

    cmpg-float p0, p1, p5

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Landroid/graphics/RectF;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->l:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 77
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->l:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final a(Landroid/graphics/RectF;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final b()F
    .locals 3

    .line 82
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/e;->b:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/e;->f:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/e;->j:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final c()F
    .locals 3

    .line 87
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/e;->c:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/e;->g:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/e;->k:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final d()F
    .locals 3

    .line 92
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/e;->d:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/e;->h:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/e;->j:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public final e()F
    .locals 3

    .line 97
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/e;->e:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/e;->i:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/e;->k:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/e;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final g()Z
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
