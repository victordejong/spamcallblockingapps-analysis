.class public final Lscala/concurrent/impl/Future$;
.super Ljava/lang/Object;
.source "Future.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/impl/Future$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/impl/Future$;

    invoke-direct {v0}, Lscala/concurrent/impl/Future$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/impl/Future$;->MODULE$:Lscala/concurrent/impl/Future$;

    return-void
.end method


# virtual methods
.method public apply(Lscala/Function0;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
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

    .line 30
    new-instance v0, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;

    invoke-direct {v0, p1}, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;-><init>(Lscala/Function0;)V

    .line 31
    invoke-interface {p2}, Lscala/concurrent/ExecutionContext;->prepare()Lscala/concurrent/ExecutionContext;

    move-result-object p1

    invoke-interface {p1, v0}, Lscala/concurrent/ExecutionContext;->execute(Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {v0}, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;->promise()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object p1

    invoke-virtual {p1}, Lscala/concurrent/impl/Promise$DefaultPromise;->future()Lscala/concurrent/impl/Promise;

    move-result-object p1

    return-object p1
.end method
