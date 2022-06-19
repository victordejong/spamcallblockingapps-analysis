.class final Lcom/google/android/gms/internal/ads/lj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/google/android/gms/internal/ads/zzcig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lj0;->f:Lcom/google/android/gms/internal/ads/zzcig;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lj0;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lj0;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lj0;->f:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->H(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/rj0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lj0;->f:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->H(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/rj0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lj0;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lj0;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/rj0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
