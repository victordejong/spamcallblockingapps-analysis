.class public final Lcom/google/android/gms/internal/ads/jv1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zn2;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/gv1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gv1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jv1;->d:Lcom/google/android/gms/internal/ads/gv1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->x4:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfem;->g:Lcom/google/android/gms/internal/ads/zzfem;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jv1;->d:Lcom/google/android/gms/internal/ads/gv1;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/gv1;->f()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jv1;->d:Lcom/google/android/gms/internal/ads/gv1;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/jv1;->d:Lcom/google/android/gms/internal/ads/gv1;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/gv1;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/gv1;->g(J)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->x4:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfem;->g:Lcom/google/android/gms/internal/ads/zzfem;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jv1;->d:Lcom/google/android/gms/internal/ads/gv1;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/gv1;->e(J)V

    :cond_0
    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final q(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->x4:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfem;->g:Lcom/google/android/gms/internal/ads/zzfem;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jv1;->d:Lcom/google/android/gms/internal/ads/gv1;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/gv1;->f()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jv1;->d:Lcom/google/android/gms/internal/ads/gv1;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jv1;->d:Lcom/google/android/gms/internal/ads/gv1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gv1;->f()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/gv1;->g(J)V

    :cond_0
    return-void
.end method
