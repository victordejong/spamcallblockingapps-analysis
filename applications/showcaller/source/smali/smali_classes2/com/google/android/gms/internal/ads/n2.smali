.class final Lcom/google/android/gms/internal/ads/n2;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/o2;

.field private final e:Landroid/os/Handler;

.field final synthetic f:Lcom/google/android/gms/internal/ads/p2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/p2;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/o2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n2;->f:Lcom/google/android/gms/internal/ads/p2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/n2;->e:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/n2;->d:Lcom/google/android/gms/internal/ads/o2;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/n2;->e:Landroid/os/Handler;

    .line 2
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 0

    return-void
.end method
