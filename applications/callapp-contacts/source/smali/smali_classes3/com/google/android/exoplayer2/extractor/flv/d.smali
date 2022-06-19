.class final Lcom/google/android/exoplayer2/extractor/flv/d;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/u;

.field private final b:Lcom/google/android/exoplayer2/util/u;

.field private c:I

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/x;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/x;)V

    .line 58
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    sget-object v0, Lcom/google/android/exoplayer2/util/s;->a:[B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->a:Lcom/google/android/exoplayer2/util/u;

    .line 59
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->b:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/exoplayer2/util/u;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 76
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->g:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 74
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Video format not supported: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Lcom/google/android/exoplayer2/util/u;J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    .line 1290
    iget-object v1, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v2, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    shr-int/lit8 v1, v1, 0x8

    iget-object v2, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v3, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v3, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    .line 87
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->e:Z

    if-nez v1, :cond_0

    .line 88
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    .line 2169
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 89
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 90
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/a;->a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/video/a;

    move-result-object p1

    .line 91
    iget v0, p1, Lcom/google/android/exoplayer2/video/a;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->c:I

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    const-string v1, "video/avc"

    .line 2370
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 95
    iget-object v1, p1, Lcom/google/android/exoplayer2/video/a;->f:Ljava/lang/String;

    .line 3333
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 96
    iget v1, p1, Lcom/google/android/exoplayer2/video/a;->c:I

    .line 3427
    iput v1, v0, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 97
    iget v1, p1, Lcom/google/android/exoplayer2/video/a;->d:I

    .line 3438
    iput v1, v0, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 98
    iget v1, p1, Lcom/google/android/exoplayer2/video/a;->e:F

    .line 3471
    iput v1, v0, Lcom/google/android/exoplayer2/Format$a;->t:F

    .line 99
    iget-object p1, p1, Lcom/google/android/exoplayer2/video/a;->a:Ljava/util/List;

    .line 4392
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 103
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->e:Z

    return p3

    :cond_0
    if-ne v0, p2, :cond_4

    .line 105
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->e:Z

    if-eqz v0, :cond_4

    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->g:I

    if-ne v0, p2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 107
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->f:Z

    if-nez v0, :cond_2

    if-nez v6, :cond_2

    return p3

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->b:Lcom/google/android/exoplayer2/util/u;

    .line 5169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 114
    aput-byte p3, v0, p3

    .line 115
    aput-byte p3, v0, p2

    const/4 v1, 0x2

    .line 116
    aput-byte p3, v0, v1

    .line 117
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->c:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    const/4 v7, 0x0

    .line 123
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v2

    if-lez v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->b:Lcom/google/android/exoplayer2/util/u;

    .line 6169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 125
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->c:I

    invoke-virtual {p1, v2, v0, v3}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 126
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 127
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v2

    .line 130
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 131
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->d:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v3, v8, v1}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    add-int/lit8 v7, v7, 0x4

    .line 135
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v3, p1, v2}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    add-int/2addr v7, v2

    goto :goto_1

    .line 138
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->d:Lcom/google/android/exoplayer2/extractor/x;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 140
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->f:Z

    return p2

    :cond_4
    return p3
.end method
