.class public Lcom/verizon/ads/support/StorageCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/verizon/ads/support/StorageCache;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/verizon/ads/support/StorageCache;->b:Ljava/io/File;

    const/4 v0, 0x3

    .line 38
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Storage cache created: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 215
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    sget-object v2, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Directory already deleted: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 220
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 222
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 223
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    invoke-static {v5}, Lcom/verizon/ads/support/StorageCache;->deleteFile(Ljava/io/File;)V

    goto :goto_1

    .line 225
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 226
    invoke-static {v5}, Lcom/verizon/ads/support/StorageCache;->a(Ljava/io/File;)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 231
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_5

    .line 233
    sget-object v2, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Failed to delete directory: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v2, 0x3

    .line 234
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 235
    sget-object v2, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Deleted directory: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception v2

    .line 239
    sget-object v3, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Error occurred deleting directory: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/io/File;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 198
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v3, v1

    int-to-long p0, p1

    cmp-long v1, v3, p0

    if-lez v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 202
    sget-object p1, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Error checking if file expired"

    invoke-virtual {p1, v1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 251
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 253
    sget-object v0, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Failed to delete file: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 254
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    sget-object v0, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Deleted file: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 259
    sget-object v0, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Error deleting file"

    invoke-virtual {v0, v1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getApplicationCache(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 138
    sget-object p0, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Unable to create cache directory. Application context is null"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v0

    .line 143
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 146
    sget-object p1, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Error getting root cache directory"

    invoke-virtual {p1, v1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized createCacheDirectory()Z
    .locals 6

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/support/StorageCache;->b:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Cache directory is null"

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return v1

    .line 106
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 107
    monitor-exit p0

    return v2

    .line 110
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/verizon/ads/support/StorageCache;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 111
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    sget-object v0, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v3, "File cache directory created: %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/verizon/ads/support/StorageCache;->b:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :cond_2
    monitor-exit p0

    return v2

    .line 117
    :cond_3
    :try_start_3
    sget-object v0, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Failed to create cache directory: %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/verizon/ads/support/StorageCache;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    :try_start_4
    sget-object v2, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Error creating cache directory"

    invoke-virtual {v2, v3, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    sget-object p1, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v0, "filename cannot be null or empty"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-object v1

    .line 87
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/verizon/ads/support/StorageCache;->createCacheDirectory()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 88
    monitor-exit p0

    return-object v1

    .line 91
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/verizon/ads/support/StorageCache;->b:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteCacheDirectory()V
    .locals 5

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/support/StorageCache;->b:Ljava/io/File;

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Cache directory is null"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 65
    :try_start_1
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Deleting file cache directory: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/verizon/ads/support/StorageCache;->b:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/support/StorageCache;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/verizon/ads/support/StorageCache;->a(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteExpiredCacheEntries(I)V
    .locals 9

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/support/StorageCache;->b:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 161
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 165
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 167
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 168
    invoke-static {v5, p1}, Lcom/verizon/ads/support/StorageCache;->a(Ljava/io/File;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 169
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_2

    .line 170
    invoke-static {v7}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    sget-object v6, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v7, "Cache directory has expired -- deleting: %s"

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v5, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 173
    :cond_1
    invoke-static {v5}, Lcom/verizon/ads/support/StorageCache;->a(Ljava/io/File;)V

    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 176
    invoke-static {v7}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 177
    sget-object v6, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v7, "Cache file has expired -- deleting: %s"

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v5, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 179
    :cond_3
    invoke-static {v5}, Lcom/verizon/ads/support/StorageCache;->deleteFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_5
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 186
    :try_start_2
    sget-object v0, Lcom/verizon/ads/support/StorageCache;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Error deleting expired cache instance directories: %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/verizon/ads/support/StorageCache;->b:Ljava/io/File;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCacheDirectory()Ljava/io/File;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/verizon/ads/support/StorageCache;->b:Ljava/io/File;

    return-object v0
.end method
