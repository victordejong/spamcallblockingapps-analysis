.class public final synthetic Lcom/google/android/gms/location/zzr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field public static final zza:Lcom/google/android/gms/common/api/internal/RemoteCall;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/zzr;->zza:Lcom/google/android/gms/common/api/internal/RemoteCall;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/location/zzay;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/location/FusedLocationProviderClient$zzd;

    invoke-direct {v0, p2}, Lcom/google/android/gms/location/FusedLocationProviderClient$zzd;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/location/zzay;->zza(Lcom/google/android/gms/internal/location/zzai;)V

    return-void
.end method
