.class public final Lcom/google/android/gms/location/FusedLocationProviderClient$zzb;
.super Lcom/google/android/gms/location/FusedLocationProviderClient$zzd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/FusedLocationProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/location/FusedLocationProviderClient$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/location/FusedLocationProviderClient$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/google/android/gms/location/FusedLocationProviderClient$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/location/FusedLocationProviderClient$zzd;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object p2, p0, Lcom/google/android/gms/location/FusedLocationProviderClient$zzb;->zza:Lcom/google/android/gms/location/FusedLocationProviderClient$zza;

    return-void
.end method


# virtual methods
.method public final a_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/FusedLocationProviderClient$zzb;->zza:Lcom/google/android/gms/location/FusedLocationProviderClient$zza;

    invoke-interface {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient$zza;->zza()V

    return-void
.end method
