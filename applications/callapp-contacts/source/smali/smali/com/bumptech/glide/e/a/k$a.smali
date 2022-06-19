.class final Lcom/bumptech/glide/e/a/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/e/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/e/a/k$a$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Integer;


# instance fields
.field final b:Landroid/view/View;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/e/a/i;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Lcom/bumptech/glide/e/a/k$a$a;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/e/a/k$a;->c:Ljava/util/List;

    .line 330
    iput-object p1, p0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    return-void
.end method

.method private a(III)I
    .locals 2

    sub-int v0, p2, p3

    if-lez v0, :cond_0

    return v0

    .line 447
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a/k$a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sub-int/2addr p1, p3

    if-lez p1, :cond_2

    return p1

    .line 474
    :cond_2
    iget-object p1, p0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, -0x2

    if-ne p2, p1, :cond_3

    const/4 p1, 0x4

    const-string p2, "ViewTarget"

    .line 475
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 485
    iget-object p1, p0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/e/a/k$a;->a(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method private static a(Landroid/content/Context;)I
    .locals 1

    .line 335
    sget-object v0, Lcom/bumptech/glide/e/a/k$a;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, "window"

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const-string v0, "Argument must not be null"

    .line 1023
    invoke-static {p0, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 338
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 339
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 340
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 341
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/e/a/k$a;->a:Ljava/lang/Integer;

    .line 343
    :cond_0
    sget-object p0, Lcom/bumptech/glide/e/a/k$a;->a:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static a(I)Z
    .locals 1

    if-gtz p0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static a(II)Z
    .locals 0

    .line 418
    invoke-static {p0}, Lcom/bumptech/glide/e/a/k$a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/bumptech/glide/e/a/k$a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/bumptech/glide/e/a/k$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a/k$a;->d()I

    move-result v0

    .line 363
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a/k$a;->c()I

    move-result v1

    .line 364
    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a/k$a;->a(II)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 1351
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bumptech/glide/e/a/k$a;->c:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/e/a/i;

    .line 1352
    invoke-interface {v3, v0, v1}, Lcom/bumptech/glide/e/a/i;->a(II)V

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a/k$a;->b()V

    return-void
.end method

.method final b()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/bumptech/glide/e/a/k$a;->e:Lcom/bumptech/glide/e/a/k$a$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lcom/bumptech/glide/e/a/k$a;->e:Lcom/bumptech/glide/e/a/k$a$a;

    .line 414
    iget-object v0, p0, Lcom/bumptech/glide/e/a/k$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method final c()I
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    iget-object v1, p0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 424
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 425
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/bumptech/glide/e/a/k$a;->a(III)I

    move-result v0

    return v0
.end method

.method final d()I
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 430
    iget-object v1, p0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 431
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 432
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/e/a/k$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/bumptech/glide/e/a/k$a;->a(III)I

    move-result v0

    return v0
.end method
