.class final Lcom/google/android/gms/internal/ads/ui;
.super Lcom/google/android/gms/internal/ads/uq;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ug;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ug;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ui;->a:Lcom/google/android/gms/internal/ads/ug;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/f;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ui;->a:Lcom/google/android/gms/internal/ads/ug;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ug;->a(Lcom/google/android/gms/internal/ads/ug;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ui;->a:Lcom/google/android/gms/internal/ads/ug;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ug;->b(Lcom/google/android/gms/internal/ads/ug;)Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ui;->a:Lcom/google/android/gms/internal/ads/ug;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ug;->c(Lcom/google/android/gms/internal/ads/ug;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->l()Lcom/google/android/gms/internal/ads/g;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ui;->a:Lcom/google/android/gms/internal/ads/ug;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ug;->d(Lcom/google/android/gms/internal/ads/ug;)Lcom/google/android/gms/internal/ads/e;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/g;->a(Lcom/google/android/gms/internal/ads/e;Lcom/google/android/gms/internal/ads/f;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    const-string/jumbo v2, "Cannot config CSI reporter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
