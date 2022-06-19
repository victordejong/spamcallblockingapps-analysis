.class final Lcom/google/android/exoplayer2/source/hls/m;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/b0;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/exoplayer2/source/hls/n;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/n;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/m;->b:Lcom/google/android/exoplayer2/source/hls/n;

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/m;->a:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/m;->c:I

    return-void
.end method

.method private f()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/f0;Lcom/google/android/exoplayer2/b1/e;Z)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/b1/a;->addFlag(I)V

    const/4 p1, -0x4

    return p1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/m;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->b:Lcom/google/android/exoplayer2/source/hls/n;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/m;->c:I

    .line 4
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/n;->Z(ILcom/google/android/exoplayer2/f0;Lcom/google/android/exoplayer2/b1/e;Z)I

    move-result v1

    :cond_1
    return v1
.end method

.method public b()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->c:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->b:Lcom/google/android/exoplayer2/source/hls/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/n;->Q()V

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/m;->b:Lcom/google/android/exoplayer2/source/hls/n;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/hls/n;->R(I)V

    :cond_1
    :goto_0
    return-void

    .line 4
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/m;->b:Lcom/google/android/exoplayer2/source/hls/n;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/n;->r()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/m;->a:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(J)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->b:Lcom/google/android/exoplayer2/source/hls/n;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/m;->c:I

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/hls/n;->j0(IJ)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->b:Lcom/google/android/exoplayer2/source/hls/n;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/m;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/n;->w(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->c:I

    return-void
.end method

.method public e()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->c:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->b:Lcom/google/android/exoplayer2/source/hls/n;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/m;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/n;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->b:Lcom/google/android/exoplayer2/source/hls/n;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/m;->a:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/hls/n;->k0(I)V

    .line 3
    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/m;->c:I

    :cond_0
    return-void
.end method
