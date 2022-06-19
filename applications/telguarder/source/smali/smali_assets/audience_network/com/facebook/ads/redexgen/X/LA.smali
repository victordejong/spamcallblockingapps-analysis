.class public final Lcom/facebook/ads/redexgen/X/LA;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/L9;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 42250
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LA;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LA;->A05()V

    const-class v0, Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LA;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/L9;
    .locals 5

    .line 42252
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LA;->A08()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42253
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LA;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x3b

    const/4 v1, 0x2

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LA;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 42254
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LA;->A09(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 42255
    .local v0, "isRooted":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 42256
    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A03:Lcom/facebook/ads/redexgen/X/L9;

    return-object v0

    .line 42257
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A05:Lcom/facebook/ads/redexgen/X/L9;

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42258
    .end local v0    # "isRooted":Z
    :catchall_0
    move-exception v4

    .line 42259
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42260
    sget-object v3, Lcom/facebook/ads/redexgen/X/LA;->A02:Ljava/lang/String;

    const/16 v2, 0x1f

    const/16 v1, 0x13

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42261
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A04:Lcom/facebook/ads/redexgen/X/L9;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LA;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 42262
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LA;->A03(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42263
    .local p0, "e":Ljava/lang/Exception;
    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static A03(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 42264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 42265
    .local p0, "signatures":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 42266
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x40

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 42267
    .local v6, "certs":[Landroid/content/pm/Signature;
    array-length v4, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object p0, v5, v3

    .line 42268
    .local v0, "cert":Landroid/content/pm/Signature;
    const/16 v2, 0x32

    const/4 v1, 0x4

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 42269
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LA;->A04(Landroid/content/pm/Signature;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 42270
    .local v5, "publicKey":[B
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LF;->A03([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42271
    const/16 v2, 0x1a

    const/4 v1, 0x1

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42272
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v0
    .end local v5    # "publicKey":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42273
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Landroid/content/pm/Signature;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 42274
    const/16 v2, 0x36

    const/4 v1, 0x5

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 42275
    .local p0, "certFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 42276
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 42277
    .local v1, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x46

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LA;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x4et
        -0xat
        -0x4t
        -0xat
        -0x9t
        -0x18t
        -0x10t
        -0x4et
        -0x1ct
        -0xdt
        -0xdt
        -0x4et
        -0x2at
        -0x8t
        -0xdt
        -0x18t
        -0xbt
        -0x8t
        -0xat
        -0x18t
        -0xbt
        -0x4ft
        -0x1ct
        -0xdt
        -0x12t
        -0x3et
        -0x62t
        -0x64t
        -0x73t
        -0x60t
        -0x6ct
        0x1t
        0x1et
        0x1et
        0x23t
        0x14t
        0x13t
        -0x31t
        0x12t
        0x17t
        0x14t
        0x12t
        0x1at
        -0x31t
        0x15t
        0x10t
        0x18t
        0x1bt
        0x14t
        0x13t
        0xdt
        0x2t
        -0x5t
        -0x15t
        -0x4dt
        -0x77t
        -0x70t
        -0x75t
        -0x6ct
        0xdt
        0xft
        0x0t
        -0xft
        -0x1t
        0x0t
        -0x47t
        -0x9t
        -0xft
        0x5t
        -0x1t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5C7rQEQBWVsJnjqAAZN8QBBHoCwRHOvI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Z88WY3x8uhcakMWroAcOyZwbMrMcyrD2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GaS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RG8mqKBY9oxpM4ff8ZCXkeRJBSL2fzwW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fRGWN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iBM9tWQPO6zus77B3DN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tCaEdKrWlrqf6UeRmfN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xklax2dJWvUCBWRx1N6eQvQBJ1IZxl6t"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LA;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A07()Z
    .locals 4

    .line 42278
    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 42279
    .local v3, "buildTags":Ljava/lang/String;
    if-eqz v3, :cond_0

    const/16 v2, 0x3d

    const/16 v1, 0x9

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A08()Z
    .locals 3

    .line 42280
    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LA;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42281
    .local v2, "superUserApk":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static A09(Ljava/lang/String;)Z
    .locals 11

    .line 42282
    const/16 v2, 0x1b

    const/4 v1, 0x4

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x19

    const/4 v1, 0x1

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 42283
    .local p0, "paths":[Ljava/lang/String;
    array-length v7, v8

    const/4 v10, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_6

    aget-object v0, v8, v6

    .line 42284
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42285
    .local v3, "pathDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42286
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "pathDir":Ljava/io/File;
    .end local v2
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 42287
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/LA;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    .line 42288
    .local v2, "pathDirFiles":[Ljava/io/File;
    sget-object v2, Lcom/facebook/ads/redexgen/X/LA;->A01:[Ljava/lang/String;

    const-string v1, "JMsPqsjcaxLCD34xTC2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "FbRxT8DL2tHORlKIcuM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v5, :cond_2

    goto :goto_1

    .line 42289
    :cond_2
    array-length v4, v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v0, v5, v3

    .line 42290
    .local v0, "fileInPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/LA;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/LA;->A01:[Ljava/lang/String;

    const-string v1, "YF7GaC3noAI93Jw6Jae3mccsHUmdiEJo"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "xQd2jFuSOpS96vzWuZJNzWBfXSKKA4my"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v9, :cond_4

    .line 42291
    const/4 v0, 0x1

    return v0

    .line 42292
    .end local v0    # "fileInPath":Ljava/io/File;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 42293
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42294
    :cond_6
    return v10
.end method
