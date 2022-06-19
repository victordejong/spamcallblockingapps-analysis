.class public final Lscala/concurrent/impl/Promise$;
.super Ljava/lang/Object;
.source "Promise.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/impl/Promise$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/impl/Promise$;

    invoke-direct {v0}, Lscala/concurrent/impl/Promise$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/impl/Promise$;->MODULE$:Lscala/concurrent/impl/Promise$;

    return-void
.end method

.method private resolver(Ljava/lang/Throwable;)Lscala/util/Try;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lscala/util/Try<",
            "TT;>;"
        }
    .end annotation

    .line 51
    instance-of v0, p1, Lscala/runtime/NonLocalReturnControl;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/runtime/NonLocalReturnControl;

    new-instance v0, Lscala/util/Success;

    invoke-virtual {p1}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/util/Success;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_0
    instance-of v0, p1, Lscala/util/control/ControlThrowable;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/util/control/ControlThrowable;

    new-instance v0, Lscala/util/Failure;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "Boxed ControlThrowable"

    invoke-direct {v1, v2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    :cond_1
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/InterruptedException;

    new-instance v0, Lscala/util/Failure;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    const-string v2, "Boxed InterruptedException"

    invoke-direct {v1, v2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    :cond_2
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Error;

    new-instance v0, Lscala/util/Failure;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    const-string v2, "Boxed Error"

    invoke-direct {v1, v2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, Lscala/util/Failure;

    invoke-direct {v0, p1}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public scala$concurrent$impl$Promise$$resolveTry(Lscala/util/Try;)Lscala/util/Try;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Try<",
            "TT;>;)",
            "Lscala/util/Try<",
            "TT;>;"
        }
    .end annotation

    .line 46
    instance-of v0, p1, Lscala/util/Failure;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/util/Failure;

    .line 47
    invoke-virtual {p1}, Lscala/util/Failure;->exception()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/concurrent/impl/Promise$;->resolver(Ljava/lang/Throwable;)Lscala/util/Try;

    move-result-object p1

    :cond_0
    return-object p1
.end method
