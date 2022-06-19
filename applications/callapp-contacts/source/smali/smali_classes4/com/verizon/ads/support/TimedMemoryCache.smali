.class public Lcom/verizon/ads/support/TimedMemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/support/TimedMemoryCache$CacheItem;
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
.field private static final a:Lcom/verizon/ads/Logger;

.field private static b:J


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/verizon/ads/support/TimedMemoryCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-class v0, Lcom/verizon/ads/support/TimedMemoryCache;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/TimedMemoryCache;->a:Lcom/verizon/ads/Logger;

    const-wide/16 v0, 0x2710

    .line 36
    sput-wide v0, Lcom/verizon/ads/support/TimedMemoryCache;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/support/TimedMemoryCache;->c:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/verizon/ads/support/TimedMemoryCache;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/support/TimedMemoryCache;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 27
    sget-object v0, Lcom/verizon/ads/support/TimedMemoryCache;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic a(Lcom/verizon/ads/support/TimedMemoryCache;)Ljava/util/Map;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/verizon/ads/support/TimedMemoryCache;->c:Ljava/util/Map;

    return-object p0
.end method

.method private a(J)V
    .locals 5

    .line 244
    iget-object v0, p0, Lcom/verizon/ads/support/TimedMemoryCache;->c:Ljava/util/Map;

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

    .line 245
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/support/TimedMemoryCache$CacheItem;

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 248
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    sget-object v1, Lcom/verizon/ads/support/TimedMemoryCache;->a:Lcom/verizon/ads/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attempted to remove CacheItem with ID <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> but item was null"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-direct {p0, v2, v1, p1, p2}, Lcom/verizon/ads/support/TimedMemoryCache;->a(Ljava/lang/String;Lcom/verizon/ads/support/TimedMemoryCache$CacheItem;J)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/support/TimedMemoryCache;J)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/support/TimedMemoryCache;->a(J)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/verizon/ads/support/TimedMemoryCache$CacheItem;J)Z
    .locals 3

    .line 273
    iget-wide v0, p2, Lcom/verizon/ads/support/TimedMemoryCache$CacheItem;->b:J

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
    const/4 v0, 0x3

    .line 274
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    sget-object v0, Lcom/verizon/ads/support/TimedMemoryCache;->a:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removed CacheItem\n\t:Checked time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "\n\tID: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n\tItem: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 281
    :cond_2
    iget-object p2, p0, Lcom/verizon/ads/support/TimedMemoryCache;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b()J
    .locals 2

    .line 27
    sget-wide v0, Lcom/verizon/ads/support/TimedMemoryCache;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/verizon/ads/support/TimedMemoryCache;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/verizon/ads/support/TimedMemoryCache;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static setCleanerDelay(J)V
    .locals 0

    .line 84
    sput-wide p0, Lcom/verizon/ads/support/TimedMemoryCache;->b:J

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

    .line 98
    invoke-virtual {p0, v0, p1, p2}, Lcom/verizon/ads/support/TimedMemoryCache;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/String;

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

    .line 115
    sget-object p1, Lcom/verizon/ads/support/TimedMemoryCache;->a:Lcom/verizon/ads/Logger;

    const-string p2, "Nothing to cache, object provided is null"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 121
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object p1, p0, Lcom/verizon/ads/support/TimedMemoryCache;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/support/TimedMemoryCache;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Lcom/verizon/ads/support/TimedMemoryCache$CacheItem;

    invoke-direct {v0, p2, p3}, Lcom/verizon/ads/support/TimedMemoryCache$CacheItem;-><init>(Ljava/lang/Object;Ljava/lang/Long;)V

    .line 133
    iget-object p2, p0, Lcom/verizon/ads/support/TimedMemoryCache;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x3

    .line 135
    invoke-static {p2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 136
    sget-object p2, Lcom/verizon/ads/support/TimedMemoryCache;->a:Lcom/verizon/ads/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Add CacheItem\n\tID: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tItem: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1210
    :cond_2
    iget-object p2, p0, Lcom/verizon/ads/support/TimedMemoryCache;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1211
    sget-object p2, Lcom/verizon/ads/support/TimedMemoryCache;->a:Lcom/verizon/ads/Logger;

    const-string p3, "Cleaner already running"

    invoke-virtual {p2, p3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1216
    :cond_3
    new-instance p2, Lcom/verizon/ads/support/TimedMemoryCache$1;

    invoke-direct {p2, p0}, Lcom/verizon/ads/support/TimedMemoryCache$1;-><init>(Lcom/verizon/ads/support/TimedMemoryCache;)V

    invoke-static {p2}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :goto_0
    return-object p1
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/verizon/ads/support/TimedMemoryCache;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public expireAll()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 266
    invoke-direct {p0, v0, v1}, Lcom/verizon/ads/support/TimedMemoryCache;->a(J)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TO;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 2178
    :cond_0
    iget-object v1, p0, Lcom/verizon/ads/support/TimedMemoryCache;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/support/TimedMemoryCache$CacheItem;

    if-nez v1, :cond_1

    .line 2181
    iget-object v1, p0, Lcom/verizon/ads/support/TimedMemoryCache;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2186
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/verizon/ads/support/TimedMemoryCache;->a(Ljava/lang/String;Lcom/verizon/ads/support/TimedMemoryCache$CacheItem;J)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    const/4 v1, 0x3

    .line 159
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    sget-object v1, Lcom/verizon/ads/support/TimedMemoryCache;->a:Lcom/verizon/ads/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No item in cache for ID <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_3
    return-object v0

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/verizon/ads/support/TimedMemoryCache;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object p1, v1, Lcom/verizon/ads/support/TimedMemoryCache$CacheItem;->a:Ljava/lang/Object;

    return-object p1
.end method
