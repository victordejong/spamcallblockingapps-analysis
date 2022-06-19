.class public final Lcom/facebook/ads/redexgen/X/LD;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LD;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LD;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LD;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5

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

    .line 42355
    .local p0, "fis":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 42356
    :try_start_1
    const/16 v2, 0x2e

    const/4 v1, 0x3

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 42357
    .local v3, "md":Ljava/security/MessageDigest;
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 42358
    .local v3, "buffer":[B
    :cond_0
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 42359
    .local v2, "numRead":I
    if-lez v1, :cond_1

    .line 42360
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 42361
    :cond_1
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 42362
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LD;->A04([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42363
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 42364
    :catch_0
    return-object v0

    .line 42365
    :catch_1
    :try_start_3
    const/16 v2, 0x21

    const/16 v1, 0xd

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LD;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "fis":Ljava/io/InputStream;
    .end local v0
    throw v0

    .line 42366
    :catch_2
    const/16 v2, 0x31

    const/16 v1, 0x12

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LD;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0
    .end local v0
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42367
    .end local v3    # "buffer":[B
    .end local v3
    .end local v2    # "numRead":I
    :catchall_0
    move-exception v0

    .line 42368
    .end local v3
    .restart local p0    # "fis":Ljava/io/InputStream;
    .restart local v0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 42369
    :catch_3
    throw v0

    .line 42370
    .local v3, "e":Ljava/io/FileNotFoundException;
    :catch_4
    const/4 v2, 0x0

    const/16 v1, 0x21

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LD;->A00(III)Ljava/lang/String;

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

    .line 42371
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LD;->A01(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A03([B)Ljava/lang/String;
    .locals 10

    .line 42372
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 42373
    .local p0, "buf":Ljava/lang/StringBuilder;
    array-length v5, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-byte v9, p0, v4

    .line 42374
    .local v4, "b":B
    ushr-int/lit8 v0, v9, 0x4

    and-int/lit8 v7, v0, 0xf

    .line 42375
    .local v9, "halfbyte":I
    const/4 v3, 0x0

    .line 42376
    .local v0, "two_halfs":I
    :goto_1
    if-ltz v7, :cond_1

    const/16 v8, 0x9

    sget-object v2, Lcom/facebook/ads/redexgen/X/LD;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/LD;->A01:[Ljava/lang/String;

    const-string v1, "WYC0eM9KSy1kpGQhaCsWuh8F6Di5rl0B"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "cvJ0Eg1FAjPz1pwRpU9xefwXrHpQMXjt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-gt v7, v8, :cond_1

    .line 42377
    add-int/lit8 v0, v7, 0x30

    int-to-char v0, v0

    .line 42378
    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42379
    and-int/lit8 v7, v9, 0xf

    .line 42380
    add-int/lit8 v1, v3, 0x1

    .end local v0    # "two_halfs":I
    .local v7, "two_halfs":I
    const/4 v0, 0x1

    if-lt v3, v0, :cond_0

    .line 42381
    .end local v4    # "b":B
    .end local v9    # "halfbyte":I
    .end local v7    # "two_halfs":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42382
    .restart local v4    # "b":B
    .restart local v9    # "halfbyte":I
    .restart local v7    # "two_halfs":I
    :cond_0
    move v3, v1

    goto :goto_1

    .line 42383
    :cond_1
    add-int/lit8 v0, v7, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42384
    .end local v4    # "b":B
    .end local v9    # "halfbyte":I
    .end local v7    # "two_halfs":I
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04([B)Ljava/lang/String;
    .locals 5

    .line 42385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42386
    .local p0, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 42387
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

    .line 42388
    .end local v2    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42389
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

    sput-object v0, Lcom/facebook/ads/redexgen/X/LD;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x4bt
        -0x28t
        -0x25t
        -0x2ct
        -0x71t
        -0x23t
        -0x22t
        -0x1dt
        -0x71t
        -0x2bt
        -0x22t
        -0x1ct
        -0x23t
        -0x2dt
        -0x71t
        -0x22t
        -0x1ft
        -0x71t
        -0x23t
        -0x22t
        -0x1dt
        -0x71t
        -0x30t
        -0x2et
        -0x2et
        -0x2ct
        -0x1et
        -0x1et
        -0x28t
        -0x2ft
        -0x25t
        -0x2ct
        -0x63t
        -0x62t
        -0x5ct
        0x75t
        -0x46t
        -0x33t
        -0x48t
        -0x46t
        -0x3bt
        -0x37t
        -0x42t
        -0x3ct
        -0x3dt
        -0x7dt
        -0x45t
        -0x4et
        -0x5dt
        -0x54t
        -0x33t
        0x7et
        -0x2ft
        -0x2dt
        -0x3ft
        -0x3at
        0x7et
        -0x41t
        -0x36t
        -0x3bt
        -0x33t
        -0x30t
        -0x39t
        -0x2et
        -0x3at
        -0x35t
        -0x74t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IOEZorjxOvw6WLkUEnC6RZ8kEO9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tHPeSZxRvwouZJrSTjrDS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TwGUtlC7GZyiucHxYkx3tmK4C4H8dlEQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GjCU5mOPxx9IT2wExHvtqMTRFU0QzxAJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XmpOvjLSyfhgS8Wil7aGxd4h0rPRF491"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "y4S9iPYd4rIMIRQ9MJO3pBhIPGP4T8Jh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "23Thg1fStvZGySLsE7bFCmDmP0GXJhTR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jegZiJVYRtoFlccHEdL0d7ywmKE0efBM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LD;->A01:[Ljava/lang/String;

    return-void
.end method
