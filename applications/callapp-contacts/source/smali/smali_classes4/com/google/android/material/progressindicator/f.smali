.class abstract Lcom/google/android/material/progressindicator/f;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroidx/l/a/a/b;


# static fields
.field private static final o:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/f;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/animation/ValueAnimator;

.field final b:Landroid/content/Context;

.field final c:Lcom/google/android/material/progressindicator/b;

.field d:Lcom/google/android/material/progressindicator/a;

.field final e:Landroid/graphics/Paint;

.field private f:Landroid/animation/ValueAnimator;

.field private g:Z

.field private h:Z

.field private i:F

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/l/a/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroidx/l/a/a/b$a;

.field private l:Z

.field private m:F

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 423
    new-instance v0, Lcom/google/android/material/progressindicator/f$3;

    const-class v1, Ljava/lang/Float;

    const-string v2, "growFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/f$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/f;->o:Landroid/util/Property;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/f;->e:Landroid/graphics/Paint;

    .line 84
    iput-object p1, p0, Lcom/google/android/material/progressindicator/f;->b:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/google/android/material/progressindicator/f;->c:Lcom/google/android/material/progressindicator/b;

    .line 86
    new-instance p1, Lcom/google/android/material/progressindicator/a;

    invoke-direct {p1}, Lcom/google/android/material/progressindicator/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/f;->d:Lcom/google/android/material/progressindicator/a;

    const/16 p1, 0xff

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/f;->setAlpha(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/progressindicator/f;)V
    .locals 1

    .line 2169
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/material/progressindicator/f;->l:Z

    if-nez p0, :cond_0

    .line 2170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private varargs a([Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 298
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/f;->l:Z

    const/4 v1, 0x1

    .line 299
    iput-boolean v1, p0, Lcom/google/android/material/progressindicator/f;->l:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gtz v2, :cond_0

    .line 300
    aget-object v3, p1, v1

    .line 301
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/f;->l:Z

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/progressindicator/f;)Z
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-super {p0, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/progressindicator/f;)V
    .locals 2

    .line 2178
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->k:Landroidx/l/a/a/b$a;

    if-eqz v0, :cond_0

    .line 2179
    invoke-virtual {v0, p0}, Landroidx/l/a/a/b$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 2181
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/progressindicator/f;->l:Z

    if-nez v1, :cond_1

    .line 2182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/l/a/a/b$a;

    .line 2183
    invoke-virtual {v1, p0}, Landroidx/l/a/a/b$a;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method final a(F)V
    .locals 1

    .line 401
    iget v0, p0, Lcom/google/android/material/progressindicator/f;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 402
    iput p1, p0, Lcom/google/android/material/progressindicator/f;->m:F

    .line 403
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/f;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0, v0, v0}, Lcom/google/android/material/progressindicator/f;->b(ZZZ)Z

    move-result v0

    return v0
.end method

.method public a(Landroidx/l/a/a/b$a;)Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object p1, p0, Lcom/google/android/material/progressindicator/f;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/google/android/material/progressindicator/f;->j:Ljava/util/List;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method a(ZZZ)Z
    .locals 5

    .line 1094
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x2

    if-nez v0, :cond_2

    .line 1095
    sget-object v0, Lcom/google/android/material/progressindicator/f;->o:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/f;->a:Landroid/animation/ValueAnimator;

    .line 1096
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1097
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->a:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1098
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1337
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 1338
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set showAnimator while the current showAnimator is running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1341
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/android/material/progressindicator/f;->a:Landroid/animation/ValueAnimator;

    .line 1344
    new-instance v4, Lcom/google/android/material/progressindicator/f$1;

    invoke-direct {v4, p0}, Lcom/google/android/material/progressindicator/f$1;-><init>(Lcom/google/android/material/progressindicator/f;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1100
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->f:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    .line 1101
    sget-object v0, Lcom/google/android/material/progressindicator/f;->o:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/f;->f:Landroid/animation/ValueAnimator;

    .line 1102
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1103
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->f:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1104
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 1367
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 1368
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set hideAnimator while the current hideAnimator is running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1372
    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/google/android/material/progressindicator/f;->f:Landroid/animation/ValueAnimator;

    .line 1375
    new-instance v1, Lcom/google/android/material/progressindicator/f$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/f$2;-><init>(Lcom/google/android/material/progressindicator/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/f;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    return v1

    :cond_6
    if-eqz p1, :cond_7

    .line 259
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->a:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->f:Landroid/animation/ValueAnimator;

    :goto_2
    const/4 v2, 0x1

    if-nez p3, :cond_9

    .line 262
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 263
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_3

    :cond_8
    new-array p2, v2, [Landroid/animation/ValueAnimator;

    aput-object v0, p2, v1

    .line 266
    invoke-direct {p0, p2}, Lcom/google/android/material/progressindicator/f;->a([Landroid/animation/ValueAnimator;)V

    .line 269
    :goto_3
    invoke-super {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_9
    if-eqz p3, :cond_a

    .line 272
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_c

    .line 279
    invoke-super {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_4

    :cond_b
    const/4 p3, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 p3, 0x1

    :goto_5
    if-eqz p1, :cond_d

    .line 280
    iget-object p1, p0, Lcom/google/android/material/progressindicator/f;->c:Lcom/google/android/material/progressindicator/b;

    .line 281
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/b;->a()Z

    move-result p1

    goto :goto_6

    :cond_d
    iget-object p1, p0, Lcom/google/android/material/progressindicator/f;->c:Lcom/google/android/material/progressindicator/b;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/b;->b()Z

    move-result p1

    :goto_6
    if-nez p1, :cond_e

    new-array p1, v2, [Landroid/animation/ValueAnimator;

    aput-object v0, p1, v1

    .line 284
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/f;->a([Landroid/animation/ValueAnimator;)V

    return p3

    :cond_e
    if-nez p2, :cond_10

    .line 288
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_10

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_7

    .line 292
    :cond_f
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_8

    .line 290
    :cond_10
    :goto_7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_8
    return p3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public b(Landroidx/l/a/a/b$a;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/f;->j:Ljava/util/List;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/f;->h:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public b(ZZZ)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->b:Landroid/content/Context;

    .line 237
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/progressindicator/a;->a(Landroid/content/ContentResolver;)F

    move-result v0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    cmpl-float p3, v0, p3

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 240
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/f;->a(ZZZ)Z

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/f;->g:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method final d()F
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->c:Lcom/google/android/material/progressindicator/b;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->c:Lcom/google/android/material/progressindicator/b;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 394
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/f;->h:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/f;->g:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 397
    :cond_1
    iget v0, p0, Lcom/google/android/material/progressindicator/f;->m:F

    return v0

    .line 395
    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/android/material/progressindicator/f;->i:F

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .line 316
    iget v0, p0, Lcom/google/android/material/progressindicator/f;->n:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/google/android/material/progressindicator/f;->n:I

    .line 311
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/f;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 322
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/f;->invalidateSelf()V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/f;->b(ZZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p0, v0, v0, v1}, Lcom/google/android/material/progressindicator/f;->a(ZZZ)Z

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 199
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/material/progressindicator/f;->a(ZZZ)Z

    return-void
.end method
