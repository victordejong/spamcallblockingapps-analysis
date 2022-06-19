.class final Landroidx/media2/exoplayer/external/extractor/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:I

.field public h:I

.field public i:I

.field public final j:[I

.field private final k:Landroidx/media2/exoplayer/external/util/p;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    .line 63
    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->j:[I

    .line 65
    new-instance v1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->a:I

    .line 72
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->b:I

    const-wide/16 v1, 0x0

    .line 73
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->c:J

    .line 74
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->d:J

    .line 75
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->e:J

    .line 76
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->f:J

    .line 77
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->g:I

    .line 78
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->h:I

    .line 79
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->i:I

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->a()V

    .line 96
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/d/f;->a()V

    .line 97
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 98
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->b()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1b

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_8

    .line 99
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/16 v1, 0x1b

    invoke-interface {p1, v0, v3, v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b([BIIZ)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 106
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v4

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    return v3

    .line 110
    :cond_3
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "expected OggS capture pattern at begin of page"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->a:I

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    return v3

    .line 119
    :cond_5
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "unsupported bit stream revision"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_6
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->b:I

    .line 124
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->l()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->c:J

    .line 125
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->h()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->d:J

    .line 126
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->h()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->e:J

    .line 127
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->h()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->f:J

    .line 128
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->g:I

    add-int/2addr p2, v1

    .line 129
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->h:I

    .line 132
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->a()V

    .line 133
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->g:I

    invoke-interface {p1, p2, v3, v0}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 134
    :goto_2
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->g:I

    if-ge v3, p1, :cond_7

    .line 135
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->j:[I

    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->k:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p2

    aput p2, p1, v3

    .line 136
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->i:I

    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->j:[I

    aget p2, p2, v3

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/d/f;->i:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v2

    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    return v3

    .line 103
    :cond_9
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method
