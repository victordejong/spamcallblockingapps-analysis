.class public final Lscala/concurrent/JavaConversions$;
.super Ljava/lang/Object;
.source "JavaConversions.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/JavaConversions$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/JavaConversions$;

    invoke-direct {v0}, Lscala/concurrent/JavaConversions$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/JavaConversions$;->MODULE$:Lscala/concurrent/JavaConversions$;

    return-void
.end method


# virtual methods
.method public asExecutionContext(Ljava/util/concurrent/Executor;)Lscala/concurrent/ExecutionContextExecutor;
    .locals 1

    .line 31
    sget-object v0, Lscala/concurrent/ExecutionContext$;->MODULE$:Lscala/concurrent/ExecutionContext$;

    invoke-virtual {v0, p1}, Lscala/concurrent/ExecutionContext$;->fromExecutor(Ljava/util/concurrent/Executor;)Lscala/concurrent/ExecutionContextExecutor;

    move-result-object p1

    return-object p1
.end method

.method public asExecutionContext(Ljava/util/concurrent/ExecutorService;)Lscala/concurrent/ExecutionContextExecutorService;
    .locals 1

    .line 25
    sget-object v0, Lscala/concurrent/ExecutionContext$;->MODULE$:Lscala/concurrent/ExecutionContext$;

    invoke-virtual {v0, p1}, Lscala/concurrent/ExecutionContext$;->fromExecutorService(Ljava/util/concurrent/ExecutorService;)Lscala/concurrent/ExecutionContextExecutorService;

    move-result-object p1

    return-object p1
.end method
