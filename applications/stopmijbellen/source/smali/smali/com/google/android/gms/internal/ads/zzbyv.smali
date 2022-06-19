.class final Lcom/google/android/gms/internal/ads/zzbyv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lk2/a;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbyx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbyx;Lk2/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyv;->zzb:Lcom/google/android/gms/internal/ads/zzbyx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyv;->zza:Lk2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyv;->zzb:Lcom/google/android/gms/internal/ads/zzbyx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbyx;->zza(Lcom/google/android/gms/internal/ads/zzbyx;)Lcom/google/android/gms/internal/ads/zzbxn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyv;->zza:Lk2/a;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbyy;->zza(Lk2/a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbxn;->zzg(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzciz;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
