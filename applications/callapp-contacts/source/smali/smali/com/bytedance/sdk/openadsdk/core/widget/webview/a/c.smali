.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;


# instance fields
.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/e/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c$1;

    const/16 v1, 0x7d0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Landroid/util/LruCache;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b:Ljava/util/Set;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;
    .locals 2

    .line 53
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 60
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS template_diff_new (_id INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "rit TEXT ,id TEXT UNIQUE,"

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "md5 TEXT ,url TEXT , "

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data TEXT , version TEXT ,"

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "update_time TEXT)"

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Landroid/util/LruCache;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;
    .locals 10

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/e/m;

    if-eqz v0, :cond_1

    return-object v0

    .line 91
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "template_diff_new"

    const-string v5, "id=?"

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 94
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "rit"

    .line 95
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "id"

    .line 96
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "md5"

    .line 97
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    .line 98
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data"

    .line 99
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "version"

    .line 100
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "update_time"

    .line 101
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 102
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/e/m;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/e/m;-><init>()V

    .line 103
    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/e/m;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/e/m;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/e/m;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/e/m;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/e/m;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v0

    .line 111
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Landroid/util/LruCache;

    invoke-virtual {v3, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :cond_3
    if-eqz p1, :cond_5

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 117
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_5

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_4

    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_4
    throw v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/e/m;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 211
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "template_diff_new"

    const-string v4, "id=?"

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 212
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 215
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    .line 220
    :cond_3
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 221
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rit"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "md5"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->g()Ljava/lang/Long;

    move-result-object v3

    const-string v4, "update_time"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "template_diff_new"

    if-eqz v2, :cond_4

    .line 229
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    const-string v4, "id=?"

    invoke-static {v2, v3, v1, v4, v0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 231
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 234
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 268
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 271
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 273
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 274
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 275
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aget-object v4, p1, v1

    aput-object v4, v3, v0

    const-string v4, "template_diff_new"

    const-string v5, "id=?"

    invoke-static {v2, v4, v5, v3}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method b()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/e/m;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "template_diff_new"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 165
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "rit"

    .line 166
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 167
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "md5"

    .line 168
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    .line 169
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "data"

    .line 170
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "version"

    .line 171
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "update_time"

    .line 172
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 173
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/e/m;

    invoke-direct {v9}, Lcom/bytedance/sdk/openadsdk/core/e/m;-><init>()V

    .line 174
    invoke-virtual {v9, v2}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v2

    .line 175
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/e/m;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v2

    .line 176
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/e/m;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v2

    .line 177
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/e/m;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v2

    .line 178
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/openadsdk/core/e/m;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v2

    .line 179
    invoke-virtual {v2, v7}, Lcom/bytedance/sdk/openadsdk/core/e/m;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v2

    .line 173
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Landroid/util/LruCache;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_0
    if-eqz v1, :cond_2

    .line 189
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 186
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_1

    .line 189
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_1
    throw v0

    :cond_2
    :goto_2
    return-object v0
.end method

.method b(Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 137
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 138
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "template_diff_new"

    const-string v5, "rit=?"

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 141
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "id"

    .line 142
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 148
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_3
    throw v0

    :cond_4
    return-object v1
.end method
