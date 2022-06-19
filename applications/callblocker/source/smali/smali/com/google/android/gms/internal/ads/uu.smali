.class public final Lcom/google/android/gms/internal/ads/uu;
.super Lcom/google/android/gms/internal/ads/yb;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/uu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/uu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 9
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
