.class public final Lkotlinx/coroutines/internal/f;
.super Ljava/lang/Object;
.source "ExceptionsConstuctor.kt"


# static fields
.field private static final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lkotlin/e/a/b<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 13
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/f;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    const-string v0, "exception"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lkotlinx/coroutines/internal/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 18
    :try_start_0
    sget-object v1, Lkotlinx/coroutines/internal/f;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/e/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v1, p0}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 27
    move-object v1, v0

    check-cast v1, Lkotlin/e/a/b;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string v3, "exception.javaClass.constructors"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v3, Lkotlinx/coroutines/internal/f$a;

    invoke-direct {v3}, Lkotlinx/coroutines/internal/f$a;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v2, v3}, Lkotlin/a/a;->c([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    const-string v5, "constructor"

    .line 30
    invoke-static {v3, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 31
    array-length v6, v5

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_2

    aget-object v6, v5, v4

    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v5, v8

    const-class v7, Ljava/lang/Throwable;

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 32
    new-instance v1, Lkotlinx/coroutines/internal/f$b;

    invoke-direct {v1, v3}, Lkotlinx/coroutines/internal/f$b;-><init>(Ljava/lang/reflect/Constructor;)V

    check-cast v1, Lkotlin/e/a/b;

    goto :goto_1

    .line 34
    :cond_2
    array-length v6, v5

    if-ne v6, v8, :cond_3

    aget-object v6, v5, v4

    const-class v7, Ljava/lang/Throwable;

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 35
    new-instance v1, Lkotlinx/coroutines/internal/f$c;

    invoke-direct {v1, v3}, Lkotlinx/coroutines/internal/f$c;-><init>(Ljava/lang/reflect/Constructor;)V

    check-cast v1, Lkotlin/e/a/b;

    goto :goto_1

    :cond_3
    const-string v6, "parameters"

    .line 37
    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v8, v4

    :goto_0
    if-eqz v8, :cond_1

    .line 38
    new-instance v1, Lkotlinx/coroutines/internal/f$d;

    invoke-direct {v1, v3}, Lkotlinx/coroutines/internal/f$d;-><init>(Ljava/lang/reflect/Constructor;)V

    check-cast v1, Lkotlin/e/a/b;

    .line 43
    :cond_5
    :goto_1
    sget-object v2, Lkotlinx/coroutines/internal/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v5

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_2
    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_7

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_1
    sget-object v6, Lkotlinx/coroutines/internal/f;->b:Ljava/util/WeakHashMap;

    check-cast v6, Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eqz v1, :cond_8

    move-object v8, v1

    goto :goto_4

    :cond_8
    sget-object v8, Lkotlinx/coroutines/internal/f$e;->a:Lkotlinx/coroutines/internal/f$e;

    check-cast v8, Lkotlin/e/a/b;

    :goto_4
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lkotlin/o;->a:Lkotlin/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-ge v4, v5, :cond_9

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    if-eqz v1, :cond_a

    .line 44
    invoke-interface {v1, p0}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    :cond_a
    return-object v0

    :catchall_0
    move-exception p0

    :goto_6
    if-ge v4, v5, :cond_b

    .line 43
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :catchall_1
    move-exception p0

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p0
.end method
