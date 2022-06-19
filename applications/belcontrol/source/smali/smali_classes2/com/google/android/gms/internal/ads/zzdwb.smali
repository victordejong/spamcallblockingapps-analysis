.class public final Lcom/google/android/gms/internal/ads/zzdwb;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zzw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdwd;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdwe;)V

    return-object v0
.end method
