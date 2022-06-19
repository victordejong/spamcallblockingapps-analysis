.class final Lcom/google/android/gms/internal/ads/kw1;
.super Ljava/util/TimerTask;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic d:Landroid/app/AlertDialog;

.field final synthetic e:Ljava/util/Timer;

.field final synthetic f:Lcom/google/android/gms/ads/internal/overlay/l;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Ljava/util/Timer;Lcom/google/android/gms/ads/internal/overlay/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kw1;->d:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kw1;->e:Ljava/util/Timer;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/kw1;->f:Lcom/google/android/gms/ads/internal/overlay/l;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kw1;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kw1;->e:Ljava/util/Timer;

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kw1;->f:Lcom/google/android/gms/ads/internal/overlay/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/l;->b()V

    :cond_0
    return-void
.end method
