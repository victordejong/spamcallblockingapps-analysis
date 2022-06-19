.class public final Lcom/google/android/gms/internal/location/zzs;
.super Lcom/google/android/gms/internal/location/zzaa;
.source ""


# instance fields
.field private final synthetic zza:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzn;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    iput-boolean p3, p0, Lcom/google/android/gms/internal/location/zzs;->zza:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/zzaa;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/location/zzay;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/location/zzs;->zza:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/location/zzay;->zza(Z)V

    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
