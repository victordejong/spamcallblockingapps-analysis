.class public Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;
.super Lcom/yanzhenjie/nohttp/db/BaseDao;
.source "CacheEntityDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yanzhenjie/nohttp/db/BaseDao<",
        "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mEncryption:Lcom/yanzhenjie/nohttp/tools/Encryption;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/cache/CacheSQLHelper;

    invoke-direct {v0, p1}, Lcom/yanzhenjie/nohttp/cache/CacheSQLHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/yanzhenjie/nohttp/tools/Encryption;

    invoke-direct {v0, p1}, Lcom/yanzhenjie/nohttp/tools/Encryption;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;->mEncryption:Lcom/yanzhenjie/nohttp/tools/Encryption;

    return-void
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;->mEncryption:Lcom/yanzhenjie/nohttp/tools/Encryption;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/tools/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;->mEncryption:Lcom/yanzhenjie/nohttp/tools/Encryption;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/tools/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->getReader()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lcom/yanzhenjie/nohttp/cache/CacheEntity;

    invoke-direct {p1}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;-><init>()V

    const-string v3, "_id"

    .line 6
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setId(J)V

    const-string v3, "key"

    .line 7
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    const-string v3, "head"

    .line 8
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setResponseHeadersJson(Ljava/lang/String;)V

    const-string v3, "data"

    .line 9
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setData([B)V

    const-string v3, "local_expires"

    .line 10
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->setLocalExpire(J)V

    .line 11
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_0
    invoke-virtual {p0, v2}, Lcom/yanzhenjie/nohttp/db/BaseDao;->closeCursor(Landroid/database/Cursor;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->closeDateBase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v1

    .line 15
    :goto_1
    invoke-virtual {p0, v2}, Lcom/yanzhenjie/nohttp/db/BaseDao;->closeCursor(Landroid/database/Cursor;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->closeDateBase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "cache_table"

    return-object v0
.end method

.method public replace(Lcom/yanzhenjie/nohttp/cache/CacheEntity;)J
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->getWriter()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    .line 5
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "head"

    .line 6
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getResponseHeadersJson()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data"

    .line 7
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "local_expires"

    .line 8
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cache/CacheEntity;->getLocalExpire()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;->getTableName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 12
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->closeDateBase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-wide v1

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 14
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->closeDateBase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :catch_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public bridge synthetic replace(Lcom/yanzhenjie/nohttp/db/BasicEntity;)J
    .locals 2

    .line 1
    check-cast p1, Lcom/yanzhenjie/nohttp/cache/CacheEntity;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/cache/CacheEntityDao;->replace(Lcom/yanzhenjie/nohttp/cache/CacheEntity;)J

    move-result-wide v0

    return-wide v0
.end method
