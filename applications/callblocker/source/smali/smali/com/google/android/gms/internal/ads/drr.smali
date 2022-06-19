.class public final Lcom/google/android/gms/internal/ads/drr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/drp;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Z

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/dsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsm",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/drv;

.field private final i:Lcom/google/android/gms/internal/ads/drv;

.field private final j:Lcom/google/android/gms/internal/ads/dsa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsa",
            "<-",
            "Lcom/google/android/gms/internal/ads/drr;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/android/gms/internal/ads/drq;

.field private l:Ljava/net/HttpURLConnection;

.field private m:Ljava/io/InputStream;

.field private n:Z

.field private o:J

.field private p:J

.field private q:J

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    const-string/jumbo v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 210
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/drr;->a:Ljava/util/regex/Pattern;

    .line 211
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/drr;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dsm;Lcom/google/android/gms/internal/ads/dsa;IIZLcom/google/android/gms/internal/ads/drv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/dsm",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsa",
            "<-",
            "Lcom/google/android/gms/internal/ads/drr;",
            ">;IIZ",
            "Lcom/google/android/gms/internal/ads/drv;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/drz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->f:Ljava/lang/String;

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/drr;->g:Lcom/google/android/gms/internal/ads/dsm;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/drr;->j:Lcom/google/android/gms/internal/ads/dsa;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/drv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/drv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->i:Lcom/google/android/gms/internal/ads/drv;

    .line 6
    iput p4, p0, Lcom/google/android/gms/internal/ads/drr;->d:I

    .line 7
    iput p5, p0, Lcom/google/android/gms/internal/ads/drr;->e:I

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/drr;->c:Z

    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/drr;->h:Lcom/google/android/gms/internal/ads/drv;

    .line 10
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .locals 9

    .prologue
    .line 180
    const-wide/16 v0, -0x1

    .line 181
    const-string/jumbo v2, "Content-Length"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 187
    :cond_0
    :goto_0
    const-string/jumbo v2, "Content-Range"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    sget-object v2, Lcom/google/android/gms/internal/ads/drr;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    const/4 v3, 0x2

    .line 192
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    sub-long v2, v6, v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 193
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    move-wide v0, v2

    .line 201
    :cond_1
    :goto_1
    return-wide v0

    .line 186
    :catch_0
    move-exception v2

    const-string/jumbo v2, "DefaultHttpDataSource"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unexpected Content-Length ["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_2
    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    .line 196
    :try_start_2
    const-string/jumbo v6, "DefaultHttpDataSource"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1a

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "Inconsistent headers ["

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "] ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 200
    :catch_1
    move-exception v2

    const-string/jumbo v2, "DefaultHttpDataSource"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unexpected Content-Range ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private final a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    .line 153
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 154
    iget v1, p0, Lcom/google/android/gms/internal/ads/drr;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 155
    iget v1, p0, Lcom/google/android/gms/internal/ads/drr;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 156
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drr;->i:Lcom/google/android/gms/internal/ads/drv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/drv;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_1

    cmp-long v1, p5, v4

    if-eqz v1, :cond_3

    .line 160
    :cond_1
    const/16 v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "bytes="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    cmp-long v2, p5, v4

    if-eqz v2, :cond_2

    .line 162
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    add-long v2, p3, p5

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_2
    const-string/jumbo v2, "Range"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_3
    const-string/jumbo v1, "User-Agent"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/drr;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-nez p7, :cond_4

    .line 166
    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_4
    invoke-virtual {v0, p8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 168
    if-eqz p2, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 169
    if-eqz p2, :cond_6

    .line 170
    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 171
    array-length v1, p2

    if-eqz v1, :cond_6

    .line 172
    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 173
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 174
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 175
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 176
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 179
    :goto_2
    return-object v0

    .line 168
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 178
    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_2
.end method

.method private final d()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;

    .line 208
    :cond_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string/jumbo v1, "DefaultHttpDataSource"

    const-string/jumbo v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final a([BII)I
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 79
    .line 80
    :try_start_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/drr;->q:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/drr;->o:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 81
    sget-object v0, Lcom/google/android/gms/internal/ads/drr;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 82
    if-nez v0, :cond_0

    .line 83
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 84
    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/drr;->q:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/drr;->o:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 85
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/drr;->o:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/drr;->q:J

    sub-long/2addr v4, v6

    array-length v3, v0

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    .line 86
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/drr;->m:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 87
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Lcom/google/android/gms/internal/ads/zzoa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/drr;->k:Lcom/google/android/gms/internal/ads/drq;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzoa;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/drq;I)V

    throw v1

    .line 89
    :cond_1
    if-ne v3, v2, :cond_2

    .line 90
    :try_start_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 91
    :cond_2
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/drr;->q:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/drr;->q:J

    .line 92
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/drr;->j:Lcom/google/android/gms/internal/ads/dsa;

    if-eqz v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/drr;->j:Lcom/google/android/gms/internal/ads/dsa;

    invoke-interface {v4, p0, v3}, Lcom/google/android/gms/internal/ads/dsa;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 95
    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/ads/drr;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 97
    :cond_4
    if-nez p3, :cond_6

    move v0, v1

    .line 113
    :cond_5
    :goto_1
    return v0

    .line 99
    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/drr;->p:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_8

    .line 100
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/drr;->p:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/drr;->r:J

    sub-long/2addr v0, v4

    .line 101
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_7

    move v0, v2

    .line 102
    goto :goto_1

    .line 103
    :cond_7
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 104
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->m:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 105
    if-ne v0, v2, :cond_a

    .line 106
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/drr;->p:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_9

    .line 107
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_9
    move v0, v2

    .line 108
    goto :goto_1

    .line 109
    :cond_a
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/drr;->r:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/drr;->r:J

    .line 110
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drr;->j:Lcom/google/android/gms/internal/ads/dsa;

    if-eqz v1, :cond_5

    .line 111
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drr;->j:Lcom/google/android/gms/internal/ads/dsa;

    invoke-interface {v1, p0, v0}, Lcom/google/android/gms/internal/ads/dsa;->a(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/drq;)J
    .locals 11

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drr;->k:Lcom/google/android/gms/internal/ads/drq;

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/drr;->r:J

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/drr;->q:J

    .line 17
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/drq;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/drq;->b:[B

    .line 19
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    .line 20
    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/drq;->a(I)Z

    move-result v8

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/drr;->c:Z

    if-nez v0, :cond_3

    .line 23
    const/4 v9, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/drr;->a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 44
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 53
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x12b

    if-le v0, v1, :cond_b

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/drr;->d()V

    .line 56
    new-instance v2, Lcom/google/android/gms/internal/ads/zznz;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zznz;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/drq;)V

    .line 57
    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_2

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/zznw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zznw;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zznz;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 59
    :cond_2
    throw v2

    .line 24
    :cond_3
    const/4 v0, 0x0

    .line 25
    :goto_0
    add-int/lit8 v10, v0, 0x1

    const/16 v1, 0x14

    if-gt v0, v1, :cond_8

    .line 26
    const/4 v9, 0x0

    move-object v1, p0

    :try_start_2
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/drr;->a(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 28
    const/16 v9, 0x12c

    if-eq v1, v9, :cond_4

    const/16 v9, 0x12d

    if-eq v1, v9, :cond_4

    const/16 v9, 0x12e

    if-eq v1, v9, :cond_4

    const/16 v9, 0x12f

    if-eq v1, v9, :cond_4

    if-nez v3, :cond_0

    const/16 v3, 0x133

    if-eq v1, v3, :cond_4

    const/16 v3, 0x134

    if-ne v1, v3, :cond_0

    .line 29
    :cond_4
    const/4 v3, 0x0

    .line 30
    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 31
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 33
    if-nez v9, :cond_5

    .line 34
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Null location redirect"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 47
    new-instance v2, Lcom/google/android/gms/internal/ads/zzoa;

    const-string/jumbo v3, "Unable to connect to "

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/drq;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzoa;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/drq;I)V

    throw v2

    .line 35
    :cond_5
    :try_start_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2, v9}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string/jumbo v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 38
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "Unsupported protocol redirect: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v0, v10

    move-object v2, v1

    .line 41
    goto/16 :goto_0

    .line 43
    :cond_8
    new-instance v0, Ljava/net/NoRouteToHostException;

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Too many redirects: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 47
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/drr;->d()V

    .line 52
    new-instance v2, Lcom/google/android/gms/internal/ads/zzoa;

    const-string/jumbo v3, "Unable to connect to "

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/drq;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzoa;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/drq;I)V

    throw v2

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 60
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    .line 61
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_d

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    :goto_4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/drr;->o:J

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/drq;->a(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 63
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 64
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/drr;->p:J

    .line 70
    :goto_5
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->m:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/drr;->n:Z

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->j:Lcom/google/android/gms/internal/ads/dsa;

    if-eqz v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->j:Lcom/google/android/gms/internal/ads/dsa;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dsa;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/drq;)V

    .line 78
    :cond_c
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/drr;->p:J

    return-wide v0

    .line 61
    :cond_d
    const-wide/16 v0, 0x0

    goto :goto_4

    .line 65
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drr;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    .line 66
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/drr;->o:J

    sub-long/2addr v0, v2

    .line 67
    :goto_6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/drr;->p:J

    goto :goto_5

    :cond_f
    const-wide/16 v0, -0x1

    goto :goto_6

    .line 69
    :cond_10
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/drr;->p:J

    goto :goto_5

    .line 72
    :catch_2
    move-exception v0

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/drr;->d()V

    .line 74
    new-instance v1, Lcom/google/android/gms/internal/ads/zzoa;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzoa;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/drq;I)V

    throw v1
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 117
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;

    .line 118
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/drr;->p:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/drr;->p:J

    .line 120
    :goto_0
    sget v3, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v4, 0x13

    if-eq v3, v4, :cond_0

    sget v3, Lcom/google/android/gms/internal/ads/dsn;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x14

    if-ne v3, v4, :cond_1

    .line 121
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 122
    cmp-long v3, v0, v8

    if-nez v3, :cond_5

    .line 123
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 135
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :cond_2
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/drr;->m:Ljava/io/InputStream;

    .line 140
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/drr;->d()V

    .line 141
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/drr;->n:Z

    if-eqz v0, :cond_3

    .line 142
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/drr;->n:Z

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->j:Lcom/google/android/gms/internal/ads/dsa;

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->j:Lcom/google/android/gms/internal/ads/dsa;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dsa;->a(Ljava/lang/Object;)V

    .line 152
    :cond_3
    return-void

    .line 118
    :cond_4
    :try_start_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/drr;->p:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/drr;->r:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v0, v4

    goto :goto_0

    .line 125
    :cond_5
    const-wide/16 v4, 0x800

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 126
    :cond_6
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string/jumbo v1, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 130
    const-string/jumbo v1, "unexpectedEndOfInput"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 132
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 137
    :catch_1
    move-exception v0

    .line 138
    :try_start_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzoa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/drr;->k:Lcom/google/android/gms/internal/ads/drq;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzoa;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/drq;I)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    :catchall_0
    move-exception v0

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/drr;->m:Ljava/io/InputStream;

    .line 146
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/drr;->d()V

    .line 147
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/drr;->n:Z

    if-eqz v1, :cond_8

    .line 148
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/drr;->n:Z

    .line 149
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drr;->j:Lcom/google/android/gms/internal/ads/dsa;

    if-eqz v1, :cond_8

    .line 150
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drr;->j:Lcom/google/android/gms/internal/ads/dsa;

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/dsa;->a(Ljava/lang/Object;)V

    .line 151
    :cond_8
    throw v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drr;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
