.class final Lcom/google/android/gms/internal/ads/ecg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ecf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ecf;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ecg;->a:Lcom/google/android/gms/internal/ads/ecf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ecg;->a:Lcom/google/android/gms/internal/ads/ecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ecf;->a(Lcom/google/android/gms/internal/ads/ecf;)Lcom/google/android/gms/internal/ads/rb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ecg;->a:Lcom/google/android/gms/internal/ads/ecf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ecf;->a(Lcom/google/android/gms/internal/ads/ecf;)Lcom/google/android/gms/internal/ads/rb;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/rb;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :cond_0
    :goto_0
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    const-string/jumbo v1, "Could not notify onRewardedVideoAdFailedToLoad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
