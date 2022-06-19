.class public final Lcom/google/android/gms/internal/measurement/zzai;
.super Lcom/google/android/gms/internal/measurement/zzbg;
.source ""


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/measurement/zzbr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzbr;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzai;->zza:Lcom/google/android/gms/internal/measurement/zzbr;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzbg;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;Z)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzai;->zza:Lcom/google/android/gms/internal/measurement/zzbr;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbr;->zzR(Lcom/google/android/gms/internal/measurement/zzbr;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzh:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzp;->resetAnalyticsData(J)V

    return-void
.end method
