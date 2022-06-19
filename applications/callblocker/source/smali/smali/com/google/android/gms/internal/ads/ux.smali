.class public final Lcom/google/android/gms/internal/ads/ux;
.super Lcom/google/android/gms/internal/ads/cnz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cnz;-><init>(Landroid/os/Looper;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 8
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cnz;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-void

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ug;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 12
    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 3
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cnz;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "AdMobHandler.handleMessage"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
