.class public final Lcom/google/android/exoplayer2/c1/d0/m;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/d0/o;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/v;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/exoplayer2/c1/v;

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:Lcom/google/android/exoplayer2/Format;

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/v;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->a:Lcom/google/android/exoplayer2/util/v;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->e:I

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/v;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->f:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->f:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    .line 3
    iget p1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->f:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->a:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->i:Lcom/google/android/exoplayer2/Format;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/d0/m;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/r;->g([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->i:Lcom/google/android/exoplayer2/Format;

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/d0/m;->d:Lcom/google/android/exoplayer2/c1/v;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/r;->a([B)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->j:I

    const-wide/32 v1, 0xf4240

    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/r;->f([B)I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->i:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->z:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->h:J

    return-void
.end method

.method private h(Lcom/google/android/exoplayer2/util/v;)Z
    .locals 5

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->g:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->g:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->g:I

    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/r;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->a:Lcom/google/android/exoplayer2/util/v;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/v;->a:[B

    iget v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->g:I

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    .line 6
    aput-byte v2, p1, v3

    const/4 v2, 0x2

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 7
    aput-byte v4, p1, v2

    const/4 v2, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 8
    aput-byte v0, p1, v2

    const/4 p1, 0x4

    .line 9
    iput p1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->f:I

    .line 10
    iput v1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->g:I

    return v3

    :cond_1
    return v1
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/util/v;)V
    .locals 10

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v0

    if-lez v0, :cond_4

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->e:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->j:I

    iget v3, p0, Lcom/google/android/exoplayer2/c1/d0/m;->f:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->d:Lcom/google/android/exoplayer2/c1/v;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 5
    iget v1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->f:I

    .line 6
    iget v7, p0, Lcom/google/android/exoplayer2/c1/d0/m;->j:I

    if-ne v1, v7, :cond_0

    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/c1/d0/m;->d:Lcom/google/android/exoplayer2/c1/v;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/c1/d0/m;->k:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/c1/v;->c(JIIILcom/google/android/exoplayer2/c1/v$a;)V

    .line 8
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->k:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/c1/d0/m;->h:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->k:J

    .line 9
    iput v2, p0, Lcom/google/android/exoplayer2/c1/d0/m;->e:I

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->a:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/c1/d0/m;->a(Lcom/google/android/exoplayer2/util/v;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c1/d0/m;->g()V

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->a:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->d:Lcom/google/android/exoplayer2/c1/v;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/d0/m;->a:Lcom/google/android/exoplayer2/util/v;

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 15
    iput v3, p0, Lcom/google/android/exoplayer2/c1/d0/m;->e:I

    goto :goto_0

    .line 16
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/d0/m;->h(Lcom/google/android/exoplayer2/util/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iput v1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->e:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->e:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->f:I

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->g:I

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/c1/j;Lcom/google/android/exoplayer2/c1/d0/h0$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c1/d0/h0$d;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c1/d0/h0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/m;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c1/d0/h0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/c1/j;->t(II)Lcom/google/android/exoplayer2/c1/v;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->d:Lcom/google/android/exoplayer2/c1/v;

    return-void
.end method

.method public f(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c1/d0/m;->k:J

    return-void
.end method
