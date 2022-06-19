.class public final Lcom/facebook/appevents/b/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;

.field private d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/os/Handler;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/b/c$b;->a:Ljava/lang/ref/WeakReference;

    .line 226
    iput-object p2, p0, Lcom/facebook/appevents/b/c$b;->c:Landroid/os/Handler;

    .line 227
    iput-object p3, p0, Lcom/facebook/appevents/b/c$b;->d:Ljava/util/HashSet;

    .line 228
    iput-object p4, p0, Lcom/facebook/appevents/b/c$b;->e:Ljava/lang/String;

    const-wide/16 p3, 0xc8

    .line 230
    invoke-virtual {p2, p0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 440
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 441
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 442
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/b/a/a;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/b/a/c;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/b/c$a;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "."

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    .line 312
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt p3, v2, :cond_1

    .line 314
    new-instance p4, Lcom/facebook/appevents/b/c$a;

    invoke-direct {p4, p1, v0}, Lcom/facebook/appevents/b/c$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 316
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/b/a/c;

    .line 317
    iget-object v4, v2, Lcom/facebook/appevents/b/a/c;->a:Ljava/lang/String;

    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 319
    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_2

    .line 320
    check-cast p1, Landroid/view/ViewGroup;

    .line 321
    invoke-static {p1}, Lcom/facebook/appevents/b/c$b;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p1

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_2

    .line 324
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    add-int/lit8 v5, p3, 0x1

    move-object v2, p0

    move-object v4, p2

    move v6, p5

    move-object v7, v0

    .line 326
    invoke-static/range {v2 .. v7}, Lcom/facebook/appevents/b/c$b;->a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 327
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 332
    :cond_3
    iget-object v4, v2, Lcom/facebook/appevents/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {v4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 334
    new-instance p0, Lcom/facebook/appevents/b/c$a;

    invoke-direct {p0, p1, v0}, Lcom/facebook/appevents/b/c$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 339
    :cond_4
    invoke-static {p1, v2, p4}, Lcom/facebook/appevents/b/c$b;->a(Landroid/view/View;Lcom/facebook/appevents/b/a/c;I)Z

    move-result p4

    if-nez p4, :cond_5

    return-object v1

    .line 344
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne p3, p4, :cond_6

    .line 345
    new-instance p4, Lcom/facebook/appevents/b/c$a;

    invoke-direct {p4, p1, v0}, Lcom/facebook/appevents/b/c$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_6
    :goto_1
    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_7

    .line 350
    check-cast p1, Landroid/view/ViewGroup;

    .line 351
    invoke-static {p1}, Lcom/facebook/appevents/b/c$b;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p1

    .line 352
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x0

    :goto_2
    if-ge p5, p4, :cond_7

    .line 354
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    add-int/lit8 v5, p3, 0x1

    move-object v2, p0

    move-object v4, p2

    move v6, p5

    move-object v7, v0

    .line 356
    invoke-static/range {v2 .. v7}, Lcom/facebook/appevents/b/c$b;->a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 357
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_7
    return-object v1
.end method

.method private a()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/facebook/appevents/b/c$b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/appevents/b/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 269
    :goto_0
    iget-object v1, p0, Lcom/facebook/appevents/b/c$b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/facebook/appevents/b/c$b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/b/a/a;

    .line 271
    iget-object v2, p0, Lcom/facebook/appevents/b/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/facebook/appevents/b/c$b;->a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;)V
    .locals 7

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 1147
    :cond_0
    iget-object v0, p1, Lcom/facebook/appevents/b/a/a;->d:Ljava/lang/String;

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2147
    iget-object v0, p1, Lcom/facebook/appevents/b/a/a;->d:Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lcom/facebook/appevents/b/c$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3115
    :cond_1
    iget-object v0, p1, Lcom/facebook/appevents/b/a/a;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 288
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 292
    iget-object v6, p0, Lcom/facebook/appevents/b/c$b;->e:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    .line 293
    invoke-static/range {v1 .. v6}, Lcom/facebook/appevents/b/c$b;->a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/b/c$a;

    .line 295
    invoke-direct {p0, v1, p2, p1}, Lcom/facebook/appevents/b/c$b;->a(Lcom/facebook/appevents/b/c$a;Landroid/view/View;Lcom/facebook/appevents/b/a/a;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Lcom/facebook/appevents/b/c$a;Landroid/view/View;Lcom/facebook/appevents/b/a/a;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    .line 454
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/appevents/b/c$a;->a()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 459
    :cond_1
    invoke-static {v0}, Lcom/facebook/appevents/b/a/f;->i(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 460
    invoke-static {v0, v1}, Lcom/facebook/appevents/b/a/f;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 461
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/b/c$b;->d(Lcom/facebook/appevents/b/c$a;Landroid/view/View;Lcom/facebook/appevents/b/a/a;)V

    return-void

    .line 465
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.react"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 468
    :cond_3
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_4

    .line 470
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/b/c$b;->b(Lcom/facebook/appevents/b/c$a;Landroid/view/View;Lcom/facebook/appevents/b/a/a;)V

    return-void

    .line 471
    :cond_4
    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_5

    .line 473
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/b/c$b;->c(Lcom/facebook/appevents/b/c$a;Landroid/view/View;Lcom/facebook/appevents/b/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 476
    invoke-static {}, Lcom/facebook/appevents/b/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private static a(Landroid/view/View;Lcom/facebook/appevents/b/a/c;I)Z
    .locals 5

    .line 366
    iget v0, p1, Lcom/facebook/appevents/b/a/c;->b:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/facebook/appevents/b/a/c;->b:I

    if-eq p2, v0, :cond_0

    return v1

    .line 370
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/facebook/appevents/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 371
    iget-object p2, p1, Lcom/facebook/appevents/b/a/c;->a:Ljava/lang/String;

    const-string v2, ".*android\\..*"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 372
    iget-object p2, p1, Lcom/facebook/appevents/b/a/c;->a:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 373
    array-length v2, p2

    if-lez v2, :cond_1

    .line 374
    array-length v2, p2

    sub-int/2addr v2, v0

    aget-object p2, p2, v2

    .line 375
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    return v1

    .line 386
    :cond_2
    iget p2, p1, Lcom/facebook/appevents/b/a/c;->h:I

    sget-object v2, Lcom/facebook/appevents/b/a/c$a;->ID:Lcom/facebook/appevents/b/a/c$a;

    invoke-virtual {v2}, Lcom/facebook/appevents/b/a/c$a;->getValue()I

    move-result v2

    and-int/2addr p2, v2

    if-lez p2, :cond_3

    .line 387
    iget p2, p1, Lcom/facebook/appevents/b/a/c;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-eq p2, v2, :cond_3

    return v1

    .line 392
    :cond_3
    iget p2, p1, Lcom/facebook/appevents/b/a/c;->h:I

    sget-object v2, Lcom/facebook/appevents/b/a/c$a;->TEXT:Lcom/facebook/appevents/b/a/c$a;

    invoke-virtual {v2}, Lcom/facebook/appevents/b/a/c$a;->getValue()I

    move-result v2

    and-int/2addr p2, v2

    const-string v2, ""

    if-lez p2, :cond_4

    .line 393
    iget-object p2, p1, Lcom/facebook/appevents/b/a/c;->d:Ljava/lang/String;

    .line 394
    invoke-static {p0}, Lcom/facebook/appevents/b/a/f;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-static {v3}, Lcom/facebook/internal/ae;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    return v1

    .line 402
    :cond_4
    iget p2, p1, Lcom/facebook/appevents/b/a/c;->h:I

    sget-object v3, Lcom/facebook/appevents/b/a/c$a;->DESCRIPTION:Lcom/facebook/appevents/b/a/c$a;

    invoke-virtual {v3}, Lcom/facebook/appevents/b/a/c$a;->getValue()I

    move-result v3

    and-int/2addr p2, v3

    if-lez p2, :cond_6

    .line 403
    iget-object p2, p1, Lcom/facebook/appevents/b/a/c;->f:Ljava/lang/String;

    .line 405
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_5

    move-object v3, v2

    goto :goto_0

    .line 407
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 408
    :goto_0
    invoke-static {v3}, Lcom/facebook/internal/ae;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 409
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    return v1

    .line 414
    :cond_6
    iget p2, p1, Lcom/facebook/appevents/b/a/c;->h:I

    sget-object v3, Lcom/facebook/appevents/b/a/c$a;->HINT:Lcom/facebook/appevents/b/a/c$a;

    invoke-virtual {v3}, Lcom/facebook/appevents/b/a/c$a;->getValue()I

    move-result v3

    and-int/2addr p2, v3

    if-lez p2, :cond_7

    .line 415
    iget-object p2, p1, Lcom/facebook/appevents/b/a/c;->g:Ljava/lang/String;

    .line 416
    invoke-static {p0}, Lcom/facebook/appevents/b/a/f;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-static {v3}, Lcom/facebook/internal/ae;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 419
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    return v1

    .line 424
    :cond_7
    iget p2, p1, Lcom/facebook/appevents/b/a/c;->h:I

    sget-object v3, Lcom/facebook/appevents/b/a/c$a;->TAG:Lcom/facebook/appevents/b/a/c$a;

    invoke-virtual {v3}, Lcom/facebook/appevents/b/a/c$a;->getValue()I

    move-result v3

    and-int/2addr p2, v3

    if-lez p2, :cond_9

    .line 425
    iget-object p1, p1, Lcom/facebook/appevents/b/a/c;->e:Ljava/lang/String;

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_8

    move-object p0, v2

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 427
    :goto_1
    invoke-static {p0}, Lcom/facebook/internal/ae;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 428
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method private b(Lcom/facebook/appevents/b/c$a;Landroid/view/View;Lcom/facebook/appevents/b/a/a;)V
    .locals 3

    .line 482
    invoke-virtual {p1}, Lcom/facebook/appevents/b/c$a;->a()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3208
    :cond_0
    iget-object p1, p1, Lcom/facebook/appevents/b/c$a;->a:Ljava/lang/String;

    .line 487
    invoke-static {v0}, Lcom/facebook/appevents/b/a/f;->g(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 488
    instance-of v2, v1, Lcom/facebook/appevents/b/a$a;

    if-eqz v2, :cond_1

    .line 490
    check-cast v1, Lcom/facebook/appevents/b/a$a;

    .line 4111
    iget-boolean v1, v1, Lcom/facebook/appevents/b/a$a;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 494
    :goto_0
    iget-object v2, p0, Lcom/facebook/appevents/b/c$b;->d:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 496
    invoke-static {p3, p2, v0}, Lcom/facebook/appevents/b/a;->a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/b/a$a;

    move-result-object p2

    .line 497
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object p2, p0, Lcom/facebook/appevents/b/c$b;->d:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private c(Lcom/facebook/appevents/b/c$a;Landroid/view/View;Lcom/facebook/appevents/b/a/a;)V
    .locals 3

    .line 504
    invoke-virtual {p1}, Lcom/facebook/appevents/b/c$a;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    return-void

    .line 4208
    :cond_0
    iget-object p1, p1, Lcom/facebook/appevents/b/c$a;->a:Ljava/lang/String;

    .line 509
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    .line 510
    instance-of v2, v1, Lcom/facebook/appevents/b/a$b;

    if-eqz v2, :cond_1

    .line 512
    check-cast v1, Lcom/facebook/appevents/b/a$b;

    .line 5148
    iget-boolean v1, v1, Lcom/facebook/appevents/b/a$b;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 516
    :goto_0
    iget-object v2, p0, Lcom/facebook/appevents/b/c$b;->d:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 518
    invoke-static {p3, p2, v0}, Lcom/facebook/appevents/b/a;->a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Landroid/widget/AdapterView;)Lcom/facebook/appevents/b/a$b;

    move-result-object p2

    .line 519
    invoke-virtual {v0, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 520
    iget-object p2, p0, Lcom/facebook/appevents/b/c$b;->d:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private d(Lcom/facebook/appevents/b/c$a;Landroid/view/View;Lcom/facebook/appevents/b/a/a;)V
    .locals 3

    .line 526
    invoke-virtual {p1}, Lcom/facebook/appevents/b/c$a;->a()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5208
    :cond_0
    iget-object p1, p1, Lcom/facebook/appevents/b/c$a;->a:Ljava/lang/String;

    .line 531
    invoke-static {v0}, Lcom/facebook/appevents/b/a/f;->h(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    .line 532
    instance-of v2, v1, Lcom/facebook/appevents/b/d$a;

    if-eqz v2, :cond_1

    .line 534
    check-cast v1, Lcom/facebook/appevents/b/d$a;

    .line 6108
    iget-boolean v1, v1, Lcom/facebook/appevents/b/d$a;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 538
    :goto_0
    iget-object v2, p0, Lcom/facebook/appevents/b/c$b;->d:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 540
    invoke-static {p3, p2, v0}, Lcom/facebook/appevents/b/d;->a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/b/d$a;

    move-result-object p2

    .line 541
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 542
    iget-object p2, p0, Lcom/facebook/appevents/b/c$b;->d:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/facebook/appevents/b/c$b;->a()V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    .line 264
    invoke-direct {p0}, Lcom/facebook/appevents/b/c$b;->a()V

    return-void
.end method

.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 235
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/facebook/internal/q;->a(Ljava/lang/String;)Lcom/facebook/internal/p;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1045
    iget-boolean v1, v0, Lcom/facebook/internal/p;->g:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 1046
    :cond_1
    iget-object v0, v0, Lcom/facebook/internal/p;->h:Lorg/json/JSONArray;

    .line 241
    invoke-static {v0}, Lcom/facebook/appevents/b/a/a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/b/c$b;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/facebook/appevents/b/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    .line 248
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 251
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 253
    :cond_3
    invoke-direct {p0}, Lcom/facebook/appevents/b/c$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 255
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
