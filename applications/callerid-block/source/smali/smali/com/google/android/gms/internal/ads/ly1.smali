.class final Lcom/google/android/gms/internal/ads/ly1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/rz1;

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/gms/internal/ads/ny1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ny1;Lcom/google/android/gms/internal/ads/rz1;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ly1;->d:Lcom/google/android/gms/internal/ads/ny1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ly1;->b:Lcom/google/android/gms/internal/ads/rz1;

    iput p3, p0, Lcom/google/android/gms/internal/ads/ly1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ly1;->b:Lcom/google/android/gms/internal/ads/rz1;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ly1;->d:Lcom/google/android/gms/internal/ads/ny1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ny1;->U(Lcom/google/android/gms/internal/ads/ny1;Lcom/google/android/gms/internal/ads/zzedb;)Lcom/google/android/gms/internal/ads/zzedb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ly1;->d:Lcom/google/android/gms/internal/ads/ny1;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/wx1;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ly1;->d:Lcom/google/android/gms/internal/ads/ny1;

    iget v2, p0, Lcom/google/android/gms/internal/ads/ly1;->c:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ly1;->b:Lcom/google/android/gms/internal/ads/rz1;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ny1;->V(Lcom/google/android/gms/internal/ads/ny1;ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ly1;->d:Lcom/google/android/gms/internal/ads/ny1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ny1;->L(Lcom/google/android/gms/internal/ads/ny1;Lcom/google/android/gms/internal/ads/zzedb;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ly1;->d:Lcom/google/android/gms/internal/ads/ny1;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ny1;->L(Lcom/google/android/gms/internal/ads/ny1;Lcom/google/android/gms/internal/ads/zzedb;)V

    throw v1
.end method
