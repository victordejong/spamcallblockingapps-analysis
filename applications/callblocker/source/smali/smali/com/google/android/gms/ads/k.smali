.class public Lcom/google/android/gms/ads/k;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/k$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/c;
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/ebl;->a()Lcom/google/android/gms/internal/ads/ebl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ebl;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/ads/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/k$a;)V

    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/k$a;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/ebl;->a()Lcom/google/android/gms/internal/ads/ebl;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/ebl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/e/c;)V

    .line 7
    return-void
.end method
