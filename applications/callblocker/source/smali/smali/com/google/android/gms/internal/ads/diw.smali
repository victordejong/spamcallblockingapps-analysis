.class final Lcom/google/android/gms/internal/ads/diw;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/diu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/diu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/diw;->a:Lcom/google/android/gms/internal/ads/diu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diw;->a:Lcom/google/android/gms/internal/ads/diu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/diu;->a(Lcom/google/android/gms/internal/ads/diu;)V

    .line 3
    return-void
.end method
