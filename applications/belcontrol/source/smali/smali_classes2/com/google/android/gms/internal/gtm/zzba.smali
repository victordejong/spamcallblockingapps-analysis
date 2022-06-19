.class public final Lcom/google/android/gms/internal/gtm/zzba;
.super Lcom/google/android/gms/internal/gtm/zzan;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private final zzsu:Lcom/google/android/gms/internal/gtm/zzq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzan;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzba;->zzsu:Lcom/google/android/gms/internal/gtm/zzq;

    return-void
.end method


# virtual methods
.method public final zzaw()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcq()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzk;->zzat()Lcom/google/android/gms/internal/gtm/zzq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzba;->zzsu:Lcom/google/android/gms/internal/gtm/zzq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzq;->zza(Lcom/google/android/gms/internal/gtm/zzq;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcu()Lcom/google/android/gms/internal/gtm/zzda;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzda;->zzaz()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzba;->zzsu:Lcom/google/android/gms/internal/gtm/zzq;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzq;->setAppName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzda;->zzba()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzba;->zzsu:Lcom/google/android/gms/internal/gtm/zzq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzq;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final zzdv()Lcom/google/android/gms/internal/gtm/zzq;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzba;->zzsu:Lcom/google/android/gms/internal/gtm/zzq;

    return-object v0
.end method
