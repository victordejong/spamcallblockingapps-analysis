.class Lkotlin/reflect/jvm/internal/impl/f/f$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/f/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/f/h<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/f/f;

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/f;Ljava/util/concurrent/ConcurrentMap;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/f/f;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a(I)V

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a(I)V

    .line 542
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    .line 544
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 545
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/AssertionError;"
        }
    .end annotation

    .line 622
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Race condition detected on input "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Old value is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " under "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/AssertionError;

    if-nez p1, :cond_0

    const/4 p2, 0x4

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a(I)V

    :cond_0
    return-object p1
.end method

.method private a(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/f/f$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lkotlin/reflect/jvm/internal/impl/f/f$l<",
            "TV;>;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/f/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/f/f$l;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a(I)V

    :cond_0
    return-object p1
.end method

.method private static synthetic a(I)V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p0, v7, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    const-string v8, "storageManager"

    aput-object v8, v4, v6

    goto :goto_2

    :cond_2
    aput-object v5, v4, v6

    goto :goto_2

    :cond_3
    const-string v8, "compute"

    aput-object v8, v4, v6

    goto :goto_2

    :cond_4
    const-string v8, "map"

    aput-object v8, v4, v6

    :goto_2
    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_5

    aput-object v5, v4, v7

    goto :goto_3

    :cond_5
    const-string v5, "raceCondition"

    aput-object v5, v4, v7

    goto :goto_3

    :cond_6
    const-string v5, "recursionDetected"

    aput-object v5, v4, v7

    :goto_3
    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    const-string v5, "<init>"

    aput-object v5, v4, v3

    :cond_7
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_8

    if-eq p0, v0, :cond_8

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0
.end method


# virtual methods
.method protected final a()Lkotlin/reflect/jvm/internal/impl/f/f;
    .locals 1

    .line 635
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/f/f$k;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 554
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/f/f;->b:Lkotlin/reflect/jvm/internal/impl/f/k;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/k;->a()V

    .line 556
    :try_start_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 558
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/f/f$k;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    if-ne v0, v1, :cond_1

    .line 559
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/f/f$k;->RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    .line 560
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/f/f$l;

    move-result-object v1

    .line 1344
    iget-boolean v2, v1, Lkotlin/reflect/jvm/internal/impl/f/f$l;->a:Z

    if-nez v2, :cond_1

    .line 562
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/f/f$l;->b()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 611
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/f/f;->b:Lkotlin/reflect/jvm/internal/impl/f/k;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/k;->c()V

    return-object p1

    .line 566
    :cond_1
    :try_start_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/f/f$k;->RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    if-ne v0, v1, :cond_2

    .line 567
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/f/f$l;

    move-result-object v1

    .line 2344
    iget-boolean v2, v1, Lkotlin/reflect/jvm/internal/impl/f/f$l;->a:Z

    if-nez v2, :cond_2

    .line 569
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/f/f$l;->b()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 573
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 577
    :try_start_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->b:Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/f/f$k;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 579
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 585
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/f/f$k;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/f/f$k;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, v3, :cond_4

    .line 611
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/f/f;->b:Lkotlin/reflect/jvm/internal/impl/f/k;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/f/k;->c()V

    return-object v1

    .line 586
    :cond_4
    :try_start_3
    invoke-direct {p0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    .line 587
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    .line 593
    :try_start_4
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/utils/c;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eq v1, v0, :cond_6

    .line 602
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 603
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/f/f$k;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    if-eq v0, v2, :cond_5

    .line 604
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 607
    :cond_5
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/f/f;->a(Lkotlin/reflect/jvm/internal/impl/f/f;)Lkotlin/reflect/jvm/internal/impl/f/f$c;

    move-result-object p1

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/f/f$c;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 599
    :cond_6
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/f/f;->a(Lkotlin/reflect/jvm/internal/impl/f/f;)Lkotlin/reflect/jvm/internal/impl/f/f$c;

    move-result-object p1

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/f/f$c;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 594
    :cond_7
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 611
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$i;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/f/f;->b:Lkotlin/reflect/jvm/internal/impl/f/k;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/k;->c()V

    throw p1
.end method
