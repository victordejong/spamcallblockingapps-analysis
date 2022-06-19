.class final Lcom/google/android/gms/internal/ads/oj;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/rj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oj;->a:Lcom/google/android/gms/internal/ads/rj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oj;->a:Lcom/google/android/gms/internal/ads/rj;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/rj;->c(Lcom/google/android/gms/internal/ads/rj;I)V

    return-void
.end method
