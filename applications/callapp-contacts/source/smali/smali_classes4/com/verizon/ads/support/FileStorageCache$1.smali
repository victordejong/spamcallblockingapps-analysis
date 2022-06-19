.class Lcom/verizon/ads/support/FileStorageCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/support/FileStorageCache;->downloadAndCacheFile(Ljava/lang/String;Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/verizon/ads/support/FileStorageCache;


# direct methods
.method constructor <init>(Lcom/verizon/ads/support/FileStorageCache;Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;Ljava/lang/String;I)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/verizon/ads/support/FileStorageCache$1;->d:Lcom/verizon/ads/support/FileStorageCache;

    iput-object p2, p0, Lcom/verizon/ads/support/FileStorageCache$1;->a:Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;

    iput-object p3, p0, Lcom/verizon/ads/support/FileStorageCache$1;->b:Ljava/lang/String;

    iput p4, p0, Lcom/verizon/ads/support/FileStorageCache$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 189
    iget-object v0, p0, Lcom/verizon/ads/support/FileStorageCache$1;->d:Lcom/verizon/ads/support/FileStorageCache;

    invoke-static {v0}, Lcom/verizon/ads/support/FileStorageCache;->a(Lcom/verizon/ads/support/FileStorageCache;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/verizon/ads/support/FileStorageCache$1;->a:Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;

    iget-object v2, p0, Lcom/verizon/ads/support/FileStorageCache$1;->b:Ljava/lang/String;

    new-instance v3, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/support/FileStorageCache;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Download aborted"

    invoke-direct {v3, v4, v5, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v2, v3}, Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;->onComplete(Ljava/lang/String;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 195
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 196
    invoke-static {}, Lcom/verizon/ads/support/FileStorageCache;->b()Lcom/verizon/ads/Logger;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/verizon/ads/support/FileStorageCache$1;->b:Ljava/lang/String;

    aput-object v6, v5, v3

    const-string v6, "Downloading file for url: %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/verizon/ads/support/FileStorageCache$1;->d:Lcom/verizon/ads/support/FileStorageCache;

    invoke-static {v2}, Lcom/verizon/ads/support/FileStorageCache;->b(Lcom/verizon/ads/support/FileStorageCache;)Ljava/util/Map;

    move-result-object v2

    iget-object v5, p0, Lcom/verizon/ads/support/FileStorageCache$1;->b:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 201
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    invoke-static {}, Lcom/verizon/ads/support/FileStorageCache;->b()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/verizon/ads/support/FileStorageCache$1;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "url is already in the cache: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/verizon/ads/support/FileStorageCache$1;->a:Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;

    iget-object v1, p0, Lcom/verizon/ads/support/FileStorageCache$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;->onComplete(Ljava/lang/String;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 211
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/support/FileStorageCache$1;->d:Lcom/verizon/ads/support/FileStorageCache;

    const-string v2, "%d-%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/verizon/ads/support/FileStorageCache;->c(Lcom/verizon/ads/support/FileStorageCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/verizon/ads/support/FileStorageCache$1;->b:Ljava/lang/String;

    invoke-static {v7, v5, v5}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/support/FileStorageCache;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    iget-object v2, p0, Lcom/verizon/ads/support/FileStorageCache$1;->b:Ljava/lang/String;

    iget v6, p0, Lcom/verizon/ads/support/FileStorageCache$1;->c:I

    if-lez v6, :cond_4

    goto :goto_0

    :cond_4
    const/16 v6, 0x1388

    :goto_0
    invoke-static {v2, v0, v6}, Lcom/verizon/ads/utils/HttpUtils;->getFileFromGetRequest(Ljava/lang/String;Ljava/io/File;I)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object v2

    .line 223
    iget-object v6, v2, Lcom/verizon/ads/utils/HttpUtils$Response;->file:Ljava/io/File;

    if-eqz v6, :cond_5

    .line 224
    iget-object v1, p0, Lcom/verizon/ads/support/FileStorageCache$1;->d:Lcom/verizon/ads/support/FileStorageCache;

    iget-object v2, p0, Lcom/verizon/ads/support/FileStorageCache$1;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/verizon/ads/support/FileStorageCache;->a(Lcom/verizon/ads/support/FileStorageCache;Ljava/lang/String;Ljava/io/File;)V

    .line 225
    iget-object v0, p0, Lcom/verizon/ads/support/FileStorageCache$1;->a:Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;

    iget-object v1, p0, Lcom/verizon/ads/support/FileStorageCache$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;->onComplete(Ljava/lang/String;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 228
    :cond_5
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/support/FileStorageCache;->a()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    iget v2, v2, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const-string v2, "File download failed with code %d"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    iget-object v1, p0, Lcom/verizon/ads/support/FileStorageCache$1;->a:Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;

    iget-object v2, p0, Lcom/verizon/ads/support/FileStorageCache$1;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;->onComplete(Ljava/lang/String;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 214
    :catch_0
    iget-object v0, p0, Lcom/verizon/ads/support/FileStorageCache$1;->a:Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;

    iget-object v1, p0, Lcom/verizon/ads/support/FileStorageCache$1;->b:Ljava/lang/String;

    new-instance v2, Lcom/verizon/ads/ErrorInfo;

    .line 215
    invoke-static {}, Lcom/verizon/ads/support/FileStorageCache;->a()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/verizon/ads/support/FileStorageCache$1;->b:Ljava/lang/String;

    aput-object v6, v4, v3

    const-string v3, "Error creating temporary file for url: %s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v5, v3, v4}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    invoke-interface {v0, v1, v2}, Lcom/verizon/ads/support/FileStorageCache$FileStorageCacheListener;->onComplete(Ljava/lang/String;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
