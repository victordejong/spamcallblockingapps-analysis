.class Lcom/yanzhenjie/nohttp/cookie/CookieSQLHelper;
.super Lcom/yanzhenjie/nohttp/db/BasicSQLHelper;
.source "CookieSQLHelper.java"


# static fields
.field static final COMMENT:Ljava/lang/String; = "comment"

.field static final COMMENT_URL:Ljava/lang/String; = "comment_url"

.field private static final DB_COOKIE_NAME:Ljava/lang/String; = "_nohttp_cookies_db.db"

.field private static final DB_COOKIE_VERSION:I = 0x2

.field static final DISCARD:Ljava/lang/String; = "discard"

.field static final DOMAIN:Ljava/lang/String; = "domain"

.field static final EXPIRY:Ljava/lang/String; = "expiry"

.field static final NAME:Ljava/lang/String; = "name"

.field static final PATH:Ljava/lang/String; = "path"

.field static final PORT_LIST:Ljava/lang/String; = "port_list"

.field static final SECURE:Ljava/lang/String; = "secure"

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE cookies_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, uri TEXT, name TEXT, value TEXT, comment TEXT, comment_url TEXT, discard TEXT, domain TEXT, expiry INTEGER, path TEXT, port_list TEXT, secure TEXT, version INTEGER)"

.field private static final SQL_CREATE_UNIQUE_INDEX:Ljava/lang/String; = "CREATE UNIQUE INDEX cookie_unique_index ON cookies_table(\"name\", \"domain\", \"path\")"

.field private static final SQL_DELETE_TABLE:Ljava/lang/String; = "DROP TABLE  IF EXISTS cookies_table"

.field static final TABLE_NAME:Ljava/lang/String; = "cookies_table"

.field static final URI:Ljava/lang/String; = "uri"

.field static final VALUE:Ljava/lang/String; = "value"

.field static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "_nohttp_cookies_db.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yanzhenjie/nohttp/db/BasicSQLHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "CREATE TABLE cookies_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, uri TEXT, name TEXT, value TEXT, comment TEXT, comment_url TEXT, discard TEXT, domain TEXT, expiry INTEGER, path TEXT, port_list TEXT, secure TEXT, version INTEGER)"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX cookie_unique_index ON cookies_table(\"name\", \"domain\", \"path\")"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yanzhenjie/nohttp/cookie/CookieSQLHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    if-eq p3, p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string p2, "DROP TABLE  IF EXISTS cookies_table"

    .line 2
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE cookies_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, uri TEXT, name TEXT, value TEXT, comment TEXT, comment_url TEXT, discard TEXT, domain TEXT, expiry INTEGER, path TEXT, port_list TEXT, secure TEXT, version INTEGER)"

    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE UNIQUE INDEX cookie_unique_index ON cookies_table(\"name\", \"domain\", \"path\")"

    .line 4
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
