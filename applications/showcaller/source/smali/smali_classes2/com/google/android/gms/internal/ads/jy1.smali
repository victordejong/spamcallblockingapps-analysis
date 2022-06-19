.class final Lcom/google/android/gms/internal/ads/jy1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Lcom/google/android/gms/internal/ads/xw0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/ky1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ky1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jy1;->a:Lcom/google/android/gms/internal/ads/ky1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy1;->a:Lcom/google/android/gms/internal/ads/ky1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ky1;->c(Lcom/google/android/gms/internal/ads/ky1;)Lcom/google/android/gms/internal/ads/vx0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vx0;->b()Lcom/google/android/gms/internal/ads/b01;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/b01;->h(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy1;->a:Lcom/google/android/gms/internal/ads/ky1;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ky1;->d(Lcom/google/android/gms/internal/ads/ky1;)Lcom/google/android/gms/internal/ads/a31;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/a31;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V

    .line 3
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbcz;->d:I

    const-string v1, "DelayedBannerAd.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/nk2;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/xw0;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xy0;->a()V

    return-void
.end method
