.class public final Lcom/google/android/exoplayer2/upstream/i;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/h;

.field private final b:Lcom/google/android/exoplayer2/upstream/j;

.field private final c:[B

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/j;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/i;->d:Z

    .line 34
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/i;->e:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/i;->a:Lcom/google/android/exoplayer2/upstream/h;

    .line 43
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/i;->b:Lcom/google/android/exoplayer2/upstream/j;

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/i;->c:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/i;->e:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h;->c()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/i;->e:Z

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->c:[B

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/i;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/upstream/i;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/i;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 1100
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/i;->d:Z

    if-nez v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->a:Lcom/google/android/exoplayer2/upstream/h;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/i;->b:Lcom/google/android/exoplayer2/upstream/j;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/j;)J

    .line 1102
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/i;->d:Z

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/h;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return p2

    .line 86
    :cond_1
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/i;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/i;->f:J

    return p1
.end method
