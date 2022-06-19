.class public final Lcom/facebook/ads/redexgen/X/70;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/70;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/70;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/70;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/70;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/70;->A01:[Ljava/lang/String;

    const-string v1, "xtBONKmeQ43u6732feOAUmv3ZQIUMhQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "QnHOgqF3W5cw5afe40"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1b

    int-to-byte v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/70;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/70;->A01:[Ljava/lang/String;

    const-string v1, "VPANn7G9pcpZgcQTahaDsgYeTX5gYTX6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException",
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    .line 15908
    :try_start_0
    const/16 v2, 0x4e

    const/4 v1, 0x2

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/70;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 15909
    .local p0, "identifiers":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v0, v1

    if-eqz v0, :cond_1

    .line 15910
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v2, v1, v0

    .line 15911
    .local p1, "salt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-ne v1, v0, :cond_0

    .line 15912
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/70;->A02(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 15913
    :cond_0
    const/16 v2, 0x22

    const/16 v1, 0xe

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/70;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    .end local v0
    .end local v0
    throw v0

    .line 15914
    :cond_1
    const/16 v2, 0x30

    const/16 v1, 0x12

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/70;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0
    .end local v0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15915
    .end local p0    # "identifiers":[Ljava/lang/String;
    .restart local v0
    .restart local v0
    :catchall_0
    move-exception v0

    .line 15916
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A03(Ljava/lang/Throwable;)V

    .line 15917
    .end local p0    # "t":Ljava/lang/Throwable;
    const/16 v2, 0x50

    const/4 v1, 0x2

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/70;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom",
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15918
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15919
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 15920
    .local p0, "saltLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15921
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/70;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 15922
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15923
    const/16 v2, 0x8

    const/4 v1, 0x3

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/70;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 15924
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15925
    const/16 v2, 0x42

    const/16 v1, 0xc

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/70;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15926
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15927
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 15928
    .local p1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 15929
    .local v0, "key":Ljavax/crypto/SecretKey;
    div-int/lit8 v0, v5, 0x2

    .line 15930
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    div-int/lit8 v0, v5, 0x2

    .line 15931
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 15932
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/70;->A05([B[B)[B

    move-result-object v0

    .line 15933
    .local v0, "ivBytes":[B
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 15934
    .local v3, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v0, 0x1

    invoke-virtual {v4, v0, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 15935
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 15936
    .local v2, "raw":[B
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 15937
    .end local p0    # "saltLength":I
    .end local p1    # "cipher":Ljavax/crypto/Cipher;
    .end local v0    # "ivBytes":[B
    .end local v0
    .end local v3    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    .end local v2    # "raw":[B
    :cond_0
    const/16 v2, 0x15

    const/16 v1, 0xd

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/70;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x52

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/70;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x6dt
        0x43t
        0x40t
        0x58t
        0x49t
        0x46t
        0x5ct
        0x47t
        0x42t
        0x43t
        0x42t
        0x5dt
        0x7at
        0x62t
        0x75t
        0x78t
        0x7dt
        0x70t
        0x34t
        0x5dt
        0x42t
        0x2at
        0xdt
        0x15t
        0x2t
        0xft
        0xat
        0x7t
        0x43t
        0x2at
        0xdt
        0x13t
        0x16t
        0x17t
        0x24t
        0x3t
        0x1bt
        0xct
        0x1t
        0x4t
        0x9t
        0x4dt
        0x21t
        0x8t
        0x3t
        0xat
        0x19t
        0x5t
        0x50t
        0x6bt
        0x72t
        0x72t
        0x3et
        0x5ct
        0x5at
        0x3et
        0x4dt
        0x7bt
        0x6dt
        0x6dt
        0x77t
        0x71t
        0x70t
        0x3et
        0x57t
        0x7at
        0x17t
        0xct
        0x4t
        0x14t
        0x72t
        0x17t
        0x26t
        0x23t
        0x23t
        0x2et
        0x29t
        0x20t
        0x40t
        0x60t
        0x28t
        0x2et
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "L0nOmeMuYXRIoNdHtqnHH4PJvx3ZoT7a"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qJO2Bg93QQpqH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mUvPCfoMD7RcpCZsQk08Kjz4RnF3DYXQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4JkLTUROwnPsX6xB8gW2S7TIc4dwZ6I5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZkqT5ft15wAal4dpbsyS7oUq6R4Nmp9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HYr58JMUCsNyvV1s0e"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iwOjpLM6jXAw0q7RGia9mIgl0k3kixtu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3EQRzkCg1qfyo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/70;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A05([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 15938
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v4, p0

    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/70;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/70;->A01:[Ljava/lang/String;

    const-string v1, "LdYk1Q3CRYGN4Str8MjLEe2IhdyCc2od"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "mFfc2HnDAde9nlyum9f5xWUa3NkCFbno"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_2

    .line 15939
    array-length v0, p0

    new-array v3, v0, [B

    .line 15940
    .local p0, "result":[B
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    .line 15941
    aget-byte v1, p0, v2

    aget-byte v0, p1, v2

    xor-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, v3, v2

    .line 15942
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15943
    .end local p1    # "i":I
    :cond_0
    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 15944
    .end local p0    # "result":[B
    :cond_2
    const/16 v2, 0xb

    const/16 v1, 0xa

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/70;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
