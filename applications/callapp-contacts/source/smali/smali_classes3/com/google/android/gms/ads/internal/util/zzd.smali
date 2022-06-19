.class public final Lcom/google/android/gms/ads/internal/util/zzd;
.super Lcom/google/android/gms/internal/ads/za;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzyz()Z

    return-void
.end method

.method public static zzed(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzyz()Z

    return-void
.end method

.method public static zzyz()Z
    .locals 1

    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/co;->a:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
