.class public final Lcom/google/android/gms/internal/ads/dxx;
.super Lcom/google/android/gms/internal/ads/dzu;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/reward/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/reward/a;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dzu;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dxx;->a:Lcom/google/android/gms/ads/reward/a;

    .line 3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxx;->a:Lcom/google/android/gms/ads/reward/a;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxx;->a:Lcom/google/android/gms/ads/reward/a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/reward/a;->k_()V

    .line 6
    :cond_0
    return-void
.end method
