.class public Lcom/google/android/material/q/l;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/q/l$b;,
        Lcom/google/android/material/q/l$a;
    }
.end annotation


# instance fields
.field private final a:[Lcom/google/android/material/q/m;

.field private final b:[Landroid/graphics/Matrix;

.field private final c:[Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/PointF;

.field private final e:Lcom/google/android/material/q/m;

.field private final f:[F

.field private final g:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v0, v3, [Lcom/google/android/material/q/m;

    iput-object v0, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    .line 43
    new-array v0, v3, [Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/google/android/material/q/l;->b:[Landroid/graphics/Matrix;

    .line 44
    new-array v0, v3, [Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/google/android/material/q/l;->c:[Landroid/graphics/Matrix;

    .line 47
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/l;->d:Landroid/graphics/PointF;

    .line 48
    new-instance v0, Lcom/google/android/material/q/m;

    invoke-direct {v0}, Lcom/google/android/material/q/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/l;->e:Lcom/google/android/material/q/m;

    .line 49
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/material/q/l;->f:[F

    .line 50
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/material/q/l;->g:[F

    .line 53
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 54
    iget-object v1, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    new-instance v2, Lcom/google/android/material/q/m;

    invoke-direct {v2}, Lcom/google/android/material/q/m;-><init>()V

    aput-object v2, v1, v0

    .line 55
    iget-object v1, p0, Lcom/google/android/material/q/l;->b:[Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aput-object v2, v1, v0

    .line 56
    iget-object v1, p0, Lcom/google/android/material/q/l;->c:[Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/RectF;I)F
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/google/android/material/q/l;->f:[F

    iget-object v1, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/google/android/material/q/m;->c:F

    aput v1, v0, v2

    .line 178
    iget-object v0, p0, Lcom/google/android/material/q/l;->f:[F

    iget-object v1, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/google/android/material/q/m;->d:F

    aput v1, v0, v3

    .line 179
    iget-object v0, p0, Lcom/google/android/material/q/l;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/q/l;->f:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 180
    packed-switch p2, :pswitch_data_0

    .line 187
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/q/l;->f:[F

    aget v1, v1, v3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_0
    return v0

    .line 183
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/q/l;->f:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(ILcom/google/android/material/q/k;)Lcom/google/android/material/q/d;
    .locals 1

    .prologue
    .line 193
    packed-switch p1, :pswitch_data_0

    .line 202
    invoke-virtual {p2}, Lcom/google/android/material/q/k;->c()Lcom/google/android/material/q/d;

    move-result-object v0

    :goto_0
    return-object v0

    .line 195
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/android/material/q/k;->d()Lcom/google/android/material/q/d;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/material/q/k;->e()Lcom/google/android/material/q/d;

    move-result-object v0

    goto :goto_0

    .line 199
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/android/material/q/k;->b()Lcom/google/android/material/q/d;

    move-result-object v0

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/google/android/material/q/l;->f:[F

    iget-object v1, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/android/material/q/m;->c()F

    move-result v1

    aput v1, v0, v3

    .line 130
    iget-object v0, p0, Lcom/google/android/material/q/l;->f:[F

    iget-object v1, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/android/material/q/m;->d()F

    move-result v1

    aput v1, v0, v4

    .line 131
    iget-object v0, p0, Lcom/google/android/material/q/l;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/android/material/q/l;->f:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 132
    invoke-direct {p0, p1}, Lcom/google/android/material/q/l;->b(I)F

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/google/android/material/q/l;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 134
    iget-object v1, p0, Lcom/google/android/material/q/l;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/google/android/material/q/l;->f:[F

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/material/q/l;->f:[F

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 135
    iget-object v1, p0, Lcom/google/android/material/q/l;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 136
    return-void
.end method

.method private a(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 237
    packed-switch p1, :pswitch_data_0

    .line 249
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 252
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 242
    :pswitch_1
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 245
    :pswitch_2
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/google/android/material/q/l$b;I)V
    .locals 6

    .prologue
    .line 117
    iget-object v0, p1, Lcom/google/android/material/q/l$b;->a:Lcom/google/android/material/q/k;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/q/l;->b(ILcom/google/android/material/q/k;)Lcom/google/android/material/q/c;

    move-result-object v5

    .line 118
    iget-object v0, p1, Lcom/google/android/material/q/l$b;->a:Lcom/google/android/material/q/k;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/q/l;->a(ILcom/google/android/material/q/k;)Lcom/google/android/material/q/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    aget-object v1, v1, p2

    const/high16 v2, 0x42b40000    # 90.0f

    iget v3, p1, Lcom/google/android/material/q/l$b;->e:F

    iget-object v4, p1, Lcom/google/android/material/q/l$b;->c:Landroid/graphics/RectF;

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/q/d;->a(Lcom/google/android/material/q/m;FFLandroid/graphics/RectF;Lcom/google/android/material/q/c;)V

    .line 121
    invoke-direct {p0, p2}, Lcom/google/android/material/q/l;->b(I)F

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/google/android/material/q/l;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 123
    iget-object v1, p1, Lcom/google/android/material/q/l$b;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/material/q/l;->d:Landroid/graphics/PointF;

    invoke-direct {p0, p2, v1, v2}, Lcom/google/android/material/q/l;->a(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 124
    iget-object v1, p0, Lcom/google/android/material/q/l;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/google/android/material/q/l;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/google/android/material/q/l;->d:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 125
    iget-object v1, p0, Lcom/google/android/material/q/l;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 126
    return-void
.end method

.method private b(I)F
    .locals 1

    .prologue
    .line 255
    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    return v0
.end method

.method private b(ILcom/google/android/material/q/k;)Lcom/google/android/material/q/c;
    .locals 1

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 217
    invoke-virtual {p2}, Lcom/google/android/material/q/k;->g()Lcom/google/android/material/q/c;

    move-result-object v0

    :goto_0
    return-object v0

    .line 210
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/android/material/q/k;->h()Lcom/google/android/material/q/c;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/material/q/k;->i()Lcom/google/android/material/q/c;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/android/material/q/k;->f()Lcom/google/android/material/q/c;

    move-result-object v0

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lcom/google/android/material/q/l$b;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/google/android/material/q/l;->f:[F

    iget-object v1, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/google/android/material/q/m;->a()F

    move-result v1

    aput v1, v0, v2

    .line 140
    iget-object v0, p0, Lcom/google/android/material/q/l;->f:[F

    iget-object v1, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/google/android/material/q/m;->b()F

    move-result v1

    aput v1, v0, v3

    .line 141
    iget-object v0, p0, Lcom/google/android/material/q/l;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/q/l;->f:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 142
    if-nez p2, :cond_1

    .line 143
    iget-object v0, p1, Lcom/google/android/material/q/l$b;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/q/l;->f:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/q/l;->f:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/q/l;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/material/q/l$b;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/q/m;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 148
    iget-object v0, p1, Lcom/google/android/material/q/l$b;->d:Lcom/google/android/material/q/l$a;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p1, Lcom/google/android/material/q/l$b;->d:Lcom/google/android/material/q/l$a;

    iget-object v1, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/google/android/material/q/l;->b:[Landroid/graphics/Matrix;

    aget-object v2, v2, p2

    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/material/q/l$a;->a(Lcom/google/android/material/q/m;Landroid/graphics/Matrix;I)V

    .line 151
    :cond_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p1, Lcom/google/android/material/q/l$b;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/q/l;->f:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/q/l;->f:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private c(ILcom/google/android/material/q/k;)Lcom/google/android/material/q/f;
    .locals 1

    .prologue
    .line 223
    packed-switch p1, :pswitch_data_0

    .line 232
    invoke-virtual {p2}, Lcom/google/android/material/q/k;->l()Lcom/google/android/material/q/f;

    move-result-object v0

    :goto_0
    return-object v0

    .line 225
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/android/material/q/k;->m()Lcom/google/android/material/q/f;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/material/q/k;->j()Lcom/google/android/material/q/f;

    move-result-object v0

    goto :goto_0

    .line 229
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/android/material/q/k;->k()Lcom/google/android/material/q/f;

    move-result-object v0

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(Lcom/google/android/material/q/l$b;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v0, v0, 0x4

    .line 155
    iget-object v1, p0, Lcom/google/android/material/q/l;->f:[F

    iget-object v2, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/google/android/material/q/m;->c()F

    move-result v2

    aput v2, v1, v3

    .line 156
    iget-object v1, p0, Lcom/google/android/material/q/l;->f:[F

    iget-object v2, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/google/android/material/q/m;->d()F

    move-result v2

    aput v2, v1, v4

    .line 157
    iget-object v1, p0, Lcom/google/android/material/q/l;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/google/android/material/q/l;->f:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 159
    iget-object v1, p0, Lcom/google/android/material/q/l;->g:[F

    iget-object v2, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/q/m;->a()F

    move-result v2

    aput v2, v1, v3

    .line 160
    iget-object v1, p0, Lcom/google/android/material/q/l;->g:[F

    iget-object v2, p0, Lcom/google/android/material/q/l;->a:[Lcom/google/android/material/q/m;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/q/m;->b()F

    move-result v2

    aput v2, v1, v4

    .line 161
    iget-object v1, p0, Lcom/google/android/material/q/l;->b:[Landroid/graphics/Matrix;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/google/android/material/q/l;->g:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 163
    iget-object v0, p0, Lcom/google/android/material/q/l;->f:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/google/android/material/q/l;->g:[F

    aget v1, v1, v3

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/google/android/material/q/l;->f:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/google/android/material/q/l;->g:[F

    aget v3, v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 165
    const v1, 0x3a83126f    # 0.001f

    sub-float/2addr v0, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 166
    iget-object v1, p1, Lcom/google/android/material/q/l$b;->c:Landroid/graphics/RectF;

    invoke-direct {p0, v1, p2}, Lcom/google/android/material/q/l;->a(Landroid/graphics/RectF;I)F

    move-result v1

    .line 167
    iget-object v2, p0, Lcom/google/android/material/q/l;->e:Lcom/google/android/material/q/m;

    invoke-virtual {v2, v5, v5}, Lcom/google/android/material/q/m;->a(FF)V

    .line 168
    iget-object v2, p1, Lcom/google/android/material/q/l$b;->a:Lcom/google/android/material/q/k;

    invoke-direct {p0, p2, v2}, Lcom/google/android/material/q/l;->c(ILcom/google/android/material/q/k;)Lcom/google/android/material/q/f;

    move-result-object v2

    iget v3, p1, Lcom/google/android/material/q/l$b;->e:F

    iget-object v4, p0, Lcom/google/android/material/q/l;->e:Lcom/google/android/material/q/m;

    .line 169
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/android/material/q/f;->a(FFFLcom/google/android/material/q/m;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/material/q/l;->e:Lcom/google/android/material/q/m;

    iget-object v1, p0, Lcom/google/android/material/q/l;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/material/q/l$b;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/q/m;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 171
    iget-object v0, p1, Lcom/google/android/material/q/l$b;->d:Lcom/google/android/material/q/l$a;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p1, Lcom/google/android/material/q/l$b;->d:Lcom/google/android/material/q/l$a;

    iget-object v1, p0, Lcom/google/android/material/q/l;->e:Lcom/google/android/material/q/m;

    iget-object v2, p0, Lcom/google/android/material/q/l;->c:[Landroid/graphics/Matrix;

    aget-object v2, v2, p2

    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/material/q/l$a;->b(Lcom/google/android/material/q/m;Landroid/graphics/Matrix;I)V

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/q/k;FLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    .prologue
    .line 73
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/q/l;->a(Lcom/google/android/material/q/k;FLandroid/graphics/RectF;Lcom/google/android/material/q/l$a;Landroid/graphics/Path;)V

    .line 74
    return-void
.end method

.method public a(Lcom/google/android/material/q/k;FLandroid/graphics/RectF;Lcom/google/android/material/q/l$a;Landroid/graphics/Path;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 92
    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    .line 93
    new-instance v0, Lcom/google/android/material/q/l$b;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/q/l$b;-><init>(Lcom/google/android/material/q/k;FLandroid/graphics/RectF;Lcom/google/android/material/q/l$a;Landroid/graphics/Path;)V

    move v1, v6

    .line 99
    :goto_0
    if-ge v1, v7, :cond_0

    .line 100
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/q/l;->a(Lcom/google/android/material/q/l$b;I)V

    .line 101
    invoke-direct {p0, v1}, Lcom/google/android/material/q/l;->a(I)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v6

    .line 108
    :goto_1
    if-ge v1, v7, :cond_1

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/q/l;->b(Lcom/google/android/material/q/l$b;I)V

    .line 110
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/q/l;->c(Lcom/google/android/material/q/l$b;I)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    .line 114
    return-void
.end method
