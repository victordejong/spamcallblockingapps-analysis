.class public final Lcom/google/android/exoplayer2/extractor/flv/c;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/h;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/c1/l;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/util/v;

.field private final c:Lcom/google/android/exoplayer2/util/v;

.field private final d:Lcom/google/android/exoplayer2/util/v;

.field private final e:Lcom/google/android/exoplayer2/util/v;

.field private final f:Lcom/google/android/exoplayer2/extractor/flv/d;

.field private g:Lcom/google/android/exoplayer2/c1/j;

.field private h:I

.field private i:Z

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:Z

.field private p:Lcom/google/android/exoplayer2/extractor/flv/b;

.field private q:Lcom/google/android/exoplayer2/extractor/flv/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/extractor/flv/a;->a:Lcom/google/android/exoplayer2/extractor/flv/a;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/flv/c;->a:Lcom/google/android/exoplayer2/c1/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:Lcom/google/android/exoplayer2/util/v;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->c:Lcom/google/android/exoplayer2/util/v;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->d:Lcom/google/android/exoplayer2/util/v;

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/v;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->e:Lcom/google/android/exoplayer2/util/v;

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/flv/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->f:Lcom/google/android/exoplayer2/extractor/flv/d;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->h:I

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->o:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->g:Lcom/google/android/exoplayer2/c1/j;

    new-instance v1, Lcom/google/android/exoplayer2/c1/t$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/c1/t$b;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/c1/j;->c(Lcom/google/android/exoplayer2/c1/t;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->o:Z

    :cond_0
    return-void
.end method

.method private d()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->i:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->j:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->n:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->f:Lcom/google/android/exoplayer2/extractor/flv/d;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/flv/d;->d()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->n:J

    :goto_0
    return-wide v0
.end method

.method static synthetic e()[Lcom/google/android/exoplayer2/c1/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/c1/h;

    .line 1
    new-instance v1, Lcom/google/android/exoplayer2/extractor/flv/c;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/flv/c;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private i(Lcom/google/android/exoplayer2/c1/i;)Lcom/google/android/exoplayer2/util/v;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->m:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->e:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->e:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->m:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/v;->K([BI)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->e:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->e:Lcom/google/android/exoplayer2/util/v;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->m:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/v;->L(I)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->e:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->m:I

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/c1/i;->readFully([BII)V

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->e:Lcom/google/android/exoplayer2/util/v;

    return-object p1
.end method

.method private j(Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->c:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/c1/i;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->c:Lcom/google/android/exoplayer2/util/v;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result p1

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v4, :cond_3

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->p:Lcom/google/android/exoplayer2/extractor/flv/b;

    if-nez p1, :cond_3

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/flv/b;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->g:Lcom/google/android/exoplayer2/c1/j;

    const/16 v5, 0x8

    .line 7
    invoke-interface {v4, v5, v3}, Lcom/google/android/exoplayer2/c1/j;->t(II)Lcom/google/android/exoplayer2/c1/v;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/google/android/exoplayer2/extractor/flv/b;-><init>(Lcom/google/android/exoplayer2/c1/v;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->p:Lcom/google/android/exoplayer2/extractor/flv/b;

    :cond_3
    const/4 p1, 0x2

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->q:Lcom/google/android/exoplayer2/extractor/flv/e;

    if-nez v1, :cond_4

    .line 9
    new-instance v1, Lcom/google/android/exoplayer2/extractor/flv/e;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->g:Lcom/google/android/exoplayer2/c1/j;

    .line 10
    invoke-interface {v4, v2, p1}, Lcom/google/android/exoplayer2/c1/j;->t(II)Lcom/google/android/exoplayer2/c1/v;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/exoplayer2/extractor/flv/e;-><init>(Lcom/google/android/exoplayer2/c1/v;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->q:Lcom/google/android/exoplayer2/extractor/flv/e;

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->g:Lcom/google/android/exoplayer2/c1/j;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/c1/j;->o()V

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->k:I

    .line 13
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->h:I

    return v3
.end method

.method private k(Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flv/c;->d()J

    move-result-wide v0

    .line 2
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->l:I

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->p:Lcom/google/android/exoplayer2/extractor/flv/b;

    if-eqz v7, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flv/c;->a()V

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->p:Lcom/google/android/exoplayer2/extractor/flv/b;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/c;->i(Lcom/google/android/exoplayer2/c1/i;)Lcom/google/android/exoplayer2/util/v;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lcom/google/android/exoplayer2/util/v;J)Z

    move-result v5

    :cond_0
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/16 v7, 0x9

    if-ne v2, v7, :cond_2

    .line 5
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->q:Lcom/google/android/exoplayer2/extractor/flv/e;

    if-eqz v7, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flv/c;->a()V

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->q:Lcom/google/android/exoplayer2/extractor/flv/e;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/c;->i(Lcom/google/android/exoplayer2/c1/i;)Lcom/google/android/exoplayer2/util/v;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lcom/google/android/exoplayer2/util/v;J)Z

    move-result v5

    goto :goto_0

    :cond_2
    const/16 v7, 0x12

    if-ne v2, v7, :cond_3

    .line 8
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->o:Z

    if-nez v2, :cond_3

    .line 9
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->f:Lcom/google/android/exoplayer2/extractor/flv/d;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/c;->i(Lcom/google/android/exoplayer2/c1/i;)Lcom/google/android/exoplayer2/util/v;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lcom/google/android/exoplayer2/util/v;J)Z

    move-result v5

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->f:Lcom/google/android/exoplayer2/extractor/flv/d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/flv/d;->d()J

    move-result-wide v0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->g:Lcom/google/android/exoplayer2/c1/j;

    new-instance v2, Lcom/google/android/exoplayer2/c1/t$b;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/c1/t$b;-><init>(J)V

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/c1/j;->c(Lcom/google/android/exoplayer2/c1/t;)V

    .line 12
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->o:Z

    goto :goto_0

    .line 13
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->m:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    const/4 p1, 0x0

    .line 14
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->i:Z

    if-nez v0, :cond_5

    if-eqz v5, :cond_5

    .line 15
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->i:Z

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->f:Lcom/google/android/exoplayer2/extractor/flv/d;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/flv/d;->d()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->n:J

    neg-long v0, v0

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x0

    :goto_2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->j:J

    :cond_5
    const/4 v0, 0x4

    .line 18
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->k:I

    const/4 v0, 0x2

    .line 19
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->h:I

    return p1
.end method

.method private l(Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->d:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/c1/i;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->l:I

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->C()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->m:I

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->C()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->n:J

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v0, p1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->n:J

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->n:J

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->d:Lcom/google/android/exoplayer2/util/v;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    const/4 p1, 0x4

    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->h:I

    return v3
.end method

.method private m(Lcom/google/android/exoplayer2/c1/i;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->k:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->k:I

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->h:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->C()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    .line 10
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->g()V

    .line 11
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c1/i;->d(I)V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public f(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I
    .locals 2

    .line 1
    :cond_0
    :goto_0
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->h:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/c;->k(Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/c;->l(Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    .line 5
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/c;->m(Lcom/google/android/exoplayer2/c1/i;)V

    goto :goto_0

    .line 6
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/c;->j(Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1
.end method

.method public g(Lcom/google/android/exoplayer2/c1/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->g:Lcom/google/android/exoplayer2/c1/j;

    return-void
.end method

.method public h(JJ)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->h:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->i:Z

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/c;->k:I

    return-void
.end method
