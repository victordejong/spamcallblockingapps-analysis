.class public final Lcom/google/android/gms/internal/gtm/zzbu;
.super Lcom/google/android/gms/internal/gtm/zzan;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzap;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzan;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    return-void
.end method


# virtual methods
.method public final zzaw()V
    .locals 0

    return-void
.end method

.method public final zzfa()Lcom/google/android/gms/internal/gtm/zzv;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcq()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzk;->zzau()Lcom/google/android/gms/internal/gtm/zzv;

    move-result-object v0

    return-object v0
.end method

.method public final zzfb()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzfa()Lcom/google/android/gms/internal/gtm/zzv;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/gtm/zzv;->zzul:I

    iget v0, v0, Lcom/google/android/gms/internal/gtm/zzv;->zzum:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
