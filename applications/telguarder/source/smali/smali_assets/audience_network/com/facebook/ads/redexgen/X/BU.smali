.class public final Lcom/facebook/ads/redexgen/X/BU;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0M:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:[S

.field public A0B:[S

.field public A0C:[S

.field public final A0D:F

.field public final A0E:F

.field public final A0F:F

.field public final A0G:I

.field public final A0H:I

.field public final A0I:I

.field public final A0J:I

.field public final A0K:I

.field public final A0L:[S


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BU;->A07()V

    return-void
.end method

.method public constructor <init>(IIFFI)V
    .locals 2

    .line 23212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23213
    iput p1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0H:I

    .line 23214
    iput p2, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    .line 23215
    iput p3, p0, Lcom/facebook/ads/redexgen/X/BU;->A0F:F

    .line 23216
    iput p4, p0, Lcom/facebook/ads/redexgen/X/BU;->A0D:F

    .line 23217
    int-to-float v1, p1

    int-to-float v0, p5

    div-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0E:F

    .line 23218
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0K:I

    .line 23219
    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0I:I

    .line 23220
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0I:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0J:I

    .line 23221
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0J:I

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0L:[S

    .line 23222
    mul-int v0, v1, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0A:[S

    .line 23223
    mul-int v0, v1, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    .line 23224
    mul-int/2addr v1, p2

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0C:[S

    .line 23225
    return-void
.end method

.method private A00(I)I
    .locals 2

    .line 23226
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0J:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A09:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 23227
    .local p0, "frameCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0A:[S

    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/BU;->A0E([SII)V

    .line 23228
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A09:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A09:I

    .line 23229
    return v1
.end method

.method private A01([SI)I
    .locals 8

    .line 23230
    iget v4, p0, Lcom/facebook/ads/redexgen/X/BU;->A0H:I

    const/16 v0, 0xfa0

    const/4 v7, 0x1

    if-le v4, v0, :cond_7

    div-int/2addr v4, v0

    .line 23231
    .local p0, "skip":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    if-ne v0, v7, :cond_3

    if-ne v4, v7, :cond_3

    .line 23232
    iget v4, p0, Lcom/facebook/ads/redexgen/X/BU;->A0K:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A0I:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const-string v1, "ZzpiJUQG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/BU;->A04([SIII)I

    move-result v3

    .line 23233
    .local p1, "period":I
    .end local v4
    .end local v0
    :cond_0
    :goto_1
    iget v5, p0, Lcom/facebook/ads/redexgen/X/BU;->A02:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/BU;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    invoke-direct {p0, v5, v4}, Lcom/facebook/ads/redexgen/X/BU;->A0G(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23234
    :goto_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A08:I

    .line 23235
    .local p2, "retPeriod":I
    .restart local p2    # "retPeriod":I
    :goto_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A07:I

    .line 23236
    iput v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A08:I

    .line 23237
    return v1

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const-string v1, "EfRMHc3x"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, v5, v4}, Lcom/facebook/ads/redexgen/X/BU;->A0G(II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 23238
    .end local p2    # "retPeriod":I
    :cond_2
    move v1, v3

    goto :goto_3

    .line 23239
    .end local p1    # "period":I
    :cond_3
    invoke-direct {p0, p1, p2, v4}, Lcom/facebook/ads/redexgen/X/BU;->A0F([SII)V

    .line 23240
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BU;->A0L:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0K:I

    div-int/2addr v1, v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0I:I

    div-int/2addr v0, v4

    const/4 v6, 0x0

    invoke-direct {p0, v2, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/BU;->A04([SIII)I

    move-result v3

    .line 23241
    .restart local p1    # "period":I
    if-eq v4, v7, :cond_0

    .line 23242
    mul-int/2addr v3, v4

    .line 23243
    mul-int/lit8 v0, v4, 0x4

    sub-int v5, v3, v0

    .line 23244
    .local v4, "minP":I
    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v3

    .line 23245
    .local v0, "maxP":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0K:I

    if-ge v5, v0, :cond_4

    .line 23246
    iget v5, p0, Lcom/facebook/ads/redexgen/X/BU;->A0K:I

    .line 23247
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0I:I

    if-le v4, v0, :cond_5

    .line 23248
    iget v4, p0, Lcom/facebook/ads/redexgen/X/BU;->A0I:I

    .line 23249
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    if-ne v0, v7, :cond_6

    .line 23250
    invoke-direct {p0, p1, p2, v5, v4}, Lcom/facebook/ads/redexgen/X/BU;->A04([SIII)I

    move-result v3

    goto :goto_1

    .line 23251
    :cond_6
    invoke-direct {p0, p1, p2, v7}, Lcom/facebook/ads/redexgen/X/BU;->A0F([SII)V

    .line 23252
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A0L:[S

    sget-object v1, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-direct {p0, v3, v6, v5, v4}, Lcom/facebook/ads/redexgen/X/BU;->A04([SIII)I

    move-result v3

    goto :goto_1

    .line 23253
    :cond_7
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02([SIFI)I
    .locals 13

    move/from16 v2, p4

    .line 23254
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 23255
    int-to-float v0, v2

    mul-float v0, v0, p3

    sub-float v3, v3, p3

    div-float/2addr v0, v3

    float-to-int v5, v0

    .line 23256
    .local p0, "newFrameCount":I
    .end local v9
    .restart local p0    # "newFrameCount":I
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    add-int v0, v2, v5

    .line 23257
    invoke-direct {p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/BU;->A0H([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    .line 23258
    iget v4, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    move v12, p2

    mul-int v3, v12, v4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    mul-int/2addr v0, v4

    mul-int/2addr v4, v2

    move-object v9, p1

    invoke-static {v9, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23259
    iget v6, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    iget v8, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    add-int/2addr v8, v2

    add-int v10, v12, v2

    move-object v11, v9

    invoke-static/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/BU;->A0D(II[SI[SI[SI)V

    .line 23260
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    .line 23261
    return v5

    .line 23262
    .end local p0    # "newFrameCount":I
    .local v9, "newFrameCount":I
    :cond_0
    int-to-float v1, v2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, p3

    sub-float/2addr v0, v3

    mul-float/2addr v1, v0

    sub-float v3, v3, p3

    div-float/2addr v1, v3

    float-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A09:I

    move v5, v2

    goto :goto_0
.end method

.method private A03([SIFI)I
    .locals 10

    .line 23263
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v0, p3, v4

    if-ltz v0, :cond_0

    .line 23264
    int-to-float v0, p4

    sub-float/2addr p3, v5

    div-float/2addr v0, p3

    float-to-int v2, v0

    .line 23265
    .local p0, "newFrameCount":I
    .end local v7
    .restart local p0    # "newFrameCount":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/BU;->A0H([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    .line 23266
    iget v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    iget v5, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    move v7, p2

    add-int v9, v7, p4

    move-object v6, p1

    move-object v8, v6

    invoke-static/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/BU;->A0D(II[SI[SI[SI)V

    .line 23267
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    .line 23268
    return v2

    .line 23269
    .end local p0    # "newFrameCount":I
    .local v7, "newFrameCount":I
    :cond_0
    int-to-float v3, p4

    sget-object v1, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const-string v1, "cvUFdugP5dp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "QbmfFXT4C8f9L5"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sub-float/2addr v4, p3

    mul-float/2addr v3, v4

    sub-float/2addr p3, v5

    div-float/2addr v3, p3

    float-to-int v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A09:I

    move v2, p4

    goto :goto_0
.end method

.method private A04([SIII)I
    .locals 8

    .line 23270
    const/4 v7, 0x0

    .line 23271
    .local p0, "bestPeriod":I
    const/16 v6, 0xff

    .line 23272
    .local p1, "worstPeriod":I
    const/4 v4, 0x1

    .line 23273
    .local p2, "minDiff":I
    const/4 v3, 0x0

    .line 23274
    .local p3, "maxDiff":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    mul-int/2addr p2, v0

    .line 23275
    .local p4, "period":I
    :goto_0
    if-gt p3, p4, :cond_3

    .line 23276
    const/4 v5, 0x0

    .line 23277
    .local v7, "diff":I
    const/4 v2, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v2, p3, :cond_0

    .line 23278
    add-int v0, p2, v2

    aget-short v1, p1, v0

    .line 23279
    .local v4, "sVal":S
    add-int v0, p2, p3

    add-int/2addr v0, v2

    aget-short v0, p1, v0

    .line 23280
    .local v3, "pVal":S
    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v5, v0

    .line 23281
    .end local v4    # "sVal":S
    .end local v3    # "pVal":S
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23282
    .end local v6    # "i":I
    :cond_0
    mul-int v1, v5, v7

    mul-int v0, v4, p3

    if-ge v1, v0, :cond_1

    .line 23283
    move v4, v5

    .line 23284
    move v7, p3

    .line 23285
    :cond_1
    mul-int v1, v5, v6

    mul-int v0, v3, p3

    if-le v1, v0, :cond_2

    .line 23286
    move v3, v5

    .line 23287
    move v6, p3

    .line 23288
    .end local v7    # "diff":I
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 23289
    .end local p4    # "period":I
    :cond_3
    div-int/2addr v4, v7

    iput v4, p0, Lcom/facebook/ads/redexgen/X/BU;->A02:I

    .line 23290
    div-int/2addr v3, v6

    iput v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A01:I

    .line 23291
    return v7
.end method

.method private A05([SIII)S
    .locals 6

    .line 23292
    aget-short v5, p1, p2

    .line 23293
    .local p0, "left":S
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    add-int/2addr v0, p2

    aget-short v4, p1, v0

    .line 23294
    .local p1, "right":S
    iget v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A03:I

    mul-int/2addr v3, p3

    .line 23295
    .local p2, "position":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A04:I

    mul-int v1, v0, p4

    .line 23296
    .local p4, "leftPosition":I
    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v2, p4

    .line 23297
    .local p3, "rightPosition":I
    sub-int v0, v2, v3

    .line 23298
    .local v5, "ratio":I
    sub-int/2addr v2, v1

    .line 23299
    .local v0, "width":I
    mul-int v1, v0, v5

    sub-int v0, v2, v0

    mul-int/2addr v0, v4

    add-int/2addr v1, v0

    div-int/2addr v1, v2

    int-to-short v0, v1

    return v0
.end method

.method private A06()V
    .locals 8

    .line 23300
    iget v6, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    .line 23301
    .local p0, "originalOutputFrameCount":I
    iget v7, p0, Lcom/facebook/ads/redexgen/X/BU;->A0F:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0D:F

    div-float/2addr v7, v0

    .line 23302
    .local v6, "s":F
    iget v5, p0, Lcom/facebook/ads/redexgen/X/BU;->A0E:F

    mul-float/2addr v5, v0

    .line 23303
    .local v0, "r":F
    float-to-double v3, v7

    const-wide v1, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v0, v3, v1

    if-gtz v0, :cond_0

    float-to-double v3, v7

    const-wide v1, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v0, v3, v1

    if-gez v0, :cond_2

    .line 23304
    :cond_0
    invoke-direct {p0, v7}, Lcom/facebook/ads/redexgen/X/BU;->A08(F)V

    .line 23305
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_1

    .line 23306
    invoke-direct {p0, v5, v6}, Lcom/facebook/ads/redexgen/X/BU;->A09(FI)V

    .line 23307
    :cond_1
    return-void

    .line 23308
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BU;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/BU;->A0E([SII)V

    .line 23309
    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    goto :goto_0
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0qTZJ8D0agZJ2B"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qfqkjWK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "n7CGgN6M"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8LQyO96dQIad"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zNfuxlgzPWu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FAP5LimP4DQvL9R8rOAgH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wGjue0De5bWvruNknuqH26gti"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Z9wHLGwn7gx0KT8qIx5tKvB6pEvJIo2F"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    return-void
.end method

.method private A08(F)V
    .locals 8

    .line 23310
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0J:I

    if-ge v1, v0, :cond_0

    .line 23311
    return-void

    .line 23312
    :cond_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    .line 23313
    .local p0, "frameCount":I
    const/4 v4, 0x0

    .line 23314
    .local p1, "positionFrames":I
    :cond_1
    iget v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A09:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const-string v1, "C12ZT"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-lez v3, :cond_4

    .line 23315
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/BU;->A00(I)I

    move-result v0

    add-int/2addr v4, v0

    .line 23316
    .end local v1
    :goto_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A0J:I

    add-int/2addr v3, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const-string v1, "XmSRtl1j"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-le v3, v5, :cond_1

    .line 23317
    :goto_1
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/BU;->A0C(I)V

    .line 23318
    return-void

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const-string v1, "5WJjz7DFTkoKlQ1e7K7Tt"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-le v3, v5, :cond_1

    goto :goto_1

    .line 23319
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0A:[S

    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/BU;->A01([SI)I

    move-result v3

    .line 23320
    .local v1, "period":I
    float-to-double v1, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v1, v6

    if-lez v0, :cond_5

    .line 23321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0A:[S

    invoke-direct {p0, v0, v4, p1, v3}, Lcom/facebook/ads/redexgen/X/BU;->A03([SIFI)I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v4, v0

    goto :goto_0

    .line 23322
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0A:[S

    invoke-direct {p0, v0, v4, p1, v3}, Lcom/facebook/ads/redexgen/X/BU;->A02([SIFI)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_0
.end method

.method private A09(FI)V
    .locals 12

    .line 23323
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    if-ne v0, p2, :cond_0

    .line 23324
    return-void

    .line 23325
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0H:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v5, v0

    .line 23326
    .local p0, "newSampleRate":I
    iget v4, p0, Lcom/facebook/ads/redexgen/X/BU;->A0H:I

    .line 23327
    .local p1, "oldSampleRate":I
    :goto_0
    const/16 v0, 0x4000

    if-gt v5, v0, :cond_1

    if-le v4, v0, :cond_2

    .line 23328
    :cond_1
    div-int/lit8 v5, v5, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 23329
    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const-string v1, "xPwf1Sap"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    div-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 23330
    :cond_2
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/BU;->A0A(I)V

    .line 23331
    const/4 v6, 0x0

    .local p2, "position":I
    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A06:I

    add-int/lit8 v0, v1, -0x1

    const/4 v3, 0x1

    if-ge v6, v0, :cond_a

    .line 23332
    :goto_2
    iget v7, p0, Lcom/facebook/ads/redexgen/X/BU;->A04:I

    add-int/lit8 v2, v7, 0x1

    mul-int/2addr v2, v5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A03:I

    mul-int v0, v1, v4

    if-le v2, v0, :cond_7

    .line 23333
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    .line 23334
    invoke-direct {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/BU;->A0H([SII)[S

    move-result-object v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const-string v1, "TQnOZTkvkhyp5gjcQQojACOFY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    .line 23335
    const/4 v10, 0x0

    .local v0, "i":I
    :goto_3
    iget v11, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    if-ge v10, v11, :cond_5

    .line 23336
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    iget v8, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    mul-int/2addr v8, v11

    add-int/2addr v8, v10

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/BU;->A0C:[S

    mul-int/2addr v11, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const-string v1, "FhsoF3e3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    add-int/2addr v11, v10

    .line 23337
    invoke-direct {p0, v7, v11, v4, v5}, Lcom/facebook/ads/redexgen/X/BU;->A05([SIII)S

    move-result v0

    aput-short v0, v9, v8

    .line 23338
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 23339
    .end local v0    # "i":I
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A03:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A03:I

    .line 23340
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    goto :goto_2

    :cond_6
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    .line 23341
    const/4 v10, 0x0

    goto :goto_3

    .line 23342
    :cond_7
    add-int/lit8 v0, v7, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A04:I

    .line 23343
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A04:I

    if-ne v0, v4, :cond_8

    .line 23344
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A04:I

    .line 23345
    if-ne v1, v5, :cond_9

    :goto_4
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23346
    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A03:I

    .line 23347
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 23348
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 23349
    .end local p2    # "position":I
    :cond_a
    sub-int/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/BU;->A0B(I)V

    .line 23350
    return-void
.end method

.method private A0A(I)V
    .locals 6

    .line 23351
    iget v5, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    sub-int/2addr v5, p1

    .line 23352
    .local p0, "frameCount":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0C:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A06:I

    invoke-direct {p0, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/BU;->A0H([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0C:[S

    .line 23353
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    iget v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    mul-int v2, p1, v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0C:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A06:I

    mul-int/2addr v0, v3

    mul-int/2addr v3, v5

    invoke-static {v4, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23354
    iput p1, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    .line 23355
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A06:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A06:I

    .line 23356
    return-void
.end method

.method private A0B(I)V
    .locals 5

    .line 23357
    if-nez p1, :cond_0

    .line 23358
    return-void

    .line 23359
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/BU;->A0C:[S

    iget v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    mul-int v2, p1, v3

    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A06:I

    sub-int/2addr v0, p1

    mul-int/2addr v0, v3

    invoke-static {v4, v2, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23360
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A06:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A06:I

    .line 23361
    return-void
.end method

.method private A0C(I)V
    .locals 4

    .line 23362
    iget v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    sub-int/2addr v3, p1

    .line 23363
    .local p0, "remainingFrames":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BU;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    mul-int/2addr p1, v1

    mul-int/2addr v1, v3

    const/4 v0, 0x0

    invoke-static {v2, p1, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23364
    iput v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    .line 23365
    return-void
.end method

.method public static A0D(II[SI[SI[SI)V
    .locals 7

    .line 23366
    const/4 v5, 0x0

    .local p0, "i":I
    :goto_0
    if-ge v5, p1, :cond_1

    .line 23367
    mul-int v6, p3, p1

    add-int/2addr v6, v5

    .line 23368
    .local p1, "o":I
    mul-int v4, p7, p1

    add-int/2addr v4, v5

    .line 23369
    .local p2, "u":I
    mul-int v3, p5, p1

    add-int/2addr v3, v5

    .line 23370
    .local p3, "d":I
    const/4 v2, 0x0

    .local p4, "t":I
    :goto_1
    if-ge v2, p0, :cond_0

    .line 23371
    aget-short v1, p4, v3

    sub-int v0, p0, v2

    mul-int/2addr v1, v0

    aget-short v0, p6, v4

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    div-int/2addr v1, p0

    int-to-short v0, v1

    aput-short v0, p2, v6

    .line 23372
    add-int/2addr v6, p1

    .line 23373
    add-int/2addr v3, p1

    .line 23374
    add-int/2addr v4, p1

    .line 23375
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23376
    .end local p1    # "o":I
    .end local p2    # "u":I
    .end local p3    # "d":I
    .end local p4    # "t":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 23377
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method private A0E([SII)V
    .locals 3

    .line 23378
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    invoke-direct {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/BU;->A0H([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    .line 23379
    iget v2, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    mul-int/2addr p2, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    mul-int/2addr v0, v2

    mul-int/2addr v2, p3

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23380
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    .line 23381
    return-void
.end method

.method private A0F([SII)V
    .locals 6

    .line 23382
    iget v5, p0, Lcom/facebook/ads/redexgen/X/BU;->A0J:I

    div-int/2addr v5, p3

    .line 23383
    .local p0, "frameCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    mul-int v4, v0, p3

    .line 23384
    .local p2, "samplesPerValue":I
    mul-int/2addr p2, v0

    .line 23385
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 23386
    const/4 v2, 0x0

    .line 23387
    .local p3, "value":I
    const/4 v1, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 23388
    mul-int v0, v3, v4

    add-int/2addr v0, p2

    add-int/2addr v0, v1

    aget-short v0, p1, v0

    add-int/2addr v2, v0

    .line 23389
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 23390
    .end local v5    # "j":I
    :cond_0
    div-int/2addr v2, v4

    .line 23391
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0L:[S

    int-to-short v0, v2

    aput-short v0, v1, v3

    .line 23392
    .end local p3    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23393
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method private A0G(II)Z
    .locals 4

    .line 23394
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A08:I

    if-nez v0, :cond_1

    .line 23395
    :cond_0
    return v2

    .line 23396
    :cond_1
    mul-int/lit8 v0, p1, 0x3

    if-le p2, v0, :cond_2

    .line 23397
    return v2

    .line 23398
    :cond_2
    mul-int/lit8 v1, p1, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A07:I

    mul-int/lit8 v0, v0, 0x3

    if-gt v1, v0, :cond_3

    .line 23399
    return v2

    .line 23400
    :cond_3
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const-string v1, "gBcEaoNO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0H([SII)[S
    .locals 5

    .line 23401
    array-length v0, p1

    iget v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    div-int/2addr v0, v3

    .line 23402
    .local p0, "currentCapacityFrames":I
    add-int/2addr p2, p3

    if-gt p2, v0, :cond_0

    .line 23403
    return-object p1

    .line 23404
    :cond_0
    mul-int/lit8 v4, v0, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/BU;->A0M:[Ljava/lang/String;

    const-string v1, "P96LLzO3rL2"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "u14T5Nf0YzMSK5"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    div-int/lit8 v0, v4, 0x2

    add-int/2addr v0, p3

    .line 23405
    .local p2, "newCapacityFrames":I
    mul-int/2addr v3, v0

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0I()I
    .locals 1

    .line 23406
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    return v0
.end method

.method public final A0J()V
    .locals 1

    .line 23407
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    .line 23408
    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    .line 23409
    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A06:I

    .line 23410
    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A04:I

    .line 23411
    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A03:I

    .line 23412
    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A09:I

    .line 23413
    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A08:I

    .line 23414
    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A07:I

    .line 23415
    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A02:I

    .line 23416
    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A01:I

    .line 23417
    return-void
.end method

.method public final A0K()V
    .locals 7

    .line 23418
    iget v6, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    .line 23419
    .local p0, "remainingFrameCount":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A0F:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0D:F

    div-float/2addr v3, v0

    .line 23420
    .local v6, "s":F
    iget v2, p0, Lcom/facebook/ads/redexgen/X/BU;->A0E:F

    mul-float/2addr v2, v0

    .line 23421
    .local v0, "r":F
    iget v5, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    int-to-float v1, v6

    div-float/2addr v1, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A06:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    div-float/2addr v1, v2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    add-int/2addr v5, v0

    .line 23422
    .local v3, "expectedOutputFrames":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BU;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0J:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    .line 23423
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BU;->A0H([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0A:[S

    .line 23424
    const/4 v4, 0x0

    .local v3, "xSample":I
    :goto_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/BU;->A0J:I

    mul-int/lit8 v0, v3, 0x2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge v4, v0, :cond_0

    .line 23425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0A:[S

    mul-int/2addr v1, v6

    add-int/2addr v1, v4

    aput-short v2, v0, v1

    .line 23426
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 23427
    .end local v3    # "xSample":I
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    mul-int/lit8 v0, v3, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    .line 23428
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BU;->A06()V

    .line 23429
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    if-le v0, v5, :cond_1

    .line 23430
    iput v5, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    .line 23431
    :cond_1
    iput v2, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    .line 23432
    iput v2, p0, Lcom/facebook/ads/redexgen/X/BU;->A09:I

    .line 23433
    iput v2, p0, Lcom/facebook/ads/redexgen/X/BU;->A06:I

    .line 23434
    return-void
.end method

.method public final A0L(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 23435
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    div-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 23436
    .local p0, "framesToRead":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    mul-int/2addr v0, v4

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 23437
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    .line 23438
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BU;->A0B:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    mul-int/2addr v4, v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A05:I

    mul-int/2addr v0, v1

    invoke-static {v2, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23439
    return-void
.end method

.method public final A0M(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 23440
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    div-int/2addr v4, v0

    .line 23441
    .local p0, "framesToWrite":I
    mul-int/2addr v0, v4

    mul-int/lit8 v3, v0, 0x2

    .line 23442
    .local p1, "bytesToWrite":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A0A:[S

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    invoke-direct {p0, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/BU;->A0H([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0A:[S

    .line 23443
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BU;->A0A:[S

    iget v1, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A0G:I

    mul-int/2addr v1, v0

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v2, v1, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 23444
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BU;->A00:I

    .line 23445
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BU;->A06()V

    .line 23446
    return-void
.end method
