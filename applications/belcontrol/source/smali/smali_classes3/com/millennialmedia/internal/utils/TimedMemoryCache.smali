.class public Lcom/millennialmedia/internal/utils/TimedMemoryCache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CACHE_TIMEOUT:J = 0xea60L

.field private static final FORCE_REMOVE_TIME:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "TimedMemoryCache"

.field private static cleanerDelay:J = 0x2710L


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private cleanerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastCacheId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->lastCacheId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cleanerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100()J
    .locals 2

    sget-wide v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cleanerDelay:J

    return-wide v0
.end method

.method public static synthetic access$200(Lcom/millennialmedia/internal/utils/TimedMemoryCache;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->runCleaner(J)V

    return-void
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/utils/TimedMemoryCache;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/millennialmedia/internal/utils/TimedMemoryCache;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cleanerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private getCachedItem(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->removeItemIfExpired(Ljava/lang/String;Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method private removeItemIfExpired(Ljava/lang/String;Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;J)Z
    .locals 3

    iget-wide v0, p2, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;->itemTimeout:J

    cmp-long v2, p3, v0

    if-gtz v2, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed CacheItem\n\t:Checked time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "\n\tID: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n\tItem: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p3, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;->cachedObject:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->onExpired(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private runCleaner(J)V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to remove CacheItem with ID <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> but item was null"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, v1, p1, p2}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->removeItemIfExpired(Ljava/lang/String;Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;J)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static setCleanerDelay(J)V
    .locals 0

    sput-wide p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cleanerDelay:J

    return-void
.end method

.method private startCleaner()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cleanerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    const-string v1, "Cleaner already running"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache$1;-><init>(Lcom/millennialmedia/internal/utils/TimedMemoryCache;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TO;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    const-string p2, "Nothing to cache, object provided is null"

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->lastCacheId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;->cachedObject:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->onOverwritten(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;

    invoke-direct {v0, p2, p3}, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;-><init>(Ljava/lang/Object;Ljava/lang/Long;)V

    iget-object p2, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add CacheItem\n\tID: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tItem: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->startCleaner()V

    return-object p1
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public expireAll()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->runCleaner(J)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TO;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->getCachedItem(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No item in cache for ID <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;->cachedObject:Ljava/lang/Object;

    return-object p1
.end method

.method public onExpired(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TO;)V"
        }
    .end annotation

    return-void
.end method

.method public onOverwritten(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TO;)V"
        }
    .end annotation

    return-void
.end method
