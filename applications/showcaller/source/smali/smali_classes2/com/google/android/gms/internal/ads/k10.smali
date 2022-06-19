.class public final Lcom/google/android/gms/internal/ads/k10;
.super Lcom/google/android/gms/internal/ads/s00;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/ads/formats/e$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/s00;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k10;->d:Lcom/google/android/gms/ads/formats/e$a;

    return-void
.end method


# virtual methods
.method public final y6(Lcom/google/android/gms/internal/ads/c10;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k10;->d:Lcom/google/android/gms/ads/formats/e$a;

    new-instance v1, Lcom/google/android/gms/internal/ads/d10;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/d10;-><init>(Lcom/google/android/gms/internal/ads/c10;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/e$a;->a(Lcom/google/android/gms/ads/formats/e;)V

    return-void
.end method
