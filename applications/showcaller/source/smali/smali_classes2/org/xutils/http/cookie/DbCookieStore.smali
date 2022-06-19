.class public final enum Lorg/xutils/http/cookie/DbCookieStore;
.super Ljava/lang/Enum;
.source "DbCookieStore.java"

# interfaces
.implements Ljava/net/CookieStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/xutils/http/cookie/DbCookieStore;",
        ">;",
        "Ljava/net/CookieStore;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

.field private static final synthetic d:[Lorg/xutils/http/cookie/DbCookieStore;


# instance fields
.field private db:Lorg/xutils/DbManager;

.field private lastTrimTime:J

.field private final trimExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/xutils/http/cookie/DbCookieStore;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/cookie/DbCookieStore;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xutils/http/cookie/DbCookieStore;->INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/xutils/http/cookie/DbCookieStore;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lorg/xutils/http/cookie/DbCookieStore;->d:[Lorg/xutils/http/cookie/DbCookieStore;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance p1, Lorg/xutils/common/task/PriorityExecutor;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p2}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    iput-object p1, p0, Lorg/xutils/http/cookie/DbCookieStore;->trimExecutor:Ljava/util/concurrent/Executor;

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lorg/xutils/http/cookie/DbCookieStore;->lastTrimTime:J

    .line 4
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object p1

    new-instance p2, Lorg/xutils/http/cookie/DbCookieStore$a;

    invoke-direct {p2, p0}, Lorg/xutils/http/cookie/DbCookieStore$a;-><init>(Lorg/xutils/http/cookie/DbCookieStore;)V

    invoke-interface {p1, p2}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/net/URI;)Ljava/net/URI;
    .locals 7

    .line 1
    :try_start_0
    new-instance v6, Ljava/net/URI;

    const-string v1, "http"

    .line 2
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method

.method static synthetic access$000(Lorg/xutils/http/cookie/DbCookieStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->e()V

    return-void
.end method

.method static synthetic access$100(Lorg/xutils/http/cookie/DbCookieStore;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->lastTrimTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/xutils/http/cookie/DbCookieStore;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/xutils/http/cookie/DbCookieStore;->lastTrimTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->trimExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/xutils/http/cookie/DbCookieStore$b;

    invoke-direct {v1, p0}, Lorg/xutils/http/cookie/DbCookieStore$b;-><init>(Lorg/xutils/http/cookie/DbCookieStore;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 4
    :try_start_1
    sget-object v0, Lorg/xutils/config/DbConfigs;->COOKIE:Lorg/xutils/config/DbConfigs;

    invoke-virtual {v0}, Lorg/xutils/config/DbConfigs;->getConfig()Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    .line 5
    const-class v1, Lorg/xutils/http/cookie/a;

    const-string v2, "expiry"

    const-string v3, "="

    const-wide/16 v4, -0x1

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v2

    .line 7
    invoke-interface {v0, v1, v2}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/http/cookie/DbCookieStore;
    .locals 1

    .line 1
    const-class v0, Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/xutils/http/cookie/DbCookieStore;

    return-object p0
.end method

.method public static values()[Lorg/xutils/http/cookie/DbCookieStore;
    .locals 1

    .line 1
    sget-object v0, Lorg/xutils/http/cookie/DbCookieStore;->d:[Lorg/xutils/http/cookie/DbCookieStore;

    invoke-virtual {v0}, [Lorg/xutils/http/cookie/DbCookieStore;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/http/cookie/DbCookieStore;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->e()V

    .line 2
    invoke-direct {p0, p1}, Lorg/xutils/http/cookie/DbCookieStore;->a(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    new-instance v1, Lorg/xutils/http/cookie/a;

    invoke-direct {v1, p1, p2}, Lorg/xutils/http/cookie/a;-><init>(Ljava/net/URI;Ljava/net/HttpCookie;)V

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->replace(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->d()V

    return-void
.end method

.method public get(Ljava/net/URI;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    const-string v1, "."

    const-string v2, "domain"

    const-string v3, "path"

    const-string v4, "uri is null"

    .line 1
    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->e()V

    .line 3
    invoke-direct {p0, p1}, Lorg/xutils/http/cookie/DbCookieStore;->a(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :try_start_0
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v6, Lorg/xutils/http/cookie/a;

    invoke-interface {v5, v6}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v5

    .line 6
    invoke-static {}, Lorg/xutils/db/sqlite/WhereBuilder;->b()Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v6

    .line 7
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "="

    if-nez v8, :cond_1

    .line 9
    :try_start_1
    invoke-static {v2, v9, v7}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v2, v9, v10}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v8

    .line 10
    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 11
    invoke-virtual {v7, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v10, :cond_0

    if-le v1, v10, :cond_0

    .line 12
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 14
    invoke-virtual {v8, v2, v9, v1}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 15
    :cond_0
    invoke-virtual {v6, v8}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 18
    invoke-static {v3, v9, v1}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v3, v9, v0}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v9, v7}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v2

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    :goto_0
    if-lez v7, :cond_2

    const/4 v8, 0x0

    .line 21
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v2, v3, v9, v1}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v6, v2}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    :cond_3
    const-string v0, "uri"

    .line 25
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v0, v9, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 26
    invoke-virtual {v5, v6}, Lorg/xutils/db/Selector;->where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/cookie/a;

    .line 28
    invoke-virtual {v0}, Lorg/xutils/http/cookie/a;->isExpired()Z

    move-result v1

    if-nez v1, :cond_4

    .line 29
    invoke-virtual {v0}, Lorg/xutils/http/cookie/a;->toHttpCookie()Ljava/net/HttpCookie;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-object v4
.end method

.method public getCookies()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->e()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v2, Lorg/xutils/http/cookie/a;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/http/cookie/a;

    .line 5
    invoke-virtual {v2}, Lorg/xutils/http/cookie/a;->isExpired()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lorg/xutils/http/cookie/a;->toHttpCookie()Ljava/net/HttpCookie;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public getURIs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/xutils/http/cookie/a;

    const-string v1, "uri"

    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->e()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    iget-object v3, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    .line 4
    invoke-interface {v3, v0}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xutils/db/Selector;->select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/db/DbModelSelector;->findAll()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xutils/db/table/DbModel;

    .line 6
    invoke-virtual {v4, v1}, Lorg/xutils/db/table/DbModel;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v5, :cond_0

    .line 8
    :try_start_1
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 9
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    :try_start_3
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-string v6, "="

    invoke-static {v1, v6, v4}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v4

    invoke-interface {v5, v0, v4}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    .line 11
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v2
.end method

.method public remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 5

    const-string p1, "="

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->e()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "name"

    .line 2
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v2

    .line 3
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "domain"

    .line 5
    invoke-virtual {v2, v4, p1, v3}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_2

    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string v3, "path"

    .line 10
    invoke-virtual {v2, v3, p1, p2}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 11
    :cond_3
    iget-object p1, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class p2, Lorg/xutils/http/cookie/a;

    invoke-interface {p1, p2, v2}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeAll()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->e()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v1, Lorg/xutils/http/cookie/a;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
