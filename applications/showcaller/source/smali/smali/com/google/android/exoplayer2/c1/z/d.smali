.class public final Lcom/google/android/exoplayer2/c1/z/d;
.super Ljava/lang/Object;
.source "FlacExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/h;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/c1/l;


# instance fields
.field private final b:[B

.field private final c:Lcom/google/android/exoplayer2/util/v;

.field private final d:Z

.field private final e:Lcom/google/android/exoplayer2/c1/m$a;

.field private f:Lcom/google/android/exoplayer2/c1/j;

.field private g:Lcom/google/android/exoplayer2/c1/v;

.field private h:I

.field private i:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private j:Lcom/google/android/exoplayer2/util/l;

.field private k:I

.field private l:I

.field private m:Lcom/google/android/exoplayer2/c1/z/c;

.field private n:I

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/c1/z/a;->a:Lcom/google/android/exoplayer2/c1/z/a;

    sput-object v0, Lcom/google/android/exoplayer2/c1/z/d;->a:Lcom/google/android/exoplayer2/c1/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c1/z/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->b:[B

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/v;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->d:Z

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/c1/m$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/c1/m$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->e:Lcom/google/android/exoplayer2/c1/m$a;

    .line 7
    iput v2, p0, Lcom/google/android/exoplayer2/c1/z/d;->h:I

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/v;Z)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/z/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget v2, p0, Lcom/google/android/exoplayer2/c1/z/d;->l:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/c1/z/d;->e:Lcom/google/android/exoplayer2/c1/m$a;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/c1/m;->d(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/util/l;ILcom/google/android/exoplayer2/c1/m$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->e:Lcom/google/android/exoplayer2/c1/m$a;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/c1/m$a;->a:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    .line 8
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result p2

    iget v1, p0, Lcom/google/android/exoplayer2/c1/z/d;->k:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    const/4 p2, 0x0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/z/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget v2, p0, Lcom/google/android/exoplayer2/c1/z/d;->l:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/c1/z/d;->e:Lcom/google/android/exoplayer2/c1/m$a;

    .line 11
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/c1/m;->d(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/util/l;ILcom/google/android/exoplayer2/c1/m$a;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v1, 0x0

    .line 12
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_3

    :cond_2
    move p2, v1

    :goto_3
    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->e:Lcom/google/android/exoplayer2/c1/m$a;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/c1/m$a;->a:J

    return-wide p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    goto :goto_4

    .line 16
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private d(Lcom/google/android/exoplayer2/c1/i;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/c1/n;->b(Lcom/google/android/exoplayer2/c1/i;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->l:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->f:Lcom/google/android/exoplayer2/c1/j;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c1/j;

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v1

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->getLength()J

    move-result-wide v3

    .line 5
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/c1/z/d;->e(JJ)Lcom/google/android/exoplayer2/c1/t;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/c1/j;->c(Lcom/google/android/exoplayer2/c1/t;)V

    const/4 p1, 0x5

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->h:I

    return-void
.end method

.method private e(JJ)Lcom/google/android/exoplayer2/c1/t;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/z/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v2, Lcom/google/android/exoplayer2/util/l;->k:Lcom/google/android/exoplayer2/util/l$a;

    if-eqz v0, :cond_0

    .line 3
    new-instance p3, Lcom/google/android/exoplayer2/c1/o;

    invoke-direct {p3, v2, p1, p2}, Lcom/google/android/exoplayer2/c1/o;-><init>(Lcom/google/android/exoplayer2/util/l;J)V

    return-object p3

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v3, p3, v0

    if-eqz v3, :cond_1

    .line 4
    iget-wide v0, v2, Lcom/google/android/exoplayer2/util/l;->j:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/c1/z/c;

    iget v3, p0, Lcom/google/android/exoplayer2/c1/z/d;->l:I

    move-object v1, v0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/c1/z/c;-><init>(Lcom/google/android/exoplayer2/util/l;IJJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->m:Lcom/google/android/exoplayer2/c1/z/c;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/a;->b()Lcom/google/android/exoplayer2/c1/t;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/c1/t$b;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->h()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/c1/t$b;-><init>(J)V

    return-object p1
.end method

.method private i(Lcom/google/android/exoplayer2/c1/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->b:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->g()V

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->h:I

    return-void
.end method

.method static synthetic j()[Lcom/google/android/exoplayer2/c1/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/c1/h;

    .line 1
    new-instance v1, Lcom/google/android/exoplayer2/c1/z/d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/c1/z/d;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private k()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->o:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/z/d;->j:Lcom/google/android/exoplayer2/util/l;

    .line 2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/l;

    iget v2, v2, Lcom/google/android/exoplayer2/util/l;->e:I

    int-to-long v2, v2

    div-long v5, v0, v2

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->g:Lcom/google/android/exoplayer2/c1/v;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/exoplayer2/c1/v;

    iget v8, p0, Lcom/google/android/exoplayer2/c1/z/d;->n:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/c1/v;->c(JIIILcom/google/android/exoplayer2/c1/v$a;)V

    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->g:Lcom/google/android/exoplayer2/c1/v;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->m:Lcom/google/android/exoplayer2/c1/z/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->m:Lcom/google/android/exoplayer2/c1/z/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c1/a;->c(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I

    move-result p1

    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->o:J

    const-wide/16 v2, -0x1

    const/4 p2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->j:Lcom/google/android/exoplayer2/util/l;

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/c1/m;->i(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/util/l;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->o:J

    return p2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result v0

    const v1, 0x8000

    if-ge v0, v1, :cond_4

    .line 9
    iget-object v4, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/v;->a:[B

    sub-int/2addr v1, v0

    .line 10
    invoke-interface {p1, v4, v0, v1}, Lcom/google/android/exoplayer2/c1/i;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/v;->L(I)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result p1

    if-nez p1, :cond_5

    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c1/z/d;->k()V

    return v1

    :cond_4
    const/4 v4, 0x0

    .line 14
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result p1

    .line 15
    iget v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->n:I

    iget v1, p0, Lcom/google/android/exoplayer2/c1/z/d;->k:I

    if-ge v0, v1, :cond_6

    .line 16
    iget-object v5, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    sub-int/2addr v1, v0

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplayer2/c1/z/d;->a(Lcom/google/android/exoplayer2/util/v;Z)J

    move-result-wide v0

    .line 18
    iget-object v4, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v4

    sub-int/2addr v4, p1

    .line 19
    iget-object v5, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v5, p1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 20
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->g:Lcom/google/android/exoplayer2/c1/v;

    iget-object v5, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-interface {p1, v5, v4}, Lcom/google/android/exoplayer2/c1/v;->b(Lcom/google/android/exoplayer2/util/v;I)V

    .line 21
    iget p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->n:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->n:I

    cmp-long p1, v0, v2

    if-eqz p1, :cond_7

    .line 22
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c1/z/d;->k()V

    .line 23
    iput p2, p0, Lcom/google/android/exoplayer2/c1/z/d;->n:I

    .line 24
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->o:J

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result p1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_8

    .line 26
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, p1, Lcom/google/android/exoplayer2/util/v;->a:[B

    .line 27
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    iget-object v2, v1, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v1

    .line 28
    invoke-static {v0, p1, v2, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/v;->I(I)V

    :cond_8
    return p2
.end method

.method private m(Lcom/google/android/exoplayer2/c1/i;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/c1/n;->d(Lcom/google/android/exoplayer2/c1/i;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 2
    iput v1, p0, Lcom/google/android/exoplayer2/c1/z/d;->h:I

    return-void
.end method

.method private n(Lcom/google/android/exoplayer2/c1/i;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/c1/n$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/z/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c1/n$a;-><init>(Lcom/google/android/exoplayer2/util/l;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/c1/n;->e(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/n$a;)Z

    move-result v1

    .line 3
    iget-object v2, v0, Lcom/google/android/exoplayer2/c1/n$a;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/l;

    iput-object v2, p0, Lcom/google/android/exoplayer2/c1/z/d;->j:Lcom/google/android/exoplayer2/util/l;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget p1, p1, Lcom/google/android/exoplayer2/util/l;->c:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->k:I

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->g:Lcom/google/android/exoplayer2/c1/v;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/c1/v;

    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/z/d;->b:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/c1/z/d;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/l;->i([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c1/v;->d(Lcom/google/android/exoplayer2/Format;)V

    const/4 p1, 0x4

    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->h:I

    return-void
.end method

.method private o(Lcom/google/android/exoplayer2/c1/i;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/c1/n;->j(Lcom/google/android/exoplayer2/c1/i;)V

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->h:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/c1/n;->c(Lcom/google/android/exoplayer2/c1/i;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/c1/n;->a(Lcom/google/android/exoplayer2/c1/i;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->h:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/c1/z/d;->l(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/z/d;->d(Lcom/google/android/exoplayer2/c1/i;)V

    return v1

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/z/d;->n(Lcom/google/android/exoplayer2/c1/i;)V

    return v1

    .line 6
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/z/d;->o(Lcom/google/android/exoplayer2/c1/i;)V

    return v1

    .line 7
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/z/d;->i(Lcom/google/android/exoplayer2/c1/i;)V

    return v1

    .line 8
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c1/z/d;->m(Lcom/google/android/exoplayer2/c1/i;)V

    return v1
.end method

.method public g(Lcom/google/android/exoplayer2/c1/j;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->f:Lcom/google/android/exoplayer2/c1/j;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/c1/j;->t(II)Lcom/google/android/exoplayer2/c1/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->g:Lcom/google/android/exoplayer2/c1/v;

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/j;->o()V

    return-void
.end method

.method public h(JJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->h:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->m:Lcom/google/android/exoplayer2/c1/z/c;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/c1/a;->h(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    .line 4
    :goto_1
    iput-wide v1, p0, Lcom/google/android/exoplayer2/c1/z/d;->o:J

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/c1/z/d;->n:I

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/z/d;->c:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->H()V

    return-void
.end method
