.class public final Lcom/google/android/gms/internal/ads/j;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/o;)Lcom/google/android/gms/internal/ads/m;
    .locals 2

    .prologue
    .line 8
    if-nez p0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 12
    :goto_0
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/o;->a(J)Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a(Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;[Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 7
    :cond_0
    :goto_0
    return v0

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/o;->a:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/o;->a(Lcom/google/android/gms/internal/ads/m;J[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
