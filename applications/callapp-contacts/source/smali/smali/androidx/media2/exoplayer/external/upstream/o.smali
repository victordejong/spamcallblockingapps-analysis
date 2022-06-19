.class public final Landroidx/media2/exoplayer/external/upstream/o;
.super Landroidx/media2/exoplayer/external/upstream/d;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/HttpDataSource;


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
.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;

.field private final i:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;

.field private j:Landroidx/media2/exoplayer/external/util/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/r<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroidx/media2/exoplayer/external/upstream/h;

.field private l:Ljava/net/HttpURLConnection;

.field private m:Ljava/io/InputStream;

.field private n:Z

.field private o:I

.field private p:J

.field private q:J

.field private r:J

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 81
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/o;->b:Ljava/util/regex/Pattern;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/o;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1f40

    .line 106
    invoke-direct {p0, p1, v0, v0}, Landroidx/media2/exoplayer/external/upstream/o;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 117
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/o;-><init>(Ljava/lang/String;IIZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$b;)V
    .locals 1

    const/4 v0, 0x1

    .line 143
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/d;-><init>(Z)V

    .line 144
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/o;->g:Ljava/lang/String;

    .line 145
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/o;->i:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;

    .line 146
    iput p2, p0, Landroidx/media2/exoplayer/external/upstream/o;->e:I

    .line 147
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/o;->f:I

    .line 148
    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/upstream/o;->d:Z

    .line 149
    iput-object p5, p0, Landroidx/media2/exoplayer/external/upstream/o;->h:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/util/r<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1f40

    .line 162
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media2/exoplayer/external/upstream/o;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/r;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/r;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/util/r<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 187
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/upstream/o;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/r;IIZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/r;IIZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/util/r<",
            "Ljava/lang/String;",
            ">;IIZ",
            "Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 221
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/d;-><init>(Z)V

    .line 222
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/o;->g:Ljava/lang/String;

    .line 223
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/o;->j:Landroidx/media2/exoplayer/external/util/r;

    .line 224
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/o;->i:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;

    .line 225
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/o;->e:I

    .line 226
    iput p4, p0, Landroidx/media2/exoplayer/external/upstream/o;->f:I

    .line 227
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/upstream/o;->d:Z

    .line 228
    iput-object p6, p0, Landroidx/media2/exoplayer/external/upstream/o;->h:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .locals 10

    const-string v0, "Content-Length"

    .line 613
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    const-string v3, "DefaultHttpDataSource"

    if-nez v1, :cond_0

    .line 616
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected Content-Length ["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v4, -0x1

    :goto_0
    const-string v1, "Content-Range"

    .line 621
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 622
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 623
    sget-object v1, Landroidx/media2/exoplayer/external/upstream/o;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 624
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    .line 627
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gez v1, :cond_1

    move-wide v4, v6

    goto :goto_1

    :cond_1
    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    .line 637
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Inconsistent headers ["

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v4, v0

    goto :goto_1

    .line 642
    :catch_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected Content-Range ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-wide v4
.end method

.method private a(Ljava/net/URL;I[BJJZZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4573
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 527
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/o;->e:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 528
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/o;->f:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 531
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/o;->h:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;

    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 534
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/o;->i:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 535
    invoke-interface {v0, p11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 537
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p11

    invoke-interface {p11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p11

    :goto_0
    invoke-interface {p11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 538
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long p11, p4, v0

    if-nez p11, :cond_2

    cmp-long p11, p6, v2

    if-eqz p11, :cond_4

    :cond_2
    const/16 p11, 0x1b

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p11, "bytes="

    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p11, "-"

    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p11

    cmp-long v0, p6, v2

    if-eqz v0, :cond_3

    .line 544
    invoke-static {p11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p11

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    invoke-static {p11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p6

    add-int/lit8 p6, p6, 0x14

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7, p6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p7, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p11

    :cond_3
    const-string p4, "Range"

    .line 546
    invoke-virtual {p1, p4, p11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_4
    iget-object p4, p0, Landroidx/media2/exoplayer/external/upstream/o;->g:Ljava/lang/String;

    const-string p5, "User-Agent"

    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p8, :cond_5

    const-string p4, "gzip"

    goto :goto_1

    :cond_5
    const-string p4, "identity"

    :goto_1
    const-string p5, "Accept-Encoding"

    .line 549
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p9, :cond_6

    const-string p4, "Icy-MetaData"

    const-string p5, "1"

    .line 551
    invoke-virtual {p1, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_6
    invoke-virtual {p1, p10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_7

    const/4 p4, 0x1

    goto :goto_2

    :cond_7
    const/4 p4, 0x0

    .line 556
    :goto_2
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 557
    invoke-static {p2}, Landroidx/media2/exoplayer/external/upstream/h;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    .line 559
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 560
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 561
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 562
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 563
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 565
    :cond_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_3
    return-object p1
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 589
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https"

    .line 592
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 593
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unsupported protocol redirect: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0

    .line 586
    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private f()V
    .locals 3

    .line 774
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/o;->l:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 776
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 778
    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 780
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/o;->l:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 2658
    :try_start_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/o;->r:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/o;->p:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4

    .line 2663
    sget-object v0, Landroidx/media2/exoplayer/external/upstream/o;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 2668
    :cond_0
    :goto_0
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/o;->r:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/o;->p:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_3

    sub-long/2addr v6, v1

    .line 2669
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 2670
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/o;->m:Ljava/io/InputStream;

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2671
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_2

    if-eq v1, v5, :cond_1

    .line 2677
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/o;->r:J

    int-to-long v6, v1

    add-long/2addr v2, v6

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/o;->r:J

    .line 2678
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/upstream/o;->a(I)V

    goto :goto_0

    .line 2675
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 2672
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 2682
    :cond_3
    sget-object v1, Landroidx/media2/exoplayer/external/upstream/o;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_4
    if-nez p3, :cond_5

    return v4

    .line 2703
    :cond_5
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/o;->q:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    .line 2704
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/o;->s:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_6

    return v5

    :cond_6
    int-to-long v6, p3

    .line 2708
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 2711
    :cond_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/o;->m:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_9

    .line 2713
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/upstream/o;->q:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_8

    return v5

    .line 2715
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 2720
    :cond_9
    iget-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/o;->s:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/o;->s:J

    .line 2721
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/o;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 365
    new-instance p2, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    iget-object p3, p0, Landroidx/media2/exoplayer/external/upstream/o;->k:Landroidx/media2/exoplayer/external/upstream/h;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/h;I)V

    throw p2
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;)J
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    const-string v15, "Unable to connect to "

    .line 281
    iput-object v14, v13, Landroidx/media2/exoplayer/external/upstream/o;->k:Landroidx/media2/exoplayer/external/upstream/h;

    const-wide/16 v11, 0x0

    .line 282
    iput-wide v11, v13, Landroidx/media2/exoplayer/external/upstream/o;->s:J

    .line 283
    iput-wide v11, v13, Landroidx/media2/exoplayer/external/upstream/o;->r:J

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/upstream/o;->d()V

    const/4 v10, 0x1

    .line 1435
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v0, v14, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1436
    iget v3, v14, Landroidx/media2/exoplayer/external/upstream/h;->b:I

    .line 1437
    iget-object v4, v14, Landroidx/media2/exoplayer/external/upstream/h;->c:[B

    .line 1438
    iget-wide v7, v14, Landroidx/media2/exoplayer/external/upstream/h;->f:J

    .line 1439
    iget-wide v5, v14, Landroidx/media2/exoplayer/external/upstream/h;->g:J

    .line 1440
    invoke-virtual {v14, v10}, Landroidx/media2/exoplayer/external/upstream/h;->a(I)Z

    move-result v0

    const/4 v9, 0x2

    .line 1441
    invoke-virtual {v14, v9}, Landroidx/media2/exoplayer/external/upstream/h;->a(I)Z

    move-result v16

    .line 1443
    iget-boolean v1, v13, Landroidx/media2/exoplayer/external/upstream/o;->d:Z

    const/4 v11, 0x0

    if-nez v1, :cond_0

    const/4 v12, 0x1

    .line 1446
    iget-object v9, v14, Landroidx/media2/exoplayer/external/upstream/h;->d:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v1, p0

    move-wide/from16 v19, v5

    move-wide v5, v7

    move-wide/from16 v7, v19

    move-object/from16 v19, v9

    move v9, v0

    move-object/from16 v21, v15

    const/4 v15, 0x1

    move/from16 v10, v16

    const/4 v0, 0x0

    const-wide/16 v17, 0x0

    move v11, v12

    move-object/from16 v12, v19

    :try_start_1
    invoke-direct/range {v1 .. v12}, Landroidx/media2/exoplayer/external/upstream/o;->a(Ljava/net/URL;I[BJJZZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v5, v21

    goto/16 :goto_b

    :cond_0
    move-wide/from16 v19, v5

    move-object/from16 v21, v15

    const/4 v12, 0x0

    const/4 v15, 0x1

    const-wide/16 v17, 0x0

    move-object v11, v2

    move v10, v3

    move-object/from16 v22, v4

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_11

    const/16 v23, 0x0

    .line 1461
    iget-object v6, v14, Landroidx/media2/exoplayer/external/upstream/h;->d:Ljava/util/Map;

    move-object/from16 v1, p0

    move-object v2, v11

    move v3, v10

    move-object/from16 v4, v22

    move/from16 v24, v5

    move-object/from16 v25, v6

    move-wide v5, v7

    move-wide/from16 v26, v7

    move-wide/from16 v7, v19

    move v9, v0

    move v15, v10

    move/from16 v10, v16

    move/from16 v28, v0

    move-object v0, v11

    move/from16 v11, v23

    move-object/from16 v12, v25

    .line 1462
    invoke-direct/range {v1 .. v12}, Landroidx/media2/exoplayer/external/upstream/o;->a(Ljava/net/URL;I[BJJZZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 1472
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v3, "Location"

    .line 1473
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12f

    const/16 v5, 0x12e

    const/16 v6, 0x12d

    const/16 v7, 0x12c

    const/4 v8, 0x1

    if-eq v15, v8, :cond_2

    const/4 v8, 0x3

    if-ne v15, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x2

    goto :goto_2

    :cond_2
    :goto_1
    if-eq v2, v7, :cond_10

    if-eq v2, v6, :cond_10

    if-eq v2, v5, :cond_10

    if-eq v2, v4, :cond_10

    const/16 v8, 0x133

    if-eq v2, v8, :cond_10

    const/16 v8, 0x134

    if-ne v2, v8, :cond_1

    goto/16 :goto_9

    :goto_2
    if-ne v15, v8, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_3

    if-ne v2, v4, :cond_4

    .line 1489
    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v22, 0x0

    .line 1492
    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/upstream/o;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    move/from16 v1, v24

    move-wide/from16 v7, v26

    move/from16 v0, v28

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto/16 :goto_a

    .line 286
    :cond_4
    :goto_3
    iput-object v1, v13, Landroidx/media2/exoplayer/external/upstream/o;->l:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v13, Landroidx/media2/exoplayer/external/upstream/o;->o:I

    .line 295
    iget-object v0, v13, Landroidx/media2/exoplayer/external/upstream/o;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 303
    iget v1, v13, Landroidx/media2/exoplayer/external/upstream/o;->o:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_d

    const/16 v3, 0x12b

    if-le v1, v3, :cond_5

    goto/16 :goto_7

    .line 315
    :cond_5
    iget-object v0, v13, Landroidx/media2/exoplayer/external/upstream/o;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v1, v13, Landroidx/media2/exoplayer/external/upstream/o;->j:Landroidx/media2/exoplayer/external/util/r;

    if-eqz v1, :cond_7

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/util/r;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 317
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/upstream/o;->f()V

    .line 318
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v1, v0, v14}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/h;)V

    throw v1

    .line 324
    :cond_7
    :goto_4
    iget v0, v13, Landroidx/media2/exoplayer/external/upstream/o;->o:I

    if-ne v0, v2, :cond_8

    iget-wide v0, v14, Landroidx/media2/exoplayer/external/upstream/h;->f:J

    cmp-long v2, v0, v17

    if-eqz v2, :cond_8

    iget-wide v11, v14, Landroidx/media2/exoplayer/external/upstream/h;->f:J

    goto :goto_5

    :cond_8
    move-wide/from16 v11, v17

    :goto_5
    iput-wide v11, v13, Landroidx/media2/exoplayer/external/upstream/o;->p:J

    .line 327
    iget-object v0, v13, Landroidx/media2/exoplayer/external/upstream/o;->l:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Encoding"

    .line 1785
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    .line 1786
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 329
    iget-wide v1, v14, Landroidx/media2/exoplayer/external/upstream/h;->g:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_9

    .line 330
    iget-wide v1, v14, Landroidx/media2/exoplayer/external/upstream/h;->g:J

    iput-wide v1, v13, Landroidx/media2/exoplayer/external/upstream/o;->q:J

    goto :goto_6

    .line 332
    :cond_9
    iget-object v1, v13, Landroidx/media2/exoplayer/external/upstream/o;->l:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/upstream/o;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    .line 333
    iget-wide v3, v13, Landroidx/media2/exoplayer/external/upstream/o;->p:J

    sub-long v3, v1, v3

    .line 334
    :cond_a
    iput-wide v3, v13, Landroidx/media2/exoplayer/external/upstream/o;->q:J

    goto :goto_6

    .line 340
    :cond_b
    iget-wide v1, v14, Landroidx/media2/exoplayer/external/upstream/h;->g:J

    iput-wide v1, v13, Landroidx/media2/exoplayer/external/upstream/o;->q:J

    .line 344
    :goto_6
    :try_start_3
    iget-object v1, v13, Landroidx/media2/exoplayer/external/upstream/o;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v13, Landroidx/media2/exoplayer/external/upstream/o;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    .line 346
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, v13, Landroidx/media2/exoplayer/external/upstream/o;->m:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v13, Landroidx/media2/exoplayer/external/upstream/o;->m:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_c
    const/4 v1, 0x1

    .line 353
    iput-boolean v1, v13, Landroidx/media2/exoplayer/external/upstream/o;->n:Z

    .line 354
    invoke-virtual/range {p0 .. p1}, Landroidx/media2/exoplayer/external/upstream/o;->b(Landroidx/media2/exoplayer/external/upstream/h;)V

    .line 356
    iget-wide v0, v13, Landroidx/media2/exoplayer/external/upstream/o;->q:J

    return-wide v0

    :catch_1
    move-exception v0

    .line 349
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/upstream/o;->f()V

    .line 350
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v14, v2}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/h;I)V

    throw v1

    .line 304
    :cond_d
    :goto_7
    iget-object v1, v13, Landroidx/media2/exoplayer/external/upstream/o;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 305
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/upstream/o;->f()V

    .line 306
    new-instance v2, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v3, v13, Landroidx/media2/exoplayer/external/upstream/o;->o:I

    invoke-direct {v2, v3, v0, v1, v14}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/util/Map;Landroidx/media2/exoplayer/external/upstream/h;)V

    .line 308
    iget v0, v13, Landroidx/media2/exoplayer/external/upstream/o;->o:I

    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_e

    .line 309
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/DataSourceException;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroidx/media2/exoplayer/external/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 311
    :cond_e
    throw v2

    :catch_2
    move-exception v0

    .line 297
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/upstream/o;->f()V

    .line 298
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, v14, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v5, v21

    if-eqz v3, :cond_f

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v14, v3}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/h;I)V

    throw v1

    :cond_10
    :goto_9
    move-object/from16 v5, v21

    const/4 v4, 0x0

    const/4 v8, 0x2

    .line 1481
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1482
    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/upstream/o;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    move-object/from16 v21, v5

    move v10, v15

    move/from16 v1, v24

    move-wide/from16 v7, v26

    move/from16 v0, v28

    const/4 v9, 0x2

    :goto_a
    const/4 v12, 0x0

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_11
    move/from16 v24, v5

    move-object/from16 v5, v21

    .line 1499
    new-instance v0, Ljava/net/NoRouteToHostException;

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many redirects: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v24

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v5, v15

    .line 288
    :goto_b
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, v14, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_12
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_c
    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v14, v3}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/h;I)V

    throw v1
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 245
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/o;->l:Ljava/net/HttpURLConnection;

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

.method public final b()Ljava/util/Map;
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

    .line 255
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/o;->l:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 372
    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/o;->m:Ljava/io/InputStream;

    if-eqz v2, :cond_6

    .line 373
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/o;->l:Ljava/net/HttpURLConnection;

    .line 3428
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/upstream/o;->q:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v7, p0, Landroidx/media2/exoplayer/external/upstream/o;->s:J

    sub-long/2addr v3, v7

    .line 3737
    :goto_0
    sget v7, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v8, 0x13

    if-eq v7, v8, :cond_1

    sget v7, Landroidx/media2/exoplayer/external/util/ac;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x14

    if-ne v7, v8, :cond_5

    .line 3742
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 3745
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x800

    cmp-long v7, v3, v5

    if-lez v7, :cond_5

    .line 3753
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 3754
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 3756
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3757
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unexpectedEndOfInput"

    new-array v5, v1, [Ljava/lang/Class;

    .line 3758
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 3759
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    .line 3760
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :catch_0
    :cond_5
    :goto_1
    :try_start_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/o;->m:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 377
    :try_start_3
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/upstream/o;->k:Landroidx/media2/exoplayer/external/upstream/h;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/h;I)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    :cond_6
    :goto_2
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/o;->m:Ljava/io/InputStream;

    .line 382
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/o;->f()V

    .line 383
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/o;->n:Z

    if-eqz v0, :cond_7

    .line 384
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/o;->n:Z

    .line 385
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/o;->e()V

    :cond_7
    return-void

    :catchall_0
    move-exception v2

    .line 381
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/o;->m:Ljava/io/InputStream;

    .line 382
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/o;->f()V

    .line 383
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/o;->n:Z

    if-eqz v0, :cond_8

    .line 384
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/o;->n:Z

    .line 385
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/o;->e()V

    :cond_8
    throw v2
.end method
