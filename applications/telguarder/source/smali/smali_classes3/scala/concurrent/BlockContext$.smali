.class public final Lscala/concurrent/BlockContext$;
.super Ljava/lang/Object;
.source "BlockContext.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/BlockContext$;


# instance fields
.field private final contextLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lscala/concurrent/BlockContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/BlockContext$;

    invoke-direct {v0}, Lscala/concurrent/BlockContext$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/BlockContext$;->MODULE$:Lscala/concurrent/BlockContext$;

    .line 56
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lscala/concurrent/BlockContext$;->contextLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private contextLocal()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Lscala/concurrent/BlockContext;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lscala/concurrent/BlockContext$;->contextLocal:Ljava/lang/ThreadLocal;

    return-object v0
.end method


# virtual methods
.method public current()Lscala/concurrent/BlockContext;
    .locals 2

    .line 59
    invoke-direct {p0}, Lscala/concurrent/BlockContext$;->contextLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/concurrent/BlockContext;

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 61
    instance-of v1, v0, Lscala/concurrent/BlockContext;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/concurrent/BlockContext;

    goto :goto_0

    .line 62
    :cond_0
    sget-object v0, Lscala/concurrent/BlockContext$DefaultBlockContext$;->MODULE$:Lscala/concurrent/BlockContext$DefaultBlockContext$;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public withBlockContext(Lscala/concurrent/BlockContext;Lscala/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/concurrent/BlockContext;",
            "Lscala/Function0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lscala/concurrent/BlockContext$;->contextLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/concurrent/BlockContext;

    .line 71
    :try_start_0
    invoke-direct {p0}, Lscala/concurrent/BlockContext$;->contextLocal()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 72
    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-direct {p0}, Lscala/concurrent/BlockContext$;->contextLocal()Ljava/lang/ThreadLocal;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lscala/concurrent/BlockContext$;->contextLocal()Ljava/lang/ThreadLocal;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p1
.end method
