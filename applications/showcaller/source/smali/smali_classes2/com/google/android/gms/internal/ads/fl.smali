.class public final Lcom/google/android/gms/internal/ads/fl;
.super Lcom/google/android/gms/internal/ads/ml;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/ads/u/a$a;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/u/a$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ml;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fl;->d:Lcom/google/android/gms/ads/u/a$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fl;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final C(I)V
    .locals 0

    return-void
.end method

.method public final G1(Lcom/google/android/gms/internal/ads/kl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl;->d:Lcom/google/android/gms/ads/u/a$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/gl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fl;->e:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/gl;-><init>(Lcom/google/android/gms/internal/ads/kl;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fl;->d:Lcom/google/android/gms/ads/u/a$a;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final R(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl;->d:Lcom/google/android/gms/ads/u/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcz;->l0()Lcom/google/android/gms/ads/j;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fl;->d:Lcom/google/android/gms/ads/u/a$a;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/j;)V

    :cond_0
    return-void
.end method
