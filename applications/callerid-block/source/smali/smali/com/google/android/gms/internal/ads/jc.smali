.class final Lcom/google/android/gms/internal/ads/jc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/uc;

.field final synthetic c:Lcom/google/android/gms/internal/ads/pb;

.field final synthetic d:Lcom/google/android/gms/internal/ads/vc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jc;->d:Lcom/google/android/gms/internal/ads/vc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jc;->b:Lcom/google/android/gms/internal/ads/uc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jc;->c:Lcom/google/android/gms/internal/ads/pb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jc;->d:Lcom/google/android/gms/internal/ads/vc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->f(Lcom/google/android/gms/internal/ads/vc;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jc;->b:Lcom/google/android/gms/internal/ads/uc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mp;->d()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jc;->b:Lcom/google/android/gms/internal/ads/uc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mp;->d()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jc;->b:Lcom/google/android/gms/internal/ads/uc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mp;->c()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zo;->e:Lcom/google/android/gms/internal/ads/sz1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jc;->c:Lcom/google/android/gms/internal/ads/pb;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ic;->a(Lcom/google/android/gms/internal/ads/pb;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
