.class final Lcom/google/android/gms/internal/ads/mj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/zzcig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcig;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mj0;->d:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mj0;->d:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->H(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/rj0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mj0;->d:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->H(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/rj0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rj0;->zza()V

    :cond_0
    return-void
.end method
