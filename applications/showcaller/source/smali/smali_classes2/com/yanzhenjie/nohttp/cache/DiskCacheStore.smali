.class public Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;
.super Lcom/yanzhenjie/nohttp/cache/BasicCacheStore;
.source "DiskCacheStore.java"


# instance fields
.field private mCacheDirectory:Ljava/lang/String;

.field private mEncryption:Lcom/yanzhenjie/nohttp/tools/Encryption;

.field private mLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/yanzhenjie/nohttp/cache/BasicCacheStore;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 5
    new-instance p1, Lcom/yanzhenjie/nohttp/tools/Encryption;

    const-class v0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/yanzhenjie/nohttp/tools/Encryption;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mEncryption:Lcom/yanzhenjie/nohttp/tools/Encryption;

    .line 6
    iput-object p2, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mCacheDirectory:Ljava/lang/String;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The cacheDirectory can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mEncryption:Lcom/yanzhenjie/nohttp/tools/Encryption;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/tools/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mEncryption:Lcom/yanzhenjie/nohttp/tools/Encryption;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/tools/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initialize()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mCacheDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->createFolder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mCacheDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->delFileOrFolder(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/cache/CacheEntity;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/cache/BasicCacheStore;->uniqueKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 7
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mCacheDirectory:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    new-instance v2, Lcom/yanzhenjie/nohttp/cache/CacheEntity;

    invoke-direct {v2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;-><init>()V

    .line 10
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setResponseHeadersJson(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setDataBase64(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setLocalExpireString(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    invoke-static {v3}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 15
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v0

    .line 16
    :goto_1
    :try_start_3
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mCacheDirectory:Ljava/lang/String;

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    .line 17
    invoke-static {v1}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    invoke-static {v3}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 19
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v3

    .line 20
    :goto_2
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 21
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->get(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/cache/BasicCacheStore;->uniqueKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mCacheDirectory:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public replace(Ljava/lang/String;Lcom/yanzhenjie/nohttp/cache/CacheEntity;)Lcom/yanzhenjie/nohttp/cache/CacheEntity;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/cache/BasicCacheStore;->uniqueKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->initialize()Z

    .line 6
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mCacheDirectory:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->createNewFile(Ljava/io/File;)Z

    .line 8
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getResponseHeadersJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 11
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getDataBase64()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 13
    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getLocalExpireString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 15
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    invoke-static {v2}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_2

    .line 18
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v2, v0

    .line 19
    :goto_2
    :try_start_2
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mCacheDirectory:Ljava/lang/String;

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->delFileOrFolder(Ljava/io/File;)Z

    .line 20
    invoke-static {p2}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    invoke-static {v2}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 22
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v2

    .line 23
    :goto_3
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 24
    iget-object p2, p0, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public bridge synthetic replace(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lcom/yanzhenjie/nohttp/cache/CacheEntity;

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/nohttp/cache/DiskCacheStore;->replace(Ljava/lang/String;Lcom/yanzhenjie/nohttp/cache/CacheEntity;)Lcom/yanzhenjie/nohttp/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method
