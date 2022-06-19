.class public final Lscala/sys/ShutdownHookThread$;
.super Ljava/lang/Object;
.source "ShutdownHookThread.scala"


# static fields
.field public static final MODULE$:Lscala/sys/ShutdownHookThread$;


# instance fields
.field private hookNameCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/ShutdownHookThread$;

    invoke-direct {v0}, Lscala/sys/ShutdownHookThread$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/ShutdownHookThread$;->MODULE$:Lscala/sys/ShutdownHookThread$;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lscala/sys/ShutdownHookThread$;->hookNameCount:I

    return-void
.end method

.method private hookNameCount()I
    .locals 1

    .line 24
    iget v0, p0, Lscala/sys/ShutdownHookThread$;->hookNameCount:I

    return v0
.end method

.method private hookNameCount_$eq(I)V
    .locals 0

    .line 24
    iput p1, p0, Lscala/sys/ShutdownHookThread$;->hookNameCount:I

    return-void
.end method


# virtual methods
.method public apply(Lscala/Function0;)Lscala/sys/ShutdownHookThread;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/sys/ShutdownHookThread;"
        }
    .end annotation

    .line 33
    new-instance v0, Lscala/sys/ShutdownHookThread$$anon$1;

    invoke-direct {v0, p1}, Lscala/sys/ShutdownHookThread$$anon$1;-><init>(Lscala/Function0;)V

    .line 36
    sget-object p1, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    invoke-virtual {p1}, Lscala/sys/package$;->runtime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-object v0
.end method

.method public declared-synchronized scala$sys$ShutdownHookThread$$hookName()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-direct {p0}, Lscala/sys/ShutdownHookThread$;->hookNameCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/sys/ShutdownHookThread$;->hookNameCount_$eq(I)V

    .line 27
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "shutdownHook"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lscala/sys/ShutdownHookThread$;->hookNameCount()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
