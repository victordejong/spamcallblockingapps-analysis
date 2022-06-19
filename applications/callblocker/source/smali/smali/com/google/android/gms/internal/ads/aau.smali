.class final Lcom/google/android/gms/internal/ads/aau;
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
.field private c:Ljavax/net/ssl/SSLSocketFactory;

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/drv;

.field private final h:Lcom/google/android/gms/internal/ads/dsa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsa",
            "<-",
            "Lcom/google/android/gms/internal/ads/aau;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/gms/internal/ads/drq;

.field private j:Ljava/net/HttpURLConnection;

.field private k:Ljava/io/InputStream;

.field private l:Z

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:I

.field private r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    const-string/jumbo v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 226
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/aau;->a:Ljava/util/regex/Pattern;

    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/aau;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dsa;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/dsa",
            "<-",
            "Lcom/google/android/gms/internal/ads/aau;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/aax;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aax;-><init>(Lcom/google/android/gms/internal/ads/aau;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->r:Ljava/util/Set;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/drz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->f:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aau;->h:Lcom/google/android/gms/internal/ads/dsa;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/drv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/drv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->g:Lcom/google/android/gms/internal/ads/drv;

    .line 7
    iput p3, p0, Lcom/google/android/gms/internal/ads/aau;->d:I

    .line 8
    iput p4, p0, Lcom/google/android/gms/internal/ads/aau;->e:I

    .line 9
    iput p5, p0, Lcom/google/android/gms/internal/ads/aau;->q:I

    .line 10
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aau;)I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/google/android/gms/internal/ads/aau;->q:I

    return v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .locals 8

    .prologue
    .line 194
    const-wide/16 v0, -0x1

    .line 195
    const-string/jumbo v2, "Content-Length"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 201
    :cond_0
    :goto_0
    const-string/jumbo v2, "Content-Range"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    sget-object v2, Lcom/google/android/gms/internal/ads/aau;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    const/4 v3, 0x2

    .line 206
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

    .line 207
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    move-wide v0, v2

    .line 215
    :cond_1
    :goto_1
    return-wide v0

    .line 200
    :catch_0
    move-exception v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Unexpected Content-Length ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    .line 210
    :try_start_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1a

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Inconsistent headers ["

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 211
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 214
    :catch_1
    move-exception v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Unexpected Content-Range ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aau;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aau;->a(Ljava/net/Socket;)V

    return-void
.end method

.method private final a(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->r:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method private final c()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->j:Ljava/net/HttpURLConnection;

    .line 222
    :cond_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string/jumbo v1, "Unexpected error while disconnecting"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a([BII)I
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 107
    .line 108
    :try_start_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/aau;->o:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/aau;->m:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 109
    sget-object v0, Lcom/google/android/gms/internal/ads/aau;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 110
    if-nez v0, :cond_0

    .line 111
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 112
    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/aau;->o:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/aau;->m:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 113
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/aau;->m:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/aau;->o:J

    sub-long/2addr v4, v6

    array-length v3, v0

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    .line 114
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aau;->k:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 115
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Lcom/google/android/gms/internal/ads/zzoa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aau;->i:Lcom/google/android/gms/internal/ads/drq;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzoa;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/drq;I)V

    throw v1

    .line 117
    :cond_1
    if-ne v3, v2, :cond_2

    .line 118
    :try_start_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 119
    :cond_2
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/aau;->o:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/aau;->o:J

    .line 120
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aau;->h:Lcom/google/android/gms/internal/ads/dsa;

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aau;->h:Lcom/google/android/gms/internal/ads/dsa;

    invoke-interface {v4, p0, v3}, Lcom/google/android/gms/internal/ads/dsa;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 123
    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/ads/aau;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 125
    :cond_4
    if-nez p3, :cond_6

    move v0, v1

    .line 141
    :cond_5
    :goto_1
    return v0

    .line 127
    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/aau;->n:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_8

    .line 128
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/aau;->n:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/aau;->p:J

    sub-long/2addr v0, v4

    .line 129
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_7

    move v0, v2

    .line 130
    goto :goto_1

    .line 131
    :cond_7
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 132
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->k:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 133
    if-ne v0, v2, :cond_a

    .line 134
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/aau;->n:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_9

    .line 135
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_9
    move v0, v2

    .line 136
    goto :goto_1

    .line 137
    :cond_a
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/aau;->p:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/aau;->p:J

    .line 138
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aau;->h:Lcom/google/android/gms/internal/ads/dsa;

    if-eqz v1, :cond_5

    .line 139
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aau;->h:Lcom/google/android/gms/internal/ads/dsa;

    invoke-interface {v1, p0, v0}, Lcom/google/android/gms/internal/ads/dsa;->a(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/drq;)J
    .locals 18

    .prologue
    .line 12
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aau;->i:Lcom/google/android/gms/internal/ads/drq;

    .line 13
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/aau;->p:J

    .line 14
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/aau;->o:J

    .line 16
    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/drq;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/drq;->b:[B

    .line 18
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/drq;->d:J

    .line 19
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/drq;->e:J

    .line 20
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/drq;->a(I)Z

    move-result v12

    .line 21
    const/4 v2, 0x0

    move-object v6, v3

    move-object v7, v4

    .line 22
    :goto_0
    add-int/lit8 v5, v2, 0x1

    const/16 v3, 0x14

    if-gt v2, v3, :cond_c

    .line 24
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 25
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    .line 26
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/aau;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 27
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/aau;->d:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 28
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/aau;->e:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/aau;->g:Lcom/google/android/gms/internal/ads/drv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/drv;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 73
    :catch_0
    move-exception v2

    move-object v3, v2

    .line 74
    new-instance v4, Lcom/google/android/gms/internal/ads/zzoa;

    const-string/jumbo v5, "Unable to connect to "

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/drq;->a:Landroid/net/Uri;

    .line 75
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-direct {v4, v2, v3, v0, v5}, Lcom/google/android/gms/internal/ads/zzoa;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/drq;I)V

    throw v4

    .line 32
    :cond_1
    const-wide/16 v14, 0x0

    cmp-long v3, v8, v14

    if-nez v3, :cond_2

    const-wide/16 v14, -0x1

    cmp-long v3, v10, v14

    if-eqz v3, :cond_4

    .line 33
    :cond_2
    const/16 v3, 0x1b

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "bytes="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    const-wide/16 v14, -0x1

    cmp-long v4, v10, v14

    if-eqz v4, :cond_3

    .line 35
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-long v14, v8, v10

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    :cond_3
    const-string/jumbo v4, "Range"

    invoke-virtual {v2, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_4
    const-string/jumbo v3, "User-Agent"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/aau;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    if-nez v12, :cond_5

    .line 39
    const-string/jumbo v3, "Accept-Encoding"

    const-string/jumbo v4, "identity"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 41
    if-eqz v6, :cond_7

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 42
    if-eqz v6, :cond_8

    .line 43
    const-string/jumbo v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 44
    array-length v3, v6

    if-eqz v3, :cond_8

    .line 45
    array-length v3, v6

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 46
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 47
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 48
    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 49
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 54
    :goto_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 55
    const/16 v4, 0x12c

    if-eq v3, v4, :cond_6

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_6

    const/16 v4, 0x12e

    if-eq v3, v4, :cond_6

    const/16 v4, 0x12f

    if-eq v3, v4, :cond_6

    if-nez v6, :cond_d

    const/16 v4, 0x133

    if-eq v3, v4, :cond_6

    const/16 v4, 0x134

    if-ne v3, v4, :cond_d

    .line 56
    :cond_6
    const/4 v3, 0x0

    .line 57
    const-string/jumbo v4, "Location"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 60
    if-nez v6, :cond_9

    .line 61
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "Null location redirect"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 51
    :cond_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_4

    .line 62
    :cond_9
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v7, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 64
    const-string/jumbo v6, "https"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "http"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 65
    new-instance v3, Ljava/net/ProtocolException;

    const-string/jumbo v4, "Unsupported protocol redirect: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-direct {v3, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    move v2, v5

    move-object v6, v3

    move-object v7, v4

    .line 68
    goto/16 :goto_0

    .line 70
    :cond_c
    new-instance v2, Ljava/net/NoRouteToHostException;

    const/16 v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Too many redirects: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_d
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/aau;->j:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/aau;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 82
    const/16 v3, 0xc8

    if-lt v2, v3, :cond_e

    const/16 v3, 0x12b

    if-le v2, v3, :cond_12

    .line 83
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/aau;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aau;->c()V

    .line 85
    new-instance v4, Lcom/google/android/gms/internal/ads/zznz;

    move-object/from16 v0, p1

    invoke-direct {v4, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zznz;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/drq;)V

    .line 86
    const/16 v3, 0x1a0

    if-ne v2, v3, :cond_f

    .line 87
    new-instance v2, Lcom/google/android/gms/internal/ads/zznw;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zznw;-><init>(I)V

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zznz;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 88
    :cond_f
    throw v4

    .line 75
    :cond_10
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 78
    :catch_1
    move-exception v2

    move-object v3, v2

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aau;->c()V

    .line 80
    new-instance v4, Lcom/google/android/gms/internal/ads/zzoa;

    const-string/jumbo v5, "Unable to connect to "

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/drq;->a:Landroid/net/Uri;

    .line 81
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-direct {v4, v2, v3, v0, v5}, Lcom/google/android/gms/internal/ads/zzoa;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/drq;I)V

    throw v4

    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 89
    :cond_12
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_14

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/drq;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/drq;->d:J

    :goto_7
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/aau;->m:J

    .line 90
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/drq;->a(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 91
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/drq;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    .line 92
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/drq;->e:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/aau;->n:J

    .line 98
    :goto_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/aau;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/aau;->k:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 103
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/aau;->l:Z

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/aau;->h:Lcom/google/android/gms/internal/ads/dsa;

    if-eqz v2, :cond_13

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/aau;->h:Lcom/google/android/gms/internal/ads/dsa;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dsa;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/drq;)V

    .line 106
    :cond_13
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/aau;->n:J

    return-wide v2

    .line 89
    :cond_14
    const-wide/16 v2, 0x0

    goto :goto_7

    .line 93
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/aau;->j:Ljava/net/HttpURLConnection;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aau;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v2

    .line 95
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/aau;->m:J

    sub-long/2addr v2, v4

    :goto_9
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/aau;->n:J

    goto :goto_8

    :cond_16
    const-wide/16 v2, -0x1

    goto :goto_9

    .line 97
    :cond_17
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/drq;->e:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/aau;->n:J

    goto :goto_8

    .line 100
    :catch_2
    move-exception v2

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aau;->c()V

    .line 102
    new-instance v3, Lcom/google/android/gms/internal/ads/zzoa;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-direct {v3, v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzoa;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/drq;I)V

    throw v3
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->j:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method final a(I)V
    .locals 3

    .prologue
    .line 183
    iput p1, p0, Lcom/google/android/gms/internal/ads/aau;->q:I

    .line 184
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->r:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 185
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/aau;->q:I

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string/jumbo v2, "Failed to update receive buffer size."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 191
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->k:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 145
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aau;->j:Ljava/net/HttpURLConnection;

    .line 146
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/aau;->n:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/aau;->n:J

    .line 148
    :goto_0
    sget v3, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v4, 0x13

    if-eq v3, v4, :cond_0

    sget v3, Lcom/google/android/gms/internal/ads/dsn;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x14

    if-ne v3, v4, :cond_1

    .line 149
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 150
    cmp-long v3, v0, v8

    if-nez v3, :cond_5

    .line 151
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 163
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->k:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :cond_2
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/aau;->k:Ljava/io/InputStream;

    .line 168
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aau;->c()V

    .line 169
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aau;->l:Z

    if-eqz v0, :cond_3

    .line 170
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/aau;->l:Z

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->h:Lcom/google/android/gms/internal/ads/dsa;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->h:Lcom/google/android/gms/internal/ads/dsa;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dsa;->a(Ljava/lang/Object;)V

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aau;->r:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 174
    return-void

    .line 146
    :cond_4
    :try_start_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/aau;->n:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/aau;->p:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr v0, v4

    goto :goto_0

    .line 153
    :cond_5
    const-wide/16 v4, 0x800

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 154
    :cond_6
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string/jumbo v1, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "unexpectedEndOfInput"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 160
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

    .line 165
    :catch_1
    move-exception v0

    .line 166
    :try_start_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzoa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aau;->i:Lcom/google/android/gms/internal/ads/drq;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzoa;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/drq;I)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 175
    :catchall_0
    move-exception v0

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/aau;->k:Ljava/io/InputStream;

    .line 176
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aau;->c()V

    .line 177
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/aau;->l:Z

    if-eqz v1, :cond_8

    .line 178
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/aau;->l:Z

    .line 179
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aau;->h:Lcom/google/android/gms/internal/ads/dsa;

    if-eqz v1, :cond_8

    .line 180
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aau;->h:Lcom/google/android/gms/internal/ads/dsa;

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/dsa;->a(Ljava/lang/Object;)V

    .line 181
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aau;->r:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 182
    throw v0
.end method
