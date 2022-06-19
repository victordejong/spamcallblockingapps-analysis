.class final Lcom/google/android/gms/internal/ads/cv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/ev;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ev;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cv;->d:Lcom/google/android/gms/internal/ads/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cv;->d:Lcom/google/android/gms/internal/ads/ev;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ev;->d:Lcom/google/android/gms/internal/ads/fv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fv;->E6(Lcom/google/android/gms/internal/ads/fv;)Lcom/google/android/gms/internal/ads/gs;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cv;->d:Lcom/google/android/gms/internal/ads/ev;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ev;->d:Lcom/google/android/gms/internal/ads/fv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fv;->E6(Lcom/google/android/gms/internal/ads/fv;)Lcom/google/android/gms/internal/ads/gs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/gs;->C(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onAdFailedToLoad event."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
