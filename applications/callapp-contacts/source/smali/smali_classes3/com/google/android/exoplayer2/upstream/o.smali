.class public final Lcom/google/android/exoplayer2/upstream/o;
.super Lcom/google/android/exoplayer2/upstream/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/o$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Z

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

.field private final h:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

.field private i:Lcom/google/common/base/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/n<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/exoplayer2/upstream/j;

.field private k:Ljava/net/HttpURLConnection;

.field private l:Ljava/io/InputStream;

.field private m:[B

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

    .line 211
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/o;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1f40

    .line 238
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/exoplayer2/upstream/o;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1f40

    .line 245
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/upstream/o;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 253
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/o;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 269
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/o;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/n;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;",
            "Lcom/google/common/base/n<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 285
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/d;-><init>(Z)V

    .line 286
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o;->f:Ljava/lang/String;

    .line 287
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/o;->d:I

    .line 288
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/o;->e:I

    .line 289
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/upstream/o;->c:Z

    .line 290
    iput-object p5, p0, Lcom/google/android/exoplayer2/upstream/o;->g:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    .line 291
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/o;->i:Lcom/google/common/base/n;

    .line 292
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o;->h:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/n;Lcom/google/android/exoplayer2/upstream/o$1;)V
    .locals 0

    .line 62
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/upstream/o;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/n;)V

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .locals 10

    const-string v0, "Content-Length"

    .line 689
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 690
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    const-string v3, "DefaultHttpDataSource"

    if-nez v1, :cond_0

    .line 692
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 694
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected Content-Length ["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v4, -0x1

    :goto_0
    const-string v1, "Content-Range"

    .line 697
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 698
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 699
    sget-object v1, Lcom/google/android/exoplayer2/upstream/o;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 700
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    .line 703
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 704
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

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

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "Inconsistent headers ["

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v4, v0

    goto :goto_1

    .line 720
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected Content-Range ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-wide v4
.end method

.method private a(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
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

    .line 4649
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 605
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/o;->d:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 606
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/o;->e:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 609
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->g:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    if-eqz v1, :cond_0

    .line 610
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->h:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 613
    invoke-interface {v0, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 615
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p10

    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p10

    :goto_0
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 616
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

    cmp-long p10, p4, v0

    if-nez p10, :cond_2

    cmp-long p10, p6, v2

    if-eqz p10, :cond_4

    .line 620
    :cond_2
    new-instance p10, Ljava/lang/StringBuilder;

    const-string v0, "bytes="

    invoke-direct {p10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    cmp-long v0, p6, v2

    if-eqz v0, :cond_3

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    :cond_3
    const-string p4, "Range"

    .line 624
    invoke-virtual {p1, p4, p10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_4
    iget-object p4, p0, Lcom/google/android/exoplayer2/upstream/o;->f:Ljava/lang/String;

    if-eqz p4, :cond_5

    const-string p5, "User-Agent"

    .line 627
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p8, :cond_6

    const-string p4, "gzip"

    goto :goto_1

    :cond_6
    const-string p4, "identity"

    :goto_1
    const-string p5, "Accept-Encoding"

    .line 629
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_7

    const/4 p4, 0x1

    goto :goto_2

    :cond_7
    const/4 p4, 0x0

    .line 631
    :goto_2
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 632
    invoke-static {p2}, Lcom/google/android/exoplayer2/upstream/j;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    .line 635
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 636
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 637
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 638
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 639
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 641
    :cond_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_3
    return-object p1
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 665
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https"

    .line 668
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unsupported protocol redirect: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object v0

    .line 662
    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private f()V
    .locals 3

    .line 848
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 850
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 852
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 854
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->k:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 2736
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/o;->r:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/o;->p:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_3

    .line 2740
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->m:[B

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 2741
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->m:[B

    .line 2744
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/o;->r:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/o;->p:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_3

    sub-long/2addr v2, v0

    .line 2745
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->m:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 2746
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/o;->m:[B

    invoke-virtual {v0, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2747
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    if-eq v0, v5, :cond_1

    .line 2753
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/o;->r:J

    int-to-long v6, v0

    add-long/2addr v1, v6

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/o;->r:J

    .line 2754
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/o;->a(I)V

    goto :goto_0

    .line 2751
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 2748
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_3
    if-nez p3, :cond_4

    return v4

    .line 2776
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/o;->q:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 2777
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/o;->s:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_5

    return v5

    :cond_5
    int-to-long v6, p3

    .line 2781
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 2784
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_8

    .line 2786
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/o;->q:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_7

    return v5

    .line 2788
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 2793
    :cond_8
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/o;->s:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/o;->s:J

    .line 2794
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/o;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 444
    new-instance p2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/o;->j:Lcom/google/android/exoplayer2/upstream/j;

    .line 445
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/upstream/j;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/j;I)V

    throw p2
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/j;)J
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const-string v14, "Unable to connect"

    .line 343
    iput-object v13, v12, Lcom/google/android/exoplayer2/upstream/o;->j:Lcom/google/android/exoplayer2/upstream/j;

    const-wide/16 v10, 0x0

    .line 344
    iput-wide v10, v12, Lcom/google/android/exoplayer2/upstream/o;->s:J

    .line 345
    iput-wide v10, v12, Lcom/google/android/exoplayer2/upstream/o;->r:J

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/o;->d()V

    const/4 v15, 0x1

    .line 1518
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v0, v13, Lcom/google/android/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1519
    iget v3, v13, Lcom/google/android/exoplayer2/upstream/j;->c:I

    .line 1520
    iget-object v4, v13, Lcom/google/android/exoplayer2/upstream/j;->d:[B

    .line 1521
    iget-wide v7, v13, Lcom/google/android/exoplayer2/upstream/j;->g:J

    .line 1522
    iget-wide v5, v13, Lcom/google/android/exoplayer2/upstream/j;->h:J

    .line 1523
    invoke-virtual {v13, v15}, Lcom/google/android/exoplayer2/upstream/j;->b(I)Z

    move-result v0

    .line 1525
    iget-boolean v1, v12, Lcom/google/android/exoplayer2/upstream/o;->c:Z

    const/4 v9, 0x0

    if-nez v1, :cond_0

    const/16 v16, 0x1

    .line 1528
    iget-object v1, v13, Lcom/google/android/exoplayer2/upstream/j;->e:Ljava/util/Map;

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-wide/from16 v18, v5

    move-wide v5, v7

    move-wide/from16 v7, v18

    move v9, v0

    move-wide/from16 v20, v10

    move/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/upstream/o;->a(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    move-wide/from16 v18, v5

    move-wide/from16 v20, v10

    move-object v11, v2

    move v10, v3

    move-object/from16 v16, v4

    const/4 v9, 0x0

    :goto_0
    add-int/lit8 v17, v9, 0x1

    const/16 v1, 0x14

    if-gt v9, v1, :cond_11

    const/16 v22, 0x0

    .line 1542
    iget-object v9, v13, Lcom/google/android/exoplayer2/upstream/j;->e:Ljava/util/Map;

    move-object/from16 v1, p0

    move-object v2, v11

    move v3, v10

    move-object/from16 v4, v16

    move-wide v5, v7

    move-wide/from16 v23, v7

    move-wide/from16 v7, v18

    move-object/from16 v25, v9

    move v9, v0

    move v15, v10

    move/from16 v10, v22

    move/from16 v22, v0

    move-object v0, v11

    move-object/from16 v11, v25

    .line 1543
    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/upstream/o;->a(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 1552
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v3, "Location"

    .line 1553
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12f

    const/16 v5, 0x12e

    const/16 v6, 0x12d

    const/16 v7, 0x12c

    const/4 v8, 0x1

    if-eq v15, v8, :cond_1

    const/4 v8, 0x3

    if-ne v15, v8, :cond_2

    :cond_1
    if-eq v2, v7, :cond_10

    if-eq v2, v6, :cond_10

    if-eq v2, v5, :cond_10

    if-eq v2, v4, :cond_10

    const/16 v8, 0x133

    if-eq v2, v8, :cond_10

    const/16 v8, 0x134

    if-ne v2, v8, :cond_2

    goto/16 :goto_8

    :cond_2
    const/4 v8, 0x2

    if-ne v15, v8, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_3

    if-ne v2, v4, :cond_4

    .line 1569
    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v16, 0x0

    .line 1572
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/upstream/o;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    move/from16 v9, v17

    move/from16 v0, v22

    move-wide/from16 v7, v23

    const/4 v10, 0x1

    goto/16 :goto_9

    :cond_4
    move-object v0, v1

    .line 349
    :goto_1
    iput-object v0, v12, Lcom/google/android/exoplayer2/upstream/o;->k:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 363
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v12, Lcom/google/android/exoplayer2/upstream/o;->o:I

    .line 364
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 372
    iget v1, v12, Lcom/google/android/exoplayer2/upstream/o;->o:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_d

    const/16 v4, 0x12b

    if-le v1, v4, :cond_5

    goto/16 :goto_5

    .line 394
    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 395
    iget-object v3, v12, Lcom/google/android/exoplayer2/upstream/o;->i:Lcom/google/common/base/n;

    if-eqz v3, :cond_7

    invoke-interface {v3, v1}, Lcom/google/common/base/n;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 396
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/o;->f()V

    .line 397
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v1, v13}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/j;)V

    throw v0

    .line 403
    :cond_7
    :goto_2
    iget v1, v12, Lcom/google/android/exoplayer2/upstream/o;->o:I

    if-ne v1, v2, :cond_8

    iget-wide v1, v13, Lcom/google/android/exoplayer2/upstream/j;->g:J

    cmp-long v3, v1, v20

    if-eqz v3, :cond_8

    iget-wide v10, v13, Lcom/google/android/exoplayer2/upstream/j;->g:J

    goto :goto_3

    :cond_8
    move-wide/from16 v10, v20

    :goto_3
    iput-wide v10, v12, Lcom/google/android/exoplayer2/upstream/o;->p:J

    const-string v1, "Content-Encoding"

    .line 1859
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    .line 1860
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 408
    iget-wide v2, v13, Lcom/google/android/exoplayer2/upstream/j;->h:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    .line 409
    iget-wide v2, v13, Lcom/google/android/exoplayer2/upstream/j;->h:J

    iput-wide v2, v12, Lcom/google/android/exoplayer2/upstream/o;->q:J

    goto :goto_4

    .line 411
    :cond_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/o;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-eqz v6, :cond_a

    .line 412
    iget-wide v4, v12, Lcom/google/android/exoplayer2/upstream/o;->p:J

    sub-long v4, v2, v4

    .line 413
    :cond_a
    iput-wide v4, v12, Lcom/google/android/exoplayer2/upstream/o;->q:J

    goto :goto_4

    .line 419
    :cond_b
    iget-wide v2, v13, Lcom/google/android/exoplayer2/upstream/j;->h:J

    iput-wide v2, v12, Lcom/google/android/exoplayer2/upstream/o;->q:J

    .line 423
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/exoplayer2/upstream/o;->l:Ljava/io/InputStream;

    if-eqz v1, :cond_c

    .line 425
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, v12, Lcom/google/android/exoplayer2/upstream/o;->l:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v12, Lcom/google/android/exoplayer2/upstream/o;->l:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_c
    const/4 v1, 0x1

    .line 432
    iput-boolean v1, v12, Lcom/google/android/exoplayer2/upstream/o;->n:Z

    .line 433
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/o;->b(Lcom/google/android/exoplayer2/upstream/j;)V

    .line 435
    iget-wide v0, v12, Lcom/google/android/exoplayer2/upstream/o;->q:J

    return-wide v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/o;->f()V

    .line 429
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v2, v0, v13, v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/j;I)V

    throw v2

    .line 373
    :cond_d
    :goto_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 374
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 378
    :try_start_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/google/android/exoplayer2/util/af;->f:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_6
    move-object v6, v0

    goto :goto_7

    .line 380
    :catch_1
    sget-object v0, Lcom/google/android/exoplayer2/util/af;->f:[B

    goto :goto_6

    .line 382
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/o;->f()V

    .line 383
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v2, v12, Lcom/google/android/exoplayer2/upstream/o;->o:I

    move-object v1, v0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/j;[B)V

    .line 387
    iget v1, v12, Lcom/google/android/exoplayer2/upstream/o;->o:I

    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_f

    .line 388
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 390
    :cond_f
    throw v0

    :catch_2
    move-exception v0

    .line 366
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/o;->f()V

    .line 367
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const/4 v2, 0x1

    invoke-direct {v1, v14, v0, v13, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/j;I)V

    throw v1

    :cond_10
    :goto_8
    const/4 v2, 0x0

    .line 1561
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1562
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/upstream/o;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    move v10, v15

    move/from16 v9, v17

    move/from16 v0, v22

    move-wide/from16 v7, v23

    :goto_9
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1579
    :cond_11
    new-instance v0, Ljava/net/NoRouteToHostException;

    const-string v1, "Too many redirects: "

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 353
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cleartext http traffic.*not permitted.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 354
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;

    invoke-direct {v1, v0, v13}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/j;)V

    throw v1

    .line 356
    :cond_12
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const/4 v2, 0x1

    invoke-direct {v1, v14, v0, v13, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/j;I)V

    throw v1
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->k:Ljava/net/HttpURLConnection;

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

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->k:Ljava/net/HttpURLConnection;

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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 452
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Ljava/io/InputStream;

    if-eqz v2, :cond_6

    .line 454
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/o;->k:Ljava/net/HttpURLConnection;

    .line 3511
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/o;->q:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/o;->s:J

    sub-long/2addr v4, v8

    :goto_0
    if-eqz v3, :cond_5

    .line 3811
    sget v8, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_5

    sget v8, Lcom/google/android/exoplayer2/util/af;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v9, 0x14

    if-le v8, v9, :cond_1

    goto :goto_1

    .line 3816
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 3819
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x800

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    .line 3827
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 3828
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 3830
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3831
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 3833
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v5, "unexpectedEndOfInput"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    .line 3834
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v1, [Ljava/lang/Object;

    .line 3835
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    :catch_0
    :cond_5
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 458
    :try_start_3
    new-instance v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/o;->j:Lcom/google/android/exoplayer2/upstream/j;

    .line 459
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/upstream/j;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/j;I)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 463
    :cond_6
    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Ljava/io/InputStream;

    .line 464
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/o;->f()V

    .line 465
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/o;->n:Z

    if-eqz v0, :cond_7

    .line 466
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/o;->n:Z

    .line 467
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/o;->e()V

    :cond_7
    return-void

    :catchall_0
    move-exception v2

    .line 463
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Ljava/io/InputStream;

    .line 464
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/o;->f()V

    .line 465
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/o;->n:Z

    if-eqz v0, :cond_8

    .line 466
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/o;->n:Z

    .line 467
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/o;->e()V

    .line 469
    :cond_8
    throw v2
.end method
