.class final Lcom/google/android/gms/internal/ads/vf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ve;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ve;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vf;->b:Lcom/google/android/gms/internal/ads/ve;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vf;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->b:Lcom/google/android/gms/internal/ads/ve;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->a(Lcom/google/android/gms/internal/ads/ve;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->b:Lcom/google/android/gms/internal/ads/ve;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vf;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ve;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/ve;->a(Lcom/google/android/gms/internal/ads/ve;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->b:Lcom/google/android/gms/internal/ads/ve;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->a(Lcom/google/android/gms/internal/ads/ve;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
