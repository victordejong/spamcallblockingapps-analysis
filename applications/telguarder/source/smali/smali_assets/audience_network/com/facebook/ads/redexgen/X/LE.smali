.class public final Lcom/facebook/ads/redexgen/X/LE;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 42314
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LE;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LE;->A01()V

    const-class v0, Lcom/facebook/ads/redexgen/X/LE;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LE;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LE;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x17

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x74

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LE;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x1bt
        0x39t
        0x36t
        0x7ft
        0x2ct
        0x78t
        0x3ct
        0x3dt
        0x2ct
        0x3dt
        0x2at
        0x35t
        0x31t
        0x36t
        0x3dt
        0x78t
        0x31t
        0x3et
        0x78t
        0x39t
        0x28t
        0x28t
        0x78t
        0x31t
        0x2bt
        0x78t
        0xdt
        0x36t
        0x31t
        0x2ct
        0x21t
        0x76t
        0x37t
        0xdt
        0x5et
        0x2bt
        0x10t
        0x17t
        0xat
        0x7t
        0x5et
        0x1ft
        0xet
        0xet
        0x44t
        0x5et
        0x58t
        0x54t
        0x56t
        0x15t
        0x5dt
        0x5at
        0x58t
        0x5et
        0x59t
        0x54t
        0x54t
        0x50t
        0x15t
        0x49t
        0x5et
        0x5at
        0x58t
        0x4ft
        0x15t
        0x69t
        0x5et
        0x5at
        0x58t
        0x4ft
        0x7at
        0x58t
        0x4ft
        0x52t
        0x4dt
        0x52t
        0x4ft
        0x42t
        0x12t
        0x1et
        0x1ct
        0x5ft
        0x4t
        0x1ft
        0x18t
        0x5t
        0x8t
        0x42t
        0x15t
        0x5ft
        0x1t
        0x1dt
        0x10t
        0x8t
        0x14t
        0x3t
        0x5ft
        0x24t
        0x1ft
        0x18t
        0x5t
        0x8t
        0x21t
        0x1dt
        0x10t
        0x8t
        0x14t
        0x3t
        0x30t
        0x12t
        0x5t
        0x18t
        0x7t
        0x18t
        0x5t
        0x8t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fKOq3CLbRisV2HCvxbP8DswDC3h61WtS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qQcG8iivYcbnleQXnFNfPBjKpUSTKwt1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "90Y8NMpYXvys60lz4Y4AY7bkcR6rkmkz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "C2raqoqRf1xXuaxgLg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Co6wMAKL4SYYucOnnpwSDFFGSy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pPL6tu27HuVGqH4ILm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ywYYaeUt5bOEJr09A3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jMc4mNTDFQmf2DaMzWYBnxz0IZlySjfz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LE;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A03()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 42316
    :try_start_0
    const/16 v2, 0x2e

    const/16 v1, 0x20

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 42317
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42318
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "t":Ljava/lang/Throwable;
    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static A04()Z
    .locals 4

    .line 42319
    :try_start_0
    const/16 v2, 0x4e

    const/16 v1, 0x26

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42320
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/LE;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/LE;->A01:[Ljava/lang/String;

    const-string v1, "fqSGPLRwldKX66WDmKKlg7YQ1V3cstss"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    .line 42321
    .local v2, "ex":Ljava/lang/Throwable;
    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static A05(II)Z
    .locals 1

    .line 42322
    const/16 v0, 0x280

    if-lt p0, v0, :cond_0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A06(Landroid/content/Context;)Z
    .locals 10

    .line 42323
    const/4 v9, 0x0

    .line 42324
    .local p0, "activityDeclared":Z
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 42325
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 42326
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 42327
    .local v5, "activities":[Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_1

    .line 42328
    array-length v6, v7

    const/4 v4, 0x0

    .end local p0    # "activityDeclared":Z
    .local v7, "activityDeclared":Z
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v7, v4

    .line 42329
    .local v6, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/16 v2, 0x4e

    const/16 v1, 0x26

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LE;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42330
    const/4 v9, 0x1

    .line 42331
    .end local v6    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42332
    .end local v7    # "activityDeclared":Z
    .restart local p0    # "activityDeclared":Z
    :cond_1
    if-nez v9, :cond_2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LE;->A04()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42333
    .local v0, "isUnity":Z
    :cond_2
    :goto_1
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    const/16 v1, 0xe

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 42335
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 42336
    :cond_4
    :goto_2
    return v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42337
    .end local p0    # "activityDeclared":Z
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v0    # "isUnity":Z
    .end local v5    # "activities":[Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v4

    .line 42338
    .local p0, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42339
    sget-object v3, Lcom/facebook/ads/redexgen/X/LE;->A02:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x20

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42340
    :cond_5
    return v8
.end method
