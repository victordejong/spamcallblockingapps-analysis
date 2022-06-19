.class final synthetic Lcom/google/android/gms/internal/ads/d11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/s30;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yz0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d11;->a:Lcom/google/android/gms/internal/ads/yz0;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/m1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d11;->a:Lcom/google/android/gms/internal/ads/yz0;

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yz0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/gg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/gg;->e()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrl;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
