.class public final Lcom/google/android/material/k/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/k/n$c;,
        Lcom/google/android/material/k/n$b;,
        Lcom/google/android/material/k/n$a;
    }
.end annotation


# instance fields
.field private final a:[Lcom/google/android/material/k/o;

.field private final b:[Landroid/graphics/Matrix;

.field private final c:[Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/PointF;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Path;

.field private final g:Lcom/google/android/material/k/o;

.field private final h:[F

.field private final i:[F

.field private final j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Path;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/google/android/material/k/o;

    .line 55
    iput-object v1, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 56
    iput-object v1, p0, Lcom/google/android/material/k/n;->b:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 57
    iput-object v1, p0, Lcom/google/android/material/k/n;->c:[Landroid/graphics/Matrix;

    .line 60
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/k/n;->d:Landroid/graphics/PointF;

    .line 61
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/k/n;->e:Landroid/graphics/Path;

    .line 62
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/k/n;->f:Landroid/graphics/Path;

    .line 63
    new-instance v1, Lcom/google/android/material/k/o;

    invoke-direct {v1}, Lcom/google/android/material/k/o;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/k/n;->g:Lcom/google/android/material/k/o;

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 64
    iput-object v2, p0, Lcom/google/android/material/k/n;->h:[F

    new-array v1, v1, [F

    .line 65
    iput-object v1, p0, Lcom/google/android/material/k/n;->i:[F

    .line 66
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/k/n;->j:Landroid/graphics/Path;

    .line 67
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/k/n;->k:Landroid/graphics/Path;

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lcom/google/android/material/k/n;->l:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    iget-object v2, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    new-instance v3, Lcom/google/android/material/k/o;

    invoke-direct {v3}, Lcom/google/android/material/k/o;-><init>()V

    aput-object v3, v2, v1

    .line 74
    iget-object v2, p0, Lcom/google/android/material/k/n;->b:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    .line 75
    iget-object v2, p0, Lcom/google/android/material/k/n;->c:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/RectF;I)F
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/google/android/material/k/n;->h:[F

    iget-object v1, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/google/android/material/k/o;->c:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 248
    iget-object v0, p0, Lcom/google/android/material/k/n;->h:[F

    iget-object v1, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/google/android/material/k/o;->d:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 249
    iget-object v0, p0, Lcom/google/android/material/k/n;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/k/n;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq p2, v3, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 257
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/k/n;->h:[F

    aget p2, p2, v3

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/k/n;->h:[F

    aget p2, p2, v2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method private static a(ILcom/google/android/material/k/m;)Lcom/google/android/material/k/d;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 6632
    iget-object p0, p1, Lcom/google/android/material/k/m;->c:Lcom/google/android/material/k/d;

    return-object p0

    .line 6622
    :cond_0
    iget-object p0, p1, Lcom/google/android/material/k/m;->b:Lcom/google/android/material/k/d;

    return-object p0

    .line 5652
    :cond_1
    iget-object p0, p1, Lcom/google/android/material/k/m;->e:Lcom/google/android/material/k/d;

    return-object p0

    .line 5642
    :cond_2
    iget-object p0, p1, Lcom/google/android/material/k/m;->d:Lcom/google/android/material/k/d;

    return-object p0
.end method

.method private a(I)V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/google/android/material/k/n;->h:[F

    iget-object v1, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v1, v1, p1

    .line 2319
    iget v1, v1, Lcom/google/android/material/k/o;->c:F

    const/4 v2, 0x0

    .line 160
    aput v1, v0, v2

    .line 161
    iget-object v0, p0, Lcom/google/android/material/k/n;->h:[F

    iget-object v1, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v1, v1, p1

    .line 2323
    iget v1, v1, Lcom/google/android/material/k/o;->d:F

    const/4 v3, 0x1

    .line 161
    aput v1, v0, v3

    .line 162
    iget-object v0, p0, Lcom/google/android/material/k/n;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/android/material/k/n;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    .line 164
    iget-object v1, p0, Lcom/google/android/material/k/n;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 165
    iget-object v1, p0, Lcom/google/android/material/k/n;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v4, p0, Lcom/google/android/material/k/n;->h:[F

    aget v2, v4, v2

    aget v3, v4, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 166
    iget-object v1, p0, Lcom/google/android/material/k/n;->c:[Landroid/graphics/Matrix;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private static a(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 319
    iget p0, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 315
    :cond_0
    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 312
    :cond_1
    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 309
    :cond_2
    iget p0, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private a(Lcom/google/android/material/k/n$c;I)V
    .locals 5

    .line 148
    iget-object v0, p1, Lcom/google/android/material/k/n$c;->a:Lcom/google/android/material/k/m;

    invoke-static {p2, v0}, Lcom/google/android/material/k/n;->b(ILcom/google/android/material/k/m;)Lcom/google/android/material/k/c;

    move-result-object v0

    .line 149
    iget-object v1, p1, Lcom/google/android/material/k/n$c;->a:Lcom/google/android/material/k/m;

    invoke-static {p2, v1}, Lcom/google/android/material/k/n;->a(ILcom/google/android/material/k/m;)Lcom/google/android/material/k/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v2, v2, p2

    iget v3, p1, Lcom/google/android/material/k/n$c;->e:F

    iget-object v4, p1, Lcom/google/android/material/k/n$c;->c:Landroid/graphics/RectF;

    .line 150
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/material/k/d;->a(Lcom/google/android/material/k/o;FLandroid/graphics/RectF;Lcom/google/android/material/k/c;)V

    add-int/lit8 v0, p2, 0x1

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    .line 153
    iget-object v1, p0, Lcom/google/android/material/k/n;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 154
    iget-object p1, p1, Lcom/google/android/material/k/n$c;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/k/n;->d:Landroid/graphics/PointF;

    invoke-static {p2, p1, v1}, Lcom/google/android/material/k/n;->a(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 155
    iget-object p1, p0, Lcom/google/android/material/k/n;->b:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    iget-object v1, p0, Lcom/google/android/material/k/n;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/google/android/material/k/n;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 156
    iget-object p1, p0, Lcom/google/android/material/k/n;->b:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private a(Landroid/graphics/Path;I)Z
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/google/android/material/k/n;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 235
    iget-object v0, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/k/n;->b:[Landroid/graphics/Matrix;

    aget-object p2, v1, p2

    iget-object v1, p0, Lcom/google/android/material/k/n;->k:Landroid/graphics/Path;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/material/k/o;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 237
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 239
    iget-object v1, p0, Lcom/google/android/material/k/n;->k:Landroid/graphics/Path;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 240
    iget-object v1, p0, Lcom/google/android/material/k/n;->k:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 241
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 243
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private static b(ILcom/google/android/material/k/m;)Lcom/google/android/material/k/c;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 7672
    iget-object p0, p1, Lcom/google/android/material/k/m;->g:Lcom/google/android/material/k/c;

    return-object p0

    .line 7662
    :cond_0
    iget-object p0, p1, Lcom/google/android/material/k/m;->f:Lcom/google/android/material/k/c;

    return-object p0

    .line 6692
    :cond_1
    iget-object p0, p1, Lcom/google/android/material/k/m;->i:Lcom/google/android/material/k/c;

    return-object p0

    .line 6682
    :cond_2
    iget-object p0, p1, Lcom/google/android/material/k/m;->h:Lcom/google/android/material/k/c;

    return-object p0
.end method

.method private b(Lcom/google/android/material/k/n$c;I)V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/google/android/material/k/n;->h:[F

    iget-object v1, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v1, v1, p2

    .line 3311
    iget v1, v1, Lcom/google/android/material/k/o;->a:F

    const/4 v2, 0x0

    .line 170
    aput v1, v0, v2

    .line 171
    iget-object v0, p0, Lcom/google/android/material/k/n;->h:[F

    iget-object v1, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v1, v1, p2

    .line 3315
    iget v1, v1, Lcom/google/android/material/k/o;->b:F

    const/4 v3, 0x1

    .line 171
    aput v1, v0, v3

    .line 172
    iget-object v0, p0, Lcom/google/android/material/k/n;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/k/n;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez p2, :cond_0

    .line 174
    iget-object v0, p1, Lcom/google/android/material/k/n$c;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/k/n;->h:[F

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p1, Lcom/google/android/material/k/n$c;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/k/n;->h:[F

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/k/n;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/material/k/n$c;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/k/o;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 179
    iget-object v0, p1, Lcom/google/android/material/k/n$c;->d:Lcom/google/android/material/k/n$b;

    if-eqz v0, :cond_1

    .line 180
    iget-object p1, p1, Lcom/google/android/material/k/n$c;->d:Lcom/google/android/material/k/n$b;

    iget-object v0, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/k/n;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/material/k/n$b;->a(Lcom/google/android/material/k/o;Landroid/graphics/Matrix;I)V

    :cond_1
    return-void
.end method

.method private static c(ILcom/google/android/material/k/m;)Lcom/google/android/material/k/f;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 8722
    iget-object p0, p1, Lcom/google/android/material/k/m;->k:Lcom/google/android/material/k/f;

    return-object p0

    .line 8712
    :cond_0
    iget-object p0, p1, Lcom/google/android/material/k/m;->j:Lcom/google/android/material/k/f;

    return-object p0

    .line 8702
    :cond_1
    iget-object p0, p1, Lcom/google/android/material/k/m;->m:Lcom/google/android/material/k/f;

    return-object p0

    .line 7732
    :cond_2
    iget-object p0, p1, Lcom/google/android/material/k/m;->l:Lcom/google/android/material/k/f;

    return-object p0
.end method

.method private c(Lcom/google/android/material/k/n$c;I)V
    .locals 8

    add-int/lit8 v0, p2, 0x1

    .line 185
    rem-int/lit8 v0, v0, 0x4

    .line 186
    iget-object v1, p0, Lcom/google/android/material/k/n;->h:[F

    iget-object v2, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v2, v2, p2

    .line 3319
    iget v2, v2, Lcom/google/android/material/k/o;->c:F

    const/4 v3, 0x0

    .line 186
    aput v2, v1, v3

    .line 187
    iget-object v1, p0, Lcom/google/android/material/k/n;->h:[F

    iget-object v2, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v2, v2, p2

    .line 3323
    iget v2, v2, Lcom/google/android/material/k/o;->d:F

    const/4 v4, 0x1

    .line 187
    aput v2, v1, v4

    .line 188
    iget-object v1, p0, Lcom/google/android/material/k/n;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/google/android/material/k/n;->h:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 190
    iget-object v1, p0, Lcom/google/android/material/k/n;->i:[F

    iget-object v2, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v2, v2, v0

    .line 4311
    iget v2, v2, Lcom/google/android/material/k/o;->a:F

    .line 190
    aput v2, v1, v3

    .line 191
    iget-object v1, p0, Lcom/google/android/material/k/n;->i:[F

    iget-object v2, p0, Lcom/google/android/material/k/n;->a:[Lcom/google/android/material/k/o;

    aget-object v2, v2, v0

    .line 4315
    iget v2, v2, Lcom/google/android/material/k/o;->b:F

    .line 191
    aput v2, v1, v4

    .line 192
    iget-object v1, p0, Lcom/google/android/material/k/n;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/k/n;->i:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 194
    iget-object v1, p0, Lcom/google/android/material/k/n;->h:[F

    aget v2, v1, v3

    iget-object v5, p0, Lcom/google/android/material/k/n;->i:[F

    aget v6, v5, v3

    sub-float/2addr v2, v6

    float-to-double v6, v2

    aget v1, v1, v4

    aget v2, v5, v4

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3a83126f    # 0.001f

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    .line 196
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 197
    iget-object v5, p1, Lcom/google/android/material/k/n$c;->c:Landroid/graphics/RectF;

    invoke-direct {p0, v5, p2}, Lcom/google/android/material/k/n;->a(Landroid/graphics/RectF;I)F

    move-result v5

    .line 198
    iget-object v6, p0, Lcom/google/android/material/k/n;->g:Lcom/google/android/material/k/o;

    invoke-virtual {v6, v2, v2}, Lcom/google/android/material/k/o;->a(FF)V

    .line 199
    iget-object v2, p1, Lcom/google/android/material/k/n$c;->a:Lcom/google/android/material/k/m;

    invoke-static {p2, v2}, Lcom/google/android/material/k/n;->c(ILcom/google/android/material/k/m;)Lcom/google/android/material/k/f;

    move-result-object v2

    .line 200
    iget v6, p1, Lcom/google/android/material/k/n$c;->e:F

    iget-object v7, p0, Lcom/google/android/material/k/n;->g:Lcom/google/android/material/k/o;

    invoke-virtual {v2, v1, v5, v6, v7}, Lcom/google/android/material/k/f;->a(FFFLcom/google/android/material/k/o;)V

    .line 201
    iget-object v1, p0, Lcom/google/android/material/k/n;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 202
    iget-object v1, p0, Lcom/google/android/material/k/n;->g:Lcom/google/android/material/k/o;

    iget-object v5, p0, Lcom/google/android/material/k/n;->c:[Landroid/graphics/Matrix;

    aget-object v5, v5, p2

    iget-object v6, p0, Lcom/google/android/material/k/n;->j:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v6}, Lcom/google/android/material/k/o;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 204
    iget-boolean v1, p0, Lcom/google/android/material/k/n;->l:Z

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v1, v5, :cond_1

    .line 206
    invoke-virtual {v2}, Lcom/google/android/material/k/f;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/k/n;->j:Landroid/graphics/Path;

    .line 207
    invoke-direct {p0, v1, p2}, Lcom/google/android/material/k/n;->a(Landroid/graphics/Path;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/k/n;->j:Landroid/graphics/Path;

    .line 208
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/k/n;->a(Landroid/graphics/Path;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/k/n;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/k/n;->f:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 216
    iget-object v0, p0, Lcom/google/android/material/k/n;->h:[F

    iget-object v1, p0, Lcom/google/android/material/k/n;->g:Lcom/google/android/material/k/o;

    .line 5311
    iget v1, v1, Lcom/google/android/material/k/o;->a:F

    .line 216
    aput v1, v0, v3

    .line 217
    iget-object v0, p0, Lcom/google/android/material/k/n;->h:[F

    iget-object v1, p0, Lcom/google/android/material/k/n;->g:Lcom/google/android/material/k/o;

    .line 5315
    iget v1, v1, Lcom/google/android/material/k/o;->b:F

    .line 217
    aput v1, v0, v4

    .line 218
    iget-object v0, p0, Lcom/google/android/material/k/n;->c:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/k/n;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 219
    iget-object v0, p0, Lcom/google/android/material/k/n;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/k/n;->h:[F

    aget v2, v1, v3

    aget v1, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 222
    iget-object v0, p0, Lcom/google/android/material/k/n;->g:Lcom/google/android/material/k/o;

    iget-object v1, p0, Lcom/google/android/material/k/n;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/google/android/material/k/n;->e:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/k/o;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/k/n;->g:Lcom/google/android/material/k/o;

    iget-object v1, p0, Lcom/google/android/material/k/n;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/material/k/n$c;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/k/o;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 227
    :goto_0
    iget-object v0, p1, Lcom/google/android/material/k/n$c;->d:Lcom/google/android/material/k/n$b;

    if-eqz v0, :cond_2

    .line 228
    iget-object p1, p1, Lcom/google/android/material/k/n$c;->d:Lcom/google/android/material/k/n$b;

    iget-object v0, p0, Lcom/google/android/material/k/n;->g:Lcom/google/android/material/k/o;

    iget-object v1, p0, Lcom/google/android/material/k/n;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/material/k/n$b;->b(Lcom/google/android/material/k/o;Landroid/graphics/Matrix;I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/k/m;FLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/k/n;->a(Lcom/google/android/material/k/m;FLandroid/graphics/RectF;Lcom/google/android/material/k/n$b;Landroid/graphics/Path;)V

    return-void
.end method

.method public final a(Lcom/google/android/material/k/m;FLandroid/graphics/RectF;Lcom/google/android/material/k/n$b;Landroid/graphics/Path;)V
    .locals 8

    .line 118
    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    .line 119
    iget-object v0, p0, Lcom/google/android/material/k/n;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 120
    iget-object v0, p0, Lcom/google/android/material/k/n;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 121
    iget-object v0, p0, Lcom/google/android/material/k/n;->f:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 122
    new-instance v0, Lcom/google/android/material/k/n$c;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/k/n$c;-><init>(Lcom/google/android/material/k/m;FLandroid/graphics/RectF;Lcom/google/android/material/k/n$b;Landroid/graphics/Path;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x4

    if-ge p2, p3, :cond_0

    .line 129
    invoke-direct {p0, v0, p2}, Lcom/google/android/material/k/n;->a(Lcom/google/android/material/k/n$c;I)V

    .line 130
    invoke-direct {p0, p2}, Lcom/google/android/material/k/n;->a(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p3, :cond_1

    .line 134
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/k/n;->b(Lcom/google/android/material/k/n$c;I)V

    .line 135
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/k/n;->c(Lcom/google/android/material/k/n$c;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    .line 139
    iget-object p1, p0, Lcom/google/android/material/k/n;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 142
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/google/android/material/k/n;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/google/android/material/k/n;->e:Landroid/graphics/Path;

    sget-object p2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p5, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_2
    return-void
.end method
