.class final synthetic Lcom/google/android/gms/internal/ads/xx1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vy0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/tw1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xx1;->a:Lcom/google/android/gms/internal/ads/tw1;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/ju;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xx1;->a:Lcom/google/android/gms/internal/ads/tw1;

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/tw1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/r90;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/r90;->f()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfaw;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
