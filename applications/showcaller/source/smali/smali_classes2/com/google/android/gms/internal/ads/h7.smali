.class final Lcom/google/android/gms/internal/ads/h7;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/i7;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/i7;Lcom/google/android/gms/internal/ads/f7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h7;->a:Lcom/google/android/gms/internal/ads/i7;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/h7;->a:Lcom/google/android/gms/internal/ads/i7;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/i7;->a(Lcom/google/android/gms/internal/ads/i7;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/g7;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h7;->a:Lcom/google/android/gms/internal/ads/i7;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/g7;-><init>(Lcom/google/android/gms/internal/ads/i7;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
