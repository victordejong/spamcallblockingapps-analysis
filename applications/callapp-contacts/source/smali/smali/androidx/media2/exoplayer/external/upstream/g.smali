.class public final Landroidx/media2/exoplayer/external/upstream/g;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/upstream/f;

.field private final b:Landroidx/media2/exoplayer/external/upstream/h;

.field private final c:[B

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/g;->d:Z

    .line 41
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/g;->e:Z

    .line 49
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/g;->a:Landroidx/media2/exoplayer/external/upstream/f;

    .line 50
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/g;->b:Landroidx/media2/exoplayer/external/upstream/h;

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 51
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/g;->c:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/g;->d:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/g;->a:Landroidx/media2/exoplayer/external/upstream/f;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/g;->b:Landroidx/media2/exoplayer/external/upstream/h;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/upstream/f;->a(Landroidx/media2/exoplayer/external/upstream/h;)J

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/g;->d:Z

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/g;->e:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/g;->a:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/f;->c()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/g;->e:Z

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

    .line 76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/g;->c:[B

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/g;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 77
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/g;->c:[B

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

    .line 82
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroidx/media2/exoplayer/external/upstream/g;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/g;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 88
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/g;->a()V

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/g;->a:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/f;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 93
    :cond_0
    iget-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/g;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/g;->f:J

    return p1
.end method
