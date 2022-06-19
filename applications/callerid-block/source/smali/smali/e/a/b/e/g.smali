.class public Le/a/b/e/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/u/e;


# static fields
.field private static final k:Z

.field private static final l:I

.field private static final m:J

.field private static final n:[Ljava/net/InetAddress;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/net/Network;

.field private c:I

.field private d:Landroid/net/NetworkRequest;

.field private e:Landroid/net/ConnectivityManager$NetworkCallback;

.field private volatile f:Landroid/net/ConnectivityManager;

.field private g:Lcom/squareup/okhttp/g;

.field private h:Le/a/b/e/f;

.field private final i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "http.keepAlive"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Le/a/b/e/g;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "http.maxConnections"

    const-string v2, "5"

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Le/a/b/e/g;->l:I

    const-string v0, "http.keepAliveDuration"

    const-string v2, "300000"

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Le/a/b/e/g;->m:J

    new-array v0, v1, [Ljava/net/InetAddress;

    sput-object v0, Le/a/b/e/g;->n:[Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/a/b/e/g;->j:Z

    iput-object p1, p0, Le/a/b/e/g;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iput-object v1, p0, Le/a/b/e/g;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v1, p0, Le/a/b/e/g;->b:Landroid/net/Network;

    iput v0, p0, Le/a/b/e/g;->c:I

    iput-object v1, p0, Le/a/b/e/g;->f:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Le/a/b/e/g;->g:Lcom/squareup/okhttp/g;

    iput-object v1, p0, Le/a/b/e/g;->h:Le/a/b/e/f;

    iput p2, p0, Le/a/b/e/g;->i:I

    invoke-static {p1}, Le/a/b/e/h;->m(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    goto :goto_1

    :cond_0
    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p2, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v0, 0xc

    :goto_0
    invoke-virtual {p2, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    :goto_1
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p2

    iput-object p2, p0, Le/a/b/e/g;->d:Landroid/net/NetworkRequest;

    invoke-static {}, Le/a/b/e/d;->d()Le/a/b/e/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Le/a/b/e/d;->g(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Le/a/b/e/g;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    iput-object p1, p0, Le/a/b/e/g;->b:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic c(Le/a/b/e/g;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/e/g;->k(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private f()Landroid/net/ConnectivityManager;
    .locals 2

    iget-object v0, p0, Le/a/b/e/g;->f:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b/e/g;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Le/a/b/e/g;->f:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Le/a/b/e/g;->f:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private g()Lcom/squareup/okhttp/g;
    .locals 4

    iget-object v0, p0, Le/a/b/e/g;->g:Lcom/squareup/okhttp/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/okhttp/g;

    sget v1, Le/a/b/e/g;->l:I

    sget-wide v2, Le/a/b/e/g;->m:J

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/g;-><init>(IJ)V

    iput-object v0, p0, Le/a/b/e/g;->g:Lcom/squareup/okhttp/g;

    :cond_0
    iget-object v0, p0, Le/a/b/e/g;->g:Lcom/squareup/okhttp/g;

    return-object v0
.end method

.method private i()V
    .locals 3

    invoke-direct {p0}, Le/a/b/e/g;->f()Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Le/a/b/e/g$a;

    invoke-direct {v1, p0}, Le/a/b/e/g$a;-><init>(Le/a/b/e/g;)V

    iput-object v1, p0, Le/a/b/e/g;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    :try_start_0
    iget-object v2, p0, Le/a/b/e/g;->d:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MmsNetworkManager"

    const-string v2, "permission exception... skipping it for testing purposes"

    invoke-static {v1, v2, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/b/e/g;->j:Z

    :goto_0
    return-void
.end method

.method private k(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Le/a/b/e/g;->f()Landroid/net/ConnectivityManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MmsNetworkManager"

    const-string v1, "couldn\'t unregister"

    invoke-static {v0, v1, p1}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Le/a/b/e/g;->l()V

    return-void
.end method

.method private l()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Le/a/b/e/g;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v0, p0, Le/a/b/e/g;->b:Landroid/net/Network;

    const/4 v1, 0x0

    iput v1, p0, Le/a/b/e/g;->c:I

    iput-object v0, p0, Le/a/b/e/g;->g:Lcom/squareup/okhttp/g;

    iput-object v0, p0, Le/a/b/e/g;->h:Le/a/b/e/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/a/b/e/g;->b:Landroid/net/Network;

    if-nez v0, :cond_0

    sget-object p1, Le/a/b/e/g;->n:[Ljava/net/InetAddress;

    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()Landroid/net/Network;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Le/a/b/e/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/a/b/e/g;->c:I

    iget-object v0, p0, Le/a/b/e/g;->b:Landroid/net/Network;

    if-eqz v0, :cond_0

    const-string v0, "MmsNetworkManager"

    const-string v1, "MmsNetworkManager: already available"

    invoke-static {v0, v1}, Le/d/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/b/e/g;->b:Landroid/net/Network;

    monitor-exit p0

    return-object v0

    :cond_0
    const-string v0, "MmsNetworkManager"

    const-string v1, "MmsNetworkManager: start new network request"

    invoke-static {v0, v1}, Le/d/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Le/a/b/e/g;->i()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v2, 0xfde8

    add-long/2addr v0, v2

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v2, "MmsNetworkManager"

    const-string v3, "MmsNetworkManager: acquire network wait interrupted"

    invoke-static {v2, v3}, Le/d/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Le/a/b/e/g;->b:Landroid/net/Network;

    if-nez v2, :cond_2

    iget-boolean v3, p0, Le/a/b/e/g;->j:Z

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    goto :goto_0

    :cond_2
    :goto_2
    monitor-exit p0

    return-object v2

    :cond_3
    const-string v0, "MmsNetworkManager"

    const-string v1, "MmsNetworkManager: timed out"

    invoke-static {v0, v1}, Le/d/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/b/e/g;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v0}, Le/a/b/e/g;->k(Landroid/net/ConnectivityManager$NetworkCallback;)V

    new-instance v0, Lcom/android/mms/service_alt/exception/MmsNetworkException;

    const-string v1, "Acquiring network timed out"

    invoke-direct {v0, v1}, Lcom/android/mms/service_alt/exception/MmsNetworkException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public e()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/a/b/e/g;->b:Landroid/net/Network;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "MmsNetworkManager"

    const-string v2, "MmsNetworkManager: getApnName: network not available"

    invoke-static {v0, v2}, Le/d/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Le/a/b/e/g;->d:Landroid/net/NetworkRequest;

    monitor-exit p0

    return-object v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Le/a/b/e/g;->f()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v0, "MmsNetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsNetworkManager: getApnName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/d/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h()Le/a/b/e/f;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/a/b/e/g;->h:Le/a/b/e/f;

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/b/e/g;->b:Landroid/net/Network;

    if-eqz v0, :cond_0

    new-instance v0, Le/a/b/e/f;

    iget-object v1, p0, Le/a/b/e/g;->a:Landroid/content/Context;

    iget-object v2, p0, Le/a/b/e/g;->b:Landroid/net/Network;

    invoke-virtual {v2}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-direct {p0}, Le/a/b/e/g;->g()Lcom/squareup/okhttp/g;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Le/a/b/e/f;-><init>(Landroid/content/Context;Ljavax/net/SocketFactory;Le/a/b/e/g;Lcom/squareup/okhttp/g;)V

    :goto_0
    iput-object v0, p0, Le/a/b/e/g;->h:Le/a/b/e/f;

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Le/a/b/e/g;->j:Z

    if-eqz v0, :cond_1

    new-instance v0, Le/a/b/e/f;

    iget-object v1, p0, Le/a/b/e/g;->a:Landroid/content/Context;

    new-instance v2, Landroid/net/SSLCertificateSocketFactory;

    const v3, 0xea60

    invoke-direct {v2, v3}, Landroid/net/SSLCertificateSocketFactory;-><init>(I)V

    invoke-direct {p0}, Le/a/b/e/g;->g()Lcom/squareup/okhttp/g;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Le/a/b/e/f;-><init>(Landroid/content/Context;Ljavax/net/SocketFactory;Le/a/b/e/g;Lcom/squareup/okhttp/g;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Le/a/b/e/g;->h:Le/a/b/e/f;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public j()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Le/a/b/e/g;->c:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Le/a/b/e/g;->c:I

    const-string v0, "MmsNetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsNetworkManager: release, count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Le/a/b/e/g;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/d/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Le/a/b/e/g;->c:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Le/a/b/e/g;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v0}, Le/a/b/e/g;->k(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
