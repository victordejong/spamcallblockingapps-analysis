.class public final Lcom/google/android/gms/internal/ads/rg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/reward/b;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qr;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rg;->a:Lcom/google/android/gms/internal/ads/qr;

    .line 3
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rg;->a:Lcom/google/android/gms/internal/ads/qr;

    if-nez v1, :cond_0

    .line 9
    :goto_0
    return-object v0

    .line 6
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rg;->a:Lcom/google/android/gms/internal/ads/qr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qr;->a()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 7
    :catch_0
    move-exception v1

    .line 8
    const-string/jumbo v2, "Could not forward getType to RewardItem"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rg;->a:Lcom/google/android/gms/internal/ads/qr;

    if-nez v1, :cond_0

    .line 15
    :goto_0
    return v0

    .line 12
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rg;->a:Lcom/google/android/gms/internal/ads/qr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qr;->b()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 13
    :catch_0
    move-exception v1

    .line 14
    const-string/jumbo v2, "Could not forward getAmount to RewardItem"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
