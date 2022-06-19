.class public final Landroidx/media2/exoplayer/external/video/a/b;
.super Landroidx/media2/exoplayer/external/b;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/x;

.field private final b:Landroidx/media2/exoplayer/external/b/e;

.field private final c:Landroidx/media2/exoplayer/external/util/p;

.field private d:J

.field private e:Landroidx/media2/exoplayer/external/video/a/a;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x5

    .line 54
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/b;-><init>(I)V

    .line 55
    new-instance v0, Landroidx/media2/exoplayer/external/x;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/x;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/a/b;->a:Landroidx/media2/exoplayer/external/x;

    .line 56
    new-instance v0, Landroidx/media2/exoplayer/external/b/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/b/e;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/a/b;->b:Landroidx/media2/exoplayer/external/b/e;

    .line 57
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/a/b;->c:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/Format;)I
    .locals 1

    .line 62
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 70
    check-cast p2, Landroidx/media2/exoplayer/external/video/a/a;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/a/b;->e:Landroidx/media2/exoplayer/external/video/a/a;

    return-void

    .line 72
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/a/b;->g()Z

    move-result p3

    if-nez p3, :cond_4

    iget-wide p3, p0, Landroidx/media2/exoplayer/external/video/a/b;->f:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long v2, p3, v0

    if-gez v2, :cond_4

    .line 95
    iget-object p3, p0, Landroidx/media2/exoplayer/external/video/a/b;->b:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/b/e;->a()V

    .line 96
    iget-object p3, p0, Landroidx/media2/exoplayer/external/video/a/b;->a:Landroidx/media2/exoplayer/external/x;

    iget-object p4, p0, Landroidx/media2/exoplayer/external/video/a/b;->b:Landroidx/media2/exoplayer/external/b/e;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Landroidx/media2/exoplayer/external/video/a/b;->a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;Z)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_4

    .line 97
    iget-object p3, p0, Landroidx/media2/exoplayer/external/video/a/b;->b:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/b/e;->c()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_3

    .line 101
    :cond_1
    iget-object p3, p0, Landroidx/media2/exoplayer/external/video/a/b;->b:Landroidx/media2/exoplayer/external/b/e;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/b/e;->h()V

    .line 102
    iget-object p3, p0, Landroidx/media2/exoplayer/external/video/a/b;->b:Landroidx/media2/exoplayer/external/b/e;

    iget-wide p3, p3, Landroidx/media2/exoplayer/external/b/e;->d:J

    iput-wide p3, p0, Landroidx/media2/exoplayer/external/video/a/b;->f:J

    .line 103
    iget-object p3, p0, Landroidx/media2/exoplayer/external/video/a/b;->e:Landroidx/media2/exoplayer/external/video/a/a;

    if-eqz p3, :cond_0

    .line 104
    iget-object p3, p0, Landroidx/media2/exoplayer/external/video/a/b;->b:Landroidx/media2/exoplayer/external/b/e;

    iget-object p3, p3, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    .line 3123
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    const/16 v1, 0x10

    if-eq p4, v1, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    .line 3126
    :cond_2
    iget-object p4, p0, Landroidx/media2/exoplayer/external/video/a/b;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p4, v1, v2}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 3127
    iget-object p4, p0, Landroidx/media2/exoplayer/external/video/a/b;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    invoke-virtual {p4, p3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    const/4 p3, 0x3

    new-array p4, p3, [F

    :goto_1
    if-ge v0, p3, :cond_3

    .line 3130
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/a/b;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object p3, p4

    :goto_2
    if-eqz p3, :cond_0

    .line 106
    iget-object p3, p0, Landroidx/media2/exoplayer/external/video/a/b;->e:Landroidx/media2/exoplayer/external/video/a/a;

    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public final a(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const-wide/16 p1, 0x0

    .line 1136
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/video/a/b;->f:J

    return-void
.end method

.method public final a([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 78
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/video/a/b;->d:J

    return-void
.end method

.method public final r()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2136
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/a/b;->f:J

    return-void
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final y()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/a/b;->g()Z

    move-result v0

    return v0
.end method
