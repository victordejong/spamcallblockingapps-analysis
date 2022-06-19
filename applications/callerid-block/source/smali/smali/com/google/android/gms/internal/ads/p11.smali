.class final Lcom/google/android/gms/internal/ads/p11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gz1<",
        "Lcom/google/android/gms/internal/ads/u10;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/q11;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/q11;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p11;->a:Lcom/google/android/gms/internal/ads/q11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p11;->a:Lcom/google/android/gms/internal/ads/q11;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/q11;->e(Lcom/google/android/gms/internal/ads/q11;)Lcom/google/android/gms/internal/ads/s20;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s20;->b()Lcom/google/android/gms/internal/ads/y40;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/y40;->g(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p11;->a:Lcom/google/android/gms/internal/ads/q11;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/q11;->f(Lcom/google/android/gms/internal/ads/q11;)Lcom/google/android/gms/internal/ads/u70;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/u70;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzym;->b:I

    const-string v1, "DelayedBannerAd.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/hm1;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u30;->a()V

    return-void
.end method
