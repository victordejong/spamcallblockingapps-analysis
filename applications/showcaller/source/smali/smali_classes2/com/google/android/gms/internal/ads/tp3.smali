.class public final Lcom/google/android/gms/internal/ads/tp3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/gms/internal/ads/up3;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/up3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tp3;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tp3;->b:Lcom/google/android/gms/internal/ads/up3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/nm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/jp3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/jp3;-><init>(Lcom/google/android/gms/internal/ads/tp3;Lcom/google/android/gms/internal/ads/nm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/ads/kp3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/kp3;-><init>(Lcom/google/android/gms/internal/ads/tp3;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/lp3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/lp3;-><init>(Lcom/google/android/gms/internal/ads/tp3;Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final d(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/mp3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/mp3;-><init>(Lcom/google/android/gms/internal/ads/tp3;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final e(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/np3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/np3;-><init>(Lcom/google/android/gms/internal/ads/tp3;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/z04;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/op3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/op3;-><init>(Lcom/google/android/gms/internal/ads/tp3;Lcom/google/android/gms/internal/ads/z04;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tp3;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/pp3;

    .line 2
    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/pp3;-><init>(Lcom/google/android/gms/internal/ads/tp3;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/qp3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/qp3;-><init>(Lcom/google/android/gms/internal/ads/tp3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/ads/nm;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nm;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/rp3;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/rp3;-><init>(Lcom/google/android/gms/internal/ads/tp3;Lcom/google/android/gms/internal/ads/nm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/sp3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/sp3;-><init>(Lcom/google/android/gms/internal/ads/tp3;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic k(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->b:Lcom/google/android/gms/internal/ads/up3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/up3;->f(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic l(Lcom/google/android/gms/internal/ads/nm;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nm;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->b:Lcom/google/android/gms/internal/ads/up3;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/up3;->q(Lcom/google/android/gms/internal/ads/nm;)V

    return-void
.end method

.method final synthetic m(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->b:Lcom/google/android/gms/internal/ads/up3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/up3;->q0(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic n(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->b:Lcom/google/android/gms/internal/ads/up3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/up3;->k(Ljava/lang/Object;J)V

    return-void
.end method

.method final synthetic o(Lcom/google/android/gms/internal/ads/z04;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->b:Lcom/google/android/gms/internal/ads/up3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/up3;->n(Lcom/google/android/gms/internal/ads/z04;)V

    return-void
.end method

.method final synthetic p(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->b:Lcom/google/android/gms/internal/ads/up3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/up3;->c(JI)V

    return-void
.end method

.method final synthetic q(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->b:Lcom/google/android/gms/internal/ads/up3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/up3;->A(IJ)V

    return-void
.end method

.method final synthetic r(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->b:Lcom/google/android/gms/internal/ads/up3;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/up3;->s(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V

    return-void
.end method

.method final synthetic s(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->b:Lcom/google/android/gms/internal/ads/up3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/up3;->l(Ljava/lang/String;JJ)V

    return-void
.end method

.method final synthetic t(Lcom/google/android/gms/internal/ads/nm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tp3;->b:Lcom/google/android/gms/internal/ads/up3;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/up3;->B(Lcom/google/android/gms/internal/ads/nm;)V

    return-void
.end method
