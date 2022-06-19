.class Lcom/google/android/material/q/m$b;
.super Lcom/google/android/material/q/m$f;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/q/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/q/m$d;

.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/q/m$d;FF)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/google/android/material/q/m$f;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/google/android/material/q/m$b;->a:Lcom/google/android/material/q/m$d;

    .line 340
    iput p2, p0, Lcom/google/android/material/q/m$b;->b:F

    .line 341
    iput p3, p0, Lcom/google/android/material/q/m$b;->c:F

    .line 342
    return-void
.end method


# virtual methods
.method a()F
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/material/q/m$b;->a:Lcom/google/android/material/q/m$d;

    invoke-static {v0}, Lcom/google/android/material/q/m$d;->a(Lcom/google/android/material/q/m$d;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/q/m$b;->c:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/q/m$b;->a:Lcom/google/android/material/q/m$d;

    invoke-static {v1}, Lcom/google/android/material/q/m$d;->b(Lcom/google/android/material/q/m$d;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/q/m$b;->b:F

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

.method public a(Landroid/graphics/Matrix;Lcom/google/android/material/p/a;ILandroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 350
    iget-object v0, p0, Lcom/google/android/material/q/m$b;->a:Lcom/google/android/material/q/m$d;

    invoke-static {v0}, Lcom/google/android/material/q/m$d;->a(Lcom/google/android/material/q/m$d;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/q/m$b;->c:F

    sub-float/2addr v0, v1

    .line 351
    iget-object v1, p0, Lcom/google/android/material/q/m$b;->a:Lcom/google/android/material/q/m$d;

    invoke-static {v1}, Lcom/google/android/material/q/m$d;->b(Lcom/google/android/material/q/m$d;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/q/m$b;->b:F

    sub-float/2addr v1, v2

    .line 352
    new-instance v2, Landroid/graphics/RectF;

    float-to-double v4, v0

    float-to-double v0, v1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {v2, v3, v3, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 353
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 355
    iget v1, p0, Lcom/google/android/material/q/m$b;->b:F

    iget v3, p0, Lcom/google/android/material/q/m$b;->c:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 356
    invoke-virtual {p0}, Lcom/google/android/material/q/m$b;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 357
    invoke-virtual {p2, p4, v0, v2, p3}, Lcom/google/android/material/p/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    .line 358
    return-void
.end method
