.class public final Lcom/google/android/exoplayer2/c1/d0/z;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/c1/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c1/d0/z$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/c1/l;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/util/e0;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/c1/d0/z$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/exoplayer2/util/v;

.field private final e:Lcom/google/android/exoplayer2/c1/d0/y;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:J

.field private j:Lcom/google/android/exoplayer2/c1/d0/x;

.field private k:Lcom/google/android/exoplayer2/c1/j;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/c1/d0/d;->a:Lcom/google/android/exoplayer2/c1/d0/d;

    sput-object v0, Lcom/google/android/exoplayer2/c1/d0/z;->a:Lcom/google/android/exoplayer2/c1/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/util/e0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/e0;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c1/d0/z;-><init>(Lcom/google/android/exoplayer2/util/e0;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/util/e0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->b:Lcom/google/android/exoplayer2/util/e0;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/util/v;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->c:Landroid/util/SparseArray;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/c1/d0/y;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/c1/d0/y;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->e:Lcom/google/android/exoplayer2/c1/d0/y;

    return-void
.end method

.method static synthetic a()[Lcom/google/android/exoplayer2/c1/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/c1/h;

    .line 1
    new-instance v1, Lcom/google/android/exoplayer2/c1/d0/z;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/c1/d0/z;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private d(J)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c1/d0/z;->l:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c1/d0/z;->l:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/z;->e:Lcom/google/android/exoplayer2/c1/d0/y;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/d0/y;->c()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/c1/d0/x;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->e:Lcom/google/android/exoplayer2/c1/d0/y;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/c1/d0/y;->d()Lcom/google/android/exoplayer2/util/e0;

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->e:Lcom/google/android/exoplayer2/c1/d0/y;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/c1/d0/y;->c()J

    move-result-wide v7

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/c1/d0/x;-><init>(Lcom/google/android/exoplayer2/util/e0;JJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/z;->j:Lcom/google/android/exoplayer2/c1/d0/x;

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->k:Lcom/google/android/exoplayer2/c1/j;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/a;->b()Lcom/google/android/exoplayer2/c1/t;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/c1/j;->c(Lcom/google/android/exoplayer2/c1/t;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->k:Lcom/google/android/exoplayer2/c1/j;

    new-instance p2, Lcom/google/android/exoplayer2/c1/t$b;

    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/z;->e:Lcom/google/android/exoplayer2/c1/d0/y;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c1/d0/y;->c()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/google/android/exoplayer2/c1/t$b;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/c1/j;->c(Lcom/google/android/exoplayer2/c1/t;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/c1/i;)Z
    .locals 9

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 2
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 3
    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    .line 4
    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    .line 5
    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    .line 6
    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    .line 7
    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    .line 8
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 9
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c1/i;->d(I)V

    .line 10
    invoke-interface {p1, v1, v2, v5}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 11
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public f(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I
    .locals 10

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 2
    iget-object v7, p0, Lcom/google/android/exoplayer2/c1/d0/z;->e:Lcom/google/android/exoplayer2/c1/d0/y;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/c1/d0/y;->e()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/z;->e:Lcom/google/android/exoplayer2/c1/d0/y;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c1/d0/y;->g(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/c1/d0/z;->d(J)V

    .line 5
    iget-object v7, p0, Lcom/google/android/exoplayer2/c1/d0/z;->j:Lcom/google/android/exoplayer2/c1/d0/x;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/c1/a;->d()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/z;->j:Lcom/google/android/exoplayer2/c1/d0/x;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c1/a;->c(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I

    move-result p1

    return p1

    .line 7
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->g()V

    if-eqz v6, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->c()J

    move-result-wide v6

    sub-long/2addr v0, v6

    goto :goto_1

    :cond_3
    move-wide v0, v2

    :goto_1
    const/4 p2, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4

    const-wide/16 v2, 0x4

    cmp-long v6, v0, v2

    if-gez v6, :cond_4

    return p2

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/4 v1, 0x4

    invoke-interface {p1, v0, v5, v1, v4}, Lcom/google/android/exoplayer2/c1/i;->b([BIIZ)Z

    move-result v0

    if-nez v0, :cond_5

    return p2

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    const/16 v1, 0x1b9

    if-ne v0, v1, :cond_6

    return p2

    :cond_6
    const/16 p2, 0x1ba

    if-ne v0, p2, :cond_7

    .line 12
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/16 v0, 0xa

    invoke-interface {p1, p2, v5, v0}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 13
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 14
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    .line 15
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    return v5

    :cond_7
    const/16 p2, 0x1bb

    const/4 v1, 0x2

    const/4 v2, 0x6

    if-ne v0, p2, :cond_8

    .line 16
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-interface {p1, p2, v5, v1}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 17
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 18
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result p2

    add-int/2addr p2, v2

    .line 19
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    return v5

    :cond_8
    and-int/lit16 p2, v0, -0x100

    shr-int/lit8 p2, p2, 0x8

    if-eq p2, v4, :cond_9

    .line 20
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    return v5

    :cond_9
    and-int/lit16 p2, v0, 0xff

    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/c1/d0/z;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c1/d0/z$a;

    .line 22
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/c1/d0/z;->f:Z

    if-nez v3, :cond_f

    if-nez v0, :cond_d

    const/4 v3, 0x0

    const/16 v6, 0xbd

    if-ne p2, v6, :cond_a

    .line 23
    new-instance v3, Lcom/google/android/exoplayer2/c1/d0/g;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/c1/d0/g;-><init>()V

    .line 24
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/c1/d0/z;->g:Z

    .line 25
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/c1/d0/z;->i:J

    goto :goto_2

    :cond_a
    and-int/lit16 v6, p2, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_b

    .line 26
    new-instance v3, Lcom/google/android/exoplayer2/c1/d0/u;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/c1/d0/u;-><init>()V

    .line 27
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/c1/d0/z;->g:Z

    .line 28
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/c1/d0/z;->i:J

    goto :goto_2

    :cond_b
    and-int/lit16 v6, p2, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_c

    .line 29
    new-instance v3, Lcom/google/android/exoplayer2/c1/d0/p;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/c1/d0/p;-><init>()V

    .line 30
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/c1/d0/z;->h:Z

    .line 31
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/c1/d0/z;->i:J

    :cond_c
    :goto_2
    if-eqz v3, :cond_d

    .line 32
    new-instance v0, Lcom/google/android/exoplayer2/c1/d0/h0$d;

    const/16 v6, 0x100

    invoke-direct {v0, p2, v6}, Lcom/google/android/exoplayer2/c1/d0/h0$d;-><init>(II)V

    .line 33
    iget-object v6, p0, Lcom/google/android/exoplayer2/c1/d0/z;->k:Lcom/google/android/exoplayer2/c1/j;

    invoke-interface {v3, v6, v0}, Lcom/google/android/exoplayer2/c1/d0/o;->e(Lcom/google/android/exoplayer2/c1/j;Lcom/google/android/exoplayer2/c1/d0/h0$d;)V

    .line 34
    new-instance v0, Lcom/google/android/exoplayer2/c1/d0/z$a;

    iget-object v6, p0, Lcom/google/android/exoplayer2/c1/d0/z;->b:Lcom/google/android/exoplayer2/util/e0;

    invoke-direct {v0, v3, v6}, Lcom/google/android/exoplayer2/c1/d0/z$a;-><init>(Lcom/google/android/exoplayer2/c1/d0/o;Lcom/google/android/exoplayer2/util/e0;)V

    .line 35
    iget-object v3, p0, Lcom/google/android/exoplayer2/c1/d0/z;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    :cond_d
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/c1/d0/z;->g:Z

    if-eqz p2, :cond_e

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/c1/d0/z;->h:Z

    if-eqz p2, :cond_e

    iget-wide v6, p0, Lcom/google/android/exoplayer2/c1/d0/z;->i:J

    const-wide/16 v8, 0x2000

    add-long/2addr v6, v8

    goto :goto_3

    :cond_e
    const-wide/32 v6, 0x100000

    .line 37
    :goto_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-lez p2, :cond_f

    .line 38
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/c1/d0/z;->f:Z

    .line 39
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/z;->k:Lcom/google/android/exoplayer2/c1/j;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/c1/j;->o()V

    .line 40
    :cond_f
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-interface {p1, p2, v5, v1}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 41
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 42
    iget-object p2, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result p2

    add-int/2addr p2, v2

    if-nez v0, :cond_10

    .line 43
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/c1/i;->h(I)V

    goto :goto_4

    .line 44
    :cond_10
    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/util/v;->I(I)V

    .line 45
    iget-object v1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-interface {p1, v1, v5, p2}, Lcom/google/android/exoplayer2/c1/i;->readFully([BII)V

    .line 46
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 47
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c1/d0/z$a;->a(Lcom/google/android/exoplayer2/util/v;)V

    .line 48
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->d:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/v;->L(I)V

    :goto_4
    return v5
.end method

.method public g(Lcom/google/android/exoplayer2/c1/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->k:Lcom/google/android/exoplayer2/c1/j;

    return-void
.end method

.method public h(JJ)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->b:Lcom/google/android/exoplayer2/util/e0;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/e0;->e()J

    move-result-wide p1

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->b:Lcom/google/android/exoplayer2/util/e0;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/e0;->c()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->b:Lcom/google/android/exoplayer2/util/e0;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/e0;->c()J

    move-result-wide p1

    cmp-long v1, p1, p3

    if-eqz v1, :cond_2

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->b:Lcom/google/android/exoplayer2/util/e0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/e0;->g()V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->b:Lcom/google/android/exoplayer2/util/e0;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/util/e0;->h(J)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->j:Lcom/google/android/exoplayer2/c1/d0/x;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/c1/a;->h(J)V

    .line 10
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/c1/d0/z;->c:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/c1/d0/z$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/c1/d0/z$a;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
