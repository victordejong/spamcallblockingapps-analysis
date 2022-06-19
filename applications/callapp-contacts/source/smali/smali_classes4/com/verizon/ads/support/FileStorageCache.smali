.class public Lcom/verizon/ads/support/FileStorageCache;
.super Lcom/verizon/ads/support/StorageCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;
    }
.end annotation


# static fields
.field public static final ERROR_CREATING_FILE:I = -0x1

.field public static final ERROR_DOWNLOAD_FAILED:I = -0x2

.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Z

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-class v0, Lcom/verizon/ads/support/FileStorageCache;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/support/FileStorageCache;->a:Lcom/verizon/ads/Logger;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/FileStorageCache;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/verizon/ads/support/StorageCache;)V
    .locals 3

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/verizon/ads/support/StorageCache;->getCacheDirectory()Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/verizon/ads/support/StorageCache;-><init>(Ljava/io/File;)V

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/verizon/ads/support/FileStorageCache;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/support/FileStorageCache;->e:Ljava/util/Map;

    .line 47
    iput-boolean v0, p0, Lcom/verizon/ads/support/FileStorageCache;->f:Z

    .line 48
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/support/FileStorageCache;->g:Ljava/util/Set;

    const/4 p1, 0x3

    .line 65
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/support/FileStorageCache;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/verizon/ads/support/FileStorageCache;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/verizon/ads/support/FileStorageCache;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 1094
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    sget-object p0, Lcom/verizon/ads/support/FileStorageCache;->a:Lcom/verizon/ads/Logger;

    const-string p1, "url cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 1100
    sget-object p0, Lcom/verizon/ads/support/FileStorageCache;->a:Lcom/verizon/ads/Logger;

    const-string p1, "file cannot be null"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 1104
    :cond_1
    iget-object p0, p0, Lcom/verizon/ads/support/FileStorageCache;->e:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/support/FileStorageCache;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/verizon/ads/support/FileStorageCache;->f:Z

    return p0
.end method

.method static synthetic b()Lcom/verizon/ads/Logger;
    .locals 1

    .line 34
    sget-object v0, Lcom/verizon/ads/support/FileStorageCache;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic b(Lcom/verizon/ads/support/FileStorageCache;)Ljava/util/Map;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/verizon/ads/support/FileStorageCache;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/verizon/ads/support/FileStorageCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/verizon/ads/support/FileStorageCache;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public deleteCache()V
    .locals 2

    .line 140
    sget-object v0, Lcom/verizon/ads/support/FileStorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Deleting cache"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/verizon/ads/support/FileStorageCache;->stopAllDownloads()V

    .line 144
    invoke-virtual {p0}, Lcom/verizon/ads/support/FileStorageCache;->deleteCacheDirectory()V

    .line 146
    iget-object v0, p0, Lcom/verizon/ads/support/FileStorageCache;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public downloadAndCacheFile(Ljava/lang/String;Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;)V
    .locals 1

    const/16 v0, 0x1388

    .line 168
    invoke-virtual {p0, p1, p2, v0}, Lcom/verizon/ads/support/FileStorageCache;->downloadAndCacheFile(Ljava/lang/String;Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;I)V

    return-void
.end method

.method public downloadAndCacheFile(Ljava/lang/String;Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;I)V
    .locals 3

    if-nez p2, :cond_0

    .line 176
    sget-object p1, Lcom/verizon/ads/support/FileStorageCache;->a:Lcom/verizon/ads/Logger;

    const-string p2, "Listener cannot be null"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    new-instance p3, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/support/FileStorageCache;->b:Ljava/lang/String;

    const/4 v1, -0x2

    const-string v2, "url cannot be null or empty"

    invoke-direct {p3, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2, p1, p3}, Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;->onComplete(Ljava/lang/String;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/support/FileStorageCache;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/verizon/ads/support/FileStorageCache$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/verizon/ads/support/FileStorageCache$1;-><init>(Lcom/verizon/ads/support/FileStorageCache;Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public downloadQueuedFiles(Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;I)V
    .locals 3

    if-nez p1, :cond_0

    .line 295
    sget-object p1, Lcom/verizon/ads/support/FileStorageCache;->a:Lcom/verizon/ads/Logger;

    const-string p2, "Listener cannot be null"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/support/FileStorageCache;->g:Ljava/util/Set;

    monitor-enter v0

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/verizon/ads/support/FileStorageCache;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 302
    invoke-virtual {p0, v2, p1, p2}, Lcom/verizon/ads/support/FileStorageCache;->downloadAndCacheFile(Ljava/lang/String;Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;I)V

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 305
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCacheDirectoryPath()Ljava/lang/String;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/verizon/ads/support/FileStorageCache;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object p1, Lcom/verizon/ads/support/FileStorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v0, "url cannot be null or empty"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/support/FileStorageCache;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    return-object p1
.end method

.method public getNumQueuedFiles()I
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/verizon/ads/support/FileStorageCache;->g:Ljava/util/Set;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/verizon/ads/support/FileStorageCache;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 282
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queueFileForDownload(Ljava/lang/String;)V
    .locals 4

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    sget-object p1, Lcom/verizon/ads/support/FileStorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v0, "url cannot be null or empty"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 259
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/verizon/ads/support/FileStorageCache;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 261
    sget-object v0, Lcom/verizon/ads/support/FileStorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v3, "File already queued for download: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_1
    sget-object v0, Lcom/verizon/ads/support/FileStorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v3, "File queued for download: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 267
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/verizon/ads/support/FileStorageCache;->g:Ljava/util/Set;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/verizon/ads/support/FileStorageCache;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopAllDownloads()V
    .locals 1

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/verizon/ads/support/FileStorageCache;->f:Z

    return-void
.end method
