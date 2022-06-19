.class final Lcom/google/android/gms/internal/ads/dtp;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dtn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dtn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dtp;->a:Lcom/google/android/gms/internal/ads/dtn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dtp;->a:Lcom/google/android/gms/internal/ads/dtn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dtn;->a(Lcom/google/android/gms/internal/ads/dtn;)V

    return-void
.end method
