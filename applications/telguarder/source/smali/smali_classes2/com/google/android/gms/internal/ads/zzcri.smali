.class final Lcom/google/android/gms/internal/ads/zzcri;
.super Ljava/util/TimerTask;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final synthetic zzgsq:Landroid/app/AlertDialog;

.field private final synthetic zzgsr:Ljava/util/Timer;

.field private final synthetic zzgss:Lcom/google/android/gms/ads/internal/overlay/zzc;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Ljava/util/Timer;Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcri;->zzgsq:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcri;->zzgsr:Ljava/util/Timer;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcri;->zzgss:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcri;->zzgsq:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcri;->zzgsr:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcri;->zzgss:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->close()V

    :cond_0
    return-void
.end method
