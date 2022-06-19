.class final Lcom/google/android/gms/internal/ads/dj1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gz1<",
        "Lcom/google/android/gms/internal/ads/lf0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/u71;

.field final synthetic b:Lcom/google/android/gms/internal/ads/jg0;

.field final synthetic c:Lcom/google/android/gms/internal/ads/ej1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ej1;Lcom/google/android/gms/internal/ads/u71;Lcom/google/android/gms/internal/ads/jg0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dj1;->c:Lcom/google/android/gms/internal/ads/ej1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dj1;->a:Lcom/google/android/gms/internal/ads/u71;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dj1;->b:Lcom/google/android/gms/internal/ads/jg0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dj1;->b:Lcom/google/android/gms/internal/ads/jg0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jg0;->b()Lcom/google/android/gms/internal/ads/y40;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/y40;->g(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dj1;->c:Lcom/google/android/gms/internal/ads/ej1;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dj1;->c:Lcom/google/android/gms/internal/ads/ej1;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/ej1;->e(Lcom/google/android/gms/internal/ads/ej1;Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/rz1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dj1;->b:Lcom/google/android/gms/internal/ads/jg0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jg0;->a()Lcom/google/android/gms/internal/ads/u70;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/u70;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/m3;->N4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dj1;->c:Lcom/google/android/gms/internal/ads/ej1;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ej1;->h(Lcom/google/android/gms/internal/ads/ej1;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/bj1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/bj1;-><init>(Lcom/google/android/gms/internal/ads/dj1;Lcom/google/android/gms/internal/ads/zzym;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dj1;->c:Lcom/google/android/gms/internal/ads/ej1;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ej1;->h(Lcom/google/android/gms/internal/ads/ej1;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/cj1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/cj1;-><init>(Lcom/google/android/gms/internal/ads/dj1;Lcom/google/android/gms/internal/ads/zzym;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzym;->b:I

    const-string v2, "InterstitialAdLoader.onFailure"

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/hm1;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dj1;->a:Lcom/google/android/gms/internal/ads/u71;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/u71;->zza()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/lf0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dj1;->c:Lcom/google/android/gms/internal/ads/ej1;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dj1;->c:Lcom/google/android/gms/internal/ads/ej1;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ej1;->e(Lcom/google/android/gms/internal/ads/ej1;Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/rz1;

    sget-object v1, Lcom/google/android/gms/internal/ads/m3;->N4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u30;->f()Lcom/google/android/gms/internal/ads/qb0;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dj1;->c:Lcom/google/android/gms/internal/ads/ej1;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ej1;->g(Lcom/google/android/gms/internal/ads/ej1;)Lcom/google/android/gms/internal/ads/f71;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/qb0;->a(Lcom/google/android/gms/internal/ads/f71;)Lcom/google/android/gms/internal/ads/qb0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dj1;->c:Lcom/google/android/gms/internal/ads/ej1;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ej1;->f(Lcom/google/android/gms/internal/ads/ej1;)Lcom/google/android/gms/internal/ads/dk1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/qb0;->d(Lcom/google/android/gms/internal/ads/dk1;)Lcom/google/android/gms/internal/ads/qb0;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dj1;->a:Lcom/google/android/gms/internal/ads/u71;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/u71;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dj1;->c:Lcom/google/android/gms/internal/ads/ej1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ej1;->h(Lcom/google/android/gms/internal/ads/ej1;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zi1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zi1;-><init>(Lcom/google/android/gms/internal/ads/dj1;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dj1;->c:Lcom/google/android/gms/internal/ads/ej1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ej1;->h(Lcom/google/android/gms/internal/ads/ej1;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/aj1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aj1;-><init>(Lcom/google/android/gms/internal/ads/dj1;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
