.class public final Lcom/google/android/gms/internal/ads/h1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/q0;

.field private final b:Lcom/google/android/gms/internal/ads/j14;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/q0;Lcom/google/android/gms/internal/ads/j14;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h1;->a:Lcom/google/android/gms/internal/ads/q0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/h1;->b:Lcom/google/android/gms/internal/ads/j14;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h1;->a:Lcom/google/android/gms/internal/ads/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q0;->o()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h1;->a:Lcom/google/android/gms/internal/ads/q0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q0;->o()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h1;->a:Lcom/google/android/gms/internal/ads/q0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q0;->n()Lcom/google/android/gms/internal/ads/z14;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h1;->b:Lcom/google/android/gms/internal/ads/j14;

    .line 4
    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/h1;->b:Lcom/google/android/gms/internal/ads/j14;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tc3;->K()[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v3

    const/4 v4, 0x0

    .line 6
    array-length v5, v0

    .line 7
    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/ee3;->p([BIILcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/ee3;

    .line 8
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
