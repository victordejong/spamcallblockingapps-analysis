.class public Lcom/yanzhenjie/nohttp/cookie/CookieEntityDao;
.super Lcom/yanzhenjie/nohttp/db/BaseDao;
.source "CookieEntityDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yanzhenjie/nohttp/db/BaseDao<",
        "Lcom/yanzhenjie/nohttp/cookie/CookieEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/cookie/CookieSQLHelper;

    invoke-direct {v0, p1}, Lcom/yanzhenjie/nohttp/cookie/CookieSQLHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method


# virtual methods
.method protected getList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yanzhenjie/nohttp/cookie/CookieEntity;",
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
    invoke-virtual {v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;

    invoke-direct {v2}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;-><init>()V

    const-string v3, "_id"

    .line 6
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->setId(J)V

    const-string v3, "uri"

    .line 7
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->setUri(Ljava/lang/String;)V

    const-string v3, "name"

    .line 8
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->setName(Ljava/lang/String;)V

    const-string v3, "value"

    .line 9
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->setValue(Ljava/lang/String;)V

    const-string v3, "comment"

    .line 10
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->setComment(Ljava/lang/String;)V

    const-string v3, "comment_url"

    .line 11
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->setCommentURL(Ljava/lang/String;)V

    const-string v3, "discard"

    .line 12
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->setDiscard(Z)V

    const-string v3, "domain"

    .line 13
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->setDomain(Ljava/lang/String;)V

    const-string v3, "expiry"

    .line 14
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->setExpiry(J)V

    const-string v3, "path"

    .line 15
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->setPath(Ljava/lang/String;)V

    const-string v3, "port_list"

    .line 16
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->setPortList(Ljava/lang/String;)V

    const-string v3, "secure"

    .line 17
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->setSecure(Z)V

    const-string v3, "version"

    .line 18
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->setVersion(I)V

    .line 19
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/db/BaseDao;->closeCursor(Landroid/database/Cursor;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->closeDateBase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v1
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "cookies_table"

    return-object v0
.end method

.method public replace(Lcom/yanzhenjie/nohttp/cookie/CookieEntity;)J
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->getWriter()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->getUri()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->getComment()Ljava/lang/String;

    move-result-object v2

    const-string v3, "comment"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->getCommentURL()Ljava/lang/String;

    move-result-object v2

    const-string v3, "comment_url"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->isDiscard()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "discard"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->getDomain()Ljava/lang/String;

    move-result-object v2

    const-string v3, "domain"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->getExpiry()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "expiry"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->getPortList()Ljava/lang/String;

    move-result-object v2

    const-string v3, "port_list"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->isSecure()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "secure"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->getVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "version"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    const-string p1, "cookies_table"

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 18
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 20
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->closeDateBase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-wide v1

    :catchall_0
    move-exception p1

    .line 21
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 22
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->closeDateBase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :catch_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public bridge synthetic replace(Lcom/yanzhenjie/nohttp/db/BasicEntity;)J
    .locals 2

    .line 1
    check-cast p1, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntityDao;->replace(Lcom/yanzhenjie/nohttp/cookie/CookieEntity;)J

    move-result-wide v0

    return-wide v0
.end method
