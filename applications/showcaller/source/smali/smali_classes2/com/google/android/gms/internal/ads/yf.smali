.class final Lcom/google/android/gms/internal/ads/yf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/eg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yf;->d:Lcom/google/android/gms/internal/ads/eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yf;->d:Lcom/google/android/gms/internal/ads/eg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eg;->B(Lcom/google/android/gms/internal/ads/eg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yf;->d:Lcom/google/android/gms/internal/ads/eg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eg;->A(Lcom/google/android/gms/internal/ads/eg;)Lcom/google/android/gms/internal/ads/hg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yf;->d:Lcom/google/android/gms/internal/ads/eg;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ug;->b(Lcom/google/android/gms/internal/ads/vg;)V

    :cond_0
    return-void
.end method
