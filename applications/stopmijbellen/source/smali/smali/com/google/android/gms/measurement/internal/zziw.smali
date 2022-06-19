.class final Lcom/google/android/gms/measurement/internal/zziw;
.super Lcom/google/android/gms/measurement/internal/zzal;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzgp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziw;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Lcom/google/android/gms/measurement/internal/zzgp;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziw;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    const-string v1, "Tasks have been queued for a long time"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/a;->k(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;)V

    return-void
.end method
