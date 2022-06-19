.class public final Lcom/google/android/gms/internal/ads/s80;
.super Lcom/google/android/gms/internal/ads/a80;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/ads/mediation/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/a80;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s80;->d:Lcom/google/android/gms/ads/mediation/k;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s80;->d:Lcom/google/android/gms/ads/mediation/k;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/g;->b()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s80;->d:Lcom/google/android/gms/ads/mediation/k;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/k;->a()Z

    move-result v0

    return v0
.end method
