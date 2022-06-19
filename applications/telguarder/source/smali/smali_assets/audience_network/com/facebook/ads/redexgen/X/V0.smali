.class public final Lcom/facebook/ads/redexgen/X/V0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/DN;
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:[D


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/CS;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public final A0B:Lcom/facebook/ads/redexgen/X/DN;

.field public final A0C:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 58218
    invoke-static {}, Lcom/facebook/ads/redexgen/X/V0;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/V0;->A02()V

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/V0;->A0F:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 58219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58220
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0C:[Z

    .line 58221
    const/16 v1, 0x80

    new-instance v0, Lcom/facebook/ads/redexgen/X/DN;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/DN;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0B:Lcom/facebook/ads/redexgen/X/DN;

    .line 58222
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/DN;Ljava/lang/String;)Landroid/util/Pair;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/DN;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 58223
    move-object/from16 v3, p0

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/DN;->A02:[B

    iget v0, v3, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    .line 58224
    .local v10, "csdData":[B
    const/4 v4, 0x4

    aget-byte v0, v9, v4

    and-int/lit16 v5, v0, 0xff

    .line 58225
    .local v1, "firstByte":I
    const/4 v0, 0x5

    aget-byte v0, v9, v0

    and-int/lit16 v2, v0, 0xff

    .line 58226
    .local v9, "secondByte":I
    const/4 v0, 0x6

    aget-byte v0, v9, v0

    and-int/lit16 v1, v0, 0xff

    .line 58227
    .local v4, "thirdByte":I
    shl-int/lit8 v15, v5, 0x4

    shr-int/lit8 v0, v2, 0x4

    or-int/2addr v15, v0

    .line 58228
    .local v0, "width":I
    and-int/lit8 v0, v2, 0xf

    shl-int/lit8 v16, v0, 0x8

    or-int v16, v16, v1

    .line 58229
    .local v5, "height":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 58230
    .local v0, "pixelWidthHeightRatio":F
    const/4 v8, 0x7

    aget-byte v0, v9, v8

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v1, v0, 0x4

    .line 58231
    .local v15, "aspectRatioCode":I
    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    if-eq v1, v4, :cond_2

    .line 58232
    :goto_0
    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    sget-object v4, Lcom/facebook/ads/redexgen/X/V0;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v4, v0

    const/4 v0, 0x4

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v4, Lcom/facebook/ads/redexgen/X/V0;->A0E:[Ljava/lang/String;

    const-string v1, "HyKZPuPgY2l"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "3HFgb6Y2x2vz"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const/high16 v17, -0x40800000    # -1.0f

    .line 58233
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const/16 v19, -0x1

    const/16 p0, 0x0

    .line 58234
    const/4 v4, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x58

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/V0;->A01(III)Ljava/lang/String;

    move-result-object v11

    .end local v15    # "aspectRatioCode":I
    .local v8, "aspectRatioCode":I
    move-object/from16 v10, p1

    move/from16 v20, v2

    invoke-static/range {v10 .. v21}, Lcom/facebook/ads/internal/exoplayer2/Format;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v5

    .line 58235
    .local v0, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    const-wide/16 v6, 0x0

    .line 58236
    .local v0, "frameDurationUs":J
    aget-byte v0, v9, v8

    and-int/lit8 v0, v0, 0xf

    add-int/lit8 v2, v0, -0x1

    .line 58237
    .local v0, "frameRateCodeMinusOne":I
    if-ltz v2, :cond_1

    sget-object v1, Lcom/facebook/ads/redexgen/X/V0;->A0F:[D

    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 58238
    aget-wide v6, v1, v2

    .line 58239
    .local v1, "frameRate":D
    iget v2, v3, Lcom/facebook/ads/redexgen/X/DN;->A01:I

    .line 58240
    .local v0, "sequenceExtensionPosition":I
    add-int/lit8 v0, v2, 0x9

    aget-byte v0, v9, v0

    and-int/lit8 v0, v0, 0x60

    shr-int/lit8 v1, v0, 0x5

    .line 58241
    .local v0, "frameRateExtensionN":I
    add-int/lit8 v0, v2, 0x9

    aget-byte v0, v9, v0

    and-int/lit8 v4, v0, 0x1f

    .line 58242
    .local v3, "frameRateExtensionD":I
    if-eq v1, v4, :cond_0

    .line 58243
    .end local v10    # "csdData":[B
    .end local v3    # "frameRateExtensionD":I
    .local v0, "csdData":[B
    .local v15, "pixelWidthHeightRatio":F
    int-to-double v2, v1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    .end local v1    # "frameRate":D
    .local v0, "firstByte":I
    add-int/lit8 v0, v4, 0x1

    .end local v0    # "firstByte":I
    .local v16, "frameRateExtensionN":I
    int-to-double v0, v0

    div-double/2addr v2, v0

    mul-double/2addr v6, v2

    .line 58244
    .end local v10
    .end local v3
    .end local v1
    .end local v0
    .restart local v0    # "firstByte":I
    .restart local v15    # "pixelWidthHeightRatio":F
    .restart local v0    # "firstByte":I
    .restart local v16    # "frameRateExtensionN":I
    :cond_0
    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v6

    double-to-long v6, v0

    .line 58245
    .end local v10
    .end local v3
    .end local v1
    .restart local v0    # "firstByte":I
    .restart local v15    # "pixelWidthHeightRatio":F
    .restart local v0    # "firstByte":I
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 58246
    :cond_2
    mul-int/lit8 v0, v16, 0x79

    int-to-float v2, v0

    mul-int/lit8 v0, v15, 0x64

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 58247
    .end local v0    # "firstByte":I
    .local v3, "pixelWidthHeightRatio":F
    goto :goto_0

    .line 58248
    .end local v3    # "pixelWidthHeightRatio":F
    .restart local v0    # "firstByte":I
    :cond_3
    mul-int/lit8 v0, v16, 0x10

    int-to-float v2, v0

    mul-int/lit8 v0, v15, 0x9

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 58249
    .end local v0    # "firstByte":I
    .restart local v3    # "pixelWidthHeightRatio":F
    goto/16 :goto_0

    .line 58250
    .end local v3    # "pixelWidthHeightRatio":F
    .restart local v0    # "firstByte":I
    :cond_4
    mul-int/lit8 v0, v16, 0x4

    int-to-float v2, v0

    mul-int/lit8 v0, v15, 0x3

    int-to-float v5, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/V0;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/V0;->A0E:[Ljava/lang/String;

    const-string v1, "vd7kNIbsEEJ"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "ris6ddC7et29"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    div-float/2addr v2, v5

    .line 58251
    .end local v0    # "firstByte":I
    .restart local v3    # "pixelWidthHeightRatio":F
    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/V0;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/V0;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        0x5ft
        0x52t
        0x53t
        0x59t
        0x19t
        0x5bt
        0x46t
        0x53t
        0x51t
        0x4t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lzin"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4uDp6QfTi"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "E7j1IxdipYP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZU0QRaxIQYmyqjrrDNuxsGDeZVrzTe7c"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ywQjd9ntbjA5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nzxB6I"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ckV4HbWBDHQrvccITxx2MBPPO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2nPTtNR7cqDEoJ9gAdNhgtsllKOa4maq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V0;->A0E:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A45(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 21

    .line 58252
    move-object/from16 v9, p0

    move-object/from16 v13, p1

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    .line 58253
    .local v9, "offset":I
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v8

    .line 58254
    .local v13, "limit":I
    iget-object v12, v13, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 58255
    .local v4, "dataArray":[B
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/V0;->A04:J

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v9, Lcom/facebook/ads/redexgen/X/V0;->A04:J

    .line 58256
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/V0;->A05:Lcom/facebook/ads/redexgen/X/CS;

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    invoke-interface {v1, v13, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 58257
    :goto_0
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A0C:[Z

    invoke-static {v12, v4, v8, v0}, Lcom/facebook/ads/redexgen/X/II;->A04([BII[Z)I

    move-result v7

    .line 58258
    .local v8, "startCodeOffset":I
    if-ne v7, v8, :cond_1

    .line 58259
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A07:Z

    if-nez v0, :cond_0

    .line 58260
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A0B:Lcom/facebook/ads/redexgen/X/DN;

    invoke-virtual {v0, v12, v4, v8}, Lcom/facebook/ads/redexgen/X/DN;->A02([BII)V

    .line 58261
    :cond_0
    return-void

    .line 58262
    :cond_1
    iget-object v1, v13, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v0, v7, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v6, v0, 0xff

    .line 58263
    .local v12, "startCodeValue":I
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A07:Z

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_3

    .line 58264
    sub-int v1, v7, v4

    .line 58265
    .local v2, "lengthToStartCode":I
    if-lez v1, :cond_2

    .line 58266
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A0B:Lcom/facebook/ads/redexgen/X/DN;

    invoke-virtual {v0, v12, v4, v7}, Lcom/facebook/ads/redexgen/X/DN;->A02([BII)V

    .line 58267
    :cond_2
    if-gez v1, :cond_e

    neg-int v1, v1

    .line 58268
    .local v0, "bytesAlreadyPassed":I
    :goto_1
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A0B:Lcom/facebook/ads/redexgen/X/DN;

    invoke-virtual {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/DN;->A03(II)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/V0;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_f

    sget-object v2, Lcom/facebook/ads/redexgen/X/V0;->A0E:[Ljava/lang/String;

    const-string v1, "2PGUgn1v8IfZQB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 58269
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/V0;->A0B:Lcom/facebook/ads/redexgen/X/DN;

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A06:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/V0;->A00(Lcom/facebook/ads/redexgen/X/DN;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 58270
    .local v11, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/Long;>;"
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/V0;->A05:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 58271
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A00:J

    .line 58272
    iput-boolean v10, v9, Lcom/facebook/ads/redexgen/X/V0;->A07:Z

    .line 58273
    .end local v2    # "lengthToStartCode":I
    .end local v0    # "bytesAlreadyPassed":I
    .end local v11    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/Long;>;"
    :cond_3
    if-eqz v6, :cond_4

    const/16 v0, 0xb3

    if-ne v6, v0, :cond_d

    .line 58274
    :cond_4
    sub-int v4, v8, v7

    .line 58275
    .local v2, "bytesWrittenPastStartCode":I
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A0A:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A08:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A07:Z

    if-eqz v0, :cond_5

    .line 58276
    iget-boolean v5, v9, Lcom/facebook/ads/redexgen/X/V0;->A09:Z

    .line 58277
    .local v13, "flags":I
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/V0;->A04:J

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A02:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    sub-int/2addr v0, v4

    .line 58278
    .local v7, "size":I
    iget-object v14, v9, Lcom/facebook/ads/redexgen/X/V0;->A05:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v15, v9, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    const/16 v20, 0x0

    move/from16 v17, v5

    move/from16 v18, v0

    move/from16 v19, v4

    invoke-interface/range {v14 .. v20}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 58279
    .end local v13    # "flags":I
    .end local v7    # "size":I
    :cond_5
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A0A:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A08:Z

    if-eqz v0, :cond_7

    .line 58280
    :cond_6
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/V0;->A04:J

    int-to-long v0, v4

    sub-long/2addr v2, v0

    iput-wide v2, v9, Lcom/facebook/ads/redexgen/X/V0;->A02:J

    .line 58281
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v1, Lcom/facebook/ads/redexgen/X/V0;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_a

    sget-object v14, Lcom/facebook/ads/redexgen/X/V0;->A0E:[Ljava/lang/String;

    const-string v1, "EpT9UHTx9YMmXdQbYbZ9i0GY7"

    const/4 v0, 0x6

    aput-object v1, v14, v0

    const-string v1, "mo4j74F2H"

    const/4 v0, 0x1

    aput-object v1, v14, v0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    .line 58282
    :goto_2
    iput-wide v2, v9, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    .line 58283
    iput-boolean v11, v9, Lcom/facebook/ads/redexgen/X/V0;->A09:Z

    .line 58284
    iput-wide v4, v9, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    .line 58285
    iput-boolean v10, v9, Lcom/facebook/ads/redexgen/X/V0;->A0A:Z

    .line 58286
    :cond_7
    if-nez v6, :cond_8

    const/4 v11, 0x1

    :cond_8
    iput-boolean v11, v9, Lcom/facebook/ads/redexgen/X/V0;->A08:Z

    .line 58287
    .end local v2    # "bytesWrittenPastStartCode":I
    :cond_9
    :goto_3
    add-int/lit8 v4, v7, 0x3

    .line 58288
    .end local v8    # "startCodeOffset":I
    .end local v12    # "startCodeValue":I
    goto/16 :goto_0

    :cond_a
    sget-object v14, Lcom/facebook/ads/redexgen/X/V0;->A0E:[Ljava/lang/String;

    const-string v1, "EPVM0A"

    const/4 v0, 0x5

    aput-object v1, v14, v0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    goto :goto_2

    .line 58289
    :cond_b
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A0A:Z

    if-eqz v0, :cond_c

    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/V0;->A03:J

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/V0;->A00:J

    add-long/2addr v2, v0

    goto :goto_2

    :cond_c
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 58290
    :cond_d
    const/16 v0, 0xb8

    if-ne v6, v0, :cond_9

    .line 58291
    iput-boolean v10, v9, Lcom/facebook/ads/redexgen/X/V0;->A09:Z

    goto :goto_3

    .line 58292
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 2

    .line 58293
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()V

    .line 58294
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A06:Ljava/lang/String;

    .line 58295
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A05:Lcom/facebook/ads/redexgen/X/CS;

    .line 58296
    return-void
.end method

.method public final ACI()V
    .locals 0

    .line 58297
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 0

    .line 58298
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/V0;->A01:J

    .line 58299
    return-void
.end method

.method public final ADW()V
    .locals 2

    .line 58300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0C:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A0C([Z)V

    .line 58301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0B:Lcom/facebook/ads/redexgen/X/DN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DN;->A01()V

    .line 58302
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A04:J

    .line 58303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V0;->A0A:Z

    .line 58304
    return-void
.end method
