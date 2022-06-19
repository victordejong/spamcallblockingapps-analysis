.class public final synthetic Lcom/google/android/gms/internal/ads/zzcbw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgdu:Lcom/google/android/gms/internal/ads/zzccl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzccl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbw;->zzgdu:Lcom/google/android/gms/internal/ads/zzccl;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzccl;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcbw;-><init>(Lcom/google/android/gms/internal/ads/zzccl;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbw;->zzgdu:Lcom/google/android/gms/internal/ads/zzccl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccl;->zzanl()V

    return-void
.end method
