.class final Lcom/google/android/gms/internal/ads/lp2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/pp2;
.implements Lcom/google/android/gms/internal/ads/zm2;
.implements Lcom/google/android/gms/internal/ads/er2;
.implements Lcom/google/android/gms/internal/ads/zp2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/pp2;",
        "Lcom/google/android/gms/internal/ads/zm2;",
        "Lcom/google/android/gms/internal/ads/er2;",
        "Lcom/google/android/gms/internal/ads/zp2;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:J

.field private C:J

.field private D:J

.field private E:I

.field private F:Z

.field private G:Z

.field private final H:Lcom/google/android/gms/internal/ads/ar2;

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/android/gms/internal/ads/yq2;

.field private final d:I

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/google/android/gms/internal/ads/mp2;

.field private final g:Lcom/google/android/gms/internal/ads/qp2;

.field private final h:J

.field private final i:Lcom/google/android/gms/internal/ads/hr2;

.field private final j:Lcom/google/android/gms/internal/ads/jp2;

.field private final k:Lcom/google/android/gms/internal/ads/lr2;

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;

.field private final n:Landroid/os/Handler;

.field private final o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/aq2;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/google/android/gms/internal/ads/op2;

.field private q:Lcom/google/android/gms/internal/ads/fn2;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Lcom/google/android/gms/internal/ads/gq2;

.field private x:J

.field private y:[Z

.field private z:[Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/yq2;[Lcom/google/android/gms/internal/ads/ym2;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/mp2;Lcom/google/android/gms/internal/ads/qp2;Lcom/google/android/gms/internal/ads/ar2;Ljava/lang/String;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->b:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lp2;->c:Lcom/google/android/gms/internal/ads/yq2;

    iput p4, p0, Lcom/google/android/gms/internal/ads/lp2;->d:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/lp2;->e:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/lp2;->f:Lcom/google/android/gms/internal/ads/mp2;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/lp2;->g:Lcom/google/android/gms/internal/ads/qp2;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/lp2;->H:Lcom/google/android/gms/internal/ads/ar2;

    int-to-long p1, p10

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/lp2;->h:J

    new-instance p1, Lcom/google/android/gms/internal/ads/hr2;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hr2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->i:Lcom/google/android/gms/internal/ads/hr2;

    new-instance p1, Lcom/google/android/gms/internal/ads/jp2;

    invoke-direct {p1, p3, p0}, Lcom/google/android/gms/internal/ads/jp2;-><init>([Lcom/google/android/gms/internal/ads/ym2;Lcom/google/android/gms/internal/ads/zm2;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->j:Lcom/google/android/gms/internal/ads/jp2;

    new-instance p1, Lcom/google/android/gms/internal/ads/lr2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/lr2;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->k:Lcom/google/android/gms/internal/ads/lr2;

    new-instance p1, Lcom/google/android/gms/internal/ads/ep2;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/ep2;-><init>(Lcom/google/android/gms/internal/ads/lp2;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->l:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/android/gms/internal/ads/fp2;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/fp2;-><init>(Lcom/google/android/gms/internal/ads/lp2;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->m:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->n:Landroid/os/Handler;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/lp2;->D:J

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/lp2;->B:J

    return-void
.end method

.method static synthetic B(Lcom/google/android/gms/internal/ads/lp2;)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->G:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->s:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->q:Lcom/google/android/gms/internal/ads/fn2;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->r:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/aq2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/aq2;->i()Lcom/google/android/gms/internal/ads/zzit;

    move-result-object v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lp2;->k:Lcom/google/android/gms/internal/ads/lr2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/lr2;->b()Z

    new-array v2, v0, [Lcom/google/android/gms/internal/ads/fq2;

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/lp2;->z:[Z

    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/lp2;->y:[Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lp2;->q:Lcom/google/android/gms/internal/ads/fn2;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/fn2;->b()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/lp2;->x:J

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v0, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/aq2;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/aq2;->i()Lcom/google/android/gms/internal/ads/zzit;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/fq2;

    new-array v7, v4, [Lcom/google/android/gms/internal/ads/zzit;

    aput-object v5, v7, v1

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/fq2;-><init>([Lcom/google/android/gms/internal/ads/zzit;)V

    aput-object v6, v2, v3

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzit;->g:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/or2;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/or2;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/lp2;->z:[Z

    aput-boolean v4, v5, v3

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/lp2;->A:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/lp2;->A:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/gq2;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/gq2;-><init>([Lcom/google/android/gms/internal/ads/fq2;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->w:Lcom/google/android/gms/internal/ads/gq2;

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/lp2;->s:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->g:Lcom/google/android/gms/internal/ads/qp2;

    new-instance v1, Lcom/google/android/gms/internal/ads/eq2;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/lp2;->x:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lp2;->q:Lcom/google/android/gms/internal/ads/fn2;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/fn2;->zza()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/eq2;-><init>(JZ)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qp2;->d(Lcom/google/android/gms/internal/ads/ol2;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->p:Lcom/google/android/gms/internal/ads/op2;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/op2;->c(Lcom/google/android/gms/internal/ads/pp2;)V

    :cond_5
    :goto_3
    return-void
.end method

.method static synthetic C(Lcom/google/android/gms/internal/ads/lp2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/lp2;->G:Z

    return p0
.end method

.method static synthetic D(Lcom/google/android/gms/internal/ads/lp2;)Lcom/google/android/gms/internal/ads/op2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/lp2;->p:Lcom/google/android/gms/internal/ads/op2;

    return-object p0
.end method

.method static synthetic E(Lcom/google/android/gms/internal/ads/lp2;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic F(Lcom/google/android/gms/internal/ads/lp2;)Lcom/google/android/gms/internal/ads/mp2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/lp2;->f:Lcom/google/android/gms/internal/ads/mp2;

    return-object p0
.end method

.method static synthetic G(Lcom/google/android/gms/internal/ads/lp2;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/lp2;->h:J

    return-wide v0
.end method

.method static synthetic H(Lcom/google/android/gms/internal/ads/lp2;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/lp2;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic q(Lcom/google/android/gms/internal/ads/lp2;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/lp2;->n:Landroid/os/Handler;

    return-object p0
.end method

.method private final r(Lcom/google/android/gms/internal/ads/ip2;)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/lp2;->B:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ip2;->d(Lcom/google/android/gms/internal/ads/ip2;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/lp2;->B:J

    :cond_0
    return-void
.end method

.method private final s()V
    .locals 11

    new-instance v6, Lcom/google/android/gms/internal/ads/ip2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lp2;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lp2;->c:Lcom/google/android/gms/internal/ads/yq2;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lp2;->j:Lcom/google/android/gms/internal/ads/jp2;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/lp2;->k:Lcom/google/android/gms/internal/ads/lr2;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ip2;-><init>(Lcom/google/android/gms/internal/ads/lp2;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/yq2;Lcom/google/android/gms/internal/ads/jp2;Lcom/google/android/gms/internal/ads/lr2;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->s:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lp2;->v()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/lp2;->x:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/lp2;->D:J

    cmp-long v0, v7, v3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->F:Z

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/lp2;->D:J

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->q:Lcom/google/android/gms/internal/ads/fn2;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/lp2;->D:J

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/fn2;->a(J)J

    move-result-wide v3

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/lp2;->D:J

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/google/android/gms/internal/ads/ip2;->a(JJ)V

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/lp2;->D:J

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lp2;->t()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/lp2;->E:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/lp2;->d:I

    const/4 v3, -0x1

    const/4 v4, 0x6

    const/4 v5, 0x3

    if-ne v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->s:Z

    if-eqz v0, :cond_4

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/lp2;->B:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->q:Lcom/google/android/gms/internal/ads/fn2;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fn2;->b()J

    move-result-wide v7

    cmp-long v0, v7, v1

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x3

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lp2;->i:Lcom/google/android/gms/internal/ads/hr2;

    invoke-virtual {v1, v6, p0, v0}, Lcom/google/android/gms/internal/ads/hr2;->a(Lcom/google/android/gms/internal/ads/gr2;Lcom/google/android/gms/internal/ads/er2;I)J

    return-void
.end method

.method private final t()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/aq2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/aq2;->f()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private final u()J
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/aq2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/aq2;->j()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private final v()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/lp2;->D:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final A(IJ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/aq2;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->F:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aq2;->j()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aq2;->k()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/aq2;->l(JZ)Z

    return-void
.end method

.method public final a(J)Z
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/lp2;->F:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/lp2;->s:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/lp2;->v:I

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->k:Lcom/google/android/gms/internal/ads/lr2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lr2;->a()Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/lp2;->i:Lcom/google/android/gms/internal/ads/hr2;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/hr2;->b()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lp2;->s()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/fn2;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->q:Lcom/google/android/gms/internal/ads/fn2;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/gr2;JJLjava/io/IOException;)I
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/ads/ip2;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/lp2;->r(Lcom/google/android/gms/internal/ads/ip2;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/lp2;->e:Landroid/os/Handler;

    if-eqz p2, :cond_0

    new-instance p3, Lcom/google/android/gms/internal/ads/hp2;

    invoke-direct {p3, p0, p6}, Lcom/google/android/gms/internal/ads/hp2;-><init>(Lcom/google/android/gms/internal/ads/lp2;Ljava/io/IOException;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    instance-of p2, p6, Lcom/google/android/gms/internal/ads/zzom;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    const/4 p3, 0x3

    goto :goto_4

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lp2;->t()I

    move-result p2

    iget p4, p0, Lcom/google/android/gms/internal/ads/lp2;->E:I

    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/lp2;->B:J

    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    cmp-long v3, p5, v0

    if-nez v3, :cond_6

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/lp2;->q:Lcom/google/android/gms/internal/ads/fn2;

    if-eqz p5, :cond_2

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/fn2;->b()J

    move-result-wide p5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p5, v0

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    const-wide/16 p5, 0x0

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/lp2;->C:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->s:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->u:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/aq2;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/lp2;->s:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lp2;->y:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/aq2;->e(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p5, p6, p5, p6}, Lcom/google/android/gms/internal/ads/ip2;->a(JJ)V

    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lp2;->t()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/lp2;->E:I

    if-gt p2, p4, :cond_7

    :goto_4
    return p3

    :cond_7
    return v2
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->i:Lcom/google/android/gms/internal/ads/hr2;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hr2;->e(I)V

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->r:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lp2;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bridge synthetic f(Lcom/google/android/gms/internal/ads/gr2;JJZ)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/ip2;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/lp2;->r(Lcom/google/android/gms/internal/ads/ip2;)V

    if-nez p6, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/ads/lp2;->v:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/aq2;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/lp2;->y:[Z

    aget-boolean p4, p4, p2

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/aq2;->e(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->p:Lcom/google/android/gms/internal/ads/op2;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/cq2;->b(Lcom/google/android/gms/internal/ads/dq2;)V

    :cond_1
    return-void
.end method

.method public final g()Lcom/google/android/gms/internal/ads/gq2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->w:Lcom/google/android/gms/internal/ads/gq2;

    return-object v0
.end method

.method public final h()J
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->F:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lp2;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/lp2;->D:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->A:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/lp2;->z:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/aq2;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/aq2;->j()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lp2;->u()J

    move-result-wide v3

    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/lp2;->C:J

    return-wide v0

    :cond_5
    return-wide v3
.end method

.method public final i()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->u:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/lp2;->C:J

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final j(J)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->q:Lcom/google/android/gms/internal/ads/fn2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fn2;->zza()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/lp2;->C:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lp2;->v()Z

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lp2;->y:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/aq2;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/aq2;->l(JZ)Z

    move-result v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/lp2;->D:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/lp2;->F:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lp2;->i:Lcom/google/android/gms/internal/ads/hr2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hr2;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->i:Lcom/google/android/gms/internal/ads/hr2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hr2;->c()V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/aq2;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lp2;->y:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/aq2;->e(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/lp2;->u:Z

    return-wide p1
.end method

.method public final k(II)Lcom/google/android/gms/internal/ads/hn2;
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/aq2;

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/aq2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->H:Lcom/google/android/gms/internal/ads/ar2;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/ads/aq2;-><init>(Lcom/google/android/gms/internal/ads/ar2;[B)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/aq2;->n(Lcom/google/android/gms/internal/ads/zp2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public final l(Lcom/google/android/gms/internal/ads/zzit;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final m([Lcom/google/android/gms/internal/ads/jq2;[Z[Lcom/google/android/gms/internal/ads/bq2;[ZJ)J
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->s:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    aget-object v3, p1, v1

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v1

    if-nez v3, :cond_1

    :cond_0
    check-cast v2, Lcom/google/android/gms/internal/ads/kp2;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/kp2;->c(Lcom/google/android/gms/internal/ads/kp2;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lp2;->y:[Z

    aget-boolean v3, v3, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/lp2;->v:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/lp2;->v:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lp2;->y:[Z

    aput-boolean v0, v3, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/aq2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aq2;->g()V

    const/4 v2, 0x0

    aput-object v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    const/4 v3, 0x1

    if-ge p2, v2, :cond_6

    aget-object v2, p3, p2

    if-nez v2, :cond_5

    aget-object v2, p1, p2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jq2;->b()I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/jq2;->d(I)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lp2;->w:Lcom/google/android/gms/internal/ads/gq2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jq2;->a()Lcom/google/android/gms/internal/ads/fq2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/gq2;->b(Lcom/google/android/gms/internal/ads/fq2;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lp2;->y:[Z

    aget-boolean v2, v2, v1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jr2;->d(Z)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/lp2;->v:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/lp2;->v:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lp2;->y:[Z

    aput-boolean v3, v2, v1

    new-instance v2, Lcom/google/android/gms/internal/ads/kp2;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/kp2;-><init>(Lcom/google/android/gms/internal/ads/lp2;I)V

    aput-object v2, p3, p2

    aput-boolean v3, p4, p2

    const/4 v1, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/lp2;->t:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_4
    if-ge p2, p1, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lp2;->y:[Z

    aget-boolean v2, v2, p2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/aq2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aq2;->g()V

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_8
    iget p1, p0, Lcom/google/android/gms/internal/ads/lp2;->v:I

    if-nez p1, :cond_9

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->u:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->i:Lcom/google/android/gms/internal/ads/hr2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hr2;->b()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->i:Lcom/google/android/gms/internal/ads/hr2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hr2;->c()V

    goto :goto_7

    :cond_9
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/lp2;->t:Z

    if-eqz p1, :cond_a

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_a
    const-wide/16 p1, 0x0

    cmp-long v1, p5, p1

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    :goto_5
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/lp2;->j(J)J

    move-result-wide p5

    :goto_6
    array-length p1, p3

    if-ge v0, p1, :cond_d

    aget-object p1, p3, v0

    if-eqz p1, :cond_c

    aput-boolean v3, p4, v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/lp2;->t:Z

    return-wide p5
.end method

.method public final n(Lcom/google/android/gms/internal/ads/op2;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->p:Lcom/google/android/gms/internal/ads/op2;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->k:Lcom/google/android/gms/internal/ads/lr2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lr2;->a()Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lp2;->s()V

    return-void
.end method

.method public final bridge synthetic o(Lcom/google/android/gms/internal/ads/gr2;JJ)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/ip2;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/lp2;->r(Lcom/google/android/gms/internal/ads/ip2;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/lp2;->F:Z

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/lp2;->x:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p1, p3

    if-nez p5, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lp2;->u()J

    move-result-wide p1

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p5, p1, p3

    if-nez p5, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x2710

    add-long/2addr p1, p3

    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/lp2;->x:J

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/lp2;->g:Lcom/google/android/gms/internal/ads/qp2;

    new-instance p4, Lcom/google/android/gms/internal/ads/eq2;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/lp2;->q:Lcom/google/android/gms/internal/ads/fn2;

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/fn2;->zza()Z

    move-result p5

    invoke-direct {p4, p1, p2, p5}, Lcom/google/android/gms/internal/ads/eq2;-><init>(JZ)V

    const/4 p1, 0x0

    invoke-interface {p3, p4, p1}, Lcom/google/android/gms/internal/ads/qp2;->d(Lcom/google/android/gms/internal/ads/ol2;Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lp2;->p:Lcom/google/android/gms/internal/ads/op2;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/cq2;->b(Lcom/google/android/gms/internal/ads/dq2;)V

    return-void
.end method

.method public final p(J)V
    .locals 0

    return-void
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->j:Lcom/google/android/gms/internal/ads/jp2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lp2;->i:Lcom/google/android/gms/internal/ads/hr2;

    new-instance v2, Lcom/google/android/gms/internal/ads/gp2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/gp2;-><init>(Lcom/google/android/gms/internal/ads/lp2;Lcom/google/android/gms/internal/ads/jp2;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/hr2;->d(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->G:Z

    return-void
.end method

.method final x(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->F:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lp2;->v()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/aq2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aq2;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method final y()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->i:Lcom/google/android/gms/internal/ads/hr2;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hr2;->e(I)V

    return-void
.end method

.method final z(ILcom/google/android/gms/internal/ads/fl2;Lcom/google/android/gms/internal/ads/sm2;Z)I
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lp2;->u:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lp2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lp2;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/aq2;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/lp2;->F:Z

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/lp2;->C:J

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/aq2;->m(Lcom/google/android/gms/internal/ads/fl2;Lcom/google/android/gms/internal/ads/sm2;ZZJ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x3

    return p1
.end method

.method public final zza()J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/lp2;->v:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lp2;->h()J

    move-result-wide v0

    return-wide v0
.end method
