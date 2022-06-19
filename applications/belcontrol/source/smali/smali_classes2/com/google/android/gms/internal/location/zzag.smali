.class public final Lcom/google/android/gms/internal/location/zzag;
.super Lcom/google/android/gms/internal/location/zzaf;
.source ""


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/location/zzbe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzae;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/zzbe;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzag;->zza:Lcom/google/android/gms/location/zzbe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/zzaf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/location/zzay;

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzag;->zza:Lcom/google/android/gms/location/zzbe;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/location/zzay;->zza(Lcom/google/android/gms/location/zzbe;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method
