.class final Lcom/google/android/material/behavior/SwipeDismissBehavior$1;
.super Landroidx/customview/a/c$a;
.source "SourceFile"


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
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p0}, Landroidx/customview/a/c$a;-><init>()V

    const/4 p1, -0x1

    .line 236
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 0

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1
.end method

.method public final a(I)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    invoke-interface {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;FF)V
    .locals 7

    const/4 p3, -0x1

    .line 268
    iput p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v3, p2, v0

    if-eqz v3, :cond_5

    .line 1295
    invoke-static {p1}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v4

    if-ne v4, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1297
    :goto_0
    iget-object v5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 1300
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    if-nez v5, :cond_3

    if-eqz v4, :cond_2

    cmpg-float p2, p2, v0

    if-gez p2, :cond_6

    goto :goto_1

    :cond_2
    if-lez v3, :cond_6

    goto :goto_1

    .line 1304
    :cond_3
    iget-object v5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v5, v5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    if-ne v5, v2, :cond_6

    if-eqz v4, :cond_4

    if-lez v3, :cond_6

    goto :goto_1

    :cond_4
    cmpg-float p2, p2, v0

    if-gez p2, :cond_6

    goto :goto_1

    .line 1310
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    sub-int/2addr p2, v0

    .line 1311
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1312
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, v0, :cond_6

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_8

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    if-ge p2, v0, :cond_7

    sub-int/2addr v0, p3

    goto :goto_3

    :cond_7
    add-int/2addr v0, p3

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    .line 282
    :cond_8
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    .line 285
    :goto_4
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/a/c;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2, v0, p3}, Landroidx/customview/a/c;->a(II)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 286
    new-instance p2, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;

    iget-object p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p2, p3, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, p2}, Landroidx/core/view/v;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_9
    if-eqz v1, :cond_a

    .line 287
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    if-eqz p2, :cond_a

    .line 288
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    invoke-interface {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 0

    .line 247
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 254
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;II)V
    .locals 3

    .line 361
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    int-to-float p3, p3

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    mul-float v0, v0, v1

    add-float/2addr p3, v0

    .line 363
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    int-to-float v0, v0

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p2, p3

    if-gtz v2, :cond_0

    .line 367
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    cmpl-float v2, p2, v0

    if-ltz v2, :cond_1

    const/4 p2, 0x0

    .line 369
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 372
    :cond_1
    invoke-static {p3, v0, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(FFF)F

    move-result p2

    sub-float/2addr v1, p2

    .line 373
    invoke-static {v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 2

    .line 241
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 242
    invoke-virtual {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Landroid/view/View;I)I
    .locals 3

    .line 326
    invoke-static {p1}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 330
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    .line 332
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    .line 333
    iget p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    goto :goto_2

    .line 335
    :cond_1
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    :goto_1
    add-int/2addr p1, v0

    goto :goto_2

    .line 338
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    if-ne v2, v1, :cond_4

    if-eqz v0, :cond_3

    .line 340
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_1

    .line 343
    :cond_3
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    .line 344
    iget p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    goto :goto_2

    .line 347
    :cond_4
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 348
    iget v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v1

    .line 351
    :goto_2
    invoke-static {v0, p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(III)I

    move-result p1

    return p1
.end method

.method public final d(Landroid/view/View;I)I
    .locals 0

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method
