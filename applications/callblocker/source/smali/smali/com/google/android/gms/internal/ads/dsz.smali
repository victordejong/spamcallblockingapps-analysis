.class final Lcom/google/android/gms/internal/ads/dsz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dsy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dsy;Landroid/media/MediaCodec;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dsz;->a:Lcom/google/android/gms/internal/ads/dsy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/cnz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cnz;-><init>()V

    invoke-virtual {p2, p0, v0}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    .line 3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dsy;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/dsx;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dsz;-><init>(Lcom/google/android/gms/internal/ads/dsy;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsz;->a:Lcom/google/android/gms/internal/ads/dsy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsy;->b:Lcom/google/android/gms/internal/ads/dsz;

    if-eq p0, v0, :cond_0

    .line 7
    :goto_0
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsz;->a:Lcom/google/android/gms/internal/ads/dsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsy;->v()V

    goto :goto_0
.end method
