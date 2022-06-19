.class final Lcom/google/android/gms/internal/ads/i10;
.super Lcom/google/android/gms/internal/ads/l00;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/j10;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/j10;Lcom/google/android/gms/internal/ads/g10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i10;->d:Lcom/google/android/gms/internal/ads/j10;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/l00;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/zz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i10;->d:Lcom/google/android/gms/internal/ads/j10;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j10;->a(Lcom/google/android/gms/internal/ads/j10;)Lcom/google/android/gms/ads/formats/d$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i10;->d:Lcom/google/android/gms/internal/ads/j10;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/j10;->e(Lcom/google/android/gms/internal/ads/j10;Lcom/google/android/gms/internal/ads/zz;)Lcom/google/android/gms/ads/formats/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/d$b;->b(Lcom/google/android/gms/ads/formats/d;)V

    return-void
.end method
