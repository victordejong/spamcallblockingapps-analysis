.class final Lcom/google/android/gms/internal/ads/dmu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field private final a:Landroid/media/MediaCodec$CryptoInfo;

.field private final b:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dmu;->a:Landroid/media/MediaCodec$CryptoInfo;

    .line 3
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-direct {v0, v1, v1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmu;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 4
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/gms/internal/ads/dmr;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dmu;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    return-void
.end method

.method private final a(II)V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmu;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmu;->a:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmu;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 7
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dmu;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, v0}, Lcom/google/android/gms/internal/ads/dmu;->a(II)V

    return-void
.end method
