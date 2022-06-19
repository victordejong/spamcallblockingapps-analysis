.class public final Lcom/facebook/ads/redexgen/X/Dd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Dc;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dd;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dd;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28189
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/CH;)Lcom/facebook/ads/redexgen/X/Uj;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28190
    move-object/from16 v9, p0

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28191
    const/16 v8, 0x10

    new-instance v10, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v10, v8}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    .line 28192
    .local v9, "scratch":Lcom/facebook/ads/redexgen/X/IM;
    invoke-static {v9, v10}, Lcom/facebook/ads/redexgen/X/Dc;->A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Dc;

    move-result-object v0

    .line 28193
    .local v10, "chunkHeader":Lcom/facebook/ads/redexgen/X/Dc;
    iget v3, v0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    const/16 v2, 0x6f

    const/4 v1, 0x4

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x0

    if-eq v3, v0, :cond_0

    .line 28194
    return-object v14

    .line 28195
    :cond_0
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v3, 0x4

    const/4 v7, 0x0

    invoke-interface {v9, v0, v7, v3}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 28196
    invoke-virtual {v10, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 28197
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v5

    .line 28198
    .local v0, "riffFormat":I
    const/16 v2, 0xc3

    const/4 v1, 0x4

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v4

    const/16 v2, 0xc7

    const/16 v1, 0xf

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v6

    if-eq v5, v4, :cond_1

    .line 28199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x73

    const/16 v1, 0x19

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28200
    return-object v14

    .line 28201
    :cond_1
    invoke-static {v9, v10}, Lcom/facebook/ads/redexgen/X/Dc;->A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Dc;

    move-result-object v1

    .line 28202
    :goto_0
    iget v5, v1, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    const/16 v4, 0xda

    const/4 v2, 0x4

    const/16 v0, 0x3e

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    if-eq v5, v0, :cond_2

    .line 28203
    iget-wide v0, v1, Lcom/facebook/ads/redexgen/X/Dc;->A01:J

    long-to-int v2, v0

    invoke-interface {v9, v2}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    .line 28204
    invoke-static {v9, v10}, Lcom/facebook/ads/redexgen/X/Dc;->A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Dc;

    move-result-object v1

    goto :goto_0

    .line 28205
    :cond_2
    iget-wide v4, v1, Lcom/facebook/ads/redexgen/X/Dc;->A01:J

    const-wide/16 v12, 0x10

    const/4 v2, 0x1

    cmp-long v11, v4, v12

    sget-object v5, Lcom/facebook/ads/redexgen/X/Dd;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v4, v5, v0

    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v4, v0, :cond_9

    sget-object v5, Lcom/facebook/ads/redexgen/X/Dd;->A01:[Ljava/lang/String;

    const-string v4, "mArbgBms1zUEIUBWD4W1EF805a6JCGNv"

    const/4 v0, 0x6

    aput-object v4, v5, v0

    const-string v4, "LYj3ONx07LOfgHD3yrPVAPBFI0ymfcJr"

    const/4 v0, 0x3

    aput-object v4, v5, v0

    if-ltz v11, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 28206
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {v9, v0, v7, v8}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 28207
    invoke-virtual {v10, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 28208
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0D()I

    move-result v7

    .line 28209
    .local v0, "type":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0D()I

    move-result v11

    .line 28210
    .local v0, "numChannels":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0C()I

    move-result v12

    .line 28211
    .local v0, "sampleRateHz":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0C()I

    move-result v13

    .line 28212
    .local v4, "averageBytesPerSecond":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0D()I

    move-result v4

    .line 28213
    .local v5, "blockAlignment":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/IM;->A0D()I

    move-result v5

    .line 28214
    .local v7, "bitsPerSample":I
    mul-int v0, v11, v5

    div-int/lit8 v10, v0, 0x8

    .line 28215
    .local v3, "expectedBlockAlignment":I
    if-ne v4, v10, :cond_8

    .line 28216
    if-eq v7, v2, :cond_4

    const/4 v0, 0x3

    if-eq v7, v0, :cond_5

    const v0, 0xfffe

    if-eq v7, v0, :cond_4

    .line 28217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa6

    const/16 v1, 0x1d

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28218
    return-object v14

    .line 28219
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 28220
    .end local v3    # "expectedBlockAlignment":I
    :cond_4
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Ic;->A02(I)I

    move-result v3

    .line 28221
    .restart local v3    # "expectedBlockAlignment":I
    goto :goto_2

    .line 28222
    :cond_5
    const/16 v0, 0x20

    if-ne v5, v0, :cond_6

    .line 28223
    :goto_2
    if-nez v3, :cond_7

    .line 28224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8c

    const/16 v1, 0x1a

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28225
    return-object v14

    .line 28226
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 28227
    :cond_7
    iget-wide v1, v1, Lcom/facebook/ads/redexgen/X/Dc;->A01:J

    long-to-int v0, v1

    sub-int/2addr v0, v8

    invoke-interface {v9, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    .line 28228
    new-instance v10, Lcom/facebook/ads/redexgen/X/Uj;

    .end local v3    # "expectedBlockAlignment":I
    .local v2, "expectedBlockAlignment":I
    .end local v7    # "bitsPerSample":I
    .local v1, "bitsPerSample":I
    .end local v5    # "blockAlignment":I
    .local v0, "blockAlignment":I
    move v14, v4

    move v15, v5

    move/from16 p0, v3

    invoke-direct/range {v10 .. v16}, Lcom/facebook/ads/redexgen/X/Uj;-><init>(IIIIII)V

    return-object v10

    .line 28229
    .end local v3
    .end local v2    # "expectedBlockAlignment":I
    .end local v1    # "bitsPerSample":I
    .end local v0    # "blockAlignment":I
    .restart local v3    # "expectedBlockAlignment":I
    .restart local v7    # "bitsPerSample":I
    .restart local v5    # "blockAlignment":I
    .end local v3    # "expectedBlockAlignment":I
    .end local v5    # "blockAlignment":I
    .restart local v2    # "expectedBlockAlignment":I
    .restart local v0    # "blockAlignment":I
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x1a

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    const/4 v1, 0x7

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dd;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x13

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

    const/16 v0, 0xde

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dd;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x4et
        -0x8t
        0x1t
        0x4t
        -0x4et
        0x6t
        0xbt
        0x2t
        -0x9t
        -0x4et
        -0x56t
        -0x71t
        -0x2at
        -0x22t
        -0x1dt
        -0x57t
        -0x71t
        -0x2ct
        -0x7t
        0x6t
        -0x1t
        -0x4t
        -0x4ft
        -0x6t
        0x4t
        -0x4ft
        0x5t
        0x0t
        0x0t
        -0x4ft
        -0x3t
        -0xet
        0x3t
        -0x8t
        -0xat
        -0x4ft
        -0x47t
        0xft
        -0x3dt
        -0x28t
        -0x2dt
        -0x44t
        -0x46t
        -0x4ft
        0x5t
        0x0t
        -0x4ft
        0x4t
        -0x4t
        -0x6t
        0x1t
        -0x34t
        -0x4ft
        -0x6t
        -0xbt
        -0x35t
        -0x4ft
        -0x3et
        -0xbt
        -0x13t
        -0x1et
        -0x20t
        -0xft
        -0x1et
        -0x1ft
        -0x63t
        -0x21t
        -0x17t
        -0x14t
        -0x20t
        -0x18t
        -0x63t
        -0x22t
        -0x17t
        -0x1at
        -0x1ct
        -0x15t
        -0x16t
        -0x1et
        -0x15t
        -0xft
        -0x49t
        -0x63t
        0x6et
        -0x74t
        -0x6dt
        -0x6ct
        -0x69t
        -0x72t
        -0x6dt
        -0x74t
        0x45t
        -0x66t
        -0x6dt
        -0x70t
        -0x6dt
        -0x6ct
        -0x64t
        -0x6dt
        0x45t
        0x7ct
        0x66t
        0x7bt
        0x45t
        -0x78t
        -0x73t
        -0x66t
        -0x6dt
        -0x70t
        0x5ft
        0x45t
        -0x63t
        -0x6ct
        -0x6ft
        -0x6ft
        -0x7at
        -0x61t
        -0x5ct
        -0x5at
        -0x5ft
        -0x5ft
        -0x60t
        -0x5dt
        -0x5bt
        -0x6at
        -0x6bt
        0x51t
        -0x7dt
        0x7at
        0x77t
        0x77t
        0x51t
        -0x69t
        -0x60t
        -0x5dt
        -0x62t
        -0x6et
        -0x5bt
        0x6bt
        0x51t
        -0x41t
        -0x28t
        -0x23t
        -0x21t
        -0x26t
        -0x26t
        -0x27t
        -0x24t
        -0x22t
        -0x31t
        -0x32t
        -0x76t
        -0x3ft
        -0x55t
        -0x40t
        -0x76t
        -0x34t
        -0x2dt
        -0x22t
        -0x76t
        -0x32t
        -0x31t
        -0x26t
        -0x22t
        -0x2et
        -0x76t
        -0x2ft
        -0x16t
        -0x11t
        -0xft
        -0x14t
        -0x14t
        -0x15t
        -0x12t
        -0x10t
        -0x1ft
        -0x20t
        -0x64t
        -0x2dt
        -0x43t
        -0x2et
        -0x64t
        -0x1et
        -0x15t
        -0x12t
        -0x17t
        -0x23t
        -0x10t
        -0x64t
        -0x10t
        -0xbt
        -0x14t
        -0x1ft
        -0x4at
        -0x64t
        -0x23t
        -0x39t
        -0x24t
        -0x35t
        0x6at
        0x74t
        -0x77t
        0x5bt
        0x78t
        0x74t
        0x77t
        0x78t
        -0x7bt
        0x65t
        0x78t
        0x74t
        0x77t
        0x78t
        -0x7bt
        -0x17t
        -0x1at
        -0x7t
        -0x1at
        -0x49t
        -0x42t
        -0x3bt
        0x71t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lZHNcQEz2UCHRF3HKy4Ms"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LTBlgvQFQCcRc58bfS1vvdceg1X9eO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GmeJKyjiJGVqKB3GymjhhOJOlhCqzFFG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xm8Rc2dV4gCDzTi8avKocmJ9pVQd1yI0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jTAYc6RcrveJnR5LABf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gxHVzZFcAG9OD3MqfC1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2C6VDVdL4enm5WhTEAfvzOGXGIJ1tUDv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qClaQPWgWkp5W919KPuqlbemBTAMJI2N"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dd;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/Uj;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28230
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28231
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28232
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 28233
    const/16 v7, 0x8

    new-instance v6, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v6, v7}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    .line 28234
    .local p0, "scratch":Lcom/facebook/ads/redexgen/X/IM;
    invoke-static {p0, v6}, Lcom/facebook/ads/redexgen/X/Dc;->A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Dc;

    move-result-object v5

    .line 28235
    .local v7, "chunkHeader":Lcom/facebook/ads/redexgen/X/Dc;
    :goto_0
    iget v3, v5, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    const/16 v2, 0xd6

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    if-eq v3, v0, :cond_2

    .line 28236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x53

    const/16 v1, 0x1c

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc7

    const/16 v1, 0xf

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28237
    const-wide/16 v0, 0x8

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/Dc;->A01:J

    add-long/2addr v3, v0

    .line 28238
    .local v3, "bytesToSkip":J
    iget v8, v5, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    const/16 v2, 0x6f

    const/4 v1, 0x4

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    if-ne v8, v0, :cond_0

    .line 28239
    const-wide/16 v3, 0xc

    .line 28240
    :cond_0
    const-wide/32 v1, 0x7fffffff

    cmp-long v0, v3, v1

    if-gtz v0, :cond_1

    .line 28241
    long-to-int v0, v3

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 28242
    invoke-static {p0, v6}, Lcom/facebook/ads/redexgen/X/Dc;->A00(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Dc;

    move-result-object v5

    .line 28243
    .end local v3    # "bytesToSkip":J
    goto :goto_0

    .line 28244
    .restart local v3    # "bytesToSkip":J
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11

    const/16 v1, 0x28

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dd;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28245
    .end local v3    # "bytesToSkip":J
    :cond_2
    invoke-interface {p0, v7}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 28246
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v2

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/Dc;->A01:J

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Uj;->A06(JJ)V

    .line 28247
    return-void
.end method
