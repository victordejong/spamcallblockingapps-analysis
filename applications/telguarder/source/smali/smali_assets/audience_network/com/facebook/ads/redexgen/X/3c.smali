.class public abstract Lcom/facebook/ads/redexgen/X/3c;
.super Lcom/facebook/ads/redexgen/X/Dh;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecRenderer$AdaptationWorkaroundMode;,
        Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecRenderer$ReinitializationState;,
        Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecRenderer$ReconfigurationState;,
        Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecRenderer$KeepCodecResult;,
        Lcom/facebook/ads/redexgen/X/Dg;
    }
.end annotation


# static fields
.field public static A0d:[B

.field public static A0e:[Ljava/lang/String;

.field public static final A0f:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:Landroid/media/MediaCodec;

.field public A07:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A08:Lcom/facebook/ads/redexgen/X/Bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Bz<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;"
        }
    .end annotation
.end field

.field public A09:Lcom/facebook/ads/redexgen/X/Bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Bz<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;"
        }
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/De;

.field public A0B:Ljava/nio/ByteBuffer;

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z

.field public A0N:Z

.field public A0O:Z

.field public A0P:Z

.field public A0Q:Z

.field public A0R:Z

.field public A0S:[Ljava/nio/ByteBuffer;

.field public A0T:[Ljava/nio/ByteBuffer;

.field public A0U:Lcom/facebook/ads/redexgen/X/Ba;

.field public final A0V:Landroid/media/MediaCodec$BufferInfo;

.field public final A0W:Lcom/facebook/ads/redexgen/X/AD;

.field public final A0X:Lcom/facebook/ads/redexgen/X/Vt;

.field public final A0Y:Lcom/facebook/ads/redexgen/X/Vt;

.field public final A0Z:Lcom/facebook/ads/redexgen/X/C0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;"
        }
    .end annotation
.end field

.field public final A0a:Lcom/facebook/ads/redexgen/X/Dk;

.field public final A0b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final A0c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 9167
    invoke-static {}, Lcom/facebook/ads/redexgen/X/3c;->A0l()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3c;->A0k()V

    const/16 v2, 0x3b

    const/16 v1, 0x4c

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0i(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3c;->A0f:[B

    .line 9168
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/redexgen/X/C0;Z)V
    .locals 3
    .param p3    # Lcom/facebook/ads/redexgen/X/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/Dk;",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;Z)V"
        }
    .end annotation

    .line 9169
    .local v1, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dh;-><init>(I)V

    .line 9170
    sget v2, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/4 v1, 0x0

    const/16 v0, 0x10

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 9171
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0a:Lcom/facebook/ads/redexgen/X/Dk;

    .line 9172
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    .line 9173
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/3c;->A0c:Z

    .line 9174
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vt;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vt;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    .line 9175
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vt;->A03()Lcom/facebook/ads/redexgen/X/Vt;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Y:Lcom/facebook/ads/redexgen/X/Vt;

    .line 9176
    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AD;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0W:Lcom/facebook/ads/redexgen/X/AD;

    .line 9177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0b:Ljava/util/List;

    .line 9178
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    .line 9179
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A01:I

    .line 9180
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A02:I

    .line 9181
    return-void

    .line 9182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0X(Ljava/lang/String;)I
    .locals 6

    .line 9183
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x19

    if-gt v1, v0, :cond_3

    .line 9184
    const/16 v2, 0x107

    const/16 v1, 0x19

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v4, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    .line 9185
    const/16 v2, 0x271

    const/4 v1, 0x7

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "DdPiGToOrnD3Cy7vUUBvQIxcG1xCDJbJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "UHkzHiUdHYoVL3qWSKPBDy3cSY8o7lWr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    .line 9186
    const/16 v2, 0x255

    const/4 v1, 0x7

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    .line 9187
    const/16 v2, 0x25c

    const/4 v1, 0x7

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    .line 9188
    const/16 v2, 0x26a

    const/4 v1, 0x7

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9189
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 9190
    :cond_3
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_7

    .line 9191
    const/16 v2, 0x152

    const/16 v1, 0x16

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v2, 0x168

    const/16 v1, 0x1d

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9192
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "pHnkFl6OKiDczaSZ7kyNQTtcle1LaAID"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "tjNu8Z6lXKSS470aAqEffOAca4mElS9L"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v2, 0x2ab

    const/16 v1, 0x8

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v5, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    .line 9193
    const/16 v4, 0x2b3

    const/16 v3, 0xc

    sget-object v1, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "Jc1fcbrRh0KuGNYSsz74P0G7f4bQzJTp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x7

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    .line 9194
    const/16 v2, 0x2bf

    const/4 v1, 0x7

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    .line 9195
    const/16 v2, 0x2dc

    const/4 v1, 0x7

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9196
    :cond_6
    const/4 v0, 0x1

    return v0

    .line 9197
    :cond_7
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "G7QkenLvHoaEyWpEzT5ps"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0Y()J
    .locals 2

    .line 9198
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static A0Z(Lcom/facebook/ads/redexgen/X/Vt;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 3

    .line 9199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vt;->A02:Lcom/facebook/ads/redexgen/X/BY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BY;->A02()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object p0

    .line 9200
    .local p0, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    if-nez p1, :cond_0

    .line 9201
    return-object p0

    .line 9202
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    .line 9203
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 9204
    :cond_1
    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v1, 0x0

    aget v0, v2, v1

    add-int/2addr v0, p1

    aput v0, v2, v1

    .line 9205
    return-object p0
.end method

.method public static A0a(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/3c;->A0d:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "VsSmkbUu9Ut2yhF4kttv8SNBDTU7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    xor-int/2addr v3, p2

    xor-int/lit8 v0, v3, 0x55

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0b(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 9206
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 9207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 9208
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0S:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private A0c(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 9209
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 9210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 9211
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0T:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private A0d()V
    .locals 2

    .line 9212
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 9213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0S:[Ljava/nio/ByteBuffer;

    .line 9214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0T:[Ljava/nio/ByteBuffer;

    .line 9215
    :cond_0
    return-void
.end method

.method private A0e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9216
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 9217
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1J()V

    .line 9218
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1L()V

    .line 9219
    :goto_0
    return-void

    .line 9220
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0N:Z

    .line 9221
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1K()V

    goto :goto_0
.end method

.method private A0f()V
    .locals 4

    .line 9222
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 9223
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "AEznwM623vgO83BzHcnR8AfN0Kl3Oi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0T:[Ljava/nio/ByteBuffer;

    .line 9224
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0g()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 9226
    .local p0, "format":Landroid/media/MediaFormat;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A00:I

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 9227
    const/16 v2, 0x2e3

    const/4 v1, 0x5

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x20

    if-ne v0, v5, :cond_1

    .line 9228
    const/16 v6, 0x2cc

    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "9NZZLf24lTrxJ8etv7rDIm8cxlCI85n2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "IViLSAC7Dz3z1jTfZ7FSonjcLFOoOsAA"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v1, 0x6

    const/16 v0, 0x2c

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 9229
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3c;->A0O:Z

    .line 9230
    return-void

    .line 9231
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0I:Z

    if-eqz v0, :cond_2

    .line 9232
    const/16 v2, 0x278

    const/16 v1, 0xd

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9233
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/3c;->A1N(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 9234
    return-void
.end method

.method private A0h()V
    .locals 2

    .line 9235
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 9236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0S:[Ljava/nio/ByteBuffer;

    .line 9237
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0T:[Ljava/nio/ByteBuffer;

    .line 9238
    :cond_0
    return-void
.end method

.method private A0i()V
    .locals 2

    .line 9239
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A03:I

    .line 9240
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    .line 9241
    return-void
.end method

.method private A0j()V
    .locals 1

    .line 9242
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A04:I

    .line 9243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0B:Ljava/nio/ByteBuffer;

    .line 9244
    return-void
.end method

.method public static A0k()V
    .locals 1

    const/16 v0, 0x2e8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3c;->A0d:[B

    return-void

    :array_0
    .array-data 1
        0x66t
        0x6at
        0x28t
        0x3ft
        0x3et
        0x6at
        0x24t
        0x25t
        0x6at
        0x39t
        0x2ft
        0x29t
        0x3ft
        0x38t
        0x2ft
        0x6at
        0x2et
        0x2ft
        0x29t
        0x25t
        0x2et
        0x2ft
        0x38t
        0x6at
        0x2bt
        0x3ct
        0x2bt
        0x23t
        0x26t
        0x2bt
        0x28t
        0x26t
        0x2ft
        0x64t
        0x6at
        0x1et
        0x38t
        0x33t
        0x23t
        0x24t
        0x2dt
        0x6at
        0x3et
        0x25t
        0x6at
        0x3at
        0x38t
        0x25t
        0x29t
        0x2ft
        0x2ft
        0x2et
        0x6at
        0x3dt
        0x23t
        0x3et
        0x22t
        0x6at
        0x70t
        0x6bt
        0x6bt
        0x6bt
        0x6bt
        0x6bt
        0x6at
        0x6dt
        0x6ct
        0x6ft
        0x69t
        0x18t
        0x6bt
        0x6bt
        0x19t
        0x1ft
        0x1at
        0x69t
        0x6et
        0x62t
        0x6bt
        0x6bt
        0x6bt
        0x6bt
        0x6bt
        0x6bt
        0x6at
        0x6dt
        0x63t
        0x18t
        0x1et
        0x6bt
        0x1dt
        0x6at
        0x68t
        0x69t
        0x6bt
        0x6bt
        0x6bt
        0x6bt
        0x6bt
        0x6bt
        0x6at
        0x6dt
        0x6et
        0x63t
        0x63t
        0x63t
        0x6ft
        0x6bt
        0x1ft
        0x18t
        0x1et
        0x6ct
        0x6at
        0x6at
        0x63t
        0x1at
        0x6bt
        0x6bt
        0x6bt
        0x69t
        0x1dt
        0x19t
        0x1dt
        0x6at
        0x18t
        0x68t
        0x6at
        0x18t
        0x68t
        0x69t
        0x6ct
        0x6et
        0x1ft
        0x6ct
        0x63t
        0x2ct
        0x2bt
        0x39t
        0x2ft
        0x7dt
        0x7at
        0x68t
        0x71t
        0x44t
        0x43t
        0x51t
        0x56t
        0x54t
        0x78t
        0x74t
        0x6ft
        0x7at
        0x7bt
        0x19t
        0x2ft
        0x30t
        0x7dt
        0x2et
        0x38t
        0x2et
        0x2et
        0x34t
        0x32t
        0x33t
        0x7dt
        0x2ft
        0x38t
        0x2ct
        0x28t
        0x34t
        0x2ft
        0x38t
        0x2et
        0x7dt
        0x2et
        0x38t
        0x3et
        0x28t
        0x2ft
        0x38t
        0x7dt
        0x39t
        0x38t
        0x3et
        0x32t
        0x39t
        0x38t
        0x2ft
        0x7dt
        0x3bt
        0x32t
        0x2ft
        0x7dt
        0x6at
        0x42t
        0x43t
        0x4et
        0x46t
        0x7t
        0x55t
        0x42t
        0x56t
        0x52t
        0x4et
        0x55t
        0x42t
        0x54t
        0x7t
        0x46t
        0x7t
        0x63t
        0x55t
        0x4at
        0x74t
        0x42t
        0x54t
        0x54t
        0x4et
        0x48t
        0x49t
        0x6at
        0x46t
        0x49t
        0x46t
        0x40t
        0x42t
        0x55t
        0x15t
        0x3dt
        0x3ct
        0x31t
        0x39t
        0x1bt
        0x37t
        0x3ct
        0x3dt
        0x3bt
        0xat
        0x3dt
        0x36t
        0x3ct
        0x3dt
        0x2at
        0x3dt
        0x2at
        0x75t
        0x77t
        0x62t
        0x14t
        0x7ft
        0x42t
        0x43t
        0x54t
        0x55t
        0x49t
        0x14t
        0x5bt
        0x4ct
        0x59t
        0x14t
        0x5et
        0x5ft
        0x59t
        0x4et
        0x4ct
        0x59t
        0x2ft
        0x44t
        0x79t
        0x78t
        0x6ft
        0x6et
        0x72t
        0x2ft
        0x60t
        0x77t
        0x62t
        0x2ft
        0x65t
        0x64t
        0x62t
        0x2ft
        0x72t
        0x64t
        0x62t
        0x74t
        0x73t
        0x64t
        0x43t
        0x41t
        0x54t
        0x22t
        0x41t
        0x58t
        0x47t
        0x22t
        0x4dt
        0x59t
        0x48t
        0x45t
        0x43t
        0x22t
        0x48t
        0x49t
        0x4ft
        0x43t
        0x48t
        0x49t
        0x5et
        0x22t
        0x41t
        0x5ct
        0x3ft
        0x54t
        0x56t
        0x43t
        0x35t
        0x56t
        0x4ft
        0x50t
        0x35t
        0x4dt
        0x52t
        0x5ft
        0x5et
        0x54t
        0x35t
        0x5ft
        0x5et
        0x58t
        0x54t
        0x5ft
        0x5et
        0x49t
        0x35t
        0x5at
        0x4dt
        0x58t
        0x4dt
        0x4ft
        0x5at
        0x2ct
        0x4ct
        0x74t
        0x6bt
        0x66t
        0x6bt
        0x63t
        0x2ct
        0x6at
        0x30t
        0x34t
        0x36t
        0x2ct
        0x66t
        0x67t
        0x61t
        0x6dt
        0x66t
        0x67t
        0x7ct
        0x7et
        0x6bt
        0x1dt
        0x7dt
        0x45t
        0x5at
        0x57t
        0x5at
        0x52t
        0x1dt
        0x5bt
        0x1t
        0x5t
        0x7t
        0x1dt
        0x57t
        0x56t
        0x50t
        0x5ct
        0x57t
        0x56t
        0x1dt
        0x40t
        0x56t
        0x50t
        0x46t
        0x41t
        0x56t
        0x48t
        0x4at
        0x5ft
        0x29t
        0x54t
        0x42t
        0x44t
        0x29t
        0x66t
        0x71t
        0x64t
        0x29t
        0x63t
        0x62t
        0x64t
        0x47t
        0x45t
        0x50t
        0x26t
        0x5bt
        0x4dt
        0x4bt
        0x26t
        0x69t
        0x7et
        0x6bt
        0x26t
        0x6ct
        0x6dt
        0x6bt
        0x26t
        0x7bt
        0x6dt
        0x6bt
        0x7dt
        0x7at
        0x6dt
        0x78t
        0x7at
        0x6ft
        0x19t
        0x56t
        0x5bt
        0x5bt
        0x40t
        0x5et
        0x59t
        0x59t
        0x52t
        0x45t
        0x19t
        0x41t
        0x5et
        0x53t
        0x52t
        0x58t
        0x19t
        0x53t
        0x52t
        0x54t
        0x58t
        0x53t
        0x52t
        0x45t
        0x19t
        0x56t
        0x41t
        0x54t
        0x49t
        0x4bt
        0x5et
        0x28t
        0x67t
        0x6bt
        0x6at
        0x69t
        0x61t
        0x6ft
        0x65t
        0x28t
        0x67t
        0x70t
        0x65t
        0x28t
        0x62t
        0x63t
        0x65t
        0x69t
        0x62t
        0x63t
        0x74t
        0x28t
        0x67t
        0x71t
        0x63t
        0x75t
        0x69t
        0x6bt
        0x63t
        0x19t
        0x1bt
        0xet
        0x78t
        0x37t
        0x3bt
        0x3at
        0x39t
        0x31t
        0x3ft
        0x35t
        0x78t
        0x37t
        0x20t
        0x35t
        0x78t
        0x32t
        0x33t
        0x35t
        0x39t
        0x32t
        0x33t
        0x24t
        0x78t
        0x37t
        0x21t
        0x33t
        0x25t
        0x39t
        0x3bt
        0x33t
        0x78t
        0x25t
        0x33t
        0x35t
        0x23t
        0x24t
        0x33t
        0x1et
        0x1ct
        0x9t
        0x7ft
        0x36t
        0x3et
        0x3et
        0x36t
        0x3dt
        0x34t
        0x7ft
        0x30t
        0x30t
        0x32t
        0x7ft
        0x35t
        0x34t
        0x32t
        0x3et
        0x35t
        0x34t
        0x23t
        0x33t
        0x31t
        0x24t
        0x52t
        0x1bt
        0x13t
        0x13t
        0x1bt
        0x10t
        0x19t
        0x52t
        0xat
        0x13t
        0xet
        0x1et
        0x15t
        0xft
        0x52t
        0x18t
        0x19t
        0x1ft
        0x13t
        0x18t
        0x19t
        0xet
        0x5ft
        0x5dt
        0x48t
        0x3et
        0x62t
        0x7bt
        0x3et
        0x66t
        0x79t
        0x74t
        0x75t
        0x7ft
        0x4ft
        0x74t
        0x75t
        0x73t
        0x7ft
        0x74t
        0x75t
        0x62t
        0x3et
        0x71t
        0x66t
        0x73t
        0x64t
        0x7at
        0x1at
        0x76t
        0x2t
        0x6t
        0x7t
        0x4ct
        0x52t
        0x32t
        0x5et
        0x2at
        0x2dt
        0x2ft
        0x41t
        0x5ft
        0x3ft
        0x55t
        0x2at
        0x22t
        0x22t
        0x4dt
        0x53t
        0x33t
        0x54t
        0x29t
        0x2et
        0x2et
        0x75t
        0x6bt
        0xbt
        0x72t
        0x13t
        0x1et
        0x13t
        0x22t
        0x29t
        0x20t
        0x2ft
        0x2ft
        0x24t
        0x2dt
        0x6ct
        0x22t
        0x2et
        0x34t
        0x2ft
        0x35t
        0x32t
        0x3et
        0x3ft
        0x37t
        0x38t
        0x36t
        0x24t
        0x23t
        0x34t
        0x12t
        0x3et
        0x35t
        0x34t
        0x32t
        0x63t
        0x72t
        0x65t
        0x61t
        0x74t
        0x65t
        0x43t
        0x6ft
        0x64t
        0x65t
        0x63t
        0x3at
        0x23t
        0x35t
        0x26t
        0x2et
        0x29t
        0x6t
        0x29t
        0x23t
        0x1t
        0x22t
        0x22t
        0x23t
        0x6dt
        0x67t
        0x64t
        0x7et
        0x65t
        0x6ft
        0x6et
        0x79t
        0x34t
        0x3et
        0x3dt
        0x27t
        0x3ct
        0x36t
        0x37t
        0x20t
        0xdt
        0x3et
        0x26t
        0x37t
        0x5dt
        0x48t
        0x55t
        0x4ft
        0x4at
        0x5ft
        0x48t
        0x55t
        0x5ft
        0xft
        0xdt
        0xdt
        0xdt
        0x11t
        0x1ct
        0x10t
        0x1et
        0x11t
        0xdt
        0x13t
        0x14t
        0x1t
        0x12t
        0x14t
        0x23t
        0xft
        0x4t
        0x5t
        0x3t
        0x26t
        0x3bt
        0x3et
        0x33t
        0x22t
        0x3bt
        0x33t
        0x7ct
        0x62t
        0x6ft
        0x7ft
        0x63t
    .end array-data
.end method

.method public static A0l()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kBL2UXhBHpViCZeW2F0dZ0to1vCm5oiK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "34u4D"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "S7Jun"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3ZL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4z49WYxyYMkbscheSWMNWyB2bp8GlMH2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "A2xVxwKD7PNiNsmS0mI1bXRcoiTLrKxr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eqAJtjSnOH62ROKzXhXv7PVcLR04FSmY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IU7leir7U7iMkn4kH337t"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    return-void
.end method

.method private A0m(Lcom/facebook/ads/redexgen/X/Dg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9245
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0
.end method

.method private A0n()Z
    .locals 4

    .line 9246
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A05:Ljava/lang/String;

    const/16 v2, 0x93

    const/4 v1, 0x6

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    .line 9247
    const/16 v2, 0x8b

    const/4 v1, 0x4

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    .line 9248
    const/16 v2, 0x87

    const/4 v1, 0x4

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 9249
    :goto_0
    return v0

    .line 9250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0o()Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A02:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A0M:Z

    if-eqz v1, :cond_1

    .line 9252
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3c;
    .end local v1
    .end local v4
    .end local v1
    :cond_0
    return v2

    .line 9253
    :cond_1
    iget v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A03:I

    if-gez v1, :cond_3

    .line 9254
    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A03:I

    .line 9255
    iget v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A03:I

    if-gez v1, :cond_2

    .line 9256
    return v2

    .line 9257
    :cond_2
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3c;->A0b(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    .line 9258
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Vt;->A07()V

    .line 9259
    :cond_3
    iget v7, v0, Lcom/facebook/ads/redexgen/X/3c;->A02:I

    const/4 v1, 0x1

    sget-object v5, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v5, v5, v3

    const/16 v3, 0x14

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v3, 0x34

    if-eq v5, v3, :cond_8

    sget-object v6, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v5, "7LPbkJ8tXQYE6g6WgS0NUrZt8DOECmqb"

    const/4 v3, 0x4

    aput-object v5, v6, v3

    if-ne v7, v1, :cond_5

    .line 9260
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0G:Z

    if-eqz v3, :cond_4

    .line 9261
    :goto_0
    iput v4, v0, Lcom/facebook/ads/redexgen/X/3c;->A02:I

    .line 9262
    return v2

    .line 9263
    :cond_4
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A0K:Z

    .line 9264
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/3c;->A03:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 9265
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0i()V

    goto :goto_0

    .line 9266
    :cond_5
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0C:Z

    if-eqz v3, :cond_a

    .line 9267
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/3c;->A0C:Z

    .line 9268
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0f:[B

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9269
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/3c;->A03:I

    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0f:[B

    array-length v6, v2

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 9270
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0i()V

    .line 9271
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A0J:Z

    .line 9272
    return v1

    .line 9273
    .end local v4
    :cond_6
    iput v4, v0, Lcom/facebook/ads/redexgen/X/3c;->A01:I

    .line 9274
    :cond_7
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 9275
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/3c;->A0W:Lcom/facebook/ads/redexgen/X/AD;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    sget-object v7, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v6, v7, v3

    const/4 v3, 0x5

    aget-object v7, v7, v3

    const/16 v3, 0x17

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v6, v3, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v7, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v6, "VfxTjONBNyuv5Lm3bUn6pRowrz2LrgCd"

    const/4 v3, 0x0

    aput-object v6, v7, v3

    invoke-virtual {v0, v9, v8, v2}, Lcom/facebook/ads/redexgen/X/Dh;->A13(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;Z)I

    move-result v6

    goto :goto_1

    .line 9276
    :cond_a
    const/4 v5, 0x0

    .line 9277
    .local p0, "adaptiveReconfigurationBytes":I
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0R:Z

    if-eqz v3, :cond_b

    .line 9278
    const/4 v6, -0x4

    .line 9279
    .local v4, "result":I
    .end local p0    # "adaptiveReconfigurationBytes":I
    .local v4, "result":I
    .local v1, "adaptiveReconfigurationBytes":I
    :goto_1
    const/4 v3, -0x3

    if-ne v6, v3, :cond_c

    .line 9280
    return v2

    .line 9281
    .end local v4    # "result":I
    :cond_b
    iget v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A01:I

    if-ne v3, v1, :cond_7

    .line 9282
    const/4 v6, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v3, v3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_6

    .line 9283
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v3, v3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 9284
    .local v1, "data":[B
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9285
    .end local v1    # "data":[B
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 9286
    :cond_c
    const/4 v3, -0x5

    if-ne v6, v3, :cond_e

    .line 9287
    iget v2, v0, Lcom/facebook/ads/redexgen/X/3c;->A01:I

    if-ne v2, v4, :cond_d

    .line 9288
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Vt;->A07()V

    .line 9289
    iput v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A01:I

    .line 9290
    :cond_d
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3c;->A0W:Lcom/facebook/ads/redexgen/X/AD;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3c;->A1O(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 9291
    return v1

    .line 9292
    :cond_e
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 9293
    iget v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A01:I

    if-ne v3, v4, :cond_10

    .line 9294
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    sget-object v5, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v4, v5, v3

    const/4 v3, 0x2

    aget-object v3, v5, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f
    sget-object v5, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v4, "7Ogy2TGxuc4fh0t6ko60JMEcE3QgeXnO"

    const/4 v3, 0x6

    aput-object v4, v5, v3

    const-string v4, "NnFgGLb5OUY3egABMMpS9s8c8C66SCZM"

    const/4 v3, 0x5

    aput-object v4, v5, v3

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Vt;->A07()V

    .line 9295
    iput v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A01:I

    .line 9296
    :cond_10
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A0M:Z

    .line 9297
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0J:Z

    if-nez v3, :cond_11

    .line 9298
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0e()V

    .line 9299
    return v2

    .line 9300
    :cond_11
    :try_start_0
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0G:Z

    if-eqz v3, :cond_12

    goto :goto_3

    .line 9301
    :cond_12
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A0K:Z

    .line 9302
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/3c;->A03:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 9303
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0i()V

    .line 9304
    :goto_3
    return v2
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9305
    :catch_0
    move-exception v1

    .line 9306
    .local p0, "e":Landroid/media/MediaCodec$CryptoException;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0

    .line 9307
    .end local p0    # "e":Landroid/media/MediaCodec$CryptoException;
    :cond_13
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0Q:Z

    if-eqz v3, :cond_15

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/BV;->A05()Z

    move-result v3

    if-nez v3, :cond_15

    .line 9308
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Vt;->A07()V

    .line 9309
    iget v2, v0, Lcom/facebook/ads/redexgen/X/3c;->A01:I

    if-ne v2, v4, :cond_14

    .line 9310
    iput v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A01:I

    .line 9311
    :cond_14
    return v1

    .line 9312
    :cond_15
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/3c;->A0Q:Z

    .line 9313
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vt;->A0A()Z

    move-result v6

    .line 9314
    .local v1, "bufferEncrypted":Z
    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/3c;->A0y(Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0R:Z

    .line 9315
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0R:Z

    if-eqz v3, :cond_16

    .line 9316
    return v2

    .line 9317
    :cond_16
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0D:Z

    if-eqz v3, :cond_18

    if-nez v6, :cond_18

    .line 9318
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/II;->A0B(Ljava/nio/ByteBuffer;)V

    .line 9319
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_17

    .line 9320
    return v1

    .line 9321
    :cond_17
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/3c;->A0D:Z

    .line 9322
    :cond_18
    :try_start_1
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    iget-wide v7, v3, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    .line 9323
    .local v1, "presentationTimeUs":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/BV;->A03()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 9324
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/3c;->A0b:Ljava/util/List;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9325
    :cond_19
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vt;->A08()V

    .line 9326
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/3c;->A1P(Lcom/facebook/ads/redexgen/X/Vt;)V

    .line 9327
    if-eqz v6, :cond_1a

    goto :goto_4

    .line 9328
    :cond_1a
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    iget v10, v0, Lcom/facebook/ads/redexgen/X/3c;->A03:I

    const/4 v11, 0x0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    const/4 v15, 0x0

    move-wide v13, v7

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_5

    .line 9329
    :goto_4
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A0X:Lcom/facebook/ads/redexgen/X/Vt;

    .line 9330
    invoke-static {v3, v5}, Lcom/facebook/ads/redexgen/X/3c;->A0Z(Lcom/facebook/ads/redexgen/X/Vt;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v6

    .line 9331
    .local v1, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/3c;->A03:I

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 9332
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0i()V

    .line 9333
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3c;->A0J:Z

    .line 9334
    iput v2, v0, Lcom/facebook/ads/redexgen/X/3c;->A01:I

    .line 9335
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Ba;->A04:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Ba;->A04:I

    .line 9336
    .end local v1    # "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    return v1
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9337
    :catch_1
    move-exception v1

    .line 9338
    .restart local p0    # "e":Landroid/media/MediaCodec$CryptoException;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0
.end method

.method private A0p()Z
    .locals 1

    .line 9339
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A04:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0q(J)Z
    .locals 6

    .line 9340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 9341
    .local p0, "size":I
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 9342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "K8cnuzHBxLg5pMbERI7MXkFocwIYLdSy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_1

    .line 9343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9344
    const/4 v0, 0x1

    return v0

    .line 9345
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9346
    .end local p1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private A0r(JJ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9347
    move-object/from16 v3, p0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0p()Z

    move-result v0

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    .line 9348
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0F:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0K:Z

    if-eqz v0, :cond_1

    .line 9349
    :try_start_0
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    .line 9350
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0Y()J

    move-result-wide v0

    invoke-virtual {v5, v4, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9351
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3c;
    .local p0, "e":Ljava/lang/IllegalStateException;
    :catch_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0e()V

    .line 9352
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0N:Z

    if-eqz v0, :cond_0

    .line 9353
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A1J()V

    .line 9354
    :cond_0
    return v2

    .line 9355
    .end local p0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    .line 9356
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0Y()J

    move-result-wide v0

    invoke-virtual {v5, v4, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 9357
    .local p0, "outputIndex":I
    :goto_0
    if-ltz v1, :cond_3

    .line 9358
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0O:Z

    if-eqz v0, :cond_2

    .line 9359
    iput-boolean v2, v3, Lcom/facebook/ads/redexgen/X/3c;->A0O:Z

    .line 9360
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 9361
    return v6

    .line 9362
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_8

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 9363
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0e()V

    .line 9364
    return v2

    .line 9365
    :cond_3
    const/4 v0, -0x2

    if-ne v1, v0, :cond_4

    .line 9366
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0g()V

    .line 9367
    return v6

    .line 9368
    :cond_4
    const/4 v0, -0x3

    if-ne v1, v0, :cond_5

    .line 9369
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0f()V

    .line 9370
    return v6

    .line 9371
    :cond_5
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0G:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0M:Z

    if-nez v0, :cond_6

    iget v1, v3, Lcom/facebook/ads/redexgen/X/3c;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    .line 9372
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0e()V

    .line 9373
    :cond_7
    return v2

    .line 9374
    :cond_8
    iput v1, v3, Lcom/facebook/ads/redexgen/X/3c;->A04:I

    .line 9375
    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/3c;->A0c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0B:Ljava/nio/ByteBuffer;

    .line 9376
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/3c;->A0B:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_9

    .line 9377
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9378
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/3c;->A0B:Ljava/nio/ByteBuffer;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v0

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9379
    :cond_9
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/3c;->A0q(J)Z

    move-result v0

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0P:Z

    .line 9380
    .end local p0    # "outputIndex":I
    :cond_a
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0F:Z

    move-wide/from16 v10, p3

    move-wide/from16 v8, p1

    if-eqz v0, :cond_c

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0K:Z

    if-eqz v0, :cond_c

    .line 9381
    :try_start_1
    iget-object v12, v3, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    iget-object v13, v3, Lcom/facebook/ads/redexgen/X/3c;->A0B:Ljava/nio/ByteBuffer;

    iget v14, v3, Lcom/facebook/ads/redexgen/X/3c;->A04:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v4, v3, Lcom/facebook/ads/redexgen/X/3c;->A0P:Z

    .line 9382
    move-object/from16 v7, p0

    move-wide/from16 v16, v0

    move/from16 v18, v4

    invoke-virtual/range {v7 .. v18}, Lcom/facebook/ads/redexgen/X/3c;->A1S(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9383
    .end local p0
    .local p0, "e":Ljava/lang/IllegalStateException;
    :catch_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0e()V

    .line 9384
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0N:Z

    if-eqz v0, :cond_b

    .line 9385
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A1J()V

    .line 9386
    :cond_b
    return v2

    .line 9387
    .end local p0    # "e":Ljava/lang/IllegalStateException;
    :cond_c
    iget-object v12, v3, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    iget-object v13, v3, Lcom/facebook/ads/redexgen/X/3c;->A0B:Ljava/nio/ByteBuffer;

    iget v14, v3, Lcom/facebook/ads/redexgen/X/3c;->A04:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v4, v3, Lcom/facebook/ads/redexgen/X/3c;->A0P:Z

    .line 9388
    move-object/from16 v7, p0

    move-wide/from16 v16, v0

    move/from16 v18, v4

    invoke-virtual/range {v7 .. v18}, Lcom/facebook/ads/redexgen/X/3c;->A1S(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    .line 9389
    .local p0, "processedOutputBuffer":Z
    :goto_1
    if-eqz v0, :cond_f

    .line 9390
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/3c;->A1M(J)V

    .line 9391
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/3c;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    .line 9392
    .local v8, "isEndOfStream":Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0j()V

    .line 9393
    if-nez v0, :cond_e

    .line 9394
    return v6

    .line 9395
    :cond_d
    const/4 v0, 0x0

    goto :goto_2

    .line 9396
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3c;->A0e()V

    .line 9397
    .end local v8    # "isEndOfStream":Z
    :cond_f
    return v2
.end method

.method public static A0s(Lcom/facebook/ads/redexgen/X/De;)Z
    .locals 4

    .line 9398
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/De;->A02:Ljava/lang/String;

    .line 9399
    .local p0, "name":Ljava/lang/String;
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x11

    if-gt v1, v0, :cond_0

    .line 9400
    const/16 v2, 0x23d

    const/16 v1, 0x18

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9401
    const/16 v2, 0x1aa

    const/16 v1, 0x1f

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "ufoh0WCuzE6hjizmAeUlKUbGR2cEeOrX"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A05:Ljava/lang/String;

    .line 9402
    const/16 v2, 0x93

    const/4 v1, 0x6

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    const/16 v2, 0x8f

    const/4 v1, 0x4

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/De;->A05:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 9403
    :goto_0
    return v0

    .line 9404
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0t(Ljava/lang/String;)Z
    .locals 4

    .line 9405
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x17

    if-gt v1, v0, :cond_0

    const/16 v2, 0x224

    const/16 v1, 0x19

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x13

    if-gt v1, v0, :cond_4

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    .line 9406
    const/16 v2, 0x2c6

    const/4 v1, 0x6

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9407
    const/16 v2, 0x1c9

    const/16 v1, 0x1f

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "c8L0nm4gaBrQ1IcY2SU4HyQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 9408
    const/16 v2, 0x1e8

    const/16 v1, 0x26

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    if-eqz v3, :cond_4

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 9409
    :goto_1
    return v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "AcFdA4MXXl4FRerQV0DdpdWUgGCAQedJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    goto :goto_0

    .line 9410
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static A0u(Ljava/lang/String;)Z
    .locals 3

    .line 9411
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-ne v1, v0, :cond_0

    const/16 v2, 0x20e

    const/16 v1, 0x16

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0v(Ljava/lang/String;)Z
    .locals 5

    .line 9412
    sget v0, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v4, 0x12

    if-lt v0, v4, :cond_2

    sget v3, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "4p7dusAKXKbK2e5BBlPFXBp42L5m1T86"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_1

    .line 9413
    const/16 v2, 0x185

    const/16 v1, 0xf

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v2, 0x194

    const/16 v1, 0x16

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x13

    if-ne v1, v0, :cond_3

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    .line 9414
    const/16 v2, 0x263

    const/4 v1, 0x7

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9415
    const/16 v2, 0xf5

    const/16 v1, 0x12

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v2, 0x107

    const/16 v1, 0x19

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 9416
    :goto_0
    return v0

    .line 9417
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0w(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/Format;)Z
    .locals 3

    .line 9418
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    .line 9419
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9420
    const/16 v2, 0x139

    const/16 v1, 0x19

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 9421
    :goto_0
    return v0

    .line 9422
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0x(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/Format;)Z
    .locals 4

    .line 9423
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/4 v3, 0x1

    const/16 v0, 0x12

    if-gt v1, v0, :cond_0

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    if-ne v0, v3, :cond_0

    .line 9424
    const/16 v2, 0x120

    const/16 v1, 0x19

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9425
    :goto_0
    return v3

    .line 9426
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private A0y(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0c:Z

    if-eqz v0, :cond_1

    .line 9428
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3c;
    :cond_0
    return v2

    .line 9429
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bz;->A7H()I

    move-result v1

    .line 9430
    .local p0, "drmSessionState":I
    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    .line 9431
    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 9432
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bz;->A6P()Lcom/facebook/ads/redexgen/X/Bx;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public A15()V
    .locals 4

    .line 9433
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 9434
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1J()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 9435
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    if-eqz v0, :cond_0

    .line 9436
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C0;->AD5(Lcom/facebook/ads/redexgen/X/Bz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9437
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    if-eq v1, v0, :cond_1

    .line 9438
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C0;->AD5(Lcom/facebook/ads/redexgen/X/Bz;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9439
    :cond_1
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9440
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9441
    return-void

    .line 9442
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9443
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9444
    throw v0

    .line 9445
    :catchall_1
    move-exception v2

    .line 9446
    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    if-eq v1, v0, :cond_2

    .line 9447
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C0;->AD5(Lcom/facebook/ads/redexgen/X/Bz;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 9448
    :cond_2
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9449
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9450
    throw v2

    .line 9451
    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9452
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9453
    throw v0

    .line 9454
    :catchall_3
    move-exception v2

    .line 9455
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    if-eqz v0, :cond_3

    .line 9456
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C0;->AD5(Lcom/facebook/ads/redexgen/X/Bz;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 9457
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    if-eq v1, v0, :cond_4

    .line 9458
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C0;->AD5(Lcom/facebook/ads/redexgen/X/Bz;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 9459
    :cond_4
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9460
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9461
    throw v2

    .line 9462
    :catchall_4
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9463
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9464
    throw v0

    .line 9465
    :catchall_5
    move-exception v2

    .line 9466
    :try_start_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    if-eq v1, v0, :cond_5

    .line 9467
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C0;->AD5(Lcom/facebook/ads/redexgen/X/Bz;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 9468
    :cond_5
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9469
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9470
    throw v2

    .line 9471
    :catchall_6
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9472
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9473
    throw v0
.end method

.method public A16()V
    .locals 0

    .line 9474
    return-void
.end method

.method public A17()V
    .locals 0

    .line 9475
    return-void
.end method

.method public A18(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0M:Z

    .line 9477
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0N:Z

    .line 9478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 9479
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1I()V

    .line 9480
    :cond_0
    return-void
.end method

.method public A19(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9481
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ba;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ba;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    .line 9482
    return-void
.end method

.method public A1D(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 1

    .line 9483
    const/4 v0, 0x0

    return v0
.end method

.method public abstract A1E(Lcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Dk;",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dn;
        }
    .end annotation
.end method

.method public final A1F()Landroid/media/MediaCodec;
    .locals 1

    .line 9484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public final A1G()Lcom/facebook/ads/redexgen/X/De;
    .locals 1

    .line 9485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    return-object v0
.end method

.method public A1H(Lcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/internal/exoplayer2/Format;Z)Lcom/facebook/ads/redexgen/X/De;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dn;
        }
    .end annotation

    .line 9486
    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lcom/facebook/ads/redexgen/X/Dk;->A6E(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/De;

    move-result-object v0

    return-object v0
.end method

.method public A1I()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9487
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A05:J

    .line 9488
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3c;->A0i()V

    .line 9489
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3c;->A0j()V

    .line 9490
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Q:Z

    .line 9491
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0R:Z

    .line 9492
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0P:Z

    .line 9493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9494
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0C:Z

    .line 9495
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0O:Z

    .line 9496
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0H:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0E:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0K:Z

    if-eqz v0, :cond_2

    .line 9497
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1J()V

    .line 9498
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1L()V

    .line 9499
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0L:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-eqz v0, :cond_1

    .line 9500
    iput v2, p0, Lcom/facebook/ads/redexgen/X/3c;->A01:I

    .line 9501
    :cond_1
    return-void

    .line 9502
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A02:I

    if-eqz v0, :cond_3

    .line 9503
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1J()V

    .line 9504
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1L()V

    goto :goto_0

    .line 9505
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 9506
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0J:Z

    goto :goto_0
.end method

.method public A1J()V
    .locals 4

    .line 9507
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A05:J

    .line 9508
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3c;->A0i()V

    .line 9509
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3c;->A0j()V

    .line 9510
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0R:Z

    .line 9511
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0P:Z

    .line 9512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9513
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3c;->A0h()V

    .line 9514
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    .line 9515
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0L:Z

    .line 9516
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0J:Z

    .line 9517
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0D:Z

    .line 9518
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0H:Z

    .line 9519
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A00:I

    .line 9520
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0G:Z

    .line 9521
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0E:Z

    .line 9522
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0I:Z

    .line 9523
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0C:Z

    .line 9524
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0O:Z

    .line 9525
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0K:Z

    .line 9526
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A01:I

    .line 9527
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A02:I

    .line 9528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 9529
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A01:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A01:I

    .line 9530
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 9531
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9532
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    .line 9533
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    if-eq v0, v1, :cond_3

    .line 9534
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/C0;->AD5(Lcom/facebook/ads/redexgen/X/Bz;)V

    goto :goto_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9535
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9536
    throw v0

    .line 9537
    :catchall_1
    move-exception v2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    .line 9538
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    if-eq v0, v1, :cond_0

    .line 9539
    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/C0;->AD5(Lcom/facebook/ads/redexgen/X/Bz;)V

    goto :goto_0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 9540
    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9541
    throw v0

    .line 9542
    :goto_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9543
    :cond_0
    throw v2

    .line 9544
    :catchall_3
    move-exception v2

    .line 9545
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 9546
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    .line 9547
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    if-eq v0, v1, :cond_1

    .line 9548
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/C0;->AD5(Lcom/facebook/ads/redexgen/X/Bz;)V

    goto :goto_1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 9549
    :catchall_4
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9550
    throw v0

    .line 9551
    :goto_1
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9552
    :cond_1
    throw v2

    .line 9553
    :catchall_5
    move-exception v2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    .line 9554
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    if-eq v0, v1, :cond_2

    .line 9555
    :try_start_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/C0;->AD5(Lcom/facebook/ads/redexgen/X/Bz;)V

    goto :goto_2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 9556
    :catchall_6
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9557
    throw v0

    .line 9558
    :goto_2
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9559
    :cond_2
    throw v2

    .line 9560
    :goto_3
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9561
    :cond_3
    return-void
.end method

.method public A1K()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9562
    return-void
.end method

.method public final A1L()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-nez v1, :cond_1

    .line 9564
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3c;
    .end local v0
    .end local v1
    .end local v0
    :cond_0
    return-void

    .line 9565
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9566
    iget-object v8, v1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 9567
    .local p0, "mimeType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 9568
    .local v0, "wrappedMediaCrypto":Landroid/media/MediaCrypto;
    const/4 v3, 0x0

    .line 9569
    .local v1, "drmSessionRequiresSecureDecoder":Z
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "AmPkNOfoV6ElUlEvYFIYgjRcKIm8iRES"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "d1fS27a068Q3rc3mGjJbXHRcgaPJKi3b"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v4, 0x1

    if-eqz v6, :cond_6

    .line 9570
    invoke-interface {v6}, Lcom/facebook/ads/redexgen/X/Bz;->A6l()Lcom/facebook/ads/redexgen/X/C1;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vn;

    .line 9571
    .local v0, "mediaCrypto":Lcom/facebook/ads/redexgen/X/Vn;
    if-nez v0, :cond_3

    .line 9572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bz;->A6P()Lcom/facebook/ads/redexgen/X/Bx;

    move-result-object v0

    .line 9573
    .local v5, "drmError":Lcom/facebook/ads/redexgen/X/Bx;
    if-eqz v0, :cond_5

    .line 9574
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3c;->A0n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bz;->A7H()I

    move-result v1

    .line 9576
    .local v5, "drmSessionState":I
    if-eq v1, v4, :cond_4

    .line 9577
    const/4 v0, 0x4

    if-eq v1, v0, :cond_6

    .line 9578
    return-void

    .line 9579
    .end local v5    # "drmSessionState":I
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vn;->A00()Landroid/media/MediaCrypto;

    move-result-object v5

    .line 9580
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Vn;->A01(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 9581
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bz;->A6P()Lcom/facebook/ads/redexgen/X/Bx;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0

    .line 9582
    .restart local v5    # "drmSessionState":I
    :cond_5
    return-void

    .line 9583
    .end local v0    # "mediaCrypto":Lcom/facebook/ads/redexgen/X/Vn;
    .end local v5    # "drmSessionState":I
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    if-nez v0, :cond_8

    .line 9584
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0a:Lcom/facebook/ads/redexgen/X/Dk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/3c;->A1H(Lcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/internal/exoplayer2/Format;Z)Lcom/facebook/ads/redexgen/X/De;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    .line 9585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    if-nez v0, :cond_7

    if-eqz v3, :cond_7

    .line 9586
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3c;->A0a:Lcom/facebook/ads/redexgen/X/Dk;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A1H(Lcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/internal/exoplayer2/Format;Z)Lcom/facebook/ads/redexgen/X/De;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    .line 9587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    if-eqz v0, :cond_7

    .line 9588
    const/16 v2, 0xe3

    const/16 v1, 0x12

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x99

    const/16 v1, 0x28

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x3a

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/De;->A02:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    const/4 v1, 0x1

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Dn; {:try_start_0 .. :try_end_0} :catch_0

    .line 9589
    :catch_0
    move-exception v6

    .line 9590
    .local v0, "e":Lcom/facebook/ads/redexgen/X/Dn;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    const v1, -0xc34e

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dg;

    invoke-direct {v0, v2, v6, v3, v1}, Lcom/facebook/ads/redexgen/X/Dg;-><init>(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0m(Lcom/facebook/ads/redexgen/X/Dg;)V

    .line 9591
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/Dn;
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    if-nez v0, :cond_8

    .line 9592
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    const/4 v2, 0x0

    const v1, -0xc34f

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dg;

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/Dg;-><init>(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0m(Lcom/facebook/ads/redexgen/X/Dg;)V

    .line 9593
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3c;->A1T(Lcom/facebook/ads/redexgen/X/De;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 9594
    return-void

    .line 9595
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/De;->A02:Ljava/lang/String;

    .line 9596
    .local v0, "codecName":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/facebook/ads/redexgen/X/3c;->A0X(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A00:I

    .line 9597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0w(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0D:Z

    .line 9598
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/3c;->A0v(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0H:Z

    .line 9599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3c;->A0s(Lcom/facebook/ads/redexgen/X/De;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0G:Z

    .line 9600
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/3c;->A0t(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0E:Z

    .line 9601
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/3c;->A0u(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0F:Z

    .line 9602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0x(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0I:Z

    .line 9603
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 9604
    .local v0, "codecInitializingTimestamp":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x293

    const/16 v1, 0xc

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IZ;->A02(Ljava/lang/String;)V

    .line 9605
    invoke-static {v9}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    .line 9606
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A00()V

    .line 9607
    const/16 v2, 0x285

    const/16 v1, 0xe

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IZ;->A02(Ljava/lang/String;)V

    .line 9608
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {p0, v2, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/3c;->A1Q(Lcom/facebook/ads/redexgen/X/De;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/Format;Landroid/media/MediaCrypto;)V

    .line 9609
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A00()V

    .line 9610
    const/16 v2, 0x2d2

    const/16 v1, 0xa

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IZ;->A02(Ljava/lang/String;)V

    .line 9611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 9612
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A00()V

    .line 9613
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 9614
    .local v1, "codecInitializedTimestamp":J
    sub-long v12, v10, v7

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/3c;->A1R(Ljava/lang/String;JJ)V

    .line 9615
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3c;->A0d()V

    goto :goto_2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 9616
    :catch_1
    move-exception v2

    .line 9617
    .local v5, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dg;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/facebook/ads/redexgen/X/Dg;-><init>(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0m(Lcom/facebook/ads/redexgen/X/Dg;)V

    .line 9618
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A7H()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_a

    .line 9619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    add-long/2addr v2, v0

    .line 9620
    :goto_3
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3c;->A05:J

    .line 9621
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3c;->A0i()V

    .line 9622
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3c;->A0j()V

    .line 9623
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Q:Z

    .line 9624
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A00:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ba;->A00:I

    .line 9625
    return-void

    .line 9626
    :cond_a
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3
.end method

.method public A1M(J)V
    .locals 0

    .line 9627
    return-void
.end method

.method public A1N(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9628
    return-void
.end method

.method public A1O(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9629
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 9630
    .local p0, "oldFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 9631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v2, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    .line 9632
    const/4 v1, 0x0

    if-nez v3, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    .line 9633
    .local p1, "drmInitDataChanged":Z
    if-eqz v0, :cond_4

    .line 9634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_3

    .line 9635
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    if-eqz v2, :cond_2

    .line 9636
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C0;->A2Q(Landroid/os/Looper;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/redexgen/X/Bz;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9637
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    goto :goto_0

    .line 9638
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "oN7kOUma0aZtKCjRVOfC2nwS"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    if-ne v1, v0, :cond_4

    .line 9639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/C0;->AD5(Lcom/facebook/ads/redexgen/X/Bz;)V

    goto :goto_1

    .line 9640
    :cond_2
    const/16 v2, 0xc1

    const/16 v1, 0x22

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 9641
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()I

    move-result v0

    .line 9642
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0

    .line 9643
    :cond_3
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    .line 9644
    :cond_4
    :goto_1
    const/4 v5, 0x0

    .line 9645
    .local v3, "keepingCodec":Z
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A09:Lcom/facebook/ads/redexgen/X/Bz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A08:Lcom/facebook/ads/redexgen/X/Bz;

    if-ne v1, v0, :cond_6

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    if-eqz v2, :cond_6

    .line 9646
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0A:Lcom/facebook/ads/redexgen/X/De;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/3c;->A1D(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/De;Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v1

    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_b

    const/4 v0, 0x3

    if-ne v1, v0, :cond_c

    .line 9647
    const/4 v5, 0x1

    .line 9648
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3c;->A0L:Z

    .line 9649
    iput v4, p0, Lcom/facebook/ads/redexgen/X/3c;->A01:I

    .line 9650
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A00:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_5

    if-ne v1, v4, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v0, v3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    if-ne v1, v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    iget v0, v3, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    if-ne v1, v0, :cond_a

    :cond_5
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0C:Z

    .line 9651
    :cond_6
    :goto_3
    if-nez v5, :cond_7

    .line 9652
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A0J:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    if-eqz v3, :cond_9

    .line 9653
    :goto_4
    iput v4, p0, Lcom/facebook/ads/redexgen/X/3c;->A02:I

    .line 9654
    :cond_7
    :goto_5
    return-void

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "UFFwkqyrD6au6sc"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_9

    goto :goto_4

    .line 9655
    :cond_9
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1J()V

    .line 9656
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1L()V

    goto :goto_5

    .line 9657
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 9658
    :cond_b
    const/4 v5, 0x1

    .line 9659
    goto :goto_3

    .line 9660
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public A1P(Lcom/facebook/ads/redexgen/X/Vt;)V
    .locals 0

    .line 9661
    return-void
.end method

.method public abstract A1Q(Lcom/facebook/ads/redexgen/X/De;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dn;
        }
    .end annotation
.end method

.method public A1R(Ljava/lang/String;JJ)V
    .locals 0

    .line 9662
    return-void
.end method

.method public abstract A1S(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation
.end method

.method public A1T(Lcom/facebook/ads/redexgen/X/De;)Z
    .locals 1

    .line 9663
    const/4 v0, 0x1

    return v0
.end method

.method public A81()Z
    .locals 1

    .line 9664
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0N:Z

    return v0
.end method

.method public A8B()Z
    .locals 5

    .line 9665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0R:Z

    if-nez v0, :cond_1

    .line 9666
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A1B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9667
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3c;->A0p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A05:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 9668
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A05:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 9669
    :goto_0
    return v0

    .line 9670
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADC(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9671
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0N:Z

    if-eqz v0, :cond_1

    .line 9672
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1K()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_0

    .line 9673
    sget-object v2, Lcom/facebook/ads/redexgen/X/3c;->A0e:[Ljava/lang/String;

    const-string v1, "7FdVVWJpDFLF3gY7bO88K4Ocpn1HdzyZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "gJl1VfioGJbniwAAGbrPMwMcoEpteHIR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9674
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    const/4 v5, -0x4

    const/4 v4, -0x5

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 9675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Y:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vt;->A07()V

    .line 9676
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0W:Lcom/facebook/ads/redexgen/X/AD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Y:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Dh;->A13(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;Z)I

    move-result v0

    .line 9677
    .local p0, "result":I
    if-ne v0, v4, :cond_8

    .line 9678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0W:Lcom/facebook/ads/redexgen/X/AD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3c;->A1O(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 9679
    .end local p0    # "result":I
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3c;->A1L()V

    .line 9680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    .line 9681
    const/16 v2, 0x29f

    const/16 v1, 0xc

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3c;->A0a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IZ;->A02(Ljava/lang/String;)V

    .line 9682
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/3c;->A0r(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 9683
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3c;->A0o()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 9684
    :cond_4
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ba;->A07:I

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dh;->A12(J)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Ba;->A07:I

    .line 9685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Y:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vt;->A07()V

    .line 9686
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3c;->A0W:Lcom/facebook/ads/redexgen/X/AD;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Y:Lcom/facebook/ads/redexgen/X/Vt;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A13(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;Z)I

    move-result v0

    .line 9687
    .restart local p0    # "result":I
    if-ne v0, v4, :cond_5

    .line 9688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0W:Lcom/facebook/ads/redexgen/X/AD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3c;->A1O(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    goto :goto_2

    .line 9689
    :cond_5
    if-ne v0, v5, :cond_7

    .line 9690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Y:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 9691
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A0M:Z

    .line 9692
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3c;->A0e()V

    goto :goto_2

    .line 9693
    :cond_6
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A00()V

    .line 9694
    .end local p0    # "result":I
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0U:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ba;->A00()V

    .line 9695
    return-void

    .line 9696
    :cond_8
    if-ne v0, v5, :cond_9

    .line 9697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Y:Lcom/facebook/ads/redexgen/X/Vt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 9698
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/3c;->A0M:Z

    .line 9699
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3c;->A0e()V

    .line 9700
    return-void

    .line 9701
    :cond_9
    return-void
.end method

.method public final AEI(Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9702
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A0a:Lcom/facebook/ads/redexgen/X/Dk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A0Z:Lcom/facebook/ads/redexgen/X/C0;

    invoke-virtual {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/3c;->A1E(Lcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Dn; {:try_start_0 .. :try_end_0} :catch_0

    .line 9703
    :catch_0
    move-exception v1

    .line 9704
    .local p0, "e":Lcom/facebook/ads/redexgen/X/Dn;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0
.end method

.method public final AEK()I
    .locals 1

    .line 9705
    const/16 v0, 0x8

    return v0
.end method
