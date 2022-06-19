.class final Lcom/google/android/gms/internal/ads/nj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/google/android/gms/internal/ads/zzcig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcig;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nj0;->f:Lcom/google/android/gms/internal/ads/zzcig;

    iput p2, p0, Lcom/google/android/gms/internal/ads/nj0;->d:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/nj0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nj0;->f:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->H(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/rj0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nj0;->f:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->H(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/rj0;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nj0;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/nj0;->e:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/rj0;->d(II)V

    :cond_0
    return-void
.end method
