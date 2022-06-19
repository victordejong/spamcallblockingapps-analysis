.class Le/a/b/e/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Le/a/b/e/l;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/a/b/e/l;->a:Z

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "sub_id"

    aput-object v5, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/e/f;->e(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v8, p0, Le/a/b/e/l;->a:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p1, "SubscriptionIdChecker"

    const-string v1, "SubscriptionIdChecker.check() fail"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method static declared-synchronized c(Landroid/content/Context;)Le/a/b/e/l;
    .locals 2

    const-class v0, Le/a/b/e/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/a/b/e/l;->b:Le/a/b/e/l;

    if-nez v1, :cond_0

    new-instance v1, Le/a/b/e/l;

    invoke-direct {v1}, Le/a/b/e/l;-><init>()V

    sput-object v1, Le/a/b/e/l;->b:Le/a/b/e/l;

    invoke-direct {v1, p0}, Le/a/b/e/l;->b(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Le/a/b/e/l;->b:Le/a/b/e/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-boolean v0, p0, Le/a/b/e/l;->a:Z

    return v0
.end method
