.class public final Landroidx/media2/exoplayer/external/source/hls/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/g;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Landroidx/media2/exoplayer/external/util/z;

.field private final e:Landroidx/media2/exoplayer/external/util/p;

.field private f:Landroidx/media2/exoplayer/external/extractor/i;

.field private g:[B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LOCAL:([^,]+)"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/p;->a:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(\\d+)"

    .line 55
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/p;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/z;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/p;->c:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/p;->d:Landroidx/media2/exoplayer/external/util/z;

    .line 71
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/p;->e:Landroidx/media2/exoplayer/external/util/p;

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 72
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/p;->g:[B

    return-void
.end method

.method private a(J)Landroidx/media2/exoplayer/external/extractor/q;
    .locals 10

    .line 186
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/p;->f:Landroidx/media2/exoplayer/external/extractor/i;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v0

    .line 187
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/p;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text/vtt"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v8, p1

    invoke-static/range {v1 .. v9}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 189
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/p;->f:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 116
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v0

    long-to-int p2, v0

    .line 119
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/p;->h:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/p;->g:[B

    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    if-eq p2, v3, :cond_0

    move v0, p2

    goto :goto_0

    .line 121
    :cond_0
    array-length v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 120
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/p;->g:[B

    .line 125
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/p;->g:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/source/hls/p;->h:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->a([BII)I

    move-result p1

    if-eq p1, v3, :cond_3

    .line 127
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/p;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/hls/p;->h:I

    if-eq p2, v3, :cond_2

    if-eq v0, p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 1139
    :cond_3
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/p;->g:[B

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    .line 1142
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/h/h;->a(Landroidx/media2/exoplayer/external/util/p;)V

    const-wide/16 v0, 0x0

    move-wide v4, v0

    move-wide v6, v4

    .line 1150
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v8, 0x1

    if-nez v2, :cond_9

    const-string v2, "X-TIMESTAMP-MAP"

    .line 1151
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1152
    sget-object v2, Landroidx/media2/exoplayer/external/source/hls/p;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1153
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1154
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1156
    :cond_6
    sget-object v4, Landroidx/media2/exoplayer/external/source/hls/p;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1157
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1158
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_7
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1160
    :cond_8
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroidx/media2/exoplayer/external/text/h/h;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 1161
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/z;->d(J)J

    move-result-wide v4

    goto :goto_1

    .line 1166
    :cond_9
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/h/h;->c(Landroidx/media2/exoplayer/external/util/p;)Ljava/util/regex/Matcher;

    move-result-object p1

    if-nez p1, :cond_a

    .line 1169
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/hls/p;->a(J)Landroidx/media2/exoplayer/external/extractor/q;

    goto :goto_4

    .line 1173
    :cond_a
    invoke-virtual {p1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/h/h;->a(Ljava/lang/String;)J

    move-result-wide p1

    .line 1174
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/p;->d:Landroidx/media2/exoplayer/external/util/z;

    add-long/2addr v4, p1

    sub-long/2addr v4, v6

    .line 1175
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/z;->e(J)J

    move-result-wide v1

    .line 1174
    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/z;->b(J)J

    move-result-wide v5

    sub-long p1, v5, p1

    .line 1178
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/p;->a(J)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v4

    .line 1180
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/p;->e:Landroidx/media2/exoplayer/external/util/p;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/p;->g:[B

    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/p;->h:I

    invoke-virtual {p1, p2, v0}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 1181
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/p;->e:Landroidx/media2/exoplayer/external/util/p;

    iget p2, p0, Landroidx/media2/exoplayer/external/source/hls/p;->h:I

    invoke-interface {v4, p1, p2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    const/4 v7, 0x1

    .line 1182
    iget v8, p0, Landroidx/media2/exoplayer/external/source/hls/p;->h:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    :goto_4
    return v3
.end method

.method public final a(JJ)V
    .locals 0

    .line 105
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;)V
    .locals 3

    .line 98
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/p;->f:Landroidx/media2/exoplayer/external/extractor/i;

    .line 99
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/o$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/o$b;-><init>(J)V

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/p;->g:[B

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-interface {p1, v0, v1, v2, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b([BIIZ)Z

    .line 82
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/p;->e:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/p;->g:[B

    invoke-virtual {v0, v3, v2}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 83
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/p;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/h/h;->b(Landroidx/media2/exoplayer/external/util/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 87
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/p;->g:[B

    const/4 v3, 0x3

    invoke-interface {p1, v0, v2, v3, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b([BIIZ)Z

    .line 92
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/p;->e:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/p;->g:[B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 93
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/p;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/h/h;->b(Landroidx/media2/exoplayer/external/util/p;)Z

    move-result p1

    return p1
.end method
