.class public final Lcom/google/android/gms/internal/ads/ex3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq3;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/br3;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/ta;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/dx3;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/la;

.field private final e:Lcom/google/android/gms/internal/ads/bx3;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:J

.field private j:Lcom/google/android/gms/internal/ads/ax3;

.field private k:Lcom/google/android/gms/internal/ads/xq3;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/cx3;->b:Lcom/google/android/gms/internal/ads/br3;

    sput-object v0, Lcom/google/android/gms/internal/ads/ex3;->a:Lcom/google/android/gms/internal/ads/br3;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ta;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ta;-><init>(J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ex3;->b:Lcom/google/android/gms/internal/ads/ta;

    new-instance v0, Lcom/google/android/gms/internal/ads/la;

    const/16 v1, 0x1000

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/la;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ex3;->c:Landroid/util/SparseArray;

    new-instance v0, Lcom/google/android/gms/internal/ads/bx3;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bx3;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ex3;->e:Lcom/google/android/gms/internal/ads/bx3;

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/rr3;)I
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex3;->k:Lcom/google/android/gms/internal/ads/xq3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->n()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ex3;->e:Lcom/google/android/gms/internal/ads/bx3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bx3;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex3;->e:Lcom/google/android/gms/internal/ads/bx3;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bx3;->c(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/rr3;)I

    move-result p1

    return p1

    .line 4
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ex3;->l:Z

    const/4 v11, 0x1

    if-nez v1, :cond_3

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/ex3;->l:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ex3;->e:Lcom/google/android/gms/internal/ads/bx3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bx3;->d()J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    new-instance v12, Lcom/google/android/gms/internal/ads/ax3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ex3;->e:Lcom/google/android/gms/internal/ads/bx3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bx3;->b()Lcom/google/android/gms/internal/ads/ta;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ex3;->e:Lcom/google/android/gms/internal/ads/bx3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bx3;->d()J

    move-result-wide v3

    move-object v1, v12

    move-wide v5, v7

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ax3;-><init>(Lcom/google/android/gms/internal/ads/ta;JJ)V

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/ex3;->j:Lcom/google/android/gms/internal/ads/ax3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ex3;->k:Lcom/google/android/gms/internal/ads/xq3;

    .line 6
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/lq3;->a()Lcom/google/android/gms/internal/ads/ur3;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/xq3;->r(Lcom/google/android/gms/internal/ads/ur3;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ex3;->k:Lcom/google/android/gms/internal/ads/xq3;

    new-instance v2, Lcom/google/android/gms/internal/ads/tr3;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ex3;->e:Lcom/google/android/gms/internal/ads/bx3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bx3;->d()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    .line 8
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/tr3;-><init>(JJ)V

    .line 9
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/xq3;->r(Lcom/google/android/gms/internal/ads/ur3;)V

    .line 10
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ex3;->j:Lcom/google/android/gms/internal/ads/ax3;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lq3;->c()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex3;->j:Lcom/google/android/gms/internal/ads/ax3;

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/lq3;->d(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/rr3;)I

    move-result p1

    return p1

    .line 13
    :cond_5
    :goto_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->j()J

    move-result-wide v0

    sub-long/2addr v7, v0

    goto :goto_3

    :cond_6
    move-wide v7, v9

    :goto_3
    const/4 p2, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x4

    cmp-long v2, v7, v0

    if-ltz v2, :cond_7

    goto :goto_4

    :cond_7
    return p2

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 14
    invoke-interface {p1, v0, v2, v1, v11}, Lcom/google/android/gms/internal/ads/vq3;->l([BIIZ)Z

    move-result v0

    if-nez v0, :cond_9

    return p2

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 15
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result v0

    const/16 v1, 0x1b9

    if-ne v0, v1, :cond_a

    return p2

    :cond_a
    const/16 p2, 0x1ba

    if-ne v0, p2, :cond_b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/pq3;

    const/16 v0, 0xa

    .line 17
    invoke-virtual {p1, p2, v2, v0, v2}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    const/16 v0, 0x9

    .line 18
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    .line 20
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    return v2

    :cond_b
    const/16 p2, 0x1bb

    const/4 v1, 0x2

    const/4 v3, 0x6

    if-ne v0, p2, :cond_c

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/pq3;

    .line 21
    invoke-virtual {p1, p2, v2, v1, v2}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 22
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/la;->w()I

    move-result p2

    add-int/2addr p2, v3

    .line 24
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    return v2

    :cond_c
    shr-int/lit8 p2, v0, 0x8

    if-eq p2, v11, :cond_d

    check-cast p1, Lcom/google/android/gms/internal/ads/pq3;

    .line 25
    invoke-virtual {p1, v11, v2}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    return v2

    :cond_d
    and-int/lit16 p2, v0, 0xff

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex3;->c:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dx3;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/ex3;->f:Z

    if-nez v4, :cond_13

    if-nez v0, :cond_11

    const/16 v4, 0xbd

    const/4 v5, 0x0

    if-ne p2, v4, :cond_e

    new-instance v4, Lcom/google/android/gms/internal/ads/vv3;

    .line 27
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/vv3;-><init>(Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/ex3;->g:Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/ex3;->i:J

    :goto_5
    move-object v5, v4

    goto :goto_6

    :cond_e
    and-int/lit16 v4, p2, 0xe0

    const/16 v6, 0xc0

    if-ne v4, v6, :cond_f

    .line 28
    new-instance v4, Lcom/google/android/gms/internal/ads/uw3;

    .line 29
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/uw3;-><init>(Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/ex3;->g:Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/ex3;->i:J

    goto :goto_5

    :cond_f
    and-int/lit16 v4, p2, 0xf0

    const/16 v6, 0xe0

    if-ne v4, v6, :cond_10

    .line 30
    new-instance v4, Lcom/google/android/gms/internal/ads/iw3;

    .line 31
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/iw3;-><init>(Lcom/google/android/gms/internal/ads/wx3;)V

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/ex3;->h:Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/ex3;->i:J

    goto :goto_5

    :cond_10
    :goto_6
    if-eqz v5, :cond_11

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/tx3;

    const/high16 v4, -0x80000000

    const/16 v6, 0x100

    .line 33
    invoke-direct {v0, v4, p2, v6}, Lcom/google/android/gms/internal/ads/tx3;-><init>(III)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ex3;->k:Lcom/google/android/gms/internal/ads/xq3;

    .line 34
    invoke-interface {v5, v4, v0}, Lcom/google/android/gms/internal/ads/gw3;->b(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/tx3;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/dx3;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ex3;->b:Lcom/google/android/gms/internal/ads/ta;

    .line 35
    invoke-direct {v0, v5, v4}, Lcom/google/android/gms/internal/ads/dx3;-><init>(Lcom/google/android/gms/internal/ads/gw3;Lcom/google/android/gms/internal/ads/ta;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ex3;->c:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {v4, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_11
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/ex3;->g:Z

    const-wide/32 v4, 0x100000

    if-eqz p2, :cond_12

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/ex3;->h:Z

    if-eqz p2, :cond_12

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/ex3;->i:J

    const-wide/16 v6, 0x2000

    add-long/2addr v4, v6

    :cond_12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v6

    cmp-long p2, v6, v4

    if-lez p2, :cond_13

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/ex3;->f:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ex3;->k:Lcom/google/android/gms/internal/ads/xq3;

    .line 37
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/xq3;->t()V

    :cond_13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/pq3;

    .line 38
    invoke-virtual {p1, p2, v2, v1, v2}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 39
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 40
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/la;->w()I

    move-result p2

    add-int/2addr p2, v3

    if-nez v0, :cond_14

    .line 41
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/pq3;->p(IZ)Z

    goto :goto_7

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 42
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/la;->i(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v1

    .line 43
    invoke-virtual {p1, v1, v2, p2, v2}, Lcom/google/android/gms/internal/ads/pq3;->k([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 44
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 45
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dx3;->b(Lcom/google/android/gms/internal/ads/la;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ex3;->d:Lcom/google/android/gms/internal/ads/la;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->r()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/la;->n(I)V

    :goto_7
    return v2
.end method

.method public final f(Lcom/google/android/gms/internal/ads/vq3;)Z
    .locals 9

    const/16 v0, 0xe

    new-array v1, v0, [B

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/pq3;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

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

    if-eq v0, v7, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 2
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/pq3;->q(IZ)Z

    .line 3
    invoke-virtual {p1, v1, v2, v5, v2}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

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

    if-ne p1, v3, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method public final g(Lcom/google/android/gms/internal/ads/xq3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ex3;->k:Lcom/google/android/gms/internal/ads/xq3;

    return-void
.end method

.method public final h(JJ)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ex3;->b:Lcom/google/android/gms/internal/ads/ta;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ta;->c()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ex3;->b:Lcom/google/android/gms/internal/ads/ta;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ta;->a()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ex3;->b:Lcom/google/android/gms/internal/ads/ta;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/ta;->d(J)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ex3;->j:Lcom/google/android/gms/internal/ads/ax3;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/lq3;->b(J)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ex3;->c:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge p2, p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ex3;->c:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dx3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dx3;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
