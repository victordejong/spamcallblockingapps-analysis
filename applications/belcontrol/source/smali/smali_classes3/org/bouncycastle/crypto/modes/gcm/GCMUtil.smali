.class public abstract Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asInts([B)[I
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    aput v3, v1, v2

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    const/4 v2, 0x1

    aput v0, v1, v2

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    const/4 v2, 0x2

    aput v0, v1, v2

    const/16 v0, 0xc

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result p0

    const/4 v0, 0x3

    aput p0, v1, v0

    return-object v1
.end method

.method public static multiply([B[B)V
    .locals 9

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    const/16 v1, 0x10

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    aget-byte v5, p1, v4

    const/4 v6, 0x7

    :goto_1
    if-ltz v6, :cond_3

    const/4 v7, 0x1

    shl-int v8, v7, v6

    and-int/2addr v8, v5

    if-eqz v8, :cond_0

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    :cond_0
    const/16 v8, 0xf

    aget-byte v8, v0, v8

    and-int/2addr v8, v7

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([B)V

    if-eqz v7, :cond_2

    aget-byte v7, v0, v3

    xor-int/lit8 v7, v7, -0x1f

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v2, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static multiplyP([I)V
    .locals 3

    const/4 v0, 0x3

    aget v0, p0, v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I)V

    if-eqz v1, :cond_1

    aget v0, p0, v2

    const/high16 v1, -0x1f000000

    xor-int/2addr v0, v1

    aput v0, p0, v2

    :cond_1
    return-void
.end method

.method public static multiplyP8([I)V
    .locals 1

    const/16 v0, 0x8

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static oneAsBytes()[B
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static oneAsInts()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    return-object v0
.end method

.method public static shiftRight([B)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    and-int/lit8 v1, v2, 0x1

    shl-int/lit8 v1, v1, 0x7

    goto :goto_0
.end method

.method public static shiftRight([I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    aget v2, p0, v0

    ushr-int/lit8 v3, v2, 0x1

    or-int/2addr v1, v3

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    shl-int/lit8 v1, v2, 0x1f

    goto :goto_0
.end method

.method public static xor([B[B)V
    .locals 3

    const/16 v0, 0xf

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static xor([I[I)V
    .locals 3

    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
