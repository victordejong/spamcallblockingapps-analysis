.class final Lcom/google/android/exoplayer2/extractor/mp4/g$b;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/c1/v;

.field public final b:Lcom/google/android/exoplayer2/extractor/mp4/n;

.field public final c:Lcom/google/android/exoplayer2/util/v;

.field public d:Lcom/google/android/exoplayer2/extractor/mp4/l;

.field public e:Lcom/google/android/exoplayer2/extractor/mp4/e;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field private final j:Lcom/google/android/exoplayer2/util/v;

.field private final k:Lcom/google/android/exoplayer2/util/v;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/c1/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->a:Lcom/google/android/exoplayer2/c1/v;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/n;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mp4/n;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->c:Lcom/google/android/exoplayer2/util/v;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->j:Lcom/google/android/exoplayer2/util/v;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->k:Lcom/google/android/exoplayer2/util/v;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/mp4/g$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->i()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/mp4/g$b;)Lcom/google/android/exoplayer2/extractor/mp4/m;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->c()Lcom/google/android/exoplayer2/extractor/mp4/m;

    move-result-object p0

    return-object p0
.end method

.method private c()Lcom/google/android/exoplayer2/extractor/mp4/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->a:Lcom/google/android/exoplayer2/extractor/mp4/e;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/e;->a:I

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->o:Lcom/google/android/exoplayer2/extractor/mp4/m;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->d:Lcom/google/android/exoplayer2/extractor/mp4/l;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/l;->a(I)Lcom/google/android/exoplayer2/extractor/mp4/m;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/m;->a:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private i()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->c()Lcom/google/android/exoplayer2/extractor/mp4/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/n;->q:Lcom/google/android/exoplayer2/util/v;

    .line 3
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/m;->d:I

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->f:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/n;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public d(Lcom/google/android/exoplayer2/extractor/mp4/l;Lcom/google/android/exoplayer2/extractor/mp4/e;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/l;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->d:Lcom/google/android/exoplayer2/extractor/mp4/l;

    .line 2
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/mp4/e;

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->e:Lcom/google/android/exoplayer2/extractor/mp4/e;

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->a:Lcom/google/android/exoplayer2/c1/v;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/l;->f:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->g()V

    return-void
.end method

.method public e()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->f:I

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->g:I

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/n;->h:[I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->h:I

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    add-int/2addr v3, v1

    .line 4
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->h:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->g:I

    return v0

    :cond_0
    return v1
.end method

.method public f(II)I
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->c()Lcom/google/android/exoplayer2/extractor/mp4/m;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/m;->d:I

    if-eqz v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/n;->q:Lcom/google/android/exoplayer2/util/v;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/m;->e:[B

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->k:Lcom/google/android/exoplayer2/util/v;

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/util/v;->K([BI)V

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->k:Lcom/google/android/exoplayer2/util/v;

    .line 7
    array-length v0, v0

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->f:I

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/n;->g(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    .line 10
    :goto_2
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->j:Lcom/google/android/exoplayer2/util/v;

    iget-object v7, v6, Lcom/google/android/exoplayer2/util/v;->a:[B

    if-eqz v5, :cond_4

    const/16 v8, 0x80

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    or-int/2addr v8, v2

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 11
    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 12
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->a:Lcom/google/android/exoplayer2/c1/v;

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->j:Lcom/google/android/exoplayer2/util/v;

    invoke-interface {v6, v7, v4}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 13
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->a:Lcom/google/android/exoplayer2/c1/v;

    invoke-interface {v6, v0, v2}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    if-nez v5, :cond_5

    add-int/2addr v2, v4

    return v2

    :cond_5
    const/4 v0, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-nez v3, :cond_6

    .line 14
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/v;->I(I)V

    .line 15
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->c:Lcom/google/android/exoplayer2/util/v;

    iget-object v8, v3, Lcom/google/android/exoplayer2/util/v;->a:[B

    aput-byte v1, v8, v1

    .line 16
    aput-byte v4, v8, v4

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 17
    aput-byte v1, v8, v6

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 18
    aput-byte p2, v8, v5

    const/4 p2, 0x4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 19
    aput-byte v1, v8, p2

    const/4 p2, 0x5

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 20
    aput-byte v1, v8, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 21
    aput-byte p2, v8, v0

    const/4 p2, 0x7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 22
    aput-byte p1, v8, p2

    .line 23
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->a:Lcom/google/android/exoplayer2/c1/v;

    invoke-interface {p1, v3, v7}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    return v2

    .line 24
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/n;->q:Lcom/google/android/exoplayer2/util/v;

    .line 25
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result v3

    const/4 v8, -0x2

    .line 26
    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v6

    if-eqz p2, :cond_7

    .line 27
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/v;->I(I)V

    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->c:Lcom/google/android/exoplayer2/util/v;

    iget-object v8, p1, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-virtual {v0, v8, v1, v3}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    .line 29
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 30
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->c:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, p1, Lcom/google/android/exoplayer2/util/v;->a:[B

    aget-byte v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v7

    aget-byte v7, v0, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v1, v7

    add-int/2addr v1, p2

    shr-int/lit8 p2, v1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 31
    aput-byte p2, v0, v6

    and-int/lit16 p2, v1, 0xff

    int-to-byte p2, p2

    .line 32
    aput-byte p2, v0, v5

    .line 33
    :cond_7
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->a:Lcom/google/android/exoplayer2/c1/v;

    invoke-interface {p2, p1, v3}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    return v2
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/n;->f()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->f:I

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->h:I

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->g:I

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->i:I

    return-void
.end method

.method public h(J)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide p1

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->f:I

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iget v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/n;->f:I

    if-ge v0, v2, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/n;->c(I)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/n;->l:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->i:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->d:Lcom/google/android/exoplayer2/extractor/mp4/l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:Lcom/google/android/exoplayer2/extractor/mp4/n;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/n;->a:Lcom/google/android/exoplayer2/extractor/mp4/e;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/e;->a:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/l;->a(I)Lcom/google/android/exoplayer2/extractor/mp4/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/m;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->a:Lcom/google/android/exoplayer2/c1/v;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->d:Lcom/google/android/exoplayer2/extractor/mp4/l;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/l;->f:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Format;->d(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method
