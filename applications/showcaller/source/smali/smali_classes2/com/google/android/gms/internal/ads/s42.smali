.class final Lcom/google/android/gms/internal/ads/s42;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/media/AudioTrack$StreamEventCallback;

.field final synthetic c:Lcom/google/android/gms/internal/ads/t52;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/t52;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s42;->c:Lcom/google/android/gms/internal/ads/t52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/s42;->a:Landroid/os/Handler;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/r32;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/r32;-><init>(Lcom/google/android/gms/internal/ads/s42;Lcom/google/android/gms/internal/ads/t52;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/s42;->b:Landroid/media/AudioTrack$StreamEventCallback;

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioTrack;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s42;->a:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/q22;->b(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s42;->b:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    return-void
.end method

.method public final b(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s42;->b:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/s42;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
