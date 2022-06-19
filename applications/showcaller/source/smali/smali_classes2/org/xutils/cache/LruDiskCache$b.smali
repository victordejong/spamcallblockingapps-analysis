.class Lorg/xutils/cache/LruDiskCache$b;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/cache/LruDiskCache;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/xutils/cache/LruDiskCache;


# direct methods
.method constructor <init>(Lorg/xutils/cache/LruDiskCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, ".tmp"

    const-string v1, "hits"

    const-string v2, "lastAccess"

    .line 1
    const-class v3, Lorg/xutils/cache/DiskCacheEntity;

    iget-object v4, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v4}, Lorg/xutils/cache/LruDiskCache;->b(Lorg/xutils/cache/LruDiskCache;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3
    iget-object v6, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v6}, Lorg/xutils/cache/LruDiskCache;->c(Lorg/xutils/cache/LruDiskCache;)J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    cmp-long v10, v6, v8

    if-gez v10, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v6, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v6, v4, v5}, Lorg/xutils/cache/LruDiskCache;->d(Lorg/xutils/cache/LruDiskCache;J)J

    .line 5
    iget-object v4, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v4}, Lorg/xutils/cache/LruDiskCache;->e(Lorg/xutils/cache/LruDiskCache;)V

    const/4 v4, 0x0

    .line 6
    :try_start_0
    iget-object v5, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v5}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/db/Selector;->count()J

    move-result-wide v5

    long-to-int v6, v5

    const/16 v5, 0x1392

    if-le v6, v5, :cond_3

    .line 7
    iget-object v5, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v5}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v5

    .line 8
    invoke-virtual {v5, v2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v5

    add-int/lit16 v6, v6, -0x1388

    .line 9
    invoke-virtual {v5, v6}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 11
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/xutils/cache/DiskCacheEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v6}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 15
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7, v6}, Lorg/xutils/cache/LruDiskCache;->f(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z

    .line 16
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lorg/xutils/cache/LruDiskCache;->f(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    .line 17
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    .line 18
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_3
    :try_start_3
    iget-object v5, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v5}, Lorg/xutils/cache/LruDiskCache;->g(Lorg/xutils/cache/LruDiskCache;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lorg/xutils/common/util/FileUtil;->getFileOrDirSize(Ljava/io/File;)J

    move-result-wide v5

    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7}, Lorg/xutils/cache/LruDiskCache;->h(Lorg/xutils/cache/LruDiskCache;)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_5

    .line 20
    iget-object v5, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v5}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v5

    .line 21
    invoke-virtual {v5, v2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 22
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 23
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/xutils/cache/DiskCacheEntity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 24
    :try_start_4
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7}, Lorg/xutils/cache/LruDiskCache;->a(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v6}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 27
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v7, v6}, Lorg/xutils/cache/LruDiskCache;->f(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z

    .line 28
    iget-object v7, p0, Lorg/xutils/cache/LruDiskCache$b;->d:Lorg/xutils/cache/LruDiskCache;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lorg/xutils/cache/LruDiskCache;->f(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v6

    .line 29
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method
