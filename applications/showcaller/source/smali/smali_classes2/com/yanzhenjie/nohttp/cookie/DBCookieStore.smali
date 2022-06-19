.class public Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;
.super Lcom/yanzhenjie/nohttp/cookie/BasicStore;
.source "DBCookieStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/nohttp/cookie/DBCookieStore$CookieStoreListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yanzhenjie/nohttp/cookie/BasicStore<",
        "Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_COOKIE_SIZE:I = 0x22b8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/nohttp/db/BaseDao<",
            "Lcom/yanzhenjie/nohttp/cookie/CookieEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mCookieStoreListener:Lcom/yanzhenjie/nohttp/cookie/DBCookieStore$CookieStoreListener;

.field private mLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/cookie/BasicStore;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mContext:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private checkInitialization()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/cookie/BasicStore;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/yanzhenjie/nohttp/cookie/CookieEntityDao;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntityDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;

    .line 4
    new-instance v0, Lcom/yanzhenjie/nohttp/db/Where;

    sget-object v1, Lcom/yanzhenjie/nohttp/db/Where$Options;->EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "expiry"

    invoke-direct {v0, v3, v1, v2}, Lcom/yanzhenjie/nohttp/db/Where;-><init>(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/db/Where;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->delete(Ljava/lang/String;)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;
    .locals 7

    .line 1
    :try_start_0
    new-instance v6, Ljava/net/URI;

    const-string v1, "http"

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v6

    :catch_0
    return-object p1
.end method

.method private trimSize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->count()I

    move-result v0

    const/16 v1, 0x22c2

    if-le v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;

    add-int/lit16 v0, v0, -0x22b8

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v2}, Lcom/yanzhenjie/nohttp/db/BaseDao;->getList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->delete(Ljava/util/List;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->checkInitialization()V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/cookie/BasicStore;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieStoreListener:Lcom/yanzhenjie/nohttp/cookie/DBCookieStore$CookieStoreListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore$CookieStoreListener;->onSaveCookie(Ljava/net/URI;Ljava/net/HttpCookie;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;

    new-instance v1, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;

    invoke-direct {v1, p1, p2}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;-><init>(Ljava/net/URI;Ljava/net/HttpCookie;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/db/BaseDao;->replace(Lcom/yanzhenjie/nohttp/db/BasicEntity;)J

    .line 7
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->trimSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public get(Ljava/net/URI;)Ljava/util/List;
    .locals 9
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

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->checkInitialization()V

    .line 2
    iget-object v4, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_7

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/cookie/BasicStore;->isEnable()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 5
    new-instance v4, Lcom/yanzhenjie/nohttp/db/Where;

    invoke-direct {v4}, Lcom/yanzhenjie/nohttp/db/Where;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 8
    new-instance v6, Lcom/yanzhenjie/nohttp/db/Where;

    sget-object v7, Lcom/yanzhenjie/nohttp/db/Where$Options;->EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-direct {v6, v2, v7, v5}, Lcom/yanzhenjie/nohttp/db/Where;-><init>(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {v6, v2, v7, v8}, Lcom/yanzhenjie/nohttp/db/Where;->or(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object v6

    .line 10
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 11
    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v8, :cond_1

    if-le v1, v8, :cond_1

    .line 12
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 14
    invoke-virtual {v6, v2, v7, v1}, Lcom/yanzhenjie/nohttp/db/Where;->or(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    .line 15
    :cond_1
    invoke-virtual {v6}, Lcom/yanzhenjie/nohttp/db/Where;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/yanzhenjie/nohttp/db/Where;->set(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/db/Where;

    .line 16
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    new-instance v2, Lcom/yanzhenjie/nohttp/db/Where;

    sget-object v5, Lcom/yanzhenjie/nohttp/db/Where$Options;->EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-direct {v2, v3, v5, v1}, Lcom/yanzhenjie/nohttp/db/Where;-><init>(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v2, v3, v5, v0}, Lcom/yanzhenjie/nohttp/db/Where;->or(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v3}, Lcom/yanzhenjie/nohttp/db/Where;->orNull(Ljava/lang/CharSequence;)Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    :goto_0
    if-lez v5, :cond_3

    const/4 v6, 0x0

    .line 22
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 23
    sget-object v5, Lcom/yanzhenjie/nohttp/db/Where$Options;->EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-virtual {v2, v3, v5, v1}, Lcom/yanzhenjie/nohttp/db/Where;->or(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 25
    :cond_3
    invoke-virtual {v2}, Lcom/yanzhenjie/nohttp/db/Where;->bracket()Lcom/yanzhenjie/nohttp/db/Where;

    .line 26
    invoke-virtual {v4, v2}, Lcom/yanzhenjie/nohttp/db/Where;->and(Lcom/yanzhenjie/nohttp/db/Where;)Lcom/yanzhenjie/nohttp/db/Where;

    :cond_4
    const-string v0, "uri"

    .line 27
    sget-object v1, Lcom/yanzhenjie/nohttp/db/Where$Options;->EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, v1, p1}, Lcom/yanzhenjie/nohttp/db/Where;->or(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    .line 28
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;

    invoke-virtual {v4}, Lcom/yanzhenjie/nohttp/db/Where;->get()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Lcom/yanzhenjie/nohttp/db/BaseDao;->getList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;

    .line 31
    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->isExpired()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->toHttpCookie()Ljava/net/HttpCookie;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 32
    :cond_6
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 33
    :cond_7
    :goto_2
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
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
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->checkInitialization()V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/cookie/BasicStore;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 5
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/db/BaseDao;->getAll()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;

    .line 8
    invoke-virtual {v2}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->isExpired()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->toHttpCookie()Ljava/net/HttpCookie;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getURIs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->checkInitialization()V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/cookie/BasicStore;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 5
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/db/BaseDao;->getAll()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;

    .line 8
    invoke-virtual {v2}, Lcom/yanzhenjie/nohttp/cookie/CookieEntity;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_2

    .line 10
    :try_start_2
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 11
    :try_start_3
    invoke-static {v3}, Lcom/yanzhenjie/nohttp/Logger;->w(Ljava/lang/Throwable;)V

    .line 12
    iget-object v3, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/yanzhenjie/nohttp/db/BaseDao;->delete(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->checkInitialization()V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/cookie/BasicStore;->isEnable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieStoreListener:Lcom/yanzhenjie/nohttp/cookie/DBCookieStore$CookieStoreListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore$CookieStoreListener;->onRemoveCookie(Ljava/net/URI;Ljava/net/HttpCookie;)V

    .line 5
    :cond_1
    new-instance p1, Lcom/yanzhenjie/nohttp/db/Where;

    const-string v1, "name"

    sget-object v2, Lcom/yanzhenjie/nohttp/db/Where$Options;->EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Lcom/yanzhenjie/nohttp/db/Where;-><init>(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "domain"

    invoke-virtual {p1, v3, v2, v1}, Lcom/yanzhenjie/nohttp/db/Where;->and(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    .line 8
    :cond_2
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_3

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_3
    const-string v0, "path"

    .line 12
    invoke-virtual {p1, v0, v2, p2}, Lcom/yanzhenjie/nohttp/db/Where;->and(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    .line 13
    :cond_4
    iget-object p2, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;

    invoke-virtual {p1}, Lcom/yanzhenjie/nohttp/db/Where;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/yanzhenjie/nohttp/db/BaseDao;->delete(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object p2, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public removeAll()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->checkInitialization()V

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/cookie/BasicStore;->isEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieEntityDao:Lcom/yanzhenjie/nohttp/db/BaseDao;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/db/BaseDao;->deleteAll()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setCookieStoreListener(Lcom/yanzhenjie/nohttp/cookie/DBCookieStore$CookieStoreListener;)Ljava/net/CookieStore;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cookie/DBCookieStore;->mCookieStoreListener:Lcom/yanzhenjie/nohttp/cookie/DBCookieStore$CookieStoreListener;

    return-object p0
.end method
