.class final Lcom/google/android/exoplayer2/c1/c0/e;
.super Ljava/lang/Object;
.source "OggPacket.java"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/c1/c0/f;

.field private final b:Lcom/google/android/exoplayer2/util/v;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/c1/c0/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c1/c0/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/c0/e;->a:Lcom/google/android/exoplayer2/c1/c0/f;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/v;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/c0/e;->b:Lcom/google/android/exoplayer2/util/v;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/c1/c0/e;->c:I

    return-void
.end method

.method private a(I)I
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/c1/c0/e;->d:I

    .line 2
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/c1/c0/e;->d:I

    add-int v2, p1, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/c1/c0/e;->a:Lcom/google/android/exoplayer2/c1/c0/f;

    iget v4, v3, Lcom/google/android/exoplayer2/c1/c0/f;->g:I

    if-ge v2, v4, :cond_1

    .line 3
    iget-object v2, v3, Lcom/google/android/exoplayer2/c1/c0/f;->j:[I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/c1/c0/e;->d:I

    add-int/2addr v1, p1

    aget v1, v2, v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/c1/c0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/c0/e;->a:Lcom/google/android/exoplayer2/c1/c0/f;

    return-object v0
.end method

.method public c()Lcom/google/android/exoplayer2/util/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/c0/e;->b:Lcom/google/android/exoplayer2/util/v;

    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/c1/c0/e;->e:Z

    if-eqz v2, :cond_1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c1/c0/e;->e:Z

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/c0/e;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/v;->H()V

    .line 5
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/c1/c0/e;->e:Z

    if-nez v2, :cond_9

    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/c1/c0/e;->c:I

    if-gez v2, :cond_4

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/c0/e;->a:Lcom/google/android/exoplayer2/c1/c0/f;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/exoplayer2/c1/c0/f;->a(Lcom/google/android/exoplayer2/c1/i;Z)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/c0/e;->a:Lcom/google/android/exoplayer2/c1/c0/f;

    iget v3, v2, Lcom/google/android/exoplayer2/c1/c0/f;->h:I

    .line 9
    iget v2, v2, Lcom/google/android/exoplayer2/c1/c0/f;->b:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/c0/e;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result v2

    if-nez v2, :cond_3

    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c1/c0/e;->a(I)I

    move-result v2

    add-int/2addr v3, v2

    .line 11
    iget v2, p0, Lcom/google/android/exoplayer2/c1/c0/e;->d:I

    add-int/2addr v2, v0

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 12
    :goto_2
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    .line 13
    iput v2, p0, Lcom/google/android/exoplayer2/c1/c0/e;->c:I

    .line 14
    :cond_4
    iget v2, p0, Lcom/google/android/exoplayer2/c1/c0/e;->c:I

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/c1/c0/e;->a(I)I

    move-result v2

    .line 15
    iget v3, p0, Lcom/google/android/exoplayer2/c1/c0/e;->c:I

    iget v4, p0, Lcom/google/android/exoplayer2/c1/c0/e;->d:I

    add-int/2addr v3, v4

    if-lez v2, :cond_7

    .line 16
    iget-object v4, p0, Lcom/google/android/exoplayer2/c1/c0/e;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/v;->b()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/c1/c0/e;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result v5

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_5

    .line 17
    iget-object v4, p0, Lcom/google/android/exoplayer2/c1/c0/e;->b:Lcom/google/android/exoplayer2/util/v;

    iget-object v5, v4, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/exoplayer2/util/v;->a:[B

    .line 18
    :cond_5
    iget-object v4, p0, Lcom/google/android/exoplayer2/c1/c0/e;->b:Lcom/google/android/exoplayer2/util/v;

    iget-object v5, v4, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result v4

    invoke-interface {p1, v5, v4, v2}, Lcom/google/android/exoplayer2/c1/i;->readFully([BII)V

    .line 19
    iget-object v4, p0, Lcom/google/android/exoplayer2/c1/c0/e;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/v;->L(I)V

    .line 20
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/c0/e;->a:Lcom/google/android/exoplayer2/c1/c0/f;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c1/c0/f;->j:[I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xff

    if-eq v2, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/c1/c0/e;->e:Z

    .line 21
    :cond_7
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/c0/e;->a:Lcom/google/android/exoplayer2/c1/c0/f;

    iget v2, v2, Lcom/google/android/exoplayer2/c1/c0/f;->g:I

    if-ne v3, v2, :cond_8

    const/4 v3, -0x1

    :cond_8
    iput v3, p0, Lcom/google/android/exoplayer2/c1/c0/e;->c:I

    goto/16 :goto_1

    :cond_9
    return v1
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/c0/e;->a:Lcom/google/android/exoplayer2/c1/c0/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/c0/f;->b()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/c0/e;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->H()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/c1/c0/e;->c:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c1/c0/e;->e:Z

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/c0/e;->b:Lcom/google/android/exoplayer2/util/v;

    iget-object v1, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    array-length v2, v1

    const v3, 0xfe01

    if-ne v2, v3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result v2

    .line 3
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    return-void
.end method
