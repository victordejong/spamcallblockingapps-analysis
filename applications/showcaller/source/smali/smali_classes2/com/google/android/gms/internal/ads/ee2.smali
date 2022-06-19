.class final Lcom/google/android/gms/internal/ads/ee2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/p42;

.field final synthetic b:Lcom/google/android/gms/internal/ads/fe2;

.field final synthetic c:Lcom/google/android/gms/internal/ads/he2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/he2;Lcom/google/android/gms/internal/ads/p42;Lcom/google/android/gms/internal/ads/fe2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ee2;->c:Lcom/google/android/gms/internal/ads/he2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ee2;->a:Lcom/google/android/gms/internal/ads/p42;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ee2;->b:Lcom/google/android/gms/internal/ads/fe2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee2;->c:Lcom/google/android/gms/internal/ads/he2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/he2;->f(Lcom/google/android/gms/internal/ads/he2;)Lcom/google/android/gms/internal/ads/sg2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/sg2;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ew0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/sk2;->b(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/uw1;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v2

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/g21;->o()Lcom/google/android/gms/internal/ads/b01;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/b01;->h(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v2

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ee2;->c:Lcom/google/android/gms/internal/ads/he2;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ee2;->c:Lcom/google/android/gms/internal/ads/he2;

    .line 5
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/he2;->g(Lcom/google/android/gms/internal/ads/he2;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/r03;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ew0;->s()Lcom/google/android/gms/internal/ads/a31;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/a31;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->P5:Lcom/google/android/gms/internal/ads/cw;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee2;->c:Lcom/google/android/gms/internal/ads/he2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/he2;->d(Lcom/google/android/gms/internal/ads/he2;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/de2;

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/de2;-><init>(Lcom/google/android/gms/internal/ads/ee2;Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee2;->c:Lcom/google/android/gms/internal/ads/he2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/he2;->e(Lcom/google/android/gms/internal/ads/he2;)Lcom/google/android/gms/internal/ads/xe2;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/xe2;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee2;->c:Lcom/google/android/gms/internal/ads/he2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ee2;->b:Lcom/google/android/gms/internal/ads/fe2;

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/he2;->h(Lcom/google/android/gms/internal/ads/he2;Lcom/google/android/gms/internal/ads/qg2;)Lcom/google/android/gms/internal/ads/f21;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/f21;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ew0;

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/g21;->o()Lcom/google/android/gms/internal/ads/b01;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/b01;->e()Lcom/google/android/gms/internal/ads/h81;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/h81;->l()V

    .line 18
    :cond_2
    :goto_1
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzbcz;->d:I

    const-string v1, "AppOpenAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/nk2;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ee2;->a:Lcom/google/android/gms/internal/ads/p42;

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/p42;->zza()V

    .line 20
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/xy0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee2;->c:Lcom/google/android/gms/internal/ads/he2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ee2;->c:Lcom/google/android/gms/internal/ads/he2;

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/he2;->g(Lcom/google/android/gms/internal/ads/he2;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/r03;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->P5:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xy0;->f()Lcom/google/android/gms/internal/ads/i71;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ee2;->c:Lcom/google/android/gms/internal/ads/he2;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/he2;->e(Lcom/google/android/gms/internal/ads/he2;)Lcom/google/android/gms/internal/ads/xe2;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/i71;->c(Lcom/google/android/gms/internal/ads/xe2;)Lcom/google/android/gms/internal/ads/i71;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ee2;->a:Lcom/google/android/gms/internal/ads/p42;

    .line 8
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/p42;->b(Ljava/lang/Object;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
