.class public final Lcom/google/android/exoplayer2/decoder/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/decoder/b$a;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/media/MediaCodec$CryptoInfo;

.field public final j:Lcom/google/android/exoplayer2/decoder/b$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 82
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v1, v3, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/decoder/b$a;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/decoder/b$a;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/exoplayer2/decoder/b$1;)V

    move-object v2, v1

    :cond_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/decoder/b;->j:Lcom/google/android/exoplayer2/decoder/b$a;

    return-void
.end method
