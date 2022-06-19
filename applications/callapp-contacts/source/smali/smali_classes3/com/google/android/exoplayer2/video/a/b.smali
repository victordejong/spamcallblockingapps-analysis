.class public final Lcom/google/android/exoplayer2/video/a/b;
.super Lcom/google/android/exoplayer2/e;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final b:Lcom/google/android/exoplayer2/util/u;

.field private c:J

.field private d:Lcom/google/android/exoplayer2/video/a/a;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    .line 48
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/e;-><init>(I)V

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/a/b;->a:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/a/b;->b:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method

.method private A()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/a/b;->d:Lcom/google/android/exoplayer2/video/a/a;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/a/a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 61
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

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
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 69
    check-cast p2, Lcom/google/android/exoplayer2/video/a/a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/a/b;->d:Lcom/google/android/exoplayer2/video/a/a;

    return-void

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/e;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(JJ)V
    .locals 4

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/a/b;->g()Z

    move-result p3

    if-nez p3, :cond_4

    iget-wide p3, p0, Lcom/google/android/exoplayer2/video/a/b;->e:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long v2, p3, v0

    if-gez v2, :cond_4

    .line 95
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/a/b;->a:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/a/b;->t()Lcom/google/android/exoplayer2/q;

    move-result-object p3

    .line 98
    iget-object p4, p0, Lcom/google/android/exoplayer2/video/a/b;->a:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/google/android/exoplayer2/video/a/b;->a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_4

    .line 99
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/a/b;->a:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_3

    .line 103
    :cond_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/a/b;->a:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide p3, p3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/video/a/b;->e:J

    .line 104
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/a/b;->d:Lcom/google/android/exoplayer2/video/a/a;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/exoplayer2/video/a/b;->a:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->E_()Z

    move-result p3

    if-nez p3, :cond_0

    .line 108
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/a/b;->a:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->h()V

    .line 109
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/a/b;->a:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object p3, p3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    .line 3130
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    const/16 v1, 0x10

    if-eq p4, v1, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    .line 3133
    :cond_2
    iget-object p4, p0, Lcom/google/android/exoplayer2/video/a/b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p4, v1, v2}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 3134
    iget-object p4, p0, Lcom/google/android/exoplayer2/video/a/b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    invoke-virtual {p4, p3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/4 p3, 0x3

    new-array p4, p3, [F

    :goto_1
    if-ge v0, p3, :cond_3

    .line 3137
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/a/b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->k()I

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

    .line 114
    iget-object p4, p0, Lcom/google/android/exoplayer2/video/a/b;->d:Lcom/google/android/exoplayer2/video/a/a;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/video/a/a;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/a/b;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/a/b;->c:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lcom/google/android/exoplayer2/video/a/a;->a(J[F)V

    goto/16 :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public final a(JZ)V
    .locals 0

    const-wide/high16 p1, -0x8000000000000000L

    .line 82
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/a/b;->e:J

    .line 83
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/a/b;->A()V

    return-void
.end method

.method public final a([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 0

    .line 77
    iput-wide p4, p0, Lcom/google/android/exoplayer2/video/a/b;->c:J

    return-void
.end method

.method public final r()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/a/b;->A()V

    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    const-string v0, "CameraMotionRenderer"

    return-object v0
.end method

.method public final y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z()Z
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/a/b;->g()Z

    move-result v0

    return v0
.end method
