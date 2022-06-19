.class public Lcom/yanzhenjie/nohttp/cache/DBCacheStore;
.super Lcom/yanzhenjie/nohttp/cache/BasicCacheStore;
.source "DBCacheStore.java"


# instance fields
.field private mEnable:Z

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mManager:Lcom/yanzhenjie/nohttp/db/BaseDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/nohttp/db/BaseDao<",
            "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/yanzhenjie/nohttp/cache/BasicCacheStore;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mEnable:Z

    .line 3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 4
    new-instance v0, Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;

    invoke-direct {v0, p1}, Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mManager:Lcom/yanzhenjie/nohttp/db/BaseDao;

    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mManager:Lcom/yanzhenjie/nohttp/db/BaseDao;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->deleteAll()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/cache/CacheEntity;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/cache/BasicCacheStore;->uniqueKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 6
    :cond_1
    :try_start_1
    new-instance v0, Lcom/yanzhenjie/nohttp/db/Where;

    const-string v2, "key"

    sget-object v3, Lcom/yanzhenjie/nohttp/db/Where$Options;->EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-direct {v0, v2, v3, p1}, Lcom/yanzhenjie/nohttp/db/Where;-><init>(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mManager:Lcom/yanzhenjie/nohttp/db/BaseDao;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/db/Where;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v1, v1}, Lcom/yanzhenjie/nohttp/db/BaseDao;->getList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/yanzhenjie/nohttp/cache/CacheEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->get(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/cache/BasicCacheStore;->uniqueKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Lcom/yanzhenjie/nohttp/db/Where;

    const-string v1, "key"

    sget-object v2, Lcom/yanzhenjie/nohttp/db/Where$Options;->EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-direct {v0, v1, v2, p1}, Lcom/yanzhenjie/nohttp/db/Where;-><init>(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mManager:Lcom/yanzhenjie/nohttp/db/BaseDao;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/db/Where;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->delete(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public replace(Ljava/lang/String;Lcom/yanzhenjie/nohttp/cache/CacheEntity;)Lcom/yanzhenjie/nohttp/cache/CacheEntity;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/cache/BasicCacheStore;->uniqueKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mManager:Lcom/yanzhenjie/nohttp/db/BaseDao;

    invoke-virtual {p1, p2}, Lcom/yanzhenjie/nohttp/db/BaseDao;->replace(Lcom/yanzhenjie/nohttp/db/BasicEntity;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    iget-object p2, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public bridge synthetic replace(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lcom/yanzhenjie/nohttp/cache/CacheEntity;

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->replace(Ljava/lang/String;Lcom/yanzhenjie/nohttp/cache/CacheEntity;)Lcom/yanzhenjie/nohttp/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public setEnable(Z)Lcom/yanzhenjie/nohttp/tools/CacheStore;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/yanzhenjie/nohttp/tools/CacheStore<",
            "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/yanzhenjie/nohttp/cache/DBCacheStore;->mEnable:Z

    return-object p0
.end method
