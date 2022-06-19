.class public final Lcom/google/android/gms/internal/ads/ip3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/xo3;

.field private final b:Lcom/google/android/gms/internal/ads/ep3;

.field private final c:Lcom/google/android/gms/internal/ads/hp3;

.field private d:Z

.field private e:Landroid/view/Surface;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/xo3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xo3;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->a:Lcom/google/android/gms/internal/ads/xo3;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gp3;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ep3;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fp3;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ep3;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ip3;->b:Lcom/google/android/gms/internal/ads/ep3;

    if-eqz v1, :cond_3

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/hp3;->a()Lcom/google/android/gms/internal/ads/hp3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->c:Lcom/google/android/gms/internal/ads/hp3;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->l:J

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/ip3;->f:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/ip3;->i:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/ip3;->j:I

    return-void
.end method

.method private final m()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->m:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->p:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->n:J

    return-void
.end method

.method private final n()V
    .locals 10

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->e:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->a:Lcom/google/android/gms/internal/ads/xo3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo3;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->a:Lcom/google/android/gms/internal/ads/xo3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo3;->g()F

    move-result v0

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ip3;->f:F

    .line 4
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/ip3;->g:F

    cmpl-float v3, v0, v2

    if-nez v3, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    cmpl-float v6, v0, v4

    if-eqz v6, :cond_4

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ip3;->a:Lcom/google/android/gms/internal/ads/xo3;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xo3;->c()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ip3;->a:Lcom/google/android/gms/internal/ads/xo3;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xo3;->e()J

    move-result-wide v6

    const-wide v8, 0x12a05f200L

    cmp-long v1, v6, v8

    if-ltz v1, :cond_3

    const v2, 0x3ca3d70a    # 0.02f

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/ip3;->g:F

    sub-float v1, v0, v1

    .line 7
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    goto :goto_1

    :cond_4
    if-nez v6, :cond_7

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ip3;->a:Lcom/google/android/gms/internal/ads/xo3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/xo3;->d()I

    move-result v2

    if-lt v2, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    return-void

    .line 9
    :cond_7
    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/ip3;->g:F

    .line 10
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/ip3;->o(Z)V

    :cond_8
    :goto_3
    return-void
.end method

.method private final o(Z)V
    .locals 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->e:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/ads/ip3;->j:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ip3;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/ip3;->g:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/ip3;->i:F

    mul-float v2, v2, v1

    :cond_1
    if-nez p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/ads/ip3;->h:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_2

    return-void

    :cond_2
    iput v2, p0, Lcom/google/android/gms/internal/ads/ip3;->h:F

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/cp3;->a(Landroid/view/Surface;F)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final p()V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->e:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/ip3;->j:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/ip3;->h:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/ip3;->h:F

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/cp3;->a(Landroid/view/Surface;F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ip3;->j:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/ip3;->j:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ip3;->o(Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->b:Lcom/google/android/gms/internal/ads/ep3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->c:Lcom/google/android/gms/internal/ads/hp3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hp3;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->b:Lcom/google/android/gms/internal/ads/ep3;

    new-instance v1, Lcom/google/android/gms/internal/ads/bp3;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bp3;-><init>(Lcom/google/android/gms/internal/ads/ip3;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ep3;->a(Lcom/google/android/gms/internal/ads/dp3;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ip3;->d:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ip3;->m()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ip3;->o(Z)V

    return-void
.end method

.method public final d(Landroid/view/Surface;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzlu;

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->e:Landroid/view/Surface;

    if-ne v0, p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ip3;->p()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ip3;->e:Landroid/view/Surface;

    .line 3
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ip3;->o(Z)V

    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ip3;->m()V

    return-void
.end method

.method public final f(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/ip3;->i:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ip3;->m()V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ip3;->o(Z)V

    return-void
.end method

.method public final g(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/ip3;->f:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ip3;->a:Lcom/google/android/gms/internal/ads/xo3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xo3;->a()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ip3;->n()V

    return-void
.end method

.method public final h(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->n:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->p:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->o:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->q:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->m:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->m:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->a:Lcom/google/android/gms/internal/ads/xo3;

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/xo3;->b(J)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ip3;->n()V

    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ip3;->d:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ip3;->p()V

    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->b:Lcom/google/android/gms/internal/ads/ep3;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ep3;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->c:Lcom/google/android/gms/internal/ads/hp3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hp3;->c()V

    :cond_0
    return-void
.end method

.method public final k(J)J
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->p:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->a:Lcom/google/android/gms/internal/ads/xo3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo3;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->a:Lcom/google/android/gms/internal/ads/xo3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo3;->f()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ip3;->q:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/ip3;->m:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/ip3;->p:J

    sub-long/2addr v4, v6

    mul-long v0, v0, v4

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/ip3;->i:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v2, v0

    sub-long v0, p1, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v4, 0x1312d00

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    move-wide p1, v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ip3;->m()V

    .line 5
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->m:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->n:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ip3;->o:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip3;->c:Lcom/google/android/gms/internal/ads/hp3;

    if-eqz v0, :cond_6

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ip3;->k:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/hp3;->e:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_3

    return-wide p1

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ip3;->k:J

    sub-long v4, p1, v0

    .line 6
    div-long/2addr v4, v2

    mul-long v4, v4, v2

    add-long/2addr v0, v4

    cmp-long v4, p1, v0

    if-gtz v4, :cond_4

    sub-long v2, v0, v2

    goto :goto_1

    :cond_4
    add-long/2addr v2, v0

    move-wide v8, v0

    move-wide v0, v2

    move-wide v2, v8

    :goto_1
    sub-long v4, v0, p1

    sub-long/2addr p1, v2

    cmp-long v6, v4, p1

    if-gez v6, :cond_5

    goto :goto_2

    :cond_5
    move-wide v0, v2

    :goto_2
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/ip3;->l:J

    sub-long/2addr v0, p1

    return-wide v0

    :cond_6
    :goto_3
    return-wide p1
.end method

.method final bridge synthetic l(Landroid/view/Display;)V
    .locals 4

    if-eqz p1, :cond_0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    .line 1
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v2, p1

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->k:J

    const-wide/16 v2, 0x50

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->l:J

    return-void

    :cond_0
    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Unable to query display refresh rate"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ip3;->l:J

    return-void
.end method
