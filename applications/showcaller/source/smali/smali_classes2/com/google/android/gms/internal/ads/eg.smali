.class final Lcom/google/android/gms/internal/ads/eg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ig;
.implements Lcom/google/android/gms/internal/ads/od;
.implements Lcom/google/android/gms/internal/ads/xh;
.implements Lcom/google/android/gms/internal/ads/rg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ig;",
        "Lcom/google/android/gms/internal/ads/od;",
        "Lcom/google/android/gms/internal/ads/xh;",
        "Lcom/google/android/gms/internal/ads/rg;"
    }
.end annotation


# instance fields
.field private A:[Z

.field private B:[Z

.field private C:Z

.field private D:J

.field private E:J

.field private F:J

.field private G:I

.field private H:Z

.field private I:Z

.field private final J:Lcom/google/android/gms/internal/ads/sh;

.field private final d:Landroid/net/Uri;

.field private final e:Lcom/google/android/gms/internal/ads/qh;

.field private final f:I

.field private final g:Landroid/os/Handler;

.field private final h:Lcom/google/android/gms/internal/ads/fg;

.field private final i:Lcom/google/android/gms/internal/ads/jg;

.field private final j:J

.field private final k:Lcom/google/android/gms/internal/ads/ai;

.field private final l:Lcom/google/android/gms/internal/ads/cg;

.field private final m:Lcom/google/android/gms/internal/ads/ei;

.field private final n:Ljava/lang/Runnable;

.field private final o:Ljava/lang/Runnable;

.field private final p:Landroid/os/Handler;

.field private final q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/sg;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/google/android/gms/internal/ads/hg;

.field private s:Lcom/google/android/gms/internal/ads/ud;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:Lcom/google/android/gms/internal/ads/yg;

.field private z:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/qh;[Lcom/google/android/gms/internal/ads/nd;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/fg;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/sh;Ljava/lang/String;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->d:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eg;->e:Lcom/google/android/gms/internal/ads/qh;

    iput p4, p0, Lcom/google/android/gms/internal/ads/eg;->f:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/eg;->g:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/eg;->h:Lcom/google/android/gms/internal/ads/fg;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/eg;->i:Lcom/google/android/gms/internal/ads/jg;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/eg;->J:Lcom/google/android/gms/internal/ads/sh;

    int-to-long p1, p10

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eg;->j:J

    new-instance p1, Lcom/google/android/gms/internal/ads/ai;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ai;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->k:Lcom/google/android/gms/internal/ads/ai;

    new-instance p1, Lcom/google/android/gms/internal/ads/cg;

    .line 2
    invoke-direct {p1, p3, p0}, Lcom/google/android/gms/internal/ads/cg;-><init>([Lcom/google/android/gms/internal/ads/nd;Lcom/google/android/gms/internal/ads/od;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->l:Lcom/google/android/gms/internal/ads/cg;

    new-instance p1, Lcom/google/android/gms/internal/ads/ei;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ei;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->m:Lcom/google/android/gms/internal/ads/ei;

    new-instance p1, Lcom/google/android/gms/internal/ads/xf;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/xf;-><init>(Lcom/google/android/gms/internal/ads/eg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->n:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/android/gms/internal/ads/yf;

    .line 4
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/yf;-><init>(Lcom/google/android/gms/internal/ads/eg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->o:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    .line 5
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->p:Landroid/os/Handler;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eg;->F:J

    new-instance p1, Landroid/util/SparseArray;

    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eg;->D:J

    return-void
.end method

.method static synthetic A(Lcom/google/android/gms/internal/ads/eg;)Lcom/google/android/gms/internal/ads/hg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/eg;->r:Lcom/google/android/gms/internal/ads/hg;

    return-object p0
.end method

.method static synthetic B(Lcom/google/android/gms/internal/ads/eg;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/eg;->I:Z

    return p0
.end method

.method static synthetic H(Lcom/google/android/gms/internal/ads/eg;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->I:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->u:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->s:Lcom/google/android/gms/internal/ads/ud;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->t:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/sg;->i()Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eg;->m:Lcom/google/android/gms/internal/ads/ei;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ei;->b()Z

    .line 4
    new-array v2, v0, [Lcom/google/android/gms/internal/ads/xg;

    .line 5
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/eg;->B:[Z

    .line 6
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/eg;->A:[Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eg;->s:Lcom/google/android/gms/internal/ads/ud;

    .line 7
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ud;->b()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/eg;->z:J

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v0, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/sg;->i()Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/xg;

    new-array v7, v4, [Lcom/google/android/gms/internal/ads/zzanm;

    aput-object v5, v7, v1

    .line 9
    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/xg;-><init>([Lcom/google/android/gms/internal/ads/zzanm;)V

    aput-object v6, v2, v3

    .line 10
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzanm;->i:Ljava/lang/String;

    .line 11
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/hi;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/hi;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eg;->B:[Z

    .line 12
    aput-boolean v4, v5, v3

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/eg;->C:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/eg;->C:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/yg;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/yg;-><init>([Lcom/google/android/gms/internal/ads/xg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->y:Lcom/google/android/gms/internal/ads/yg;

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/eg;->u:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->i:Lcom/google/android/gms/internal/ads/jg;

    new-instance v1, Lcom/google/android/gms/internal/ads/wg;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/eg;->z:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eg;->s:Lcom/google/android/gms/internal/ads/ud;

    .line 14
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/ud;->zza()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/wg;-><init>(JZ)V

    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/jg;->f(Lcom/google/android/gms/internal/ads/ac;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->r:Lcom/google/android/gms/internal/ads/hg;

    .line 16
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/hg;->a(Lcom/google/android/gms/internal/ads/ig;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private final q(Lcom/google/android/gms/internal/ads/bg;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eg;->D:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bg;->b(Lcom/google/android/gms/internal/ads/bg;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/eg;->D:J

    :cond_0
    return-void
.end method

.method private final r()V
    .locals 11

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/bg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eg;->d:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eg;->e:Lcom/google/android/gms/internal/ads/qh;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eg;->l:Lcom/google/android/gms/internal/ads/cg;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eg;->m:Lcom/google/android/gms/internal/ads/ei;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bg;-><init>(Lcom/google/android/gms/internal/ads/eg;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/qh;Lcom/google/android/gms/internal/ads/cg;Lcom/google/android/gms/internal/ads/ei;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->u:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eg;->u()Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ci;->d(Z)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/eg;->z:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/eg;->F:J

    cmp-long v0, v7, v3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->H:Z

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/eg;->F:J

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->s:Lcom/google/android/gms/internal/ads/ud;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/eg;->F:J

    .line 5
    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/ud;->a(J)J

    move-result-wide v3

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/eg;->F:J

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/google/android/gms/internal/ads/bg;->d(JJ)V

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/eg;->F:J

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eg;->s()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/eg;->G:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/eg;->f:I

    const/4 v3, -0x1

    const/4 v4, 0x6

    const/4 v5, 0x3

    if-ne v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->u:Z

    if-eqz v0, :cond_4

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/eg;->D:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->s:Lcom/google/android/gms/internal/ads/ud;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ud;->b()J

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eg;->k:Lcom/google/android/gms/internal/ads/ai;

    .line 7
    invoke-virtual {v1, v6, p0, v0}, Lcom/google/android/gms/internal/ads/ai;->e(Lcom/google/android/gms/internal/ads/zh;Lcom/google/android/gms/internal/ads/xh;I)J

    return-void
.end method

.method private final s()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/sg;->f()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private final t()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/sg;->j()J

    move-result-wide v4

    .line 3
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private final u()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eg;->F:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic v(Lcom/google/android/gms/internal/ads/eg;)Lcom/google/android/gms/internal/ads/fg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/eg;->h:Lcom/google/android/gms/internal/ads/fg;

    return-object p0
.end method

.method static synthetic w(Lcom/google/android/gms/internal/ads/eg;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eg;->j:J

    return-wide v0
.end method

.method static synthetic x(Lcom/google/android/gms/internal/ads/eg;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/eg;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic y(Lcom/google/android/gms/internal/ads/eg;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/eg;->p:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic z(Lcom/google/android/gms/internal/ads/eg;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public final C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->l:Lcom/google/android/gms/internal/ads/cg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eg;->k:Lcom/google/android/gms/internal/ads/ai;

    new-instance v2, Lcom/google/android/gms/internal/ads/zf;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zf;-><init>(Lcom/google/android/gms/internal/ads/eg;Lcom/google/android/gms/internal/ads/cg;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ai;->h(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->I:Z

    return-void
.end method

.method final D(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->H:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eg;->u()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sg;->h()Z

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

.method final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->k:Lcom/google/android/gms/internal/ads/ai;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ai;->i(I)V

    return-void
.end method

.method final F(ILcom/google/android/gms/internal/ads/sb;Lcom/google/android/gms/internal/ads/hd;Z)I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->w:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eg;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/sg;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/eg;->H:Z

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/eg;->E:J

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/sg;->m(Lcom/google/android/gms/internal/ads/sb;Lcom/google/android/gms/internal/ads/hd;ZZJ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x3

    return p1
.end method

.method final G(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/sg;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->H:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sg;->j()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sg;->k()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/sg;->l(JZ)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->p:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ud;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->s:Lcom/google/android/gms/internal/ads/ud;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->p:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zh;JJLjava/io/IOException;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/bg;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/eg;->q(Lcom/google/android/gms/internal/ads/bg;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/eg;->g:Landroid/os/Handler;

    if-eqz p2, :cond_0

    new-instance p3, Lcom/google/android/gms/internal/ads/ag;

    .line 2
    invoke-direct {p3, p0, p6}, Lcom/google/android/gms/internal/ads/ag;-><init>(Lcom/google/android/gms/internal/ads/eg;Ljava/io/IOException;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    instance-of p2, p6, Lcom/google/android/gms/internal/ads/zzath;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    const/4 p3, 0x3

    goto :goto_4

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eg;->s()I

    move-result p2

    iget p4, p0, Lcom/google/android/gms/internal/ads/eg;->G:I

    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/eg;->D:J

    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    cmp-long v3, p5, v0

    if-nez v3, :cond_6

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/eg;->s:Lcom/google/android/gms/internal/ads/ud;

    if-eqz p5, :cond_2

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/ud;->b()J

    move-result-wide p5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p5, v0

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    const-wide/16 p5, 0x0

    .line 5
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/eg;->E:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->u:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->w:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/sg;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/eg;->u:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eg;->A:[Z

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
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/sg;->e(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p1, p5, p6, p5, p6}, Lcom/google/android/gms/internal/ads/bg;->d(JJ)V

    .line 9
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eg;->s()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/eg;->G:I

    if-gt p2, p4, :cond_7

    :goto_4
    return p3

    :cond_7
    return v2
.end method

.method public final d(J)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eg;->H:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eg;->u:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/eg;->x:I

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->m:Lcom/google/android/gms/internal/ads/ei;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ei;->a()Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/eg;->k:Lcom/google/android/gms/internal/ads/ai;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ai;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eg;->r()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final e(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->s:Lcom/google/android/gms/internal/ads/ud;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ud;->zza()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eg;->E:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eg;->u()Z

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eg;->A:[Z

    .line 3
    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/sg;->l(JZ)Z

    move-result v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eg;->F:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/eg;->H:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eg;->k:Lcom/google/android/gms/internal/ads/ai;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ai;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->k:Lcom/google/android/gms/internal/ads/ai;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ai;->g()V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/sg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eg;->A:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/sg;->e(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_4
    :goto_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/eg;->w:Z

    return-wide p1
.end method

.method public final bridge synthetic f(Lcom/google/android/gms/internal/ads/zh;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/bg;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/eg;->q(Lcom/google/android/gms/internal/ads/bg;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/eg;->H:Z

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/eg;->z:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p1, p3

    if-nez p5, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eg;->t()J

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
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eg;->z:J

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/eg;->i:Lcom/google/android/gms/internal/ads/jg;

    new-instance p4, Lcom/google/android/gms/internal/ads/wg;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/eg;->s:Lcom/google/android/gms/internal/ads/ud;

    .line 3
    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/ud;->zza()Z

    move-result p5

    invoke-direct {p4, p1, p2, p5}, Lcom/google/android/gms/internal/ads/wg;-><init>(JZ)V

    const/4 p1, 0x0

    .line 4
    invoke-interface {p3, p4, p1}, Lcom/google/android/gms/internal/ads/jg;->f(Lcom/google/android/gms/internal/ads/ac;Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->r:Lcom/google/android/gms/internal/ads/hg;

    .line 5
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/ug;->b(Lcom/google/android/gms/internal/ads/vg;)V

    return-void
.end method

.method public final bridge synthetic g(Lcom/google/android/gms/internal/ads/zh;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/bg;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/eg;->q(Lcom/google/android/gms/internal/ads/bg;)V

    if-nez p6, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/ads/eg;->x:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/sg;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/eg;->A:[Z

    aget-boolean p4, p4, p2

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/sg;->e(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->r:Lcom/google/android/gms/internal/ads/hg;

    .line 4
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/ug;->b(Lcom/google/android/gms/internal/ads/vg;)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->t:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eg;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i([Lcom/google/android/gms/internal/ads/bh;[Z[Lcom/google/android/gms/internal/ads/tg;[ZJ)J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->u:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ci;->d(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 3
    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    aget-object v3, p1, v1

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v1

    if-nez v3, :cond_1

    .line 4
    :cond_0
    check-cast v2, Lcom/google/android/gms/internal/ads/dg;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dg;->e(Lcom/google/android/gms/internal/ads/dg;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eg;->A:[Z

    .line 5
    aget-boolean v3, v3, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ci;->d(Z)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/eg;->x:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/eg;->x:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eg;->A:[Z

    .line 6
    aput-boolean v0, v3, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/sg;->g()V

    const/4 v2, 0x0

    .line 8
    aput-object v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_1
    array-length v2, p1

    const/4 v3, 0x1

    if-ge p2, v2, :cond_5

    .line 10
    aget-object v2, p3, p2

    if-nez v2, :cond_4

    aget-object v2, p1, p2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bh;->b()I

    .line 12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/bh;->d(I)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ci;->d(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eg;->y:Lcom/google/android/gms/internal/ads/yg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bh;->a()Lcom/google/android/gms/internal/ads/xg;

    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/yg;->b(Lcom/google/android/gms/internal/ads/xg;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eg;->A:[Z

    .line 14
    aget-boolean v2, v2, v1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ci;->d(Z)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/eg;->x:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/eg;->x:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eg;->A:[Z

    .line 15
    aput-boolean v3, v2, v1

    new-instance v2, Lcom/google/android/gms/internal/ads/dg;

    .line 16
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/dg;-><init>(Lcom/google/android/gms/internal/ads/eg;I)V

    aput-object v2, p3, p2

    .line 17
    aput-boolean v3, p4, p2

    const/4 v1, 0x1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eg;->v:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_3
    if-ge p2, p1, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eg;->A:[Z

    .line 19
    aget-boolean v2, v2, p2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/sg;->g()V

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    iget p1, p0, Lcom/google/android/gms/internal/ads/eg;->x:I

    if-nez p1, :cond_8

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->w:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->k:Lcom/google/android/gms/internal/ads/ai;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ai;->f()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->k:Lcom/google/android/gms/internal/ads/ai;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ai;->g()V

    goto :goto_6

    :cond_8
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/eg;->v:Z

    if-eqz p1, :cond_9

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_9
    const-wide/16 p1, 0x0

    cmp-long v1, p5, p1

    if-nez v1, :cond_a

    goto :goto_6

    .line 22
    :cond_a
    :goto_4
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/eg;->e(J)J

    move-result-wide p5

    :goto_5
    array-length p1, p3

    if-ge v0, p1, :cond_c

    .line 23
    aget-object p1, p3, v0

    if-eqz p1, :cond_b

    .line 24
    aput-boolean v3, p4, v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 25
    :cond_c
    :goto_6
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/eg;->v:Z

    return-wide p5
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->k:Lcom/google/android/gms/internal/ads/ai;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ai;->i(I)V

    return-void
.end method

.method public final k()J
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->H:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eg;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eg;->F:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->C:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eg;->B:[Z

    .line 2
    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/sg;->j()J

    move-result-wide v6

    .line 4
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eg;->t()J

    move-result-wide v3

    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eg;->E:J

    return-wide v0

    :cond_5
    return-wide v3
.end method

.method public final l()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eg;->w:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/eg;->E:J

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final m()Lcom/google/android/gms/internal/ads/yg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->y:Lcom/google/android/gms/internal/ads/yg;

    return-object v0
.end method

.method public final n(Lcom/google/android/gms/internal/ads/hg;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->r:Lcom/google/android/gms/internal/ads/hg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->m:Lcom/google/android/gms/internal/ads/ei;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ei;->a()Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eg;->r()V

    return-void
.end method

.method public final o(J)V
    .locals 0

    return-void
.end method

.method public final p(II)Lcom/google/android/gms/internal/ads/wd;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/sg;

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/sg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->J:Lcom/google/android/gms/internal/ads/sh;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/ads/sg;-><init>(Lcom/google/android/gms/internal/ads/sh;[B)V

    .line 3
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/sg;->n(Lcom/google/android/gms/internal/ads/rg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->q:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public final zza()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/eg;->x:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eg;->k()J

    move-result-wide v0

    return-wide v0
.end method
