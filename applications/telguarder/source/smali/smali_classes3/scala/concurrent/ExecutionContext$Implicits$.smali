.class public Lscala/concurrent/ExecutionContext$Implicits$;
.super Ljava/lang/Object;
.source "ExecutionContext.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/ExecutionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Implicits$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/concurrent/ExecutionContext$Implicits$;


# instance fields
.field private volatile bitmap$0:Z

.field private global:Lscala/concurrent/ExecutionContextExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/ExecutionContext$Implicits$;

    invoke-direct {v0}, Lscala/concurrent/ExecutionContext$Implicits$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/ExecutionContext$Implicits$;->MODULE$:Lscala/concurrent/ExecutionContext$Implicits$;

    return-void
.end method

.method private global$lzycompute()Lscala/concurrent/ExecutionContextExecutor;
    .locals 3

    .line 130
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/concurrent/ExecutionContext$Implicits$;->bitmap$0:Z

    if-nez v0, :cond_0

    sget-object v0, Lscala/concurrent/impl/ExecutionContextImpl$;->MODULE$:Lscala/concurrent/impl/ExecutionContextImpl$;

    sget-object v0, Lscala/concurrent/impl/ExecutionContextImpl$;->MODULE$:Lscala/concurrent/impl/ExecutionContextImpl$;

    sget-object v0, Lscala/concurrent/ExecutionContext$;->MODULE$:Lscala/concurrent/ExecutionContext$;

    new-instance v0, Lscala/concurrent/ExecutionContext$$anonfun$defaultReporter$1;

    invoke-direct {v0}, Lscala/concurrent/ExecutionContext$$anonfun$defaultReporter$1;-><init>()V

    new-instance v1, Lscala/concurrent/impl/ExecutionContextImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lscala/concurrent/impl/ExecutionContextImpl;-><init>(Ljava/util/concurrent/Executor;Lscala/Function1;)V

    iput-object v1, p0, Lscala/concurrent/ExecutionContext$Implicits$;->global:Lscala/concurrent/ExecutionContextExecutor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/concurrent/ExecutionContext$Implicits$;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/concurrent/ExecutionContext$Implicits$;->global:Lscala/concurrent/ExecutionContextExecutor;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public global()Lscala/concurrent/ExecutionContextExecutor;
    .locals 1

    .line 130
    iget-boolean v0, p0, Lscala/concurrent/ExecutionContext$Implicits$;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/concurrent/ExecutionContext$Implicits$;->global:Lscala/concurrent/ExecutionContextExecutor;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/concurrent/ExecutionContext$Implicits$;->global$lzycompute()Lscala/concurrent/ExecutionContextExecutor;

    move-result-object v0

    :goto_0
    return-object v0
.end method
