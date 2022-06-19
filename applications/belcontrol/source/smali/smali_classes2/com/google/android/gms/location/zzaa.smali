.class public final synthetic Lcom/google/android/gms/location/zzaa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private final zzb:Lcom/google/android/gms/location/FusedLocationProviderClient$zzc;

.field private final zzc:Lcom/google/android/gms/location/LocationCallback;

.field private final zzd:Lcom/google/android/gms/location/FusedLocationProviderClient$zza;

.field private final zze:Lcom/google/android/gms/internal/location/zzbc;

.field private final zzf:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/location/FusedLocationProviderClient$zzc;Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/location/FusedLocationProviderClient$zza;Lcom/google/android/gms/internal/location/zzbc;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/zzaa;->zza:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iput-object p2, p0, Lcom/google/android/gms/location/zzaa;->zzb:Lcom/google/android/gms/location/FusedLocationProviderClient$zzc;

    iput-object p3, p0, Lcom/google/android/gms/location/zzaa;->zzc:Lcom/google/android/gms/location/LocationCallback;

    iput-object p4, p0, Lcom/google/android/gms/location/zzaa;->zzd:Lcom/google/android/gms/location/FusedLocationProviderClient$zza;

    iput-object p5, p0, Lcom/google/android/gms/location/zzaa;->zze:Lcom/google/android/gms/internal/location/zzbc;

    iput-object p6, p0, Lcom/google/android/gms/location/zzaa;->zzf:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/location/zzaa;->zza:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/google/android/gms/location/zzaa;->zzb:Lcom/google/android/gms/location/FusedLocationProviderClient$zzc;

    iget-object v2, p0, Lcom/google/android/gms/location/zzaa;->zzc:Lcom/google/android/gms/location/LocationCallback;

    iget-object v3, p0, Lcom/google/android/gms/location/zzaa;->zzd:Lcom/google/android/gms/location/FusedLocationProviderClient$zza;

    iget-object v4, p0, Lcom/google/android/gms/location/zzaa;->zze:Lcom/google/android/gms/internal/location/zzbc;

    iget-object v5, p0, Lcom/google/android/gms/location/zzaa;->zzf:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/location/zzay;

    move-object v7, p2

    check-cast v7, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/location/FusedLocationProviderClient;->zza(Lcom/google/android/gms/location/FusedLocationProviderClient$zzc;Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/location/FusedLocationProviderClient$zza;Lcom/google/android/gms/internal/location/zzbc;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/internal/location/zzay;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
