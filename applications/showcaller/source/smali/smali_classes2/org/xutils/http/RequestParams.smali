.class public Lorg/xutils/http/RequestParams;
.super Lorg/xutils/http/BaseParams;
.source "RequestParams.java"


# static fields
.field public static final MAX_FILE_LOAD_WORKER:I = 0xa

.field private static final k:Lorg/xutils/http/app/DefaultRedirectHandler;


# instance fields
.field private A:Ljava/util/concurrent/Executor;

.field private B:Lorg/xutils/common/task/Priority;

.field private C:I

.field private D:I

.field private E:Z

.field private F:Z

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:I

.field private K:Lorg/xutils/http/app/HttpRetryHandler;

.field private L:Lorg/xutils/http/app/RequestTracker;

.field private M:Lorg/xutils/http/app/RedirectHandler;

.field private N:Z

.field private l:Lorg/xutils/http/annotation/HttpRequest;

.field private m:Ljava/lang/String;

.field private final n:[Ljava/lang/String;

.field private final o:[Ljava/lang/String;

.field private p:Lorg/xutils/http/app/ParamsBuilder;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljavax/net/ssl/SSLSocketFactory;

.field private t:Landroid/content/Context;

.field private u:Ljava/net/Proxy;

.field private v:Ljavax/net/ssl/HostnameVerifier;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/xutils/http/app/DefaultRedirectHandler;

    invoke-direct {v0}, Lorg/xutils/http/app/DefaultRedirectHandler;-><init>()V

    sput-object v0, Lorg/xutils/http/RequestParams;->k:Lorg/xutils/http/app/DefaultRedirectHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->w:Z

    .line 5
    sget-object v1, Lorg/xutils/common/task/Priority;->DEFAULT:Lorg/xutils/common/task/Priority;

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->B:Lorg/xutils/common/task/Priority;

    const/16 v1, 0x3a98

    .line 6
    iput v1, p0, Lorg/xutils/http/RequestParams;->C:I

    .line 7
    iput v1, p0, Lorg/xutils/http/RequestParams;->D:I

    .line 8
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->E:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->F:Z

    const/4 v1, 0x2

    .line 10
    iput v1, p0, Lorg/xutils/http/RequestParams;->G:I

    .line 11
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->I:Z

    const/16 v1, 0x12c

    .line 12
    iput v1, p0, Lorg/xutils/http/RequestParams;->J:I

    .line 13
    sget-object v1, Lorg/xutils/http/RequestParams;->k:Lorg/xutils/http/app/DefaultRedirectHandler;

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->M:Lorg/xutils/http/app/RedirectHandler;

    .line 14
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->N:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 15
    new-instance p2, Lorg/xutils/http/app/DefaultParamsBuilder;

    invoke-direct {p2}, Lorg/xutils/http/app/DefaultParamsBuilder;-><init>()V

    .line 16
    :cond_0
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->m:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lorg/xutils/http/RequestParams;->n:[Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lorg/xutils/http/RequestParams;->o:[Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lorg/xutils/http/RequestParams;->p:Lorg/xutils/http/app/ParamsBuilder;

    .line 20
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/RequestParams;->t:Landroid/content/Context;

    return-void
.end method

.method private c()Lorg/xutils/http/annotation/HttpRequest;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->l:Lorg/xutils/http/annotation/HttpRequest;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->N:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->N:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    const-class v1, Lorg/xutils/http/RequestParams;

    if-eq v0, v1, :cond_0

    .line 5
    const-class v1, Lorg/xutils/http/annotation/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/annotation/HttpRequest;

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->l:Lorg/xutils/http/annotation/HttpRequest;

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->l:Lorg/xutils/http/annotation/HttpRequest;

    return-object v0
.end method

.method private e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/RequestParams$a;

    invoke-direct {v1, p0}, Lorg/xutils/http/RequestParams$a;-><init>(Lorg/xutils/http/RequestParams;)V

    invoke-static {p0, v0, v1}, Lorg/xutils/http/a;->b(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/http/a$b;)V

    return-void
.end method


# virtual methods
.method d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->c()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "uri is empty && @HttpRequest == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->e()V

    .line 5
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->m:Ljava/lang/String;

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->q:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->c()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpRequest;->builder()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/http/app/ParamsBuilder;

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->p:Lorg/xutils/http/app/ParamsBuilder;

    .line 8
    invoke-interface {v1, p0, v0}, Lorg/xutils/http/app/ParamsBuilder;->buildUri(Lorg/xutils/http/RequestParams;Lorg/xutils/http/annotation/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->q:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->p:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v1, p0}, Lorg/xutils/http/app/ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;)V

    .line 10
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->p:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpRequest;->signs()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lorg/xutils/http/app/ParamsBuilder;->buildSign(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->s:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->p:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/app/ParamsBuilder;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->s:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->p:Lorg/xutils/http/app/ParamsBuilder;

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0, p0}, Lorg/xutils/http/app/ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;)V

    .line 15
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->p:Lorg/xutils/http/app/ParamsBuilder;

    iget-object v1, p0, Lorg/xutils/http/RequestParams;->n:[Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lorg/xutils/http/app/ParamsBuilder;->buildSign(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->s:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    .line 17
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->p:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/app/ParamsBuilder;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->s:Ljavax/net/ssl/SSLSocketFactory;

    :cond_4
    :goto_1
    return-void
.end method

.method public getCacheDirName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xutils/http/RequestParams;->p:Lorg/xutils/http/app/ParamsBuilder;

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->c()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->p:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpRequest;->cacheKeys()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lorg/xutils/http/app/ParamsBuilder;->buildCacheKey(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->r:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->p:Lorg/xutils/http/app/ParamsBuilder;

    iget-object v1, p0, Lorg/xutils/http/RequestParams;->o:[Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lorg/xutils/http/app/ParamsBuilder;->buildCacheKey(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->r:Ljava/lang/String;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheMaxAge()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/xutils/http/RequestParams;->z:J

    return-wide v0
.end method

.method public getCacheSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/xutils/http/RequestParams;->y:J

    return-wide v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/http/RequestParams;->C:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->t:Landroid/content/Context;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->A:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->v:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getHttpRetryHandler()Lorg/xutils/http/app/HttpRetryHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->K:Lorg/xutils/http/app/HttpRetryHandler;

    return-object v0
.end method

.method public getLoadingUpdateMaxTimeSpan()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/http/RequestParams;->J:I

    return v0
.end method

.method public getMaxRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/http/RequestParams;->G:I

    return v0
.end method

.method public getPriority()Lorg/xutils/common/task/Priority;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->B:Lorg/xutils/common/task/Priority;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->u:Ljava/net/Proxy;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/http/RequestParams;->D:I

    return v0
.end method

.method public getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->M:Lorg/xutils/http/app/RedirectHandler;

    return-object v0
.end method

.method public getRequestTracker()Lorg/xutils/http/app/RequestTracker;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->L:Lorg/xutils/http/app/RequestTracker;

    return-object v0
.end method

.method public getSaveFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->H:Ljava/lang/String;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->s:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/http/RequestParams;->m:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->q:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public isAutoRename()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->F:Z

    return v0
.end method

.method public isAutoResume()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->E:Z

    return v0
.end method

.method public isCancelFast()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->I:Z

    return v0
.end method

.method public isUseCookie()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->w:Z

    return v0
.end method

.method public setAutoRename(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->F:Z

    return-void
.end method

.method public setAutoResume(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->E:Z

    return-void
.end method

.method public setCacheDirName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->x:Ljava/lang/String;

    return-void
.end method

.method public setCacheMaxAge(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/xutils/http/RequestParams;->z:J

    return-void
.end method

.method public setCacheSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/xutils/http/RequestParams;->y:J

    return-void
.end method

.method public setCancelFast(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->I:Z

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lorg/xutils/http/RequestParams;->C:I

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->t:Landroid/content/Context;

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->A:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->v:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public setHttpRetryHandler(Lorg/xutils/http/app/HttpRetryHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->K:Lorg/xutils/http/app/HttpRetryHandler;

    return-void
.end method

.method public setLoadingUpdateMaxTimeSpan(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/xutils/http/RequestParams;->J:I

    return-void
.end method

.method public setMaxRetryCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/xutils/http/RequestParams;->G:I

    return-void
.end method

.method public setPriority(Lorg/xutils/common/task/Priority;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->B:Lorg/xutils/common/task/Priority;

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->u:Ljava/net/Proxy;

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lorg/xutils/http/RequestParams;->D:I

    :cond_0
    return-void
.end method

.method public setRedirectHandler(Lorg/xutils/http/app/RedirectHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->M:Lorg/xutils/http/app/RedirectHandler;

    return-void
.end method

.method public setRequestTracker(Lorg/xutils/http/app/RequestTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->L:Lorg/xutils/http/app/RequestTracker;

    return-void
.end method

.method public setSaveFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->H:Ljava/lang/String;

    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->s:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->m:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->q:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setUseCookie(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->w:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "&"

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
