.class public final Lscala/concurrent/Await$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/Await$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/Await$;

    invoke-direct {v0}, Lscala/concurrent/Await$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/Await$;->MODULE$:Lscala/concurrent/Await$;

    return-void
.end method


# virtual methods
.method public ready(Lscala/concurrent/Awaitable;Lscala/concurrent/duration/Duration;)Lscala/concurrent/Awaitable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/concurrent/Awaitable<",
            "TT;>;",
            "Lscala/concurrent/duration/Duration;",
            ")",
            "Lscala/concurrent/Awaitable<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 169
    sget-object v0, Lscala/concurrent/package$;->MODULE$:Lscala/concurrent/package$;

    new-instance v0, Lscala/concurrent/Await$$anonfun$ready$1;

    invoke-direct {v0, p1, p2}, Lscala/concurrent/Await$$anonfun$ready$1;-><init>(Lscala/concurrent/Awaitable;Lscala/concurrent/duration/Duration;)V

    sget-object p1, Lscala/concurrent/BlockContext$;->MODULE$:Lscala/concurrent/BlockContext$;

    invoke-virtual {p1}, Lscala/concurrent/BlockContext$;->current()Lscala/concurrent/BlockContext;

    move-result-object p1

    sget-object p2, Lscala/concurrent/AwaitPermission$;->MODULE$:Lscala/concurrent/AwaitPermission$;

    invoke-interface {p1, v0, p2}, Lscala/concurrent/BlockContext;->blockOn(Lscala/Function0;Lscala/concurrent/CanAwait;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/concurrent/Awaitable;

    return-object p1
.end method

.method public result(Lscala/concurrent/Awaitable;Lscala/concurrent/duration/Duration;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/concurrent/Awaitable<",
            "TT;>;",
            "Lscala/concurrent/duration/Duration;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    sget-object v0, Lscala/concurrent/package$;->MODULE$:Lscala/concurrent/package$;

    new-instance v0, Lscala/concurrent/Await$$anonfun$result$1;

    invoke-direct {v0, p1, p2}, Lscala/concurrent/Await$$anonfun$result$1;-><init>(Lscala/concurrent/Awaitable;Lscala/concurrent/duration/Duration;)V

    sget-object p1, Lscala/concurrent/BlockContext$;->MODULE$:Lscala/concurrent/BlockContext$;

    invoke-virtual {p1}, Lscala/concurrent/BlockContext$;->current()Lscala/concurrent/BlockContext;

    move-result-object p1

    sget-object p2, Lscala/concurrent/AwaitPermission$;->MODULE$:Lscala/concurrent/AwaitPermission$;

    invoke-interface {p1, v0, p2}, Lscala/concurrent/BlockContext;->blockOn(Lscala/Function0;Lscala/concurrent/CanAwait;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
