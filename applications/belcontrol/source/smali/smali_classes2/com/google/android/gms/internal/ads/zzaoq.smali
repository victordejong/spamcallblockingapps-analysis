.class public final Lcom/google/android/gms/internal/ads/zzaoq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdoh:Lcom/google/android/gms/internal/ads/zzaol;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaol;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoq;->zzdoh:Lcom/google/android/gms/internal/ads/zzaol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoq;->zzdoh:Lcom/google/android/gms/internal/ads/zzaol;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaol;->zza(Lcom/google/android/gms/internal/ads/zzaol;)Lcom/google/android/gms/internal/ads/zzank;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzank;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
