.class final Lcom/google/android/gms/internal/ads/pj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/zzcig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcig;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pj0;->d:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pj0;->d:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->H(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/rj0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pj0;->d:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->I(Lcom/google/android/gms/internal/ads/zzcig;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pj0;->d:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->H(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/rj0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rj0;->h()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pj0;->d:Lcom/google/android/gms/internal/ads/zzcig;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcig;->J(Lcom/google/android/gms/internal/ads/zzcig;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pj0;->d:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->H(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/rj0;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rj0;->c()V

    :cond_1
    return-void
.end method
