.class public Lcom/google/android/gms/internal/ads/vp;
.super Lcom/google/android/gms/internal/ads/vq;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Landroid/webkit/WebResourceResponse;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/dwi;Z)Lcom/google/android/gms/internal/ads/acs;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/adw;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/adw;-><init>(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/dwi;Z)V

    return-object v0
.end method

.method public final c(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/vp;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    :goto_0
    return-object v0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 5
    :catch_0
    move-exception v1

    .line 6
    const-string/jumbo v2, "Failed to obtain CookieManager."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v2

    const-string/jumbo v3, "ApiLevelUtil.getCookieManager"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 10
    const v0, 0x1030226

    return v0
.end method
