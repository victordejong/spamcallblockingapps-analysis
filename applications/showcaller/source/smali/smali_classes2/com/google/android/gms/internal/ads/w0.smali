.class final Lcom/google/android/gms/internal/ads/w0;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/x0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/x0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/w0;->a:Lcom/google/android/gms/internal/ads/x0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/w0;->a:Lcom/google/android/gms/internal/ads/x0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/x0;->d(Lcom/google/android/gms/internal/ads/x0;)V

    return-void
.end method
