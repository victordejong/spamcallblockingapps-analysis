.class final Lcom/google/android/gms/internal/ads/zzfq;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfs;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfr;

.field private final zzc:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfs;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzfr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zza:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzc:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzb:Lcom/google/android/gms/internal/ads/zzfr;

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

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzc:Landroid/os/Handler;

    .line 2
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 0

    return-void
.end method
