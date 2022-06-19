.class Lcom/google/android/material/behavior/SwipeDismissBehavior$1;
.super Landroidx/d/b/c$a;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 1

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p0}, Landroidx/d/b/c$a;-><init>()V

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    return-void
.end method

.method private a(Landroid/view/View;F)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 270
    cmpl-float v0, p2, v5

    if-eqz v0, :cond_6

    .line 272
    invoke-static {p1}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 274
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 292
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 272
    goto :goto_0

    .line 277
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    if-nez v3, :cond_4

    .line 280
    if-eqz v0, :cond_3

    cmpg-float v0, p2, v5

    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_3
    cmpl-float v0, p2, v5

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 281
    :cond_4
    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    if-ne v3, v1, :cond_7

    .line 284
    if-eqz v0, :cond_5

    cmpl-float v0, p2, v5

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_5
    cmpg-float v0, p2, v5

    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 287
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    sub-int/2addr v0, v3

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 289
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v2

    .line 292
    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;II)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 302
    .line 303
    invoke-static {p1}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 307
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    if-nez v2, :cond_2

    .line 308
    if-eqz v0, :cond_1

    .line 309
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 310
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    .line 328
    :goto_1
    invoke-static {v1, p2, v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(III)I

    move-result v0

    return v0

    .line 303
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :cond_1
    iget v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    .line 313
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 315
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    if-ne v2, v1, :cond_4

    .line 316
    if-eqz v0, :cond_3

    .line 317
    iget v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    .line 318
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 320
    :cond_3
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 321
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    goto :goto_1

    .line 324
    :cond_4
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 325
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    invoke-interface {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a(I)V

    .line 240
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 4

    .prologue
    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 249
    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    sub-int/2addr v0, v1

    .line 256
    :goto_0
    const/4 v1, 0x1

    move v2, v0

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/d/b/c;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/d/b/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    new-instance v0, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;

    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {v0, v2, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 267
    :cond_0
    :goto_2
    return-void

    .line 253
    :cond_1
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 259
    :cond_2
    iget v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    move v1, v0

    goto :goto_1

    .line 264
    :cond_3
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    invoke-interface {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a(Landroid/view/View;)V

    goto :goto_2
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 224
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 233
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 338
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    int-to-float v0, v0

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 340
    iget v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    int-to-float v1, v1

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 343
    int-to-float v2, p2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    .line 344
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 352
    :goto_0
    return-void

    .line 345
    :cond_0
    int-to-float v2, p2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_1

    .line 346
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 349
    :cond_1
    int-to-float v2, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b(FFF)F

    move-result v0

    .line 350
    sub-float v0, v4, v0

    invoke-static {v5, v0, v4}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    if-ne v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 219
    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 218
    :goto_0
    return v0

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
