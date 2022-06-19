.class public final Lcom/google/android/gms/internal/ads/coi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cok;
    .locals 3

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/cok;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cok;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/cog;)V

    return-object v0
.end method
