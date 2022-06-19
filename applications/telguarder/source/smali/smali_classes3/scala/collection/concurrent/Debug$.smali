.class public final Lscala/collection/concurrent/Debug$;
.super Ljava/lang/Object;
.source "TrieMap.scala"


# static fields
.field public static final MODULE$:Lscala/collection/concurrent/Debug$;


# instance fields
.field private volatile bitmap$0:Z

.field private logbuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/concurrent/Debug$;

    invoke-direct {v0}, Lscala/collection/concurrent/Debug$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/concurrent/Debug$;->MODULE$:Lscala/collection/concurrent/Debug$;

    return-void
.end method

.method private logbuffer$lzycompute()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .line 1108
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/concurrent/Debug$;->bitmap$0:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lscala/collection/concurrent/Debug$;->logbuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/concurrent/Debug$;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/concurrent/Debug$;->logbuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1118
    invoke-virtual {p0}, Lscala/collection/concurrent/Debug$;->logbuffer()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public flush()V
    .locals 2

    .line 1113
    sget-object v0, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    invoke-virtual {p0}, Lscala/collection/concurrent/Debug$;->logbuffer()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/JavaConversions$;->asScalaIterator(Ljava/util/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/concurrent/Debug$$anonfun$flush$1;

    invoke-direct {v1}, Lscala/collection/concurrent/Debug$$anonfun$flush$1;-><init>()V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    .line 1114
    invoke-virtual {p0}, Lscala/collection/concurrent/Debug$;->logbuffer()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public log(Ljava/lang/Object;)Z
    .locals 1

    .line 1110
    invoke-virtual {p0}, Lscala/collection/concurrent/Debug$;->logbuffer()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public logbuffer()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1108
    iget-boolean v0, p0, Lscala/collection/concurrent/Debug$;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/concurrent/Debug$;->logbuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/concurrent/Debug$;->logbuffer$lzycompute()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    :goto_0
    return-object v0
.end method
