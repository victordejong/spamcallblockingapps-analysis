.class final Lcom/google/android/gms/internal/ads/zzqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field private final synthetic zzbmh:Lcom/google/android/gms/internal/ads/zzqe;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzqe;Landroid/media/MediaCodec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzbmh:Lcom/google/android/gms/internal/ads/zzqe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqe;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzqd;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqf;-><init>(Lcom/google/android/gms/internal/ads/zzqe;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzbmh:Lcom/google/android/gms/internal/ads/zzqe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqe;->zzbme:Lcom/google/android/gms/internal/ads/zzqf;

    if-eq p0, p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqf;->zzbmh:Lcom/google/android/gms/internal/ads/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqe;->zzjk()V

    return-void
.end method
