.class public final Lcom/google/android/gms/internal/ads/aof;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/cpk;

.field final b:Lcom/google/android/gms/internal/ads/cov;

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aof;->a:Lcom/google/android/gms/internal/ads/cpk;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aof;->b:Lcom/google/android/gms/internal/ads/cov;

    if-nez p3, :cond_0

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 5
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aof;->c:Ljava/lang/String;

    return-void
.end method
