.class public final Lscala/concurrent/Promise$;
.super Ljava/lang/Object;
.source "Promise.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/Promise$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/Promise$;

    invoke-direct {v0}, Lscala/concurrent/Promise$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    return-void
.end method


# virtual methods
.method public apply()Lscala/concurrent/Promise;
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

    .line 121
    new-instance v0, Lscala/concurrent/impl/Promise$DefaultPromise;

    invoke-direct {v0}, Lscala/concurrent/impl/Promise$DefaultPromise;-><init>()V

    return-object v0
.end method

.method public failed(Ljava/lang/Throwable;)Lscala/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lscala/concurrent/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Lscala/util/Failure;

    invoke-direct {v0, p1}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lscala/concurrent/Promise$;->fromTry(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public fromTry(Lscala/util/Try;)Lscala/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Try<",
            "TT;>;)",
            "Lscala/concurrent/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 142
    new-instance v0, Lscala/concurrent/impl/Promise$KeptPromise;

    invoke-direct {v0, p1}, Lscala/concurrent/impl/Promise$KeptPromise;-><init>(Lscala/util/Try;)V

    return-object v0
.end method

.method public successful(Ljava/lang/Object;)Lscala/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lscala/concurrent/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 135
    new-instance v0, Lscala/util/Success;

    invoke-direct {v0, p1}, Lscala/util/Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lscala/concurrent/Promise$;->fromTry(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method
