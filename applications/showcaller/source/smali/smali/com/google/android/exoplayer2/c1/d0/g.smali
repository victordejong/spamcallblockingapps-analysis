.class public final Lcom/google/android/exoplayer2/c1/d0/g;
.super Ljava/lang/Object;
.source "Ac3Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/d0/o;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/u;

.field private final b:Lcom/google/android/exoplayer2/util/v;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/exoplayer2/c1/v;

.field private f:I

.field private g:I

.field private h:Z

.field private i:J

.field private j:Lcom/google/android/exoplayer2/Format;

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c1/d0/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->a:Lcom/google/android/exoplayer2/util/u;

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/v;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->b:Lcom/google/android/exoplayer2/util/v;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->f:I

    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/v;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    .line 3
    iget p1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->g:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private g()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->a:Lcom/google/android/exoplayer2/util/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->o(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/g;->e(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/audio/g$b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->j:Lcom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/google/android/exoplayer2/audio/g$b;->d:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->y:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/google/android/exoplayer2/audio/g$b;->c:I

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->z:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/g$b;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    if-eq v2, v1, :cond_1

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/c1/d0/g;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/g$b;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget v8, v0, Lcom/google/android/exoplayer2/audio/g$b;->d:I

    iget v9, v0, Lcom/google/android/exoplayer2/audio/g$b;->c:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/google/android/exoplayer2/c1/d0/g;->c:Ljava/lang/String;

    invoke-static/range {v3 .. v13}, Lcom/google/android/exoplayer2/Format;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->j:Lcom/google/android/exoplayer2/Format;

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/d0/g;->e:Lcom/google/android/exoplayer2/c1/v;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    .line 6
    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/audio/g$b;->e:I

    iput v1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->k:I

    const-wide/32 v1, 0xf4240

    .line 7
    iget v0, v0, Lcom/google/android/exoplayer2/audio/g$b;->f:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->j:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->z:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Lcom/google/android/exoplayer2/c1/d0/g;->i:J

    return-void
.end method

.method private h(Lcom/google/android/exoplayer2/util/v;)Z
    .locals 5

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->h:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->h:Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_2

    .line 5
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->h:Z

    return v3

    :cond_2
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    .line 6
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->h:Z

    goto :goto_0

    :cond_4
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
    iget v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v0

    iget v2, p0, Lcom/google/android/exoplayer2/c1/d0/g;->k:I

    iget v3, p0, Lcom/google/android/exoplayer2/c1/d0/g;->g:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/d0/g;->e:Lcom/google/android/exoplayer2/c1/v;

    invoke-interface {v2, p1, v0}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 5
    iget v2, p0, Lcom/google/android/exoplayer2/c1/d0/g;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/c1/d0/g;->g:I

    .line 6
    iget v7, p0, Lcom/google/android/exoplayer2/c1/d0/g;->k:I

    if-ne v2, v7, :cond_0

    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/c1/d0/g;->e:Lcom/google/android/exoplayer2/c1/v;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/c1/d0/g;->l:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/c1/v;->c(JIIILcom/google/android/exoplayer2/c1/v$a;)V

    .line 8
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c1/d0/g;->l:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/c1/d0/g;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/c1/d0/g;->l:J

    .line 9
    iput v1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->f:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->b:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/16 v3, 0x80

    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/exoplayer2/c1/d0/g;->a(Lcom/google/android/exoplayer2/util/v;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c1/d0/g;->g()V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->e:Lcom/google/android/exoplayer2/c1/v;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-interface {v0, v1, v3}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 14
    iput v2, p0, Lcom/google/android/exoplayer2/c1/d0/g;->f:I

    goto :goto_0

    .line 15
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/d0/g;->h(Lcom/google/android/exoplayer2/util/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iput v3, p0, Lcom/google/android/exoplayer2/c1/d0/g;->f:I

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->b:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    const/16 v1, 0x77

    .line 18
    aput-byte v1, v0, v3

    .line 19
    iput v2, p0, Lcom/google/android/exoplayer2/c1/d0/g;->g:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->f:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->g:I

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->h:Z

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

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/g;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c1/d0/h0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/c1/j;->t(II)Lcom/google/android/exoplayer2/c1/v;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->e:Lcom/google/android/exoplayer2/c1/v;

    return-void
.end method

.method public f(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c1/d0/g;->l:J

    return-void
.end method
