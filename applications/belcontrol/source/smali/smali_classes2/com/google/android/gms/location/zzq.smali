.class public final synthetic Lcom/google/android/gms/location/zzq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:Lcom/google/android/gms/location/FusedLocationProviderClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/zzq;->zza:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/zzq;->zza:Lcom/google/android/gms/location/FusedLocationProviderClient;

    check-cast p1, Lcom/google/android/gms/internal/location/zzay;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->zza(Lcom/google/android/gms/internal/location/zzay;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
