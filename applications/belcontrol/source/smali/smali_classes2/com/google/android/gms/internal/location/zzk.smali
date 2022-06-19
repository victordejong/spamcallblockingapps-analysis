.class public final Lcom/google/android/gms/internal/location/zzk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/location/zzbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/location/zzbi<",
        "Lcom/google/android/gms/internal/location/zzal;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/location/zzh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzk;->zza:Lcom/google/android/gms/internal/location/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzk;->zza:Lcom/google/android/gms/internal/location/zzh;

    invoke-static {v0}, Lcom/google/android/gms/internal/location/zzh;->zza(Lcom/google/android/gms/internal/location/zzh;)V

    return-void
.end method

.method public final synthetic zzb()Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzk;->zza:Lcom/google/android/gms/internal/location/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzal;

    return-object v0
.end method
