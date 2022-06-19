.class public final Lscala/concurrent/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/package$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/package$;

    invoke-direct {v0}, Lscala/concurrent/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/package$;->MODULE$:Lscala/concurrent/package$;

    return-void
.end method


# virtual methods
.method public blocking(Lscala/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    sget-object v0, Lscala/concurrent/BlockContext$;->MODULE$:Lscala/concurrent/BlockContext$;

    invoke-virtual {v0}, Lscala/concurrent/BlockContext$;->current()Lscala/concurrent/BlockContext;

    move-result-object v0

    sget-object v1, Lscala/concurrent/AwaitPermission$;->MODULE$:Lscala/concurrent/AwaitPermission$;

    invoke-interface {v0, p1, v1}, Lscala/concurrent/BlockContext;->blockOn(Lscala/Function0;Lscala/concurrent/CanAwait;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public future(Lscala/Function0;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 101
    sget-object v0, Lscala/concurrent/Future$;->MODULE$:Lscala/concurrent/Future$;

    sget-object v0, Lscala/concurrent/impl/Future$;->MODULE$:Lscala/concurrent/impl/Future$;

    new-instance v0, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;

    invoke-direct {v0, p1}, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;-><init>(Lscala/Function0;)V

    invoke-interface {p2}, Lscala/concurrent/ExecutionContext;->prepare()Lscala/concurrent/ExecutionContext;

    move-result-object p1

    invoke-interface {p1, v0}, Lscala/concurrent/ExecutionContext;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;->promise()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object p1

    invoke-virtual {p1}, Lscala/concurrent/impl/Promise$DefaultPromise;->future()Lscala/concurrent/impl/Promise;

    move-result-object p1

    return-object p1
.end method

.method public promise()Lscala/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/concurrent/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 110
    sget-object v0, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v0}, Lscala/concurrent/Promise$;->apply()Lscala/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method
