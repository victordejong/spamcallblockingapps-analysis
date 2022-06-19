.class public Lcom/google/android/gms/ads/l;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/b;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/ads/initialization/b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/wu;->d()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/ads/wu;->e(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/b;)V

    return-void
.end method
