.class final Lcom/google/android/gms/internal/ads/cl0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wh;


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljavax/net/ssl/SSLSocketFactory;

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/internal/ads/vh;

.field private final i:Lcom/google/android/gms/internal/ads/bi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bi<",
            "-",
            "Lcom/google/android/gms/internal/ads/cl0;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/gms/internal/ads/rh;

.field private k:Ljava/net/HttpURLConnection;

.field private l:Ljava/io/InputStream;

.field private m:Z

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:I

.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cl0;->b:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cl0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bi;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bi<",
            "-",
            "Lcom/google/android/gms/internal/ads/cl0;",
            ">;III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/bl0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bl0;-><init>(Lcom/google/android/gms/internal/ads/cl0;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cl0;->d:Ljavax/net/ssl/SSLSocketFactory;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cl0;->s:Ljava/util/Set;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ci;->f(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cl0;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cl0;->i:Lcom/google/android/gms/internal/ads/bi;

    new-instance p1, Lcom/google/android/gms/internal/ads/vh;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cl0;->h:Lcom/google/android/gms/internal/ads/vh;

    iput p3, p0, Lcom/google/android/gms/internal/ads/cl0;->e:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/cl0;->f:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/cl0;->r:I

    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/cl0;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/cl0;->r:I

    return p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/cl0;Ljava/net/Socket;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cl0;->s:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cl0;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unexpected error while disconnecting"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cl0;->k:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cl0;->k:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b([BII)I
    .locals 8

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/cl0;->p:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cl0;->n:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cl0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/cl0;->p:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/cl0;->n:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_4

    sub-long/2addr v6, v1

    .line 4
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cl0;->l:Ljava/io/InputStream;

    .line 5
    invoke-virtual {v1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_3

    if-eq v1, v5, :cond_2

    .line 7
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cl0;->p:J

    int-to-long v6, v1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/cl0;->p:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cl0;->i:Lcom/google/android/gms/internal/ads/bi;

    if-eqz v2, :cond_1

    check-cast v2, Lcom/google/android/gms/internal/ads/rl0;

    .line 8
    invoke-virtual {v2, p0, v1}, Lcom/google/android/gms/internal/ads/rl0;->d0(Lcom/google/android/gms/internal/ads/qh;I)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 11
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/cl0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_1
    if-nez p3, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/cl0;->o:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/cl0;->q:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_6

    :goto_2
    const/4 v4, -0x1

    goto :goto_3

    :cond_6
    int-to-long v6, p3

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cl0;->l:Ljava/io/InputStream;

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v5, :cond_9

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/cl0;->o:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_8

    goto :goto_2

    .line 15
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 16
    :cond_9
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/cl0;->q:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/cl0;->q:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cl0;->i:Lcom/google/android/gms/internal/ads/bi;

    if-eqz p1, :cond_a

    check-cast p1, Lcom/google/android/gms/internal/ads/rl0;

    .line 17
    invoke-virtual {p1, p0, v4}, Lcom/google/android/gms/internal/ads/rl0;->d0(Lcom/google/android/gms/internal/ads/qh;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_3
    return v4

    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Lcom/google/android/gms/internal/ads/zzauf;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/cl0;->j:Lcom/google/android/gms/internal/ads/rh;

    const/4 v0, 0x2

    .line 19
    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/rh;I)V

    throw p2
.end method

.method public final c()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cl0;->k:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/rh;)J
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Unable to connect to "

    .line 1
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/cl0;->j:Lcom/google/android/gms/internal/ads/rh;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/cl0;->q:J

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/cl0;->p:J

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/rh;->a:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/rh;->c:J

    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/rh;->d:J

    const/4 v12, 0x0

    :goto_0
    add-int/lit8 v13, v12, 0x1

    const/16 v14, 0x14

    if-gt v12, v14, :cond_15

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    .line 3
    check-cast v12, Ljava/net/HttpURLConnection;

    .line 4
    instance-of v15, v12, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v15, :cond_0

    .line 5
    move-object v15, v12

    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/cl0;->d:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v15, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    iget v6, v1, Lcom/google/android/gms/internal/ads/cl0;->e:I

    .line 6
    invoke-virtual {v12, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v6, v1, Lcom/google/android/gms/internal/ads/cl0;->f:I

    .line 7
    invoke-virtual {v12, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/cl0;->h:Lcom/google/android/gms/internal/ads/vh;

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/vh;->a()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v11, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v6, 0x1b

    const-wide/16 v17, -0x1

    cmp-long v11, v7, v4

    if-nez v11, :cond_3

    cmp-long v11, v9, v17

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    move-wide/from16 v21, v7

    goto :goto_4

    :cond_3
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "bytes="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "-"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    cmp-long v15, v9, v17

    if-eqz v15, :cond_4

    add-long v19, v7, v9

    move-wide/from16 v21, v7

    add-long v6, v19, v17

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v14

    new-instance v14, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_4
    move-wide/from16 v21, v7

    :goto_3
    const-string v6, "Range"

    .line 12
    invoke-virtual {v12, v6, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v6, "User-Agent"

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/cl0;->g:Ljava/lang/String;

    .line 13
    invoke-virtual {v12, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Accept-Encoding"

    const-string v7, "identity"

    .line 14
    invoke-virtual {v12, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 15
    invoke-virtual {v12, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 16
    invoke-virtual {v12, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 17
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->connect()V

    .line 18
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x12c

    if-eq v6, v7, :cond_11

    const/16 v7, 0x12d

    if-eq v6, v7, :cond_11

    const/16 v7, 0x12e

    if-eq v6, v7, :cond_11

    const/16 v7, 0x12f

    if-eq v6, v7, :cond_11

    const/16 v7, 0x133

    if-eq v6, v7, :cond_11

    const/16 v7, 0x134

    if-ne v6, v7, :cond_5

    goto/16 :goto_b

    .line 19
    :cond_5
    iput-object v12, v1, Lcom/google/android/gms/internal/ads/cl0;->k:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 20
    :try_start_1
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_e

    const/16 v6, 0x12b

    if-le v0, v6, :cond_6

    goto/16 :goto_9

    :cond_6
    if-ne v0, v3, :cond_7

    .line 21
    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/rh;->c:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move-wide v6, v4

    :goto_5
    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/cl0;->n:J

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/rh;->d:J

    cmp-long v0, v6, v17

    if-eqz v0, :cond_8

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/cl0;->o:J

    goto/16 :goto_8

    .line 22
    :cond_8
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/cl0;->k:Ljava/net/HttpURLConnection;

    const-string v3, "Content-Length"

    .line 23
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "]"

    if-nez v6, :cond_9

    .line 25
    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 26
    :catch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1c

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unexpected Content-Length ["

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    :cond_9
    move-wide/from16 v9, v17

    :goto_6
    const-string v6, "Content-Range"

    .line 27
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/google/android/gms/internal/ads/cl0;->b:Ljava/util/regex/Pattern;

    .line 29
    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 30
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x2

    .line 31
    :try_start_3
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    cmp-long v6, v9, v4

    if-gez v6, :cond_a

    move-wide v9, v11

    goto :goto_7

    :cond_a
    cmp-long v4, v9, v11

    if-eqz v4, :cond_b

    .line 32
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Inconsistent headers ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] ["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    .line 33
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-wide v9, v3

    goto :goto_7

    .line 34
    :catch_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x1b

    add-int/2addr v3, v5

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected Content-Range ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    :cond_b
    :goto_7
    cmp-long v0, v9, v17

    if-eqz v0, :cond_c

    .line 35
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/cl0;->n:J

    sub-long v17, v9, v3

    :cond_c
    move-wide/from16 v3, v17

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/cl0;->o:J

    .line 36
    :goto_8
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/cl0;->k:Ljava/net/HttpURLConnection;

    .line 37
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cl0;->l:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/cl0;->m:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/cl0;->i:Lcom/google/android/gms/internal/ads/bi;

    if-eqz v0, :cond_d

    check-cast v0, Lcom/google/android/gms/internal/ads/rl0;

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/rl0;->c0(Lcom/google/android/gms/internal/ads/qh;Lcom/google/android/gms/internal/ads/rh;)V

    :cond_d
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/cl0;->o:J

    return-wide v2

    :catch_2
    move-exception v0

    .line 39
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/cl0;->i()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzauf;

    const/4 v4, 0x1

    .line 40
    invoke-direct {v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/rh;I)V

    throw v3

    .line 41
    :cond_e
    :goto_9
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cl0;->k:Ljava/net/HttpURLConnection;

    .line 42
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/cl0;->i()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaug;

    .line 44
    invoke-direct {v4, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzaug;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/rh;)V

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaua;

    const/4 v6, 0x0

    .line 45
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzaua;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 46
    :cond_f
    throw v4

    :catch_3
    move-exception v0

    move-object v4, v0

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/cl0;->i()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzauf;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/rh;->a:Landroid/net/Uri;

    .line 48
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 49
    :cond_10
    new-instance v5, Ljava/lang/String;

    .line 50
    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_a
    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/rh;I)V

    throw v0

    :cond_11
    :goto_b
    const/4 v6, 0x0

    :try_start_5
    const-string v7, "Location"

    .line 51
    invoke-virtual {v12, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v7, :cond_14

    .line 53
    new-instance v8, Ljava/net/URL;

    .line 54
    invoke-direct {v8, v0, v7}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v7, "https"

    .line 56
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string v7, "http"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 57
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "Unsupported protocol redirect: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 58
    :cond_12
    new-instance v0, Ljava/lang/String;

    .line 59
    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_c
    invoke-direct {v4, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_13
    move-object v0, v8

    move v12, v13

    move-wide/from16 v7, v21

    goto/16 :goto_0

    .line 60
    :cond_14
    new-instance v0, Ljava/net/ProtocolException;

    const-string v4, "Null location redirect"

    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_15
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x1f

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Too many redirects: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v0

    .line 62
    new-instance v4, Lcom/google/android/gms/internal/ads/zzauf;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/rh;->a:Landroid/net/Uri;

    .line 63
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    .line 64
    :cond_16
    new-instance v5, Ljava/lang/String;

    .line 65
    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_d
    const/4 v5, 0x1

    invoke-direct {v4, v3, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/rh;I)V

    throw v4
.end method

.method public final e()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cl0;->l:Ljava/io/InputStream;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cl0;->k:Ljava/net/HttpURLConnection;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/cl0;->o:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/cl0;->q:J

    sub-long/2addr v3, v7

    .line 3
    :goto_0
    sget v7, Lcom/google/android/gms/internal/ads/si;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x13

    if-eq v7, v8, :cond_1

    const/16 v8, 0x14

    if-eq v7, v8, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 5
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x800

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unexpectedEndOfInput"

    new-array v5, v1, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :catch_0
    :cond_5
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cl0;->l:Ljava/io/InputStream;

    .line 14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v2

    .line 15
    :try_start_3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzauf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cl0;->j:Lcom/google/android/gms/internal/ads/rh;

    const/4 v5, 0x3

    .line 16
    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/rh;I)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    :cond_6
    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cl0;->l:Ljava/io/InputStream;

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cl0;->i()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cl0;->m:Z

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cl0;->m:Z

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cl0;->s:Ljava/util/Set;

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :catchall_0
    move-exception v2

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cl0;->l:Ljava/io/InputStream;

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cl0;->i()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cl0;->m:Z

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cl0;->m:Z

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cl0;->s:Ljava/util/Set;

    .line 22
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 23
    throw v2
.end method

.method final g(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/cl0;->r:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cl0;->s:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 2
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/cl0;->r:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to update receive buffer size."

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
