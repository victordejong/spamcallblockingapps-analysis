.class public final Lcom/google/android/exoplayer2/c1/d0/j;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/h;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/c1/l;


# instance fields
.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/c1/d0/k;

.field private final d:Lcom/google/android/exoplayer2/util/v;

.field private final e:Lcom/google/android/exoplayer2/util/v;

.field private final f:Lcom/google/android/exoplayer2/util/u;

.field private g:Lcom/google/android/exoplayer2/c1/j;

.field private h:J

.field private i:J

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/c1/d0/c;->a:Lcom/google/android/exoplayer2/c1/d0/c;

    sput-object v0, Lcom/google/android/exoplayer2/c1/d0/j;->a:Lcom/google/android/exoplayer2/c1/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c1/d0/j;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/c1/d0/j;->b:I

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/c1/d0/k;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/c1/d0/k;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/j;->c:Lcom/google/android/exoplayer2/c1/d0/k;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/j;->d:Lcom/google/android/exoplayer2/util/v;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/c1/d0/j;->j:I

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c1/d0/j;->i:J

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    .line 9
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/j;->f:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/c1/i;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c1/d0/j;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/c1/d0/j;->j:I

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->g()V

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/d0/j;->k(Lcom/google/android/exoplayer2/c1/i;)I

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    const/4 v5, 0x1

    .line 6
    :try_start_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    iget-object v6, v6, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/4 v7, 0x2

    invoke-interface {p1, v6, v1, v7, v5}, Lcom/google/android/exoplayer2/c1/i;->b([BIIZ)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 7
    iget-object v6, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 8
    iget-object v6, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result v6

    .line 9
    invoke-static {v6}, Lcom/google/android/exoplayer2/c1/d0/k;->l(I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    iget-object v6, v6, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/4 v7, 0x4

    invoke-interface {p1, v6, v1, v7, v5}, Lcom/google/android/exoplayer2/c1/i;->b([BIIZ)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    iget-object v6, p0, Lcom/google/android/exoplayer2/c1/d0/j;->f:Lcom/google/android/exoplayer2/util/u;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/u;->o(I)V

    .line 12
    iget-object v6, p0, Lcom/google/android/exoplayer2/c1/d0/j;->f:Lcom/google/android/exoplayer2/util/u;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/u;->h(I)I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_6

    int-to-long v7, v6

    add-long/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x3e8

    if-ne v2, v7, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v6, v6, -0x6

    .line 13
    invoke-interface {p1, v6, v5}, Lcom/google/android/exoplayer2/c1/i;->i(IZ)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    goto :goto_1

    .line 14
    :cond_6
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/c1/d0/j;->k:Z

    .line 15
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v6, "Malformed ADTS stream"

    invoke-direct {v1, v6}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_1
    move v1, v2

    .line 16
    :goto_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->g()V

    if-lez v1, :cond_8

    int-to-long v0, v1

    .line 17
    div-long/2addr v3, v0

    long-to-int p1, v3

    iput p1, p0, Lcom/google/android/exoplayer2/c1/d0/j;->j:I

    goto :goto_3

    .line 18
    :cond_8
    iput v0, p0, Lcom/google/android/exoplayer2/c1/d0/j;->j:I

    .line 19
    :goto_3
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/c1/d0/j;->k:Z

    return-void
.end method

.method private static d(IJ)I
    .locals 4

    mul-int/lit8 p0, p0, 0x8

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    .line 1
    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private e(J)Lcom/google/android/exoplayer2/c1/t;
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/c1/d0/j;->j:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/j;->c:Lcom/google/android/exoplayer2/c1/d0/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/c1/d0/k;->j()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/c1/d0/j;->d(IJ)I

    move-result v8

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/c1/d;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/c1/d0/j;->i:J

    iget v9, p0, Lcom/google/android/exoplayer2/c1/d0/j;->j:I

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/c1/d;-><init>(JJII)V

    return-object v0
.end method

.method static synthetic i()[Lcom/google/android/exoplayer2/c1/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/c1/h;

    .line 1
    new-instance v1, Lcom/google/android/exoplayer2/c1/d0/j;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/c1/d0/j;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private j(JZZ)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c1/d0/j;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 2
    iget p3, p0, Lcom/google/android/exoplayer2/c1/d0/j;->j:I

    if-lez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p3, :cond_2

    .line 3
    iget-object v3, p0, Lcom/google/android/exoplayer2/c1/d0/j;->c:Lcom/google/android/exoplayer2/c1/d0/k;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/c1/d0/k;->j()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_2

    if-nez p4, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object p4, p0, Lcom/google/android/exoplayer2/c1/d0/j;->g:Lcom/google/android/exoplayer2/c1/j;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/c1/j;

    if-eqz p3, :cond_3

    .line 6
    iget-object p3, p0, Lcom/google/android/exoplayer2/c1/d0/j;->c:Lcom/google/android/exoplayer2/c1/d0/k;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/c1/d0/k;->j()J

    move-result-wide v3

    cmp-long p3, v3, v1

    if-eqz p3, :cond_3

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/c1/d0/j;->e(J)Lcom/google/android/exoplayer2/c1/t;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/google/android/exoplayer2/c1/j;->c(Lcom/google/android/exoplayer2/c1/t;)V

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/c1/t$b;

    invoke-direct {p1, v1, v2}, Lcom/google/android/exoplayer2/c1/t$b;-><init>(J)V

    invoke-interface {p4, p1}, Lcom/google/android/exoplayer2/c1/j;->c(Lcom/google/android/exoplayer2/c1/t;)V

    .line 9
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c1/d0/j;->m:Z

    return-void
.end method

.method private k(Lcom/google/android/exoplayer2/c1/i;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/16 v3, 0xa

    invoke-interface {p1, v2, v0, v3}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/v;->C()I

    move-result v2

    const v3, 0x494433

    if-eq v2, v3, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->g()V

    .line 5
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/c1/i;->d(I)V

    .line 6
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c1/d0/j;->i:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    int-to-long v2, v1

    .line 7
    iput-wide v2, p0, Lcom/google/android/exoplayer2/c1/d0/j;->i:J

    :cond_0
    return v1

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 9
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/v;->y()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 10
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/c1/i;->d(I)V

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/d0/j;->k(Lcom/google/android/exoplayer2/c1/i;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/4 v6, 0x2

    invoke-interface {p1, v5, v1, v6}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 3
    iget-object v5, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 4
    iget-object v5, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result v5

    .line 5
    invoke-static {v5}, Lcom/google/android/exoplayer2/c1/d0/k;->l(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->g()V

    add-int/lit8 v3, v3, 0x1

    sub-int v2, v3, v0

    const/16 v4, 0x2000

    if-lt v2, v4, :cond_0

    return v1

    .line 7
    :cond_0
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/c1/i;->d(I)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_2

    const/16 v7, 0xbc

    if-le v4, v7, :cond_2

    return v5

    .line 8
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/c1/d0/j;->e:Lcom/google/android/exoplayer2/util/v;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-interface {p1, v5, v1, v6}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 9
    iget-object v5, p0, Lcom/google/android/exoplayer2/c1/d0/j;->f:Lcom/google/android/exoplayer2/util/u;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/u;->o(I)V

    .line 10
    iget-object v5, p0, Lcom/google/android/exoplayer2/c1/d0/j;->f:Lcom/google/android/exoplayer2/util/u;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/u;->h(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v6, v5, -0x6

    .line 11
    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/c1/i;->d(I)V

    add-int/2addr v4, v5

    goto :goto_1
.end method

.method public f(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->getLength()J

    move-result-wide v0

    .line 2
    iget p2, p0, Lcom/google/android/exoplayer2/c1/d0/j;->b:I

    const/4 v2, 0x1

    and-int/2addr p2, v2

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const-wide/16 v4, -0x1

    cmp-long p2, v0, v4

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/d0/j;->a(Lcom/google/android/exoplayer2/c1/i;)V

    .line 4
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/c1/d0/j;->d:Lcom/google/android/exoplayer2/util/v;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/16 v5, 0x800

    invoke-interface {p1, v4, v3, v5}, Lcom/google/android/exoplayer2/c1/i;->read([BII)I

    move-result p1

    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 5
    :goto_1
    invoke-direct {p0, v0, v1, p2, v5}, Lcom/google/android/exoplayer2/c1/d0/j;->j(JZZ)V

    if-eqz v5, :cond_3

    return v4

    .line 6
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/j;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 7
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/j;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/v;->L(I)V

    .line 8
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/c1/d0/j;->l:Z

    if-nez p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/j;->c:Lcom/google/android/exoplayer2/c1/d0/k;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/c1/d0/j;->h:J

    const/4 p2, 0x4

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/c1/d0/k;->f(JI)V

    .line 10
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/c1/d0/j;->l:Z

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/j;->c:Lcom/google/android/exoplayer2/c1/d0/k;

    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/j;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/c1/d0/k;->b(Lcom/google/android/exoplayer2/util/v;)V

    return v3
.end method

.method public g(Lcom/google/android/exoplayer2/c1/j;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/j;->g:Lcom/google/android/exoplayer2/c1/j;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/j;->c:Lcom/google/android/exoplayer2/c1/d0/k;

    new-instance v1, Lcom/google/android/exoplayer2/c1/d0/h0$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/c1/d0/h0$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/c1/d0/k;->e(Lcom/google/android/exoplayer2/c1/j;Lcom/google/android/exoplayer2/c1/d0/h0$d;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/j;->o()V

    return-void
.end method

.method public h(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/c1/d0/j;->l:Z

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/j;->c:Lcom/google/android/exoplayer2/c1/d0/k;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/c1/d0/k;->c()V

    .line 3
    iput-wide p3, p0, Lcom/google/android/exoplayer2/c1/d0/j;->h:J

    return-void
.end method
