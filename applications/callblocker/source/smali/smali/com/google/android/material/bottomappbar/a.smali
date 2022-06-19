.class public Lcom/google/android/material/bottomappbar/a;
.super Lcom/google/android/material/q/f;
.source "BottomAppBarTopEdgeTreatment.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/google/android/material/bottomappbar/a;->c:F

    return v0
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/google/android/material/bottomappbar/a;->c:F

    .line 169
    return-void
.end method

.method public a(FFFLcom/google/android/material/q/m;)V
    .locals 18

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/a;->c:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 75
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/q/m;->b(FF)V

    .line 149
    :goto_0
    return-void

    .line 79
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/a;->b:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/bottomappbar/a;->c:F

    add-float/2addr v2, v3

    .line 80
    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v2, v3

    .line 81
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/a;->a:F

    mul-float v16, p3, v2

    .line 82
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/a;->e:F

    add-float v12, p2, v2

    .line 86
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/a;->d:F

    mul-float v2, v2, p3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, p3

    mul-float/2addr v3, v9

    add-float v13, v2, v3

    .line 88
    div-float v2, v13, v9

    .line 89
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 92
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/q/m;->b(FF)V

    goto :goto_0

    .line 102
    :cond_1
    add-float v2, v9, v16

    .line 103
    mul-float/2addr v2, v2

    .line 104
    add-float v3, v13, v16

    .line 105
    mul-float v4, v3, v3

    sub-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 108
    sub-float v5, v12, v2

    .line 109
    add-float v17, v12, v2

    .line 112
    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v8, v2

    .line 113
    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v15, v2, v8

    .line 116
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v2}, Lcom/google/android/material/q/m;->b(FF)V

    .line 120
    sub-float v3, v5, v16

    const/4 v4, 0x0

    add-float v5, v5, v16

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v6, v16, v2

    const/high16 v7, 0x43870000    # 270.0f

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/q/m;->a(FFFFFF)V

    .line 129
    sub-float v10, v12, v9

    neg-float v2, v9

    sub-float v11, v2, v13

    add-float/2addr v12, v9

    sub-float v13, v9, v13

    const/high16 v2, 0x43340000    # 180.0f

    sub-float v14, v2, v15

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v15

    const/high16 v3, 0x43340000    # 180.0f

    sub-float v15, v2, v3

    move-object/from16 v9, p4

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/material/q/m;->a(FFFFFF)V

    .line 139
    sub-float v3, v17, v16

    const/4 v4, 0x0

    add-float v5, v17, v16

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v6, v16, v2

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v7, v2, v8

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/q/m;->a(FFFFFF)V

    .line 148
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/q/m;->b(FF)V

    goto/16 :goto_0
.end method

.method b()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/google/android/material/bottomappbar/a;->d:F

    return v0
.end method

.method b(F)V
    .locals 0

    .prologue
    .line 173
    iput p1, p0, Lcom/google/android/material/bottomappbar/a;->e:F

    .line 174
    return-void
.end method

.method c()F
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/google/android/material/bottomappbar/a;->b:F

    return v0
.end method

.method c(F)V
    .locals 0

    .prologue
    .line 201
    iput p1, p0, Lcom/google/android/material/bottomappbar/a;->d:F

    .line 202
    return-void
.end method

.method d()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/google/android/material/bottomappbar/a;->a:F

    return v0
.end method

.method d(F)V
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lcom/google/android/material/bottomappbar/a;->b:F

    .line 210
    return-void
.end method

.method e(F)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/google/android/material/bottomappbar/a;->a:F

    .line 218
    return-void
.end method
