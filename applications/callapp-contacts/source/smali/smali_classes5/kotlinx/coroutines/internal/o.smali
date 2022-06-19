.class public final Lkotlinx/coroutines/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/MainDispatcherLoader;",
        "",
        "()V",
        "FAST_SERVICE_LOADER_ENABLED",
        "",
        "dispatcher",
        "Lkotlinx/coroutines/MainCoroutineDispatcher;",
        "loadMainDispatcher",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/ce;

.field public static final b:Lkotlinx/coroutines/internal/o;

.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lkotlinx/coroutines/internal/o;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/o;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/o;->b:Lkotlinx/coroutines/internal/o;

    const-string v0, "kotlinx.coroutines.fast.service.loader"

    const/4 v1, 0x1

    .line 1001
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 19
    sput-boolean v0, Lkotlinx/coroutines/internal/o;->c:Z

    .line 22
    invoke-static {}, Lkotlinx/coroutines/internal/o;->a()Lkotlinx/coroutines/ce;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/o;->a:Lkotlinx/coroutines/ce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lkotlinx/coroutines/ce;
    .locals 7

    .line 26
    :try_start_0
    sget-boolean v0, Lkotlinx/coroutines/internal/o;->c:Z

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lkotlinx/coroutines/internal/h;->a:Lkotlinx/coroutines/internal/h;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/h;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_0
    const-class v0, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 34
    const-class v1, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/g/k;->a(Ljava/util/Iterator;)Lkotlin/g/h;

    move-result-object v0

    invoke-static {v0}, Lkotlin/g/k;->f(Lkotlin/g/h;)Ljava/util/List;

    move-result-object v0

    .line 38
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 130
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    .line 132
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 134
    :cond_2
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 38
    invoke-interface {v4}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v4

    .line 136
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 137
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 38
    invoke-interface {v6}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v6

    if-ge v4, v6, :cond_4

    move-object v2, v5

    move v4, v6

    .line 142
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 143
    :goto_1
    check-cast v2, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    if-eqz v2, :cond_5

    .line 38
    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/p;->a(Lkotlinx/coroutines/internal/MainDispatcherFactory;Ljava/util/List;)Lkotlinx/coroutines/ce;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x3

    .line 39
    invoke-static {v3, v0}, Lkotlinx/coroutines/internal/p;->a(Ljava/lang/Throwable;I)Lkotlinx/coroutines/internal/q;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ce;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v1, 0x2

    .line 42
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/p;->a(Ljava/lang/Throwable;I)Lkotlinx/coroutines/internal/q;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ce;

    :cond_6
    :goto_2
    return-object v0
.end method
