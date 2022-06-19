.class public final Lscala/concurrent/ExecutionContext$;
.super Ljava/lang/Object;
.source "ExecutionContext.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/ExecutionContext$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/ExecutionContext$;

    invoke-direct {v0}, Lscala/concurrent/ExecutionContext$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/ExecutionContext$;->MODULE$:Lscala/concurrent/ExecutionContext$;

    return-void
.end method


# virtual methods
.method public defaultReporter()Lscala/Function1;
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

    .line 177
    new-instance v0, Lscala/concurrent/ExecutionContext$$anonfun$defaultReporter$1;

    invoke-direct {v0}, Lscala/concurrent/ExecutionContext$$anonfun$defaultReporter$1;-><init>()V

    return-object v0
.end method

.method public fromExecutor(Ljava/util/concurrent/Executor;)Lscala/concurrent/ExecutionContextExecutor;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lscala/concurrent/ExecutionContext$;->defaultReporter()Lscala/Function1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lscala/concurrent/ExecutionContext$;->fromExecutor(Ljava/util/concurrent/Executor;Lscala/Function1;)Lscala/concurrent/ExecutionContextExecutor;

    move-result-object p1

    return-object p1
.end method

.method public fromExecutor(Ljava/util/concurrent/Executor;Lscala/Function1;)Lscala/concurrent/ExecutionContextExecutor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/concurrent/ExecutionContextExecutor;"
        }
    .end annotation

    .line 164
    sget-object v0, Lscala/concurrent/impl/ExecutionContextImpl$;->MODULE$:Lscala/concurrent/impl/ExecutionContextImpl$;

    new-instance v0, Lscala/concurrent/impl/ExecutionContextImpl;

    invoke-direct {v0, p1, p2}, Lscala/concurrent/impl/ExecutionContextImpl;-><init>(Ljava/util/concurrent/Executor;Lscala/Function1;)V

    return-object v0
.end method

.method public fromExecutorService(Ljava/util/concurrent/ExecutorService;)Lscala/concurrent/ExecutionContextExecutorService;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lscala/concurrent/ExecutionContext$;->defaultReporter()Lscala/Function1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lscala/concurrent/ExecutionContext$;->fromExecutorService(Ljava/util/concurrent/ExecutorService;Lscala/Function1;)Lscala/concurrent/ExecutionContextExecutorService;

    move-result-object p1

    return-object p1
.end method

.method public fromExecutorService(Ljava/util/concurrent/ExecutorService;Lscala/Function1;)Lscala/concurrent/ExecutionContextExecutorService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/concurrent/ExecutionContextExecutorService;"
        }
    .end annotation

    .line 140
    sget-object v0, Lscala/concurrent/impl/ExecutionContextImpl$;->MODULE$:Lscala/concurrent/impl/ExecutionContextImpl$;

    new-instance v0, Lscala/concurrent/impl/ExecutionContextImpl$$anon$1;

    invoke-direct {v0, p1, p2}, Lscala/concurrent/impl/ExecutionContextImpl$$anon$1;-><init>(Ljava/util/concurrent/ExecutorService;Lscala/Function1;)V

    check-cast v0, Lscala/concurrent/ExecutionContextExecutorService;

    return-object v0
.end method

.method public global()Lscala/concurrent/ExecutionContextExecutor;
    .locals 1

    .line 119
    sget-object v0, Lscala/concurrent/ExecutionContext$Implicits$;->MODULE$:Lscala/concurrent/ExecutionContext$Implicits$;

    invoke-virtual {v0}, Lscala/concurrent/ExecutionContext$Implicits$;->global()Lscala/concurrent/ExecutionContextExecutor;

    move-result-object v0

    return-object v0
.end method
