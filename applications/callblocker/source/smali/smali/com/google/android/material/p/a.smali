.class public Lcom/google/android/material/p/a;
.super Ljava/lang/Object;
.source "ShadowRenderer.java"


# static fields
.field private static final g:[I

.field private static final h:[F

.field private static final i:[I

.field private static final j:[F


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private final k:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 59
    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/material/p/a;->g:[I

    .line 61
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/p/a;->h:[F

    .line 63
    new-array v0, v2, [I

    sput-object v0, Lcom/google/android/material/p/a;->i:[I

    .line 65
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/p/a;->j:[F

    return-void

    .line 61
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/high16 v0, -0x1000000

    invoke-direct {p0, v0}, Lcom/google/android/material/p/a;-><init>(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/p/a;->k:Landroid/graphics/Path;

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/material/p/a;->a(I)V

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/p/a;->b:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lcom/google/android/material/p/a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/p/a;->a:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/google/android/material/p/a;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/p/a;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/p/a;->b:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/google/android/material/p/a;->c:Landroid/graphics/Paint;

    .line 83
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/material/p/a;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x44

    invoke-static {p1, v0}, Landroidx/core/graphics/a;->b(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/p/a;->d:I

    .line 87
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroidx/core/graphics/a;->b(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/p/a;->e:I

    .line 88
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/graphics/a;->b(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/p/a;->f:I

    .line 89
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V
    .locals 9

    .prologue
    .line 94
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, p4

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 95
    const/4 v0, 0x0

    neg-int v1, p4

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 97
    sget-object v0, Lcom/google/android/material/p/a;->g:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/material/p/a;->f:I

    aput v2, v0, v1

    .line 98
    sget-object v0, Lcom/google/android/material/p/a;->g:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/material/p/a;->e:I

    aput v2, v0, v1

    .line 99
    sget-object v0, Lcom/google/android/material/p/a;->g:[I

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/material/p/a;->d:I

    aput v2, v0, v1

    .line 101
    iget-object v8, p0, Lcom/google/android/material/p/a;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Lcom/google/android/material/p/a;->g:[I

    sget-object v6, Lcom/google/android/material/p/a;->h:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/material/p/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V
    .locals 12

    .prologue
    .line 128
    const/4 v2, 0x0

    cmpg-float v2, p6, v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    move v9, v2

    .line 130
    :goto_0
    iget-object v10, p0, Lcom/google/android/material/p/a;->k:Landroid/graphics/Path;

    .line 132
    if-eqz v9, :cond_2

    .line 133
    sget-object v2, Lcom/google/android/material/p/a;->i:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 134
    sget-object v2, Lcom/google/android/material/p/a;->i:[I

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/material/p/a;->f:I

    aput v4, v2, v3

    .line 135
    sget-object v2, Lcom/google/android/material/p/a;->i:[I

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/material/p/a;->e:I

    aput v4, v2, v3

    .line 136
    sget-object v2, Lcom/google/android/material/p/a;->i:[I

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/material/p/a;->d:I

    aput v4, v2, v3

    .line 151
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 152
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 153
    sget-object v4, Lcom/google/android/material/p/a;->j:[F

    const/4 v5, 0x1

    aput v2, v4, v5

    .line 154
    sget-object v2, Lcom/google/android/material/p/a;->j:[F

    const/4 v4, 0x2

    aput v3, v2, v4

    .line 156
    iget-object v11, p0, Lcom/google/android/material/p/a;->b:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RadialGradient;

    .line 158
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 159
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    .line 160
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sget-object v6, Lcom/google/android/material/p/a;->i:[I

    sget-object v7, Lcom/google/android/material/p/a;->j:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 156
    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 168
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 170
    if-nez v9, :cond_0

    .line 171
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v10, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 174
    :cond_0
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/material/p/a;->b:Landroid/graphics/Paint;

    move-object v2, p1

    move-object v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 176
    return-void

    .line 128
    :cond_1
    const/4 v2, 0x0

    move v9, v2

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    .line 140
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 141
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v10, p3, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 142
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    .line 144
    move/from16 v0, p4

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, p4

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {p3, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 145
    sget-object v2, Lcom/google/android/material/p/a;->i:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 146
    sget-object v2, Lcom/google/android/material/p/a;->i:[I

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/material/p/a;->d:I

    aput v4, v2, v3

    .line 147
    sget-object v2, Lcom/google/android/material/p/a;->i:[I

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/material/p/a;->e:I

    aput v4, v2, v3

    .line 148
    sget-object v2, Lcom/google/android/material/p/a;->i:[I

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/material/p/a;->f:I

    aput v4, v2, v3

    goto/16 :goto_1
.end method
