.class public final Lcom/google/android/gms/internal/ads/s1;
.super Lcom/google/android/gms/internal/ads/z1;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/q0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/j14;II)V
    .locals 7

    const-string v2, "DVrAFpWxz2kcLonXDVqzAxxY5qZgb6+MyY8HJZUy9HF2czdhCSx5Lbv7dDVJMgy/"

    const-string v3, "AdToINYaWmfqYE6WezllyxILgCbRf0l/sf/vZralbBA="

    const/16 v6, 0x33

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/z1;-><init>(Lcom/google/android/gms/internal/ads/q0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/j14;II)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->e:Lcom/google/android/gms/internal/ads/j14;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z1;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/l0;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/l0;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z1;->e:Lcom/google/android/gms/internal/ads/j14;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/l0;->b:Ljava/lang/Long;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/j14;->w(J)Lcom/google/android/gms/internal/ads/j14;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z1;->e:Lcom/google/android/gms/internal/ads/j14;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/l0;->c:Ljava/lang/Long;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/j14;->x(J)Lcom/google/android/gms/internal/ads/j14;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
