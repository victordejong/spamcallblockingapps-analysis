.class public Lcom/facebook/a/b/c$b;
.super Ljava/lang/Object;
.source "CodelessMatcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;

.field private d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/os/Handler;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/b/c$b;->a:Ljava/lang/ref/WeakReference;

    .line 234
    iput-object p2, p0, Lcom/facebook/a/b/c$b;->c:Landroid/os/Handler;

    .line 235
    iput-object p3, p0, Lcom/facebook/a/b/c$b;->d:Ljava/util/HashSet;

    .line 236
    iput-object p4, p0, Lcom/facebook/a/b/c$b;->e:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/facebook/a/b/c$b;->c:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 473
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 474
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 475
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 476
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_1
    return-object v1
.end method

.method public static a(Lcom/facebook/a/b/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/a/b/a/a;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/b/a/c;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/b/c$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 321
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 322
    if-nez p1, :cond_0

    move-object v0, v6

    .line 385
    :goto_0
    return-object v0

    .line 326
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_2

    .line 328
    new-instance v0, Lcom/facebook/a/b/c$a;

    invoke-direct {v0, p1, v5}, Lcom/facebook/a/b/c$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_1
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 369
    check-cast p1, Landroid/view/ViewGroup;

    .line 370
    invoke-static {p1}, Lcom/facebook/a/b/c$b;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v7

    .line 371
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 372
    :goto_2
    if-ge v4, v8, :cond_7

    .line 373
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 374
    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/facebook/a/b/c$b;->a(Lcom/facebook/a/b/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 381
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 372
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 330
    :cond_2
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/b/a/c;

    .line 331
    iget-object v1, v0, Lcom/facebook/a/b/a/c;->a:Ljava/lang/String;

    const-string/jumbo v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 333
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 334
    check-cast v0, Landroid/view/ViewGroup;

    .line 335
    invoke-static {v0}, Lcom/facebook/a/b/c$b;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v7

    .line 336
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 337
    :goto_3
    if-ge v4, v8, :cond_3

    .line 338
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 339
    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/facebook/a/b/c$b;->a(Lcom/facebook/a/b/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 346
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move-object v0, v6

    .line 350
    goto :goto_0

    .line 351
    :cond_4
    iget-object v1, v0, Lcom/facebook/a/b/a/c;->a:Ljava/lang/String;

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 353
    new-instance v0, Lcom/facebook/a/b/c$a;

    invoke-direct {v0, p1, v5}, Lcom/facebook/a/b/c$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    .line 355
    goto/16 :goto_0

    .line 358
    :cond_5
    invoke-static {p1, v0, p4}, Lcom/facebook/a/b/c$b;->a(Landroid/view/View;Lcom/facebook/a/b/a/c;I)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v6

    .line 359
    goto/16 :goto_0

    .line 363
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    .line 364
    new-instance v0, Lcom/facebook/a/b/c$a;

    invoke-direct {v0, p1, v5}, Lcom/facebook/a/b/c$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    move-object v0, v6

    .line 385
    goto/16 :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/a/b/c$b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/a/b/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/a/b/c$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/facebook/a/b/c$b;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/b/a/a;

    .line 281
    iget-object v1, p0, Lcom/facebook/a/b/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/a/b/c$b;->a(Lcom/facebook/a/b/a/a;Landroid/view/View;)V

    .line 279
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/a/b/c$a;Landroid/view/View;Lcom/facebook/a/b/a/a;)V
    .locals 3

    .prologue
    .line 485
    if-nez p3, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/a/b/c$a;->a()Landroid/view/View;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_0

    .line 494
    invoke-static {v0}, Lcom/facebook/a/b/a/f;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 495
    if-eqz v1, :cond_2

    invoke-static {v0, v1}, Lcom/facebook/a/b/a/f;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/a/b/c$b;->d(Lcom/facebook/a/b/c$a;Landroid/view/View;Lcom/facebook/a/b/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    invoke-static {}, Lcom/facebook/a/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 500
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.react"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_3

    .line 505
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/a/b/c$b;->b(Lcom/facebook/a/b/c$a;Landroid/view/View;Lcom/facebook/a/b/a/a;)V

    goto :goto_0

    .line 506
    :cond_3
    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/a/b/c$b;->c(Lcom/facebook/a/b/c$a;Landroid/view/View;Lcom/facebook/a/b/a/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Lcom/facebook/a/b/a/c;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 392
    iget v0, p1, Lcom/facebook/a/b/a/c;->b:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/facebook/a/b/a/c;->b:I

    if-eq p2, v0, :cond_0

    move v0, v1

    .line 467
    :goto_0
    return v0

    .line 396
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/facebook/a/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 397
    iget-object v0, p1, Lcom/facebook/a/b/a/c;->a:Ljava/lang/String;

    const-string/jumbo v2, ".*android\\..*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p1, Lcom/facebook/a/b/a/c;->a:Ljava/lang/String;

    const-string/jumbo v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 399
    array-length v2, v0

    if-lez v2, :cond_1

    .line 400
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    .line 401
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 402
    goto :goto_0

    :cond_1
    move v0, v1

    .line 405
    goto :goto_0

    :cond_2
    move v0, v1

    .line 408
    goto :goto_0

    .line 412
    :cond_3
    iget v0, p1, Lcom/facebook/a/b/a/c;->h:I

    sget-object v2, Lcom/facebook/a/b/a/c$a;->a:Lcom/facebook/a/b/a/c$a;

    .line 413
    invoke-virtual {v2}, Lcom/facebook/a/b/a/c$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-lez v0, :cond_4

    .line 414
    iget v0, p1, Lcom/facebook/a/b/a/c;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v0, v2, :cond_4

    move v0, v1

    .line 415
    goto :goto_0

    .line 419
    :cond_4
    iget v0, p1, Lcom/facebook/a/b/a/c;->h:I

    sget-object v2, Lcom/facebook/a/b/a/c$a;->b:Lcom/facebook/a/b/a/c$a;

    .line 420
    invoke-virtual {v2}, Lcom/facebook/a/b/a/c$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-lez v0, :cond_5

    .line 421
    iget-object v0, p1, Lcom/facebook/a/b/a/c;->d:Ljava/lang/String;

    .line 422
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-static {v2}, Lcom/facebook/internal/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    .line 423
    invoke-static {v3, v4}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 427
    goto :goto_0

    .line 431
    :cond_5
    iget v0, p1, Lcom/facebook/a/b/a/c;->h:I

    sget-object v2, Lcom/facebook/a/b/a/c$a;->d:Lcom/facebook/a/b/a/c$a;

    .line 432
    invoke-virtual {v2}, Lcom/facebook/a/b/a/c$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-lez v0, :cond_7

    .line 433
    iget-object v2, p1, Lcom/facebook/a/b/a/c;->f:Ljava/lang/String;

    .line 434
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_6

    const-string/jumbo v0, ""

    .line 437
    :goto_1
    invoke-static {v0}, Lcom/facebook/internal/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    .line 436
    invoke-static {v3, v4}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 439
    goto/16 :goto_0

    .line 435
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 443
    :cond_7
    iget v0, p1, Lcom/facebook/a/b/a/c;->h:I

    sget-object v2, Lcom/facebook/a/b/a/c$a;->e:Lcom/facebook/a/b/a/c$a;

    .line 444
    invoke-virtual {v2}, Lcom/facebook/a/b/a/c$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-lez v0, :cond_8

    .line 445
    iget-object v0, p1, Lcom/facebook/a/b/a/c;->g:Ljava/lang/String;

    .line 446
    invoke-static {p0}, Lcom/facebook/a/b/a/f;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-static {v2}, Lcom/facebook/internal/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    .line 447
    invoke-static {v3, v4}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 451
    goto/16 :goto_0

    .line 455
    :cond_8
    iget v0, p1, Lcom/facebook/a/b/a/c;->h:I

    sget-object v2, Lcom/facebook/a/b/a/c$a;->c:Lcom/facebook/a/b/a/c$a;

    .line 456
    invoke-virtual {v2}, Lcom/facebook/a/b/a/c$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-lez v0, :cond_a

    .line 457
    iget-object v2, p1, Lcom/facebook/a/b/a/c;->e:Ljava/lang/String;

    .line 458
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    const-string/jumbo v0, ""

    .line 461
    :goto_2
    invoke-static {v0}, Lcom/facebook/internal/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    .line 460
    invoke-static {v3, v4}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 462
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 463
    goto/16 :goto_0

    .line 459
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 467
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private b(Lcom/facebook/a/b/c$a;Landroid/view/View;Lcom/facebook/a/b/a/a;)V
    .locals 4

    .prologue
    .line 518
    invoke-virtual {p1}, Lcom/facebook/a/b/c$a;->a()Landroid/view/View;

    move-result-object v1

    .line 519
    if-nez v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/a/b/c$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-static {v1}, Lcom/facebook/a/b/a/f;->g(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 525
    instance-of v3, v0, Lcom/facebook/a/b/a$a;

    .line 527
    if-eqz v3, :cond_2

    check-cast v0, Lcom/facebook/a/b/a$a;

    .line 529
    invoke-virtual {v0}, Lcom/facebook/a/b/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 530
    :goto_1
    iget-object v3, p0, Lcom/facebook/a/b/c$b;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 532
    invoke-static {p3, p2, v1}, Lcom/facebook/a/b/a;->a(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)Lcom/facebook/a/b/a$a;

    move-result-object v0

    .line 534
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/facebook/a/b/c$b;->d:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 529
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(Lcom/facebook/a/b/c$a;Landroid/view/View;Lcom/facebook/a/b/a/a;)V
    .locals 4

    .prologue
    .line 542
    invoke-virtual {p1}, Lcom/facebook/a/b/c$a;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 543
    if-nez v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/a/b/c$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 548
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    .line 549
    instance-of v3, v1, Lcom/facebook/a/b/a$b;

    .line 551
    if-eqz v3, :cond_2

    check-cast v1, Lcom/facebook/a/b/a$b;

    .line 553
    invoke-virtual {v1}, Lcom/facebook/a/b/a$b;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 554
    :goto_1
    iget-object v3, p0, Lcom/facebook/a/b/c$b;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    .line 556
    invoke-static {p3, p2, v0}, Lcom/facebook/a/b/a;->a(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/widget/AdapterView;)Lcom/facebook/a/b/a$b;

    move-result-object v1

    .line 558
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 559
    iget-object v0, p0, Lcom/facebook/a/b/c$b;->d:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private d(Lcom/facebook/a/b/c$a;Landroid/view/View;Lcom/facebook/a/b/a/a;)V
    .locals 4

    .prologue
    .line 566
    invoke-virtual {p1}, Lcom/facebook/a/b/c$a;->a()Landroid/view/View;

    move-result-object v1

    .line 567
    if-nez v1, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/a/b/c$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 572
    invoke-static {v1}, Lcom/facebook/a/b/a/f;->h(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    .line 573
    instance-of v3, v0, Lcom/facebook/a/b/d$a;

    .line 575
    if-eqz v3, :cond_2

    check-cast v0, Lcom/facebook/a/b/d$a;

    .line 577
    invoke-virtual {v0}, Lcom/facebook/a/b/d$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 578
    :goto_1
    iget-object v3, p0, Lcom/facebook/a/b/c$b;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 580
    invoke-static {p3, p2, v1}, Lcom/facebook/a/b/d;->a(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)Lcom/facebook/a/b/d$a;

    move-result-object v0

    .line 582
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 583
    iget-object v0, p0, Lcom/facebook/a/b/c$b;->d:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 577
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/facebook/a/b/a/a;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 287
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 312
    :cond_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/a/b/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    invoke-virtual {p1}, Lcom/facebook/a/b/a/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/a/b/c$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/a/b/a/a;->a()Ljava/util/List;

    move-result-object v2

    .line 298
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    .line 302
    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/facebook/a/b/c$b;->e:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/facebook/a/b/c$b;->a(Lcom/facebook/a/b/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/b/c$a;

    .line 310
    invoke-direct {p0, v0, p2, p1}, Lcom/facebook/a/b/c$b;->a(Lcom/facebook/a/b/c$a;Landroid/view/View;Lcom/facebook/a/b/a/a;)V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/facebook/a/b/c$b;->a()V

    .line 270
    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/facebook/a/b/c$b;->a()V

    .line 275
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/facebook/internal/m;->a(Ljava/lang/String;)Lcom/facebook/internal/l;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/internal/l;->i()Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/internal/l;->j()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/b/a/a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/b/c$b;->b:Ljava/util/List;

    .line 252
    iget-object v0, p0, Lcom/facebook/a/b/c$b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/facebook/a/b/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 254
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 260
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/facebook/a/b/c$b;->a()V

    goto :goto_0
.end method
