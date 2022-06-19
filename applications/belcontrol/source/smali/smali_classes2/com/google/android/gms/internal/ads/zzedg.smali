.class public final Lcom/google/android/gms/internal/ads/zzedg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzebc;Lcom/google/android/gms/internal/ads/zzeaw;)Lcom/google/android/gms/internal/ads/zzeat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzebc;",
            "Lcom/google/android/gms/internal/ads/zzeaw<",
            "Lcom/google/android/gms/internal/ads/zzeat;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzeat;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzedf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzedf;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebm;->zza(Lcom/google/android/gms/internal/ads/zzebh;)V

    const-class p1, Lcom/google/android/gms/internal/ads/zzeat;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzebm;->zza(Lcom/google/android/gms/internal/ads/zzebc;Lcom/google/android/gms/internal/ads/zzeaw;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzebf;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebm;->zza(Lcom/google/android/gms/internal/ads/zzebf;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeat;

    return-object p0
.end method
