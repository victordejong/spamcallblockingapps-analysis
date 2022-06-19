.class final Lcom/google/android/gms/internal/ads/h10;
.super Lcom/google/android/gms/internal/ads/i00;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/j10;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/j10;Lcom/google/android/gms/internal/ads/g10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h10;->d:Lcom/google/android/gms/internal/ads/j10;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/i00;-><init>()V

    return-void
.end method


# virtual methods
.method public final w5(Lcom/google/android/gms/internal/ads/zz;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h10;->d:Lcom/google/android/gms/internal/ads/j10;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j10;->b(Lcom/google/android/gms/internal/ads/j10;)Lcom/google/android/gms/ads/formats/d$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h10;->d:Lcom/google/android/gms/internal/ads/j10;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j10;->b(Lcom/google/android/gms/internal/ads/j10;)Lcom/google/android/gms/ads/formats/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h10;->d:Lcom/google/android/gms/internal/ads/j10;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/j10;->e(Lcom/google/android/gms/internal/ads/j10;Lcom/google/android/gms/internal/ads/zz;)Lcom/google/android/gms/ads/formats/d;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/formats/d$a;->l(Lcom/google/android/gms/ads/formats/d;Ljava/lang/String;)V

    return-void
.end method
