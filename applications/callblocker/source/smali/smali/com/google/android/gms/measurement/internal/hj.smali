.class public final Lcom/google/android/gms/measurement/internal/hj;
.super Lcom/google/android/gms/measurement/internal/fy;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private final a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fy;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/jz;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/jz;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/hj;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 3
    return-void

    .line 2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/hj;Ljava/net/HttpURLConnection;)[B
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/hj;->a(Ljava/net/HttpURLConnection;)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)[B
    .locals 5

    .prologue
    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 16
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 17
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    .line 18
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 25
    :cond_0
    throw v0

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 20
    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 22
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 27
    instance-of v0, v1, Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to obtain HTTP connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hj;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    instance-of v0, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 30
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hj;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 32
    :cond_1
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 33
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 34
    const v0, 0xea60

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 35
    const v0, 0xee48

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 36
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 38
    return-object v1
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fy;->A()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 12
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final bridge synthetic l()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->l()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->n()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->o()V

    return-void
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/l;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->r()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/el;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->y()Lcom/google/android/gms/measurement/internal/kk;

    move-result-object v0

    return-object v0
.end method
