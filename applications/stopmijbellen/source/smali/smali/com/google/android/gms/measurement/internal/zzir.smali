.class final Lcom/google/android/gms/measurement/internal/zzir;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzjk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjk;->zzM(Lcom/google/android/gms/measurement/internal/zzjk;)Lcom/google/android/gms/measurement/internal/zzed;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    const-string v1, "Discarding data. Failed to send app launch"

    .line 1
    invoke-static {v0, v1}, La6/h;->n(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzed;->zzf(Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzn()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zzn()Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    .line 7
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjk;->zzk(Lcom/google/android/gms/measurement/internal/zzed;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjk;->zzN(Lcom/google/android/gms/measurement/internal/zzjk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Failed to send app launch to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
