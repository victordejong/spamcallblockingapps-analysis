.class public La8/a;
.super Ln7/d0;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/Object;

.field public static e:Z

.field public static f:Z


# instance fields
.field public a:Z

.field public b:Ln7/n;

.field public c:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La8/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln7/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln7/d0;-><init>()V

    .line 2
    iput-object p2, p0, La8/a;->b:Ln7/n;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, La8/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public h(Ln7/g$a;)Lm7/a;
    .locals 6

    .line 1
    iget-object p1, p0, La8/a;->c:Landroid/content/Context;

    const/4 v0, 0x1

    .line 2
    :try_start_0
    sget-object v1, La8/a;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-boolean v2, La8/a;->e:Z

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v1

    goto :goto_0

    .line 5
    :cond_0
    sput-boolean v0, La8/a;->e:Z

    const-string v2, "GmsCore_OpenSSL"

    .line 6
    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    sput-boolean v0, La8/a;->f:Z

    .line 8
    monitor-exit v1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 10
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object p1

    const-string v4, "GmsCore_OpenSSL"

    .line 13
    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    const-string v5, "GmsCore_OpenSSL"

    .line 14
    invoke-static {v5}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 15
    array-length p1, p1

    invoke-static {v4, p1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 16
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->setDefault(Ljavax/net/ssl/SSLContext;)V

    .line 17
    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 18
    sput-boolean v0, La8/a;->f:Z

    .line 19
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const-string v1, "IonConscrypt"

    const-string v2, "Conscrypt initialization failed."

    .line 20
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_0
    sget-boolean p1, La8/a;->f:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-boolean p1, p0, La8/a;->a:Z

    if-nez p1, :cond_3

    .line 22
    iput-boolean v0, p0, La8/a;->a:Z

    :try_start_3
    const-string p1, "TLS"

    const-string v0, "GmsCore_OpenSSL"

    .line 23
    invoke-static {p1, v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 25
    iget-object v0, p0, La8/a;->b:Ln7/n;

    .line 26
    iget-object v2, v0, Ln7/n;->h:Ljavax/net/ssl/SSLContext;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 27
    :cond_2
    sget-object v2, Lk7/c;->t:Ljavax/net/ssl/SSLContext;

    .line 28
    :goto_1
    sget-object v3, Lk7/c;->t:Ljavax/net/ssl/SSLContext;

    if-ne v2, v3, :cond_3

    .line 29
    iput-object p1, v0, Ln7/n;->h:Ljavax/net/ssl/SSLContext;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_3
    return-object v1
.end method
