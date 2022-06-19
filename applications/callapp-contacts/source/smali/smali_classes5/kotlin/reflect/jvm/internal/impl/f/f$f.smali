.class abstract Lkotlin/reflect/jvm/internal/impl/f/f$f;
.super Lkotlin/reflect/jvm/internal/impl/f/f$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/impl/f/f$e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile a:Lkotlin/reflect/jvm/internal/impl/f/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/l<",
            "TT;>;"
        }
    .end annotation
.end field


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

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f$f;->a(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/f/f$f;->a(I)V

    .line 471
    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/f$e;-><init>(Lkotlin/reflect/jvm/internal/impl/f/f;Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    .line 464
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$f;->a:Lkotlin/reflect/jvm/internal/impl/f/l;

    return-void
.end method

.method private static synthetic a(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "storageManager"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "computable"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "<init>"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 489
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/f/l;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/f/l;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$f;->a:Lkotlin/reflect/jvm/internal/impl/f/l;

    const/4 v0, 0x0

    .line 491
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/f/f$f;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$f;->a:Lkotlin/reflect/jvm/internal/impl/f/l;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$f;->a:Lkotlin/reflect/jvm/internal/impl/f/l;

    throw p1
.end method

.method public invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$f;->a:Lkotlin/reflect/jvm/internal/impl/f/l;

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/f/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1033
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/f/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/f/l;->a:Ljava/lang/Object;

    return-object v0

    .line 1033
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No value in this thread (hasValue should be checked before)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_1
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/f/f$e;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
