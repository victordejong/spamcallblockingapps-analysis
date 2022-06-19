.class final Lcom/google/android/exoplayer2/extractor/g/e;
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

.field private final k:Lcom/google/android/exoplayer2/util/u;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    .line 59
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/g/e;->j:[I

    .line 61
    new-instance v1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/i;[BIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    :try_start_0
    invoke-interface {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/i;->b([BIIZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_0

    return v0

    .line 192
    :cond_0
    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->a:I

    .line 68
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->b:I

    const-wide/16 v1, 0x0

    .line 69
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/g/e;->c:J

    .line 70
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/g/e;->d:J

    .line 71
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/g/e;->e:J

    .line 72
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/g/e;->f:J

    .line 73
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->g:I

    .line 74
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->h:I

    .line 75
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->i:I

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 85
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/g/e;->a(Lcom/google/android/exoplayer2/extractor/i;J)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    :goto_1
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    .line 108
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v2

    const-wide/16 v6, 0x4

    add-long/2addr v2, v6

    cmp-long v6, v2, p2

    if-gez v6, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    .line 1169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 109
    invoke-static {p1, v2, v1, v5}, Lcom/google/android/exoplayer2/extractor/g/e;->a(Lcom/google/android/exoplayer2/extractor/i;[BIZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v2

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    .line 112
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    return v5

    .line 116
    :cond_2
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 119
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-gez v3, :cond_5

    .line 120
    :cond_4
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/i;->a(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    :cond_5
    return v4
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/g/e;->a()V

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    .line 2169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 137
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/g/e;->a(Lcom/google/android/exoplayer2/extractor/i;[BIZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    .line 138
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v2

    const-wide/32 v4, 0x4f676753

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->a:I

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    return v1

    .line 147
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "unsupported bit stream revision"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->b:I

    .line 152
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->m()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->c:J

    .line 153
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->i()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->d:J

    .line 154
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->i()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->e:J

    .line 155
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->i()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->f:J

    .line 156
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->g:I

    add-int/lit8 v0, p2, 0x1b

    .line 157
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->h:I

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 161
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    .line 3169
    iget-object p2, p2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 161
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/g/e;->g:I

    invoke-interface {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 162
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/g/e;->g:I

    if-ge v1, p1, :cond_3

    .line 163
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/e;->j:[I

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->k:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p2

    aput p2, p1, v1

    .line 164
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/g/e;->i:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/g/e;->j:[I

    aget p2, p2, v1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/g/e;->i:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method
