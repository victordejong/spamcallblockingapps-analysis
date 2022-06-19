.class public final Lcom/google/android/gms/internal/ads/dxj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field b:[B

.field c:I

.field public d:[I

.field public e:[I

.field f:I

.field g:I

.field h:I

.field final i:Landroid/media/MediaCodec$CryptoInfo;

.field final j:Lcom/google/android/gms/internal/ads/dxl;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 3
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxj;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 5
    sget v2, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/ads/dxl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dxl;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/gms/internal/ads/dxi;)V

    move-object v1, v2

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dxj;->j:Lcom/google/android/gms/internal/ads/dxl;

    return-void
.end method
