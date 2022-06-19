.class public final Lcom/linkedin/android/litr/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([FLcom/linkedin/android/litr/c/c;)[F
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 30
    aget v2, p0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    const/4 v5, 0x4

    .line 39
    aget v5, p0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    goto :goto_1

    .line 41
    :cond_1
    aget v5, p0, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    :goto_1
    div-float v5, v4, v5

    if-eqz v2, :cond_2

    .line 49
    iget-object v6, v0, Lcom/linkedin/android/litr/c/c;->a:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 50
    iget-object v7, v0, Lcom/linkedin/android/litr/c/c;->a:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float v7, v7, v5

    goto :goto_2

    .line 52
    :cond_2
    iget-object v6, v0, Lcom/linkedin/android/litr/c/c;->a:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float v6, v6, v5

    .line 53
    iget-object v7, v0, Lcom/linkedin/android/litr/c/c;->a:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    :goto_2
    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v2, :cond_3

    .line 61
    iget-object v2, v0, Lcom/linkedin/android/litr/c/c;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v8

    sub-float/2addr v2, v4

    .line 62
    iget-object v9, v0, Lcom/linkedin/android/litr/c/c;->b:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    mul-float v9, v9, v8

    sub-float v8, v4, v9

    mul-float v8, v8, v5

    goto :goto_3

    .line 64
    :cond_3
    iget-object v2, v0, Lcom/linkedin/android/litr/c/c;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v8

    sub-float/2addr v2, v4

    mul-float v2, v2, v5

    .line 65
    iget-object v5, v0, Lcom/linkedin/android/litr/c/c;->b:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float v5, v5, v8

    sub-float v8, v4, v5

    :goto_3
    const/16 v5, 0x10

    new-array v15, v5, [F

    .line 71
    invoke-static {v15, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 72
    invoke-static {v15, v1, v2, v8, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v10, 0x0

    .line 73
    iget v11, v0, Lcom/linkedin/android/litr/c/c;->c:F

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v9, v15

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 74
    invoke-static {v15, v1, v6, v7, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    new-array v6, v5, [F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v2, p0

    move-object v4, v15

    .line 78
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-object v6
.end method
