.class public final Lcom/google/android/exoplayer2/upstream/k;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field private final d:Lcom/google/android/exoplayer2/upstream/j;

.field private final e:Lcom/google/android/exoplayer2/upstream/l;

.field private final f:[B

.field private g:Z

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/k;->g:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/k;->h:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/k;->d:Lcom/google/android/exoplayer2/upstream/j;

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/k;->e:Lcom/google/android/exoplayer2/upstream/l;

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/k;->f:[B

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/k;->g:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/k;->d:Lcom/google/android/exoplayer2/upstream/j;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/k;->e:Lcom/google/android/exoplayer2/upstream/l;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/j;->b(Lcom/google/android/exoplayer2/upstream/l;)J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/k;->g:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/k;->h:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/k;->d:Lcom/google/android/exoplayer2/upstream/j;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/j;->close()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/k;->h:Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/k;->a()V

    return-void
.end method

.method public read()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/k;->f:[B

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/k;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/k;->f:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/upstream/k;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/k;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/k;->a()V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/k;->d:Lcom/google/android/exoplayer2/upstream/j;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/j;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 7
    :cond_0
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/k;->i:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/k;->i:J

    return p1
.end method
