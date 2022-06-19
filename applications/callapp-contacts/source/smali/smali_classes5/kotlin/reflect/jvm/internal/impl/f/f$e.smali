.class Lkotlin/reflect/jvm/internal/impl/f/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/f/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/f/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/f/f;

.field private final b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/f;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/f/f;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f$e;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f$e;->a(I)V

    .line 366
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/f/f$k;->NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->c:Ljava/lang/Object;

    .line 367
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    .line 368
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private static synthetic a(I)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p0, v6, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    const-string v7, "storageManager"

    aput-object v7, v3, v5

    goto :goto_2

    :cond_2
    aput-object v4, v3, v5

    goto :goto_2

    :cond_3
    const-string v7, "computable"

    aput-object v7, v3, v5

    :goto_2
    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_4

    aput-object v4, v3, v6

    goto :goto_3

    :cond_4
    const-string v4, "renderDebugInformation"

    aput-object v4, v3, v6

    goto :goto_3

    :cond_5
    const-string v4, "recursionDetected"

    aput-object v4, v3, v6

    :goto_3
    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    const-string v4, "<init>"

    aput-object v4, v3, v1

    :cond_6
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0
.end method


# virtual methods
.method protected a(Z)Lkotlin/reflect/jvm/internal/impl/f/f$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/reflect/jvm/internal/impl/f/f$l<",
            "TT;>;"
        }
    .end annotation

    .line 442
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    const-string v0, "in a lazy value"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/f/f$l;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f$e;->a(I)V

    :cond_0
    return-object p1
.end method

.method public final a()Z
    .locals 2

    .line 373
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/f/f$k;->NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/f/f$k;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->c:Ljava/lang/Object;

    .line 384
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/f/f$k;

    if-nez v1, :cond_0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 386
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/f/f;->b:Lkotlin/reflect/jvm/internal/impl/f/k;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/k;->a()V

    .line 388
    :try_start_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->c:Ljava/lang/Object;

    .line 389
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/f/f$k;

    if-nez v1, :cond_1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 432
    :goto_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/f/f;->b:Lkotlin/reflect/jvm/internal/impl/f/k;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/f/k;->c()V

    return-object v0

    .line 391
    :cond_1
    :try_start_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/f/f$k;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    if-ne v0, v1, :cond_2

    .line 392
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/f/f$k;->RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->c:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 393
    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/f/f$e;->a(Z)Lkotlin/reflect/jvm/internal/impl/f/f$l;

    move-result-object v1

    .line 1344
    iget-boolean v2, v1, Lkotlin/reflect/jvm/internal/impl/f/f$l;->a:Z

    if-nez v2, :cond_2

    .line 395
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/f/f$l;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_2
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/f/f$k;->RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/f/f$e;->a(Z)Lkotlin/reflect/jvm/internal/impl/f/f$l;

    move-result-object v0

    .line 2344
    iget-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/f/f$l;->a:Z

    if-nez v1, :cond_3

    .line 402
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/f/f$l;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 406
    :cond_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/f/f$k;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 408
    :try_start_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 412
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/f/f$e;->b(Ljava/lang/Object;)V

    .line 414
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->c:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 418
    :try_start_3
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/c;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 424
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->c:Ljava/lang/Object;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/f/f$k;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    if-ne v1, v2, :cond_4

    .line 426
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->c:Ljava/lang/Object;

    .line 428
    :cond_4
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/f/f;->a(Lkotlin/reflect/jvm/internal/impl/f/f;)Lkotlin/reflect/jvm/internal/impl/f/f$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/reflect/jvm/internal/impl/f/f$c;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 419
    :cond_5
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/f/f$k;->NOT_COMPUTED:Lkotlin/reflect/jvm/internal/impl/f/f$k;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->c:Ljava/lang/Object;

    .line 421
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 432
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$e;->a:Lkotlin/reflect/jvm/internal/impl/f/f;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/f/f;->b:Lkotlin/reflect/jvm/internal/impl/f/k;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/f/k;->c()V

    throw v0
.end method
