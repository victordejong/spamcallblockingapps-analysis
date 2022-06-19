.class final Lcom/google/android/material/k/o$a;
.super Lcom/google/android/material/k/o$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/k/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/k/o$c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/k/o$c;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/google/android/material/k/o$f;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/google/android/material/k/o$a;->a:Lcom/google/android/material/k/o$c;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;Lcom/google/android/material/j/a;ILandroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v7, p4

    .line 425
    iget-object v3, v0, Lcom/google/android/material/k/o$a;->a:Lcom/google/android/material/k/o$c;

    invoke-static {v3}, Lcom/google/android/material/k/o$c;->a(Lcom/google/android/material/k/o$c;)F

    move-result v3

    .line 426
    iget-object v4, v0, Lcom/google/android/material/k/o$a;->a:Lcom/google/android/material/k/o$c;

    invoke-static {v4}, Lcom/google/android/material/k/o$c;->b(Lcom/google/android/material/k/o$c;)F

    move-result v4

    .line 427
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/google/android/material/k/o$a;->a:Lcom/google/android/material/k/o$c;

    .line 429
    invoke-static {v6}, Lcom/google/android/material/k/o$c;->c(Lcom/google/android/material/k/o$c;)F

    move-result v6

    iget-object v8, v0, Lcom/google/android/material/k/o$a;->a:Lcom/google/android/material/k/o$c;

    invoke-static {v8}, Lcom/google/android/material/k/o$c;->d(Lcom/google/android/material/k/o$c;)F

    move-result v8

    iget-object v9, v0, Lcom/google/android/material/k/o$a;->a:Lcom/google/android/material/k/o$c;

    invoke-static {v9}, Lcom/google/android/material/k/o$c;->e(Lcom/google/android/material/k/o$c;)F

    move-result v9

    iget-object v10, v0, Lcom/google/android/material/k/o$a;->a:Lcom/google/android/material/k/o$c;

    invoke-static {v10}, Lcom/google/android/material/k/o$c;->f(Lcom/google/android/material/k/o$c;)F

    move-result v10

    invoke-direct {v5, v6, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpg-float v10, v4, v6

    if-gez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 1131
    :goto_0
    iget-object v11, v1, Lcom/google/android/material/j/a;->k:Landroid/graphics/Path;

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v10, :cond_1

    .line 1134
    sget-object v14, Lcom/google/android/material/j/a;->i:[I

    aput v9, v14, v9

    .line 1135
    sget-object v9, Lcom/google/android/material/j/a;->i:[I

    iget v14, v1, Lcom/google/android/material/j/a;->f:I

    aput v14, v9, v8

    .line 1136
    sget-object v9, Lcom/google/android/material/j/a;->i:[I

    iget v14, v1, Lcom/google/android/material/j/a;->e:I

    aput v14, v9, v13

    .line 1137
    sget-object v9, Lcom/google/android/material/j/a;->i:[I

    iget v14, v1, Lcom/google/android/material/j/a;->d:I

    aput v14, v9, v12

    goto :goto_1

    .line 1140
    :cond_1
    invoke-virtual {v11}, Landroid/graphics/Path;->rewind()V

    .line 1141
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1142
    invoke-virtual {v11, v5, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 1143
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    neg-int v14, v2

    int-to-float v14, v14

    .line 1145
    invoke-virtual {v5, v14, v14}, Landroid/graphics/RectF;->inset(FF)V

    .line 1146
    sget-object v14, Lcom/google/android/material/j/a;->i:[I

    aput v9, v14, v9

    .line 1147
    sget-object v9, Lcom/google/android/material/j/a;->i:[I

    iget v14, v1, Lcom/google/android/material/j/a;->d:I

    aput v14, v9, v8

    .line 1148
    sget-object v9, Lcom/google/android/material/j/a;->i:[I

    iget v14, v1, Lcom/google/android/material/j/a;->e:I

    aput v14, v9, v13

    .line 1149
    sget-object v9, Lcom/google/android/material/j/a;->i:[I

    iget v14, v1, Lcom/google/android/material/j/a;->f:I

    aput v14, v9, v12

    .line 1152
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float v17, v9, v12

    cmpg-float v6, v17, v6

    if-lez v6, :cond_3

    int-to-float v2, v2

    div-float v2, v2, v17

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v2, v6, v2

    sub-float/2addr v6, v2

    div-float/2addr v6, v12

    add-float/2addr v6, v2

    .line 1160
    sget-object v9, Lcom/google/android/material/j/a;->j:[F

    aput v2, v9, v8

    .line 1161
    sget-object v2, Lcom/google/android/material/j/a;->j:[F

    aput v6, v2, v13

    .line 1162
    iget-object v2, v1, Lcom/google/android/material/j/a;->b:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/RadialGradient;

    .line 1164
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    .line 1165
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    sget-object v18, Lcom/google/android/material/j/a;->i:[I

    sget-object v19, Lcom/google/android/material/j/a;->j:[F

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v6

    invoke-direct/range {v14 .. v20}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1162
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1172
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v2, p1

    .line 1173
    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    if-nez v10, :cond_2

    .line 1176
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v11, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1178
    iget-object v2, v1, Lcom/google/android/material/j/a;->l:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    const/4 v6, 0x1

    .line 1181
    iget-object v8, v1, Lcom/google/android/material/j/a;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p4

    move-object v2, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1182
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method
