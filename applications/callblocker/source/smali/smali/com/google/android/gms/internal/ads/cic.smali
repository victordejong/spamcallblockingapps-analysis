.class final Lcom/google/android/gms/internal/ads/cic;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cfb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cfb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cic;->a:Lcom/google/android/gms/internal/ads/cfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cic;->a:Lcom/google/android/gms/internal/ads/cfb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cfb;->a(Lcom/google/android/gms/internal/ads/cfb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cic;->a:Lcom/google/android/gms/internal/ads/cfb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cfb;->b(Lcom/google/android/gms/internal/ads/cfb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cic;->a:Lcom/google/android/gms/internal/ads/cfb;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/cfb;->a(Lcom/google/android/gms/internal/ads/cfb;Z)Z

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cic;->a:Lcom/google/android/gms/internal/ads/cfb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cfb;->c(Lcom/google/android/gms/internal/ads/cfb;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cic;->a:Lcom/google/android/gms/internal/ads/cfb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cfb;->a(Lcom/google/android/gms/internal/ads/cfb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 12
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cic;->a:Lcom/google/android/gms/internal/ads/cfb;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/cfb;->a(Lcom/google/android/gms/internal/ads/cfb;Z)Z

    .line 13
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    return-void

    .line 5
    :cond_0
    :try_start_3
    monitor-exit v1

    goto :goto_1

    .line 6
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cic;->a:Lcom/google/android/gms/internal/ads/cfb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cfb;->d(Lcom/google/android/gms/internal/ads/cfb;)Lcom/google/android/gms/internal/ads/clq;

    move-result-object v1

    const/16 v2, 0x7e7

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    goto :goto_0

    .line 13
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
