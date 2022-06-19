.class public final Lcom/google/android/gms/internal/measurement/zzau;
.super Lcom/google/android/gms/internal/measurement/zzbg;
.source ""


# instance fields
.field public final synthetic zza:Landroid/os/Bundle;

.field public final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzm;

.field public final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzbr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzbr;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzau;->zzc:Lcom/google/android/gms/internal/measurement/zzbr;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzau;->zza:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzau;->zzb:Lcom/google/android/gms/internal/measurement/zzm;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbg;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;Z)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzau;->zzc:Lcom/google/android/gms/internal/measurement/zzbr;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbr;->zzR(Lcom/google/android/gms/internal/measurement/zzbr;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzau;->zza:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzau;->zzb:Lcom/google/android/gms/internal/measurement/zzm;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzh:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzp;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzs;J)V

    return-void
.end method

.method public final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzau;->zzb:Lcom/google/android/gms/internal/measurement/zzm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzm;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
