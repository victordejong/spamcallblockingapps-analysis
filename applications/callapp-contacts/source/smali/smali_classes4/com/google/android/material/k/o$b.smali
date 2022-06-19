.class final Lcom/google/android/material/k/o$b;
.super Lcom/google/android/material/k/o$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/k/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/k/o$d;

.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/k/o$d;FF)V
    .locals 0

    .line 383
    invoke-direct {p0}, Lcom/google/android/material/k/o$f;-><init>()V

    .line 384
    iput-object p1, p0, Lcom/google/android/material/k/o$b;->a:Lcom/google/android/material/k/o$d;

    .line 385
    iput p2, p0, Lcom/google/android/material/k/o$b;->b:F

    .line 386
    iput p3, p0, Lcom/google/android/material/k/o$b;->c:F

    return-void
.end method


# virtual methods
.method final a()F
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/google/android/material/k/o$b;->a:Lcom/google/android/material/k/o$d;

    .line 3446
    iget v0, v0, Lcom/google/android/material/k/o$d;->b:F

    .line 406
    iget v1, p0, Lcom/google/android/material/k/o$b;->c:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/k/o$b;->a:Lcom/google/android/material/k/o$d;

    .line 4446
    iget v1, v1, Lcom/google/android/material/k/o$d;->a:F

    .line 406
    iget v2, p0, Lcom/google/android/material/k/o$b;->b:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final a(Landroid/graphics/Matrix;Lcom/google/android/material/j/a;ILandroid/graphics/Canvas;)V
    .locals 11

    .line 395
    iget-object v0, p0, Lcom/google/android/material/k/o$b;->a:Lcom/google/android/material/k/o$d;

    .line 1446
    iget v0, v0, Lcom/google/android/material/k/o$d;->b:F

    .line 395
    iget v1, p0, Lcom/google/android/material/k/o$b;->c:F

    sub-float/2addr v0, v1

    .line 396
    iget-object v1, p0, Lcom/google/android/material/k/o$b;->a:Lcom/google/android/material/k/o$d;

    .line 2446
    iget v1, v1, Lcom/google/android/material/k/o$d;->a:F

    .line 396
    iget v2, p0, Lcom/google/android/material/k/o$b;->b:F

    sub-float/2addr v1, v2

    .line 397
    new-instance v2, Landroid/graphics/RectF;

    float-to-double v3, v0

    float-to-double v0, v1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 398
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 400
    iget p1, p0, Lcom/google/android/material/k/o$b;->b:F

    iget v3, p0, Lcom/google/android/material/k/o$b;->c:F

    invoke-virtual {v0, p1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 401
    invoke-virtual {p0}, Lcom/google/android/material/k/o$b;->a()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 3095
    iget p1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, p3

    add-float/2addr p1, v3

    iput p1, v2, Landroid/graphics/RectF;->bottom:F

    neg-int p1, p3

    int-to-float p1, p1

    .line 3096
    invoke-virtual {v2, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 3098
    sget-object p1, Lcom/google/android/material/j/a;->g:[I

    iget p3, p2, Lcom/google/android/material/j/a;->f:I

    const/4 v1, 0x0

    aput p3, p1, v1

    .line 3099
    sget-object p1, Lcom/google/android/material/j/a;->g:[I

    iget p3, p2, Lcom/google/android/material/j/a;->e:I

    const/4 v1, 0x1

    aput p3, p1, v1

    .line 3100
    sget-object p1, Lcom/google/android/material/j/a;->g:[I

    iget p3, p2, Lcom/google/android/material/j/a;->d:I

    const/4 v1, 0x2

    aput p3, p1, v1

    .line 3102
    iget-object p1, p2, Lcom/google/android/material/j/a;->c:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/LinearGradient;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    sget-object v8, Lcom/google/android/material/j/a;->g:[I

    sget-object v9, Lcom/google/android/material/j/a;->h:[F

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, p3

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3112
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    .line 3113
    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3114
    iget-object p1, p2, Lcom/google/android/material/j/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p4, v2, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3115
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
