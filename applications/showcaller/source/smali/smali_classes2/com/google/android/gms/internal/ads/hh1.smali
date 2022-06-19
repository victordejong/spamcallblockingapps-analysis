.class public final Lcom/google/android/gms/internal/ads/hh1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/gms/internal/ads/ii1;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/ii1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hh1;->b:Lcom/google/android/gms/internal/ads/ii1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/nm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/y61;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/y61;-><init>(Lcom/google/android/gms/internal/ads/hh1;Lcom/google/android/gms/internal/ads/nm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/ads/z71;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/z71;-><init>(Lcom/google/android/gms/internal/ads/hh1;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/a91;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/a91;-><init>(Lcom/google/android/gms/internal/ads/hh1;Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final d(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/ba1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ba1;-><init>(Lcom/google/android/gms/internal/ads/hh1;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final e(IJJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/ads/cb1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/cb1;-><init>(Lcom/google/android/gms/internal/ads/hh1;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/dc1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/dc1;-><init>(Lcom/google/android/gms/internal/ads/hh1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/nm;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nm;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/dd1;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/dd1;-><init>(Lcom/google/android/gms/internal/ads/hh1;Lcom/google/android/gms/internal/ads/nm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final h(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/ee1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ee1;-><init>(Lcom/google/android/gms/internal/ads/hh1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/ff1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ff1;-><init>(Lcom/google/android/gms/internal/ads/hh1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/gg1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/gg1;-><init>(Lcom/google/android/gms/internal/ads/hh1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic k(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->b:Lcom/google/android/gms/internal/ads/ii1;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ii1;->w(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic l(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->b:Lcom/google/android/gms/internal/ads/ii1;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ii1;->y(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic m(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->b:Lcom/google/android/gms/internal/ads/ii1;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ii1;->m(Z)V

    return-void
.end method

.method final synthetic n(Lcom/google/android/gms/internal/ads/nm;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nm;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->b:Lcom/google/android/gms/internal/ads/ii1;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ii1;->e(Lcom/google/android/gms/internal/ads/nm;)V

    return-void
.end method

.method final synthetic o(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->b:Lcom/google/android/gms/internal/ads/ii1;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ii1;->a(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic p(IJJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->b:Lcom/google/android/gms/internal/ads/ii1;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ii1;->h(IJJ)V

    return-void
.end method

.method final synthetic q(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->b:Lcom/google/android/gms/internal/ads/ii1;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ii1;->x(J)V

    return-void
.end method

.method final synthetic r(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/wa;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->b:Lcom/google/android/gms/internal/ads/ii1;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ii1;->u(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/nn;)V

    return-void
.end method

.method final synthetic s(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->b:Lcom/google/android/gms/internal/ads/ii1;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ii1;->v(Ljava/lang/String;JJ)V

    return-void
.end method

.method final synthetic t(Lcom/google/android/gms/internal/ads/nm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh1;->b:Lcom/google/android/gms/internal/ads/ii1;

    sget v1, Lcom/google/android/gms/internal/ads/wa;->a:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ii1;->i(Lcom/google/android/gms/internal/ads/nm;)V

    return-void
.end method
