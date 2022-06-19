.class public final Lscala/concurrent/impl/ExecutionContextImpl$;
.super Ljava/lang/Object;
.source "ExecutionContextImpl.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/impl/ExecutionContextImpl$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/impl/ExecutionContextImpl$;

    invoke-direct {v0}, Lscala/concurrent/impl/ExecutionContextImpl$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/impl/ExecutionContextImpl$;->MODULE$:Lscala/concurrent/impl/ExecutionContextImpl$;

    return-void
.end method


# virtual methods
.method public fromExecutor(Ljava/util/concurrent/Executor;Lscala/Function1;)Lscala/concurrent/impl/ExecutionContextImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/concurrent/impl/ExecutionContextImpl;"
        }
    .end annotation

    .line 132
    new-instance v0, Lscala/concurrent/impl/ExecutionContextImpl;

    invoke-direct {v0, p1, p2}, Lscala/concurrent/impl/ExecutionContextImpl;-><init>(Ljava/util/concurrent/Executor;Lscala/Function1;)V

    return-object v0
.end method

.method public fromExecutor$default$2()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 132
    sget-object v0, Lscala/concurrent/ExecutionContext$;->MODULE$:Lscala/concurrent/ExecutionContext$;

    invoke-virtual {v0}, Lscala/concurrent/ExecutionContext$;->defaultReporter()Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public fromExecutorService(Ljava/util/concurrent/ExecutorService;Lscala/Function1;)Lscala/concurrent/impl/ExecutionContextImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/concurrent/impl/ExecutionContextImpl;"
        }
    .end annotation

    .line 134
    new-instance v0, Lscala/concurrent/impl/ExecutionContextImpl$$anon$1;

    invoke-direct {v0, p1, p2}, Lscala/concurrent/impl/ExecutionContextImpl$$anon$1;-><init>(Ljava/util/concurrent/ExecutorService;Lscala/Function1;)V

    return-object v0
.end method

.method public fromExecutorService$default$2()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 133
    sget-object v0, Lscala/concurrent/ExecutionContext$;->MODULE$:Lscala/concurrent/ExecutionContext$;

    invoke-virtual {v0}, Lscala/concurrent/ExecutionContext$;->defaultReporter()Lscala/Function1;

    move-result-object v0

    return-object v0
.end method
