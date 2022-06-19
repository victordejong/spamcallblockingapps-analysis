.class final Lcom/google/android/gms/internal/ads/xm;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/xn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/xn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xm;->a:Lcom/google/android/gms/internal/ads/xn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xm;->a:Lcom/google/android/gms/internal/ads/xn;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/xn;->a(Lcom/google/android/gms/internal/ads/xn;Landroid/content/Context;Landroid/content/Intent;)V

    .line 3
    return-void
.end method
