.class final Lcom/google/android/gms/ads/internal/util/w1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/google/android/gms/ads/internal/util/c2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/c2;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/w1;->e:Lcom/google/android/gms/ads/internal/util/c2;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/w1;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/w1;->e:Lcom/google/android/gms/ads/internal/util/c2;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/c2;->J(Lcom/google/android/gms/ads/internal/util/c2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/w1;->e:Lcom/google/android/gms/ads/internal/util/c2;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/w1;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/c2;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/util/c2;->K(Lcom/google/android/gms/ads/internal/util/c2;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/w1;->e:Lcom/google/android/gms/ads/internal/util/c2;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/c2;->J(Lcom/google/android/gms/ads/internal/util/c2;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
