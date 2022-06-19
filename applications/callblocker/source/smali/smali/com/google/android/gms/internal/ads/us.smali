.class public final Lcom/google/android/gms/internal/ads/us;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/xv;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    :cond_0
    :goto_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/xv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/uv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/uv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uq;->b()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 5
    const-string/jumbo v1, "Updating ad debug logging enablement."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 6
    const-string/jumbo v1, "AdDebugLogUpdater.updateEnablement"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yk;->a(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/String;)V

    goto :goto_0
.end method
