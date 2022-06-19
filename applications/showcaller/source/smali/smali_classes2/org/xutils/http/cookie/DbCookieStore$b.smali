.class Lorg/xutils/http/cookie/DbCookieStore$b;
.super Ljava/lang/Object;
.source "DbCookieStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/cookie/DbCookieStore;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/xutils/http/cookie/DbCookieStore;


# direct methods
.method constructor <init>(Lorg/xutils/http/cookie/DbCookieStore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/cookie/DbCookieStore$b;->d:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "!="

    .line 1
    const-class v1, Lorg/xutils/http/cookie/a;

    const-string v2, "expiry"

    iget-object v3, p0, Lorg/xutils/http/cookie/DbCookieStore$b;->d:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v3}, Lorg/xutils/http/cookie/DbCookieStore;->access$000(Lorg/xutils/http/cookie/DbCookieStore;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore$b;->d:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v5}, Lorg/xutils/http/cookie/DbCookieStore;->access$100(Lorg/xutils/http/cookie/DbCookieStore;)J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore$b;->d:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v5, v3, v4}, Lorg/xutils/http/cookie/DbCookieStore;->access$102(Lorg/xutils/http/cookie/DbCookieStore;J)J

    const-wide/16 v3, -0x1

    .line 5
    :try_start_0
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore$b;->d:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v5}, Lorg/xutils/http/cookie/DbCookieStore;->access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v5

    const-string v6, "<"

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v6

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v2, v0, v7}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v6

    .line 8
    invoke-interface {v5, v1, v6}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 9
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    :try_start_1
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore$b;->d:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v5}, Lorg/xutils/http/cookie/DbCookieStore;->access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/db/Selector;->count()J

    move-result-wide v5

    long-to-int v6, v5

    const/16 v5, 0x1392

    if-le v6, v5, :cond_1

    .line 11
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore$b;->d:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v5}, Lorg/xutils/http/cookie/DbCookieStore;->access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v0

    add-int/lit16 v6, v6, -0x1388

    .line 13
    invoke-virtual {v0, v6}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v1, p0, Lorg/xutils/http/cookie/DbCookieStore$b;->d:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v1}, Lorg/xutils/http/cookie/DbCookieStore;->access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
