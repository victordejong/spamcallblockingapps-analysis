.class Lcom/allinone/callerid/main/EZCallApplication$b;
.super Ljava/lang/Object;
.source "EZCallApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/main/EZCallApplication;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/main/EZCallApplication;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/main/EZCallApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/main/EZCallApplication$b;->d:Lcom/allinone/callerid/main/EZCallApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v0, 0xa

    .line 1
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->a()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/x$Ext;->init(Landroid/app/Application;)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/f/j/b;->a()Lcom/allinone/callerid/f/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/f/j/b;->b()V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 5
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 6
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 7
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 8
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/h1;->m0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->a()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lc/e/a/a/a;->a(Landroid/app/Application;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/allinone/callerid/main/EZCallApplication$b;->d:Lcom/allinone/callerid/main/EZCallApplication;

    invoke-static {}, Lcom/allinone/callerid/util/a1;->x0()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/main/EZCallApplication$b;->d:Lcom/allinone/callerid/main/EZCallApplication;

    invoke-static {}, Lcom/allinone/callerid/util/a1;->o0()Z

    move-result v2

    iput-boolean v2, v1, Lcom/allinone/callerid/main/EZCallApplication;->i:Z

    .line 12
    iget-object v1, p0, Lcom/allinone/callerid/main/EZCallApplication$b;->d:Lcom/allinone/callerid/main/EZCallApplication;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/c0;->b(Landroid/content/Context;)V

    .line 13
    iget-object v1, p0, Lcom/allinone/callerid/main/EZCallApplication$b;->d:Lcom/allinone/callerid/main/EZCallApplication;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc/d/a/q;->h(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x14

    const-wide/16 v2, 0x2710

    if-ge v0, v1, :cond_2

    :try_start_1
    const-string v0, "TLSv1"

    .line 14
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 16
    new-instance v1, Lcom/allinone/callerid/j/b/b;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/allinone/callerid/j/b/b;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 17
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v5, Lcom/allinone/callerid/j/b/a;

    invoke-direct {v5}, Lcom/allinone/callerid/j/b/a;-><init>()V

    .line 19
    invoke-virtual {v0, v1, v5}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/zhy/http/okhttp/OkHttpUtils;->initClient(Lokhttp3/OkHttpClient;)Lcom/zhy/http/okhttp/OkHttpUtils;

    goto :goto_0

    .line 23
    :cond_2
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/zhy/http/okhttp/OkHttpUtils;->initClient(Lokhttp3/OkHttpClient;)Lcom/zhy/http/okhttp/OkHttpUtils;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 28
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
