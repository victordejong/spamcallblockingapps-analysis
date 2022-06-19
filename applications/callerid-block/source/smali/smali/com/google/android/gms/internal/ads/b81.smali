.class final Lcom/google/android/gms/internal/ads/b81;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gz1<",
        "Lcom/google/android/gms/internal/ads/u30;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/u71;

.field final synthetic b:Lcom/google/android/gms/internal/ads/fh0;

.field final synthetic c:Lcom/google/android/gms/internal/ads/c81;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/c81;Lcom/google/android/gms/internal/ads/u71;Lcom/google/android/gms/internal/ads/fh0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b81;->c:Lcom/google/android/gms/internal/ads/c81;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/b81;->a:Lcom/google/android/gms/internal/ads/u71;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/b81;->b:Lcom/google/android/gms/internal/ads/fh0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b81;->b:Lcom/google/android/gms/internal/ads/fh0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fh0;->a()Lcom/google/android/gms/internal/ads/y40;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/y40;->g(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/b81;->b:Lcom/google/android/gms/internal/ads/fh0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fh0;->b()Lcom/google/android/gms/internal/ads/u70;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/u70;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/b81;->c:Lcom/google/android/gms/internal/ads/c81;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/c81;->f(Lcom/google/android/gms/internal/ads/c81;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fv;->h()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/a81;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/a81;-><init>(Lcom/google/android/gms/internal/ads/b81;Lcom/google/android/gms/internal/ads/zzym;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzym;->b:I

    const-string v1, "NativeAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/hm1;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/b81;->a:Lcom/google/android/gms/internal/ads/u71;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/u71;->zza()V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/u30;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b81;->c:Lcom/google/android/gms/internal/ads/c81;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u30;->f()Lcom/google/android/gms/internal/ads/qb0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/b81;->c:Lcom/google/android/gms/internal/ads/c81;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/c81;->e(Lcom/google/android/gms/internal/ads/c81;)Lcom/google/android/gms/internal/ads/s71;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/s71;->c()Lcom/google/android/gms/internal/ads/f71;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/qb0;->a(Lcom/google/android/gms/internal/ads/f71;)Lcom/google/android/gms/internal/ads/qb0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/b81;->a:Lcom/google/android/gms/internal/ads/u71;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/u71;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/b81;->c:Lcom/google/android/gms/internal/ads/c81;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/c81;->f(Lcom/google/android/gms/internal/ads/c81;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fv;->h()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/z71;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/z71;-><init>(Lcom/google/android/gms/internal/ads/b81;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
