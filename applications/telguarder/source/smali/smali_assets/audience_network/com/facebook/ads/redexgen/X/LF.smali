.class public final Lcom/facebook/ads/redexgen/X/LF;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LF;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LF;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42342
    .local p0, "fis":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 42343
    :try_start_1
    const/16 v2, 0x2e

    const/4 v1, 0x3

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 42344
    .local v3, "md":Ljava/security/MessageDigest;
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 42345
    .local v3, "buffer":[B
    :cond_0
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 42346
    .local v2, "numRead":I
    if-lez v1, :cond_1

    .line 42347
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 42348
    :cond_1
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 42349
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LF;->A04([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42350
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 42351
    :catch_0
    return-object v0

    .line 42352
    :catch_1
    :try_start_3
    const/16 v2, 0x21

    const/16 v1, 0xd

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "fis":Ljava/io/InputStream;
    .end local v0
    throw v0

    .line 42353
    :catch_2
    const/16 v2, 0x31

    const/16 v1, 0x12

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0
    .end local v0
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42354
    .end local v3    # "buffer":[B
    .end local v3
    .end local v2    # "numRead":I
    :catchall_0
    move-exception v0

    .line 42355
    .end local v3
    .restart local p0    # "fis":Ljava/io/InputStream;
    .restart local v0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 42356
    :catch_3
    throw v0

    .line 42357
    .local v3, "e":Ljava/io/FileNotFoundException;
    :catch_4
    const/4 v2, 0x0

    const/16 v1, 0x21

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final A02(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42358
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LF;->A01(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A03([B)Ljava/lang/String;
    .locals 8

    .line 42359
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 42360
    .local p0, "buf":Ljava/lang/StringBuilder;
    array-length v6, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_2

    aget-byte v4, p0, v5

    .line 42361
    .local v5, "b":B
    ushr-int/lit8 v0, v4, 0x4

    and-int/lit8 v3, v0, 0xf

    .line 42362
    .local v4, "halfbyte":I
    const/4 v2, 0x0

    .line 42363
    .local v0, "two_halfs":I
    :goto_1
    if-ltz v3, :cond_1

    const/16 v0, 0x9

    if-gt v3, v0, :cond_1

    .line 42364
    add-int/lit8 v0, v3, 0x30

    int-to-char v0, v0

    .line 42365
    :goto_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42366
    and-int/lit8 v3, v4, 0xf

    .line 42367
    add-int/lit8 v1, v2, 0x1

    .end local v0    # "two_halfs":I
    .local v3, "two_halfs":I
    const/4 v0, 0x1

    if-lt v2, v0, :cond_0

    .line 42368
    .end local v5    # "b":B
    .end local v4    # "halfbyte":I
    .end local v3    # "two_halfs":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 42369
    .restart local v5    # "b":B
    .restart local v4    # "halfbyte":I
    .restart local v3    # "two_halfs":I
    :cond_0
    move v2, v1

    goto :goto_1

    .line 42370
    :cond_1
    add-int/lit8 v0, v3, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    goto :goto_2

    .line 42371
    .end local v5    # "b":B
    .end local v4    # "halfbyte":I
    .end local v3    # "two_halfs":I
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04([B)Ljava/lang/String;
    .locals 5

    .line 42372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42373
    .local p0, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 42374
    .local v2, "b":B
    and-int/lit16 v0, v0, 0xff

    add-int/lit16 v1, v0, 0x100

    const/16 v0, 0x10

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42375
    .end local v2    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42376
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x43

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LF;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x16t
        0xdt
        0x10t
        0x9t
        -0x3ct
        0x12t
        0x13t
        0x18t
        -0x3ct
        0xat
        0x13t
        0x19t
        0x12t
        0x8t
        -0x3ct
        0x13t
        0x16t
        -0x3ct
        0x12t
        0x13t
        0x18t
        -0x3ct
        0x5t
        0x7t
        0x7t
        0x9t
        0x17t
        0x17t
        0xdt
        0x6t
        0x10t
        0x9t
        -0x2et
        0x19t
        0x1ft
        -0x10t
        0x35t
        0x48t
        0x33t
        0x35t
        0x40t
        0x44t
        0x39t
        0x3ft
        0x3et
        -0x2t
        -0x1dt
        -0x26t
        -0x35t
        -0x16t
        0xbt
        -0x44t
        0xft
        0x11t
        -0x1t
        0x4t
        -0x44t
        -0x3t
        0x8t
        0x3t
        0xbt
        0xet
        0x5t
        0x10t
        0x4t
        0x9t
        -0x36t
    .end array-data
.end method
