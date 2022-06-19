.class public final Lcom/facebook/ads/redexgen/X/UM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/FX;,
        Lcom/facebook/ads/redexgen/X/FY;
    }
.end annotation


# static fields
.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A03:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A04:Lcom/facebook/ads/redexgen/X/FX;

.field public A05:Lcom/facebook/ads/redexgen/X/FX;

.field public A06:Lcom/facebook/ads/redexgen/X/FX;

.field public A07:Lcom/facebook/ads/redexgen/X/FY;

.field public A08:Z

.field public A09:Z

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/redexgen/X/FV;

.field public final A0C:Lcom/facebook/ads/redexgen/X/FW;

.field public final A0D:Lcom/facebook/ads/redexgen/X/HA;

.field public final A0E:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UM;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HA;)V
    .locals 4

    .line 56157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56158
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UM;->A0D:Lcom/facebook/ads/redexgen/X/HA;

    .line 56159
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/HA;->A6d()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0A:I

    .line 56160
    new-instance v0, Lcom/facebook/ads/redexgen/X/FW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/FW;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    .line 56161
    new-instance v0, Lcom/facebook/ads/redexgen/X/FV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/FV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0B:Lcom/facebook/ads/redexgen/X/FV;

    .line 56162
    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    .line 56163
    iget v3, p0, Lcom/facebook/ads/redexgen/X/UM;->A0A:I

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/FX;-><init>(JI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/FX;

    .line 56164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    .line 56165
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    .line 56166
    return-void
.end method

.method private A00(I)I
    .locals 6

    .line 56167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A02:Z

    if-nez v0, :cond_0

    .line 56168
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0D:Lcom/facebook/ads/redexgen/X/HA;

    .line 56169
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HA;->A3K()Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/UM;->A0A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/FX;-><init>(JI)V

    .line 56170
    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/FX;->A02(Lcom/facebook/ads/redexgen/X/H9;Lcom/facebook/ads/redexgen/X/FX;)V

    .line 56171
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/internal/exoplayer2/Format;J)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 5

    .line 56172
    if-nez p0, :cond_0

    .line 56173
    const/4 v0, 0x0

    return-object v0

    .line 56174
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/UM;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/UM;->A0F:[Ljava/lang/String;

    const-string v1, "hur1R4XhnELksGOZQzd9SWf6dAP0kdjB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "tan54K7VPgJUnuz7xH09IJ0faDj85uoe"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 56175
    iget-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I(J)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object p0

    .line 56176
    :cond_1
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "b"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "55agJhXsQm1ymM2XFhliOF7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4H3Ec0n0PBmnottxxMCiXlZ9opVZ4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "PDJcpmxrC3ylKMaEj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WYvXiWoqRmexdwVsDPb8szjdwvqPRDbU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tjz0YMjEtzWtteh9bY6kb4H3mWHfD7UM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YgGXPE9AbP4BNH0qkbcyGH0HJDlIACbD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kvnCyZEx1RKAxFz4WR1HaqhF0xqVEoAO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UM;->A0F:[Ljava/lang/String;

    return-void
.end method

.method private A03(I)V
    .locals 5

    .line 56177
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:J

    .line 56178
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 56179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    .line 56180
    :cond_0
    return-void
.end method

.method private A04(J)V
    .locals 3

    .line 56181
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    .line 56182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    goto :goto_0

    .line 56183
    :cond_0
    return-void
.end method

.method private A05(J)V
    .locals 5

    .line 56184
    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 56185
    return-void

    .line 56186
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    .line 56187
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UM;->A0D:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/H9;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AD0(Lcom/facebook/ads/redexgen/X/H9;)V

    .line 56188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/FX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FX;->A01()Lcom/facebook/ads/redexgen/X/FX;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/FX;

    goto :goto_0

    .line 56189
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UM;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/UM;->A0F:[Ljava/lang/String;

    const-string v1, "CSnjmFdFGjSijs6fuaaHb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-wide v3, v3, Lcom/facebook/ads/redexgen/X/FX;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A04:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    .line 56190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    .line 56191
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06(JLjava/nio/ByteBuffer;I)V
    .locals 3

    .line 56192
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/UM;->A04(J)V

    .line 56193
    .local p0, "remaining":I
    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 56194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    sub-long/2addr v1, p1

    long-to-int v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 56195
    .local p1, "toCopy":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/H9;

    .line 56196
    .local v2, "allocation":Lcom/facebook/ads/redexgen/X/H9;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/H9;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/FX;->A00(J)I

    move-result v0

    invoke-virtual {p3, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 56197
    sub-int/2addr p4, v2

    .line 56198
    int-to-long v0, v2

    add-long/2addr p1, v0

    .line 56199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 56200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    goto :goto_0

    .line 56201
    :cond_1
    return-void
.end method

.method private A07(J[BI)V
    .locals 5

    .line 56202
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/UM;->A04(J)V

    .line 56203
    move v3, p4

    .line 56204
    .local p0, "remaining":I
    :cond_0
    :goto_0
    if-lez v3, :cond_1

    .line 56205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    sub-long/2addr v0, p1

    long-to-int v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 56206
    .local p1, "toCopy":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/H9;

    .line 56207
    .local v2, "allocation":Lcom/facebook/ads/redexgen/X/H9;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/H9;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    .line 56208
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/FX;->A00(J)I

    move-result v1

    sub-int v0, p4, v3

    .line 56209
    invoke-static {v2, v1, p3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56210
    sub-int/2addr v3, v4

    .line 56211
    int-to-long v0, v4

    add-long/2addr p1, v0

    .line 56212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FX;->A03:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 56213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A00:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    goto :goto_0

    .line 56214
    :cond_1
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Vt;Lcom/facebook/ads/redexgen/X/FV;)V
    .locals 18

    .line 56215
    move-object/from16 v4, p0

    move-object/from16 v6, p2

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    .line 56216
    .local v4, "offset":J
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/UM;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 56217
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/UM;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/facebook/ads/redexgen/X/UM;->A07(J[BI)V

    .line 56218
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 56219
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/UM;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v8, 0x0

    aget-byte v3, v2, v8

    .line 56220
    .local v6, "signalByte":B
    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_6

    .line 56221
    .local v0, "subsampleEncryption":Z
    :goto_0
    and-int/lit8 v9, v3, 0x7f

    .line 56222
    .local v2, "ivSize":I
    move-object/from16 v7, p1

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Vt;->A02:Lcom/facebook/ads/redexgen/X/BY;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/BY;->A04:[B

    if-nez v2, :cond_0

    .line 56223
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/Vt;->A02:Lcom/facebook/ads/redexgen/X/BY;

    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, v3, Lcom/facebook/ads/redexgen/X/BY;->A04:[B

    .line 56224
    :cond_0
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Vt;->A02:Lcom/facebook/ads/redexgen/X/BY;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/BY;->A04:[B

    invoke-direct {v4, v0, v1, v2, v9}, Lcom/facebook/ads/redexgen/X/UM;->A07(J[BI)V

    .line 56225
    int-to-long v2, v9

    add-long/2addr v0, v2

    .line 56226
    if-eqz v5, :cond_5

    .line 56227
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/UM;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 56228
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/UM;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/UM;->A07(J[BI)V

    .line 56229
    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 56230
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/UM;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v10

    .line 56231
    .local v5, "subsampleCount":I
    .restart local v5    # "subsampleCount":I
    :goto_1
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Vt;->A02:Lcom/facebook/ads/redexgen/X/BY;

    iget-object v11, v2, Lcom/facebook/ads/redexgen/X/BY;->A06:[I

    .line 56232
    .local v2, "clearDataSizes":[I
    if-eqz v11, :cond_1

    array-length v2, v11

    if-ge v2, v10, :cond_2

    .line 56233
    :cond_1
    new-array v11, v10, [I

    .line 56234
    .end local v2    # "clearDataSizes":[I
    .local v3, "clearDataSizes":[I
    :cond_2
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Vt;->A02:Lcom/facebook/ads/redexgen/X/BY;

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/BY;->A07:[I

    .line 56235
    .local v2, "encryptedDataSizes":[I
    if-eqz v12, :cond_3

    array-length v2, v12

    if-ge v2, v10, :cond_4

    .line 56236
    :cond_3
    new-array v12, v10, [I

    .line 56237
    .end local v2    # "encryptedDataSizes":[I
    .local v2, "encryptedDataSizes":[I
    :cond_4
    if-eqz v5, :cond_8

    .line 56238
    mul-int/lit8 v5, v10, 0x6

    sget-object v3, Lcom/facebook/ads/redexgen/X/UM;->A0F:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x1

    if-eq v3, v2, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56239
    .end local v5    # "subsampleCount":I
    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    .line 56240
    :cond_6
    const/4 v5, 0x0

    goto :goto_0

    .line 56241
    .local v2, "subsampleDataLength":I
    :cond_7
    sget-object v9, Lcom/facebook/ads/redexgen/X/UM;->A0F:[Ljava/lang/String;

    const-string v3, "FNsLPT5GzdOemfwCJqph7yMmAArZAKXa"

    const/4 v2, 0x6

    aput-object v3, v9, v2

    const-string v3, "5MyBceIdkJW9kkNMjpmEEuMAQbQijL5p"

    const/4 v2, 0x5

    aput-object v3, v9, v2

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/UM;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 56242
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/UM;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/facebook/ads/redexgen/X/UM;->A07(J[BI)V

    .line 56243
    int-to-long v2, v5

    add-long/2addr v0, v2

    .line 56244
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/UM;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v2, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56245
    const/4 v3, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v3, v10, :cond_9

    .line 56246
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/UM;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v2

    aput v2, v11, v3

    .line 56247
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/UM;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v2

    aput v2, v12, v3

    .line 56248
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 56249
    :cond_8
    aput v8, v11, v8

    .line 56250
    iget v9, v6, Lcom/facebook/ads/redexgen/X/FV;->A00:I

    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    sub-long v2, v0, v4

    long-to-int v4, v2

    sget-object v3, Lcom/facebook/ads/redexgen/X/UM;->A0F:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x1

    if-eq v3, v2, :cond_a

    sub-int/2addr v9, v4

    aput v9, v12, v8

    .line 56251
    :cond_9
    :goto_3
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/FV;->A02:Lcom/facebook/ads/redexgen/X/CR;

    .line 56252
    .local v7, "cryptoData":Lcom/facebook/ads/redexgen/X/CR;
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/Vt;->A02:Lcom/facebook/ads/redexgen/X/BY;

    iget-object v13, v4, Lcom/facebook/ads/redexgen/X/CR;->A03:[B

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Vt;->A02:Lcom/facebook/ads/redexgen/X/BY;

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/BY;->A04:[B

    iget v15, v4, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    iget v3, v4, Lcom/facebook/ads/redexgen/X/CR;->A02:I

    iget v2, v4, Lcom/facebook/ads/redexgen/X/CR;->A00:I

    move/from16 v16, v3

    move/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Lcom/facebook/ads/redexgen/X/BY;->A03(I[I[I[B[BIII)V

    .line 56253
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    sub-long/2addr v0, v2

    long-to-int v4, v0

    .line 56254
    .local v2, "bytesRead":I
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    .line 56255
    iget v0, v6, Lcom/facebook/ads/redexgen/X/FV;->A00:I

    sub-int/2addr v0, v4

    iput v0, v6, Lcom/facebook/ads/redexgen/X/FV;->A00:I

    .line 56256
    return-void

    :cond_a
    sget-object v5, Lcom/facebook/ads/redexgen/X/UM;->A0F:[Ljava/lang/String;

    const-string v3, "QTHc0xUk6KHjRdZmh"

    const/4 v2, 0x3

    aput-object v3, v5, v2

    const-string v3, "dJuSmU5ivLfmXQHVO6Y8LDyF8uaPt"

    const/4 v2, 0x2

    aput-object v3, v5, v2

    sub-int/2addr v9, v4

    aput v9, v12, v8

    goto :goto_3
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/FX;)V
    .locals 5

    .line 56257
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/FX;->A02:Z

    if-nez v0, :cond_0

    .line 56258
    return-void

    .line 56259
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-boolean v4, v0, Lcom/facebook/ads/redexgen/X/FX;->A02:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/FX;->A04:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/FX;->A04:J

    sub-long/2addr v2, v0

    long-to-int v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0A:I

    div-int/2addr v1, v0

    add-int/2addr v4, v1

    .line 56260
    .local p0, "allocationCount":I
    new-array v2, v4, [Lcom/facebook/ads/redexgen/X/H9;

    .line 56261
    .local p1, "allocationsToRelease":[Lcom/facebook/ads/redexgen/X/H9;
    .local v0, "currentNode":Lcom/facebook/ads/redexgen/X/FX;
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 56262
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/H9;

    aput-object v0, v2, v1

    .line 56263
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/FX;->A01()Lcom/facebook/ads/redexgen/X/FX;

    move-result-object p1

    .line 56264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56265
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0D:Lcom/facebook/ads/redexgen/X/HA;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/HA;->AD1([Lcom/facebook/ads/redexgen/X/H9;)V

    .line 56266
    return-void
.end method

.method private final A0A(Z)V
    .locals 4

    .line 56267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/FW;->A0I(Z)V

    .line 56268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/UM;->A09(Lcom/facebook/ads/redexgen/X/FX;)V

    .line 56269
    iget v3, p0, Lcom/facebook/ads/redexgen/X/UM;->A0A:I

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/FX;-><init>(JI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/FX;

    .line 56270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    .line 56271
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    .line 56272
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:J

    .line 56273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0D:Lcom/facebook/ads/redexgen/X/HA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HA;->AEP()V

    .line 56274
    return-void
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 56275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A08()I

    move-result v0

    return v0
.end method

.method public final A0C()I
    .locals 1

    .line 56276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A06()I

    move-result v0

    return v0
.end method

.method public final A0D()I
    .locals 1

    .line 56277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A07()I

    move-result v0

    return v0
.end method

.method public final A0E(JZZ)I
    .locals 1

    .line 56278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/FW;->A09(JZZ)I

    move-result v0

    return v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;ZZJ)I
    .locals 10

    .line 56279
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/UM;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/UM;->A0B:Lcom/facebook/ads/redexgen/X/FV;

    .line 56280
    move v7, p4

    move v6, p3

    move-object v5, p2

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/FW;->A0A(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;ZZLcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FV;)I

    move-result v2

    .line 56281
    .local p0, "result":I
    const/4 v1, -0x5

    if-eq v2, v1, :cond_6

    const/4 v4, -0x4

    if-eq v2, v4, :cond_1

    const/4 v0, -0x3

    if-ne v2, v0, :cond_0

    .line 56282
    return v0

    .line 56283
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 56284
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-nez v0, :cond_4

    .line 56285
    iget-wide v1, v5, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    cmp-long v0, v1, p5

    if-gez v0, :cond_2

    .line 56286
    const/high16 v3, -0x80000000

    sget-object v1, Lcom/facebook/ads/redexgen/X/UM;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/UM;->A0F:[Ljava/lang/String;

    const-string v1, "z5utMS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/BV;->A00(I)V

    .line 56287
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Vt;->A0A()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0B:Lcom/facebook/ads/redexgen/X/FV;

    invoke-direct {p0, v5, v0}, Lcom/facebook/ads/redexgen/X/UM;->A08(Lcom/facebook/ads/redexgen/X/Vt;Lcom/facebook/ads/redexgen/X/FV;)V

    .line 56289
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0B:Lcom/facebook/ads/redexgen/X/FV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FV;->A00:I

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Vt;->A09(I)V

    .line 56290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0B:Lcom/facebook/ads/redexgen/X/FV;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0B:Lcom/facebook/ads/redexgen/X/FV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FV;->A00:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/UM;->A06(JLjava/nio/ByteBuffer;I)V

    .line 56291
    :cond_4
    return v4

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56292
    :cond_6
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A02:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 56293
    return v1
.end method

.method public final A0G()J
    .locals 2

    .line 56294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A0C()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0H()Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    .line 56295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A0F()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public final A0I()V
    .locals 2

    .line 56296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A0B()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/UM;->A05(J)V

    .line 56297
    return-void
.end method

.method public final A0J()V
    .locals 1

    .line 56298
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/UM;->A0A(Z)V

    .line 56299
    return-void
.end method

.method public final A0K()V
    .locals 1

    .line 56300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A0G()V

    .line 56301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/FX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/FX;

    .line 56302
    return-void
.end method

.method public final A0L(JZZ)V
    .locals 2

    .line 56303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/FW;->A0E(JZZ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/UM;->A05(J)V

    .line 56304
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/FY;)V
    .locals 0

    .line 56305
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UM;->A07:Lcom/facebook/ads/redexgen/X/FY;

    .line 56306
    return-void
.end method

.method public final A0N()Z
    .locals 1

    .line 56307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FW;->A0J()Z

    move-result v0

    return v0
.end method

.method public final A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 3

    .line 56308
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A00:J

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/UM;->A01(Lcom/facebook/ads/internal/exoplayer2/Format;J)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v2

    .line 56309
    .local p0, "adjustedFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/FW;->A0L(Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v1

    .line 56310
    .local p1, "formatChanged":Z
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UM;->A03:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 56311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A08:Z

    .line 56312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A07:Lcom/facebook/ads/redexgen/X/FY;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 56313
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/FY;->ABv(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 56314
    :cond_0
    return-void
.end method

.method public final ADR(Lcom/facebook/ads/redexgen/X/CH;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 56315
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/UM;->A00(I)I

    move-result v4

    .line 56316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/H9;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/H9;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:J

    .line 56317
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/FX;->A00(J)I

    move-result v0

    .line 56318
    invoke-interface {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/CH;->read([BII)I

    move-result v3

    .line 56319
    .local p0, "bytesAppended":I
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 56320
    if-eqz p3, :cond_0

    .line 56321
    return v0

    .line 56322
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 56323
    :cond_1
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/UM;->A03(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/UM;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_2

    .line 56324
    sget-object v2, Lcom/facebook/ads/redexgen/X/UM;->A0F:[Ljava/lang/String;

    const-string v1, "9mxLnkavsBG3u8YvX1AijGjZ4HLX8b8k"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Gu60Uzr9iEHLSCzxxRuhL0NDPNLaTApy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ADS(Lcom/facebook/ads/redexgen/X/IM;I)V
    .locals 5

    .line 56325
    :goto_0
    if-lez p2, :cond_0

    .line 56326
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/UM;->A00(I)I

    move-result v4

    .line 56327
    .local p0, "bytesAppended":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/H9;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/H9;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UM;->A06:Lcom/facebook/ads/redexgen/X/FX;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:J

    .line 56328
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/FX;->A00(J)I

    move-result v0

    .line 56329
    invoke-virtual {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 56330
    sub-int/2addr p2, v4

    .line 56331
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/UM;->A03(I)V

    .line 56332
    .end local p0    # "bytesAppended":I
    goto :goto_0

    .line 56333
    :cond_0
    return-void
.end method

.method public final ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V
    .locals 10

    move-wide v3, p1

    .line 56334
    move-object v2, p0

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/UM;->A08:Z

    if-eqz v0, :cond_0

    .line 56335
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/UM;->A03:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/UM;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 56336
    :cond_0
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/UM;->A09:Z

    move v5, p3

    if-eqz v0, :cond_3

    .line 56337
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/FW;->A0K(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56338
    :cond_1
    return-void

    .line 56339
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/UM;->A09:Z

    .line 56340
    :cond_3
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/UM;->A00:J

    add-long/2addr v3, v0

    .line 56341
    .end local v0
    .local v3, "timeUs":J
    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/UM;->A01:J

    move v8, p4

    int-to-long v0, v8

    sub-long/2addr v6, v0

    int-to-long v0, p5

    sub-long/2addr v6, v0

    .line 56342
    .local v0, "absoluteOffset":J
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/UM;->A0C:Lcom/facebook/ads/redexgen/X/FW;

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/FW;->A0H(JIJILcom/facebook/ads/redexgen/X/CR;)V

    .line 56343
    return-void
.end method
