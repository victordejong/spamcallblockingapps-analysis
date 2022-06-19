.class public final Lcom/google/android/gms/ads/internal/util/zzb;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zzaj(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaze;->zzbs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaze;->zzaaa()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/util/zze;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zza;->zzye()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p0

    const-string v0, "Updating ad debug logging enablement."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzew(Ljava/lang/String;)V

    const-string v0, "AdDebugLogUpdater.updateEnablement"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzazw;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
