.class public final Lscala/sys/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/sys/package$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/package$;

    invoke-direct {v0}, Lscala/sys/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    return-void
.end method


# virtual methods
.method public addShutdownHook(Lscala/Function0;)Lscala/sys/ShutdownHookThread;
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

    .line 74
    sget-object v0, Lscala/sys/ShutdownHookThread$;->MODULE$:Lscala/sys/ShutdownHookThread$;

    invoke-virtual {v0, p1}, Lscala/sys/ShutdownHookThread$;->apply(Lscala/Function0;)Lscala/sys/ShutdownHookThread;

    move-result-object p1

    return-object p1
.end method

.method public allThreads()Lscala/collection/IndexedSeq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v0

    .line 82
    new-array v0, v0, [Ljava/lang/Thread;

    .line 83
    invoke-static {v0}, Ljava/lang/Thread;->enumerate([Ljava/lang/Thread;)I

    move-result v1

    .line 85
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    invoke-interface {v0, v1}, Lscala/collection/mutable/ArrayOps;->take(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public env()Lscala/collection/immutable/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lscala/collection/immutable/Map$;->MODULE$:Lscala/collection/immutable/Map$;

    sget-object v1, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/JavaConverters$;->mapAsScalaMapConverter(Ljava/util/Map;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/convert/Decorators$AsScala;->asScala()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/MapLike;

    invoke-interface {v1}, Lscala/collection/MapLike;->toSeq()Lscala/collection/Seq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Map$;->apply(Lscala/collection/Seq;)Lscala/collection/GenMap;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Map;

    return-object v0
.end method

.method public error(Ljava/lang/String;)Lscala/runtime/Nothing$;
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exit()Lscala/runtime/Nothing$;
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lscala/sys/package$;->exit(I)Lscala/runtime/Nothing$;

    move-result-object v0

    return-object v0
.end method

.method public exit(I)Lscala/runtime/Nothing$;
    .locals 0

    .line 40
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 41
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    throw p1
.end method

.method public props()Lscala/sys/SystemProperties;
    .locals 1

    .line 55
    new-instance v0, Lscala/sys/SystemProperties;

    invoke-direct {v0}, Lscala/sys/SystemProperties;-><init>()V

    return-object v0
.end method

.method public runtime()Ljava/lang/Runtime;
    .locals 1

    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    return-object v0
.end method
