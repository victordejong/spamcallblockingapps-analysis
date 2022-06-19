.class public final Lcom/google/android/gms/internal/measurement/zzbc;
.super Lcom/google/android/gms/internal/measurement/zzbg;
.source ""


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/measurement/zzbi;

.field public final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzbr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzbr;Lcom/google/android/gms/internal/measurement/zzbi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbc;->zzb:Lcom/google/android/gms/internal/measurement/zzbr;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbc;->zza:Lcom/google/android/gms/internal/measurement/zzbi;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbg;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;Z)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbc;->zzb:Lcom/google/android/gms/internal/measurement/zzbr;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbr;->zzR(Lcom/google/android/gms/internal/measurement/zzbr;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbc;->zza:Lcom/google/android/gms/internal/measurement/zzbi;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzp;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzv;)V

    return-void
.end method
