.class public final enum Lcom/facebook/ads/internal/protocol/AdPlacementType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/internal/protocol/AdPlacementType;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final synthetic A03:[Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field public static final enum BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field public static final enum INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field public static final enum NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field public static final enum NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field public static final enum REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field public static final enum UNKNOWN:Lcom/facebook/ads/internal/protocol/AdPlacementType;


# instance fields
.field public A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1481
    invoke-static {}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A02()V

    invoke-static {}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A01()V

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3a

    const/4 v1, 0x6

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-direct {v0, v3, v9, v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 1482
    const/4 v8, 0x1

    const/4 v2, 0x6

    const/16 v1, 0xc

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x40

    const/16 v1, 0xc

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-direct {v0, v3, v8, v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 1483
    const/4 v7, 0x2

    const/16 v2, 0x12

    const/4 v1, 0x6

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4c

    const/4 v1, 0x6

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-direct {v0, v3, v7, v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 1484
    const/4 v6, 0x3

    const/16 v2, 0x18

    const/16 v1, 0xd

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x52

    const/16 v1, 0xd

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-direct {v0, v3, v6, v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 1485
    const/4 v5, 0x4

    const/16 v2, 0x25

    const/16 v1, 0xe

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5f

    const/16 v1, 0xe

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-direct {v0, v3, v5, v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 1486
    const/4 v4, 0x5

    const/16 v2, 0x33

    const/4 v1, 0x7

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6d

    const/4 v1, 0x7

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-direct {v0, v3, v4, v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->UNKNOWN:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 1487
    const/4 v0, 0x6

    new-array v1, v0, [Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    aput-object v0, v1, v9

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    aput-object v0, v1, v8

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    aput-object v0, v1, v7

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    aput-object v0, v1, v6

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->UNKNOWN:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    aput-object v0, v1, v4

    sput-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A03:[Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1488
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1489
    iput-object p3, p0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00:Ljava/lang/String;

    .line 1490
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A02:[Ljava/lang/String;

    const-string v1, "CTk8rnXs6cBCh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x74

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x23t
        -0x24t
        -0x17t
        -0x17t
        -0x20t
        -0x13t
        -0x31t
        -0x2ct
        -0x26t
        -0x35t
        -0x28t
        -0x27t
        -0x26t
        -0x31t
        -0x26t
        -0x31t
        -0x39t
        -0x2et
        0x18t
        0xbt
        0x1et
        0x13t
        0x20t
        0xft
        -0x21t
        -0x2et
        -0x1bt
        -0x26t
        -0x19t
        -0x2at
        -0x10t
        -0x2dt
        -0x2et
        -0x21t
        -0x21t
        -0x2at
        -0x1dt
        -0x9t
        -0x16t
        -0x4t
        -0x1at
        -0x9t
        -0x17t
        -0x16t
        -0x17t
        0x4t
        -0x5t
        -0x12t
        -0x17t
        -0x16t
        -0xct
        0x2ft
        0x28t
        0x25t
        0x28t
        0x29t
        0x31t
        0x28t
        0x1dt
        0x1ct
        0x29t
        0x29t
        0x20t
        0x2dt
        0xct
        0x11t
        0x17t
        0x8t
        0x15t
        0x16t
        0x17t
        0xct
        0x17t
        0xct
        0x4t
        0xft
        0x15t
        0x8t
        0x1bt
        0x10t
        0x1dt
        0xct
        0x45t
        0x38t
        0x4bt
        0x40t
        0x4dt
        0x3ct
        0x36t
        0x39t
        0x38t
        0x45t
        0x45t
        0x3ct
        0x49t
        -0x2t
        -0xft
        0x3t
        -0x13t
        -0x2t
        -0x10t
        -0xft
        -0x10t
        -0x15t
        0x2t
        -0xbt
        -0x10t
        -0xft
        -0x5t
        0x6bt
        0x64t
        0x61t
        0x64t
        0x65t
        0x6dt
        0x64t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CWC1iyAzuHCyWu1B0SYAHTA3miIxyRDu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FO468KlqU7YYiE83Le7T5pQKY2foYhCa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4lSmmc8pBcjbV0on62ZikVJFYVLsdMQp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9H0k66zkYNaHG7pLFG5T73JVLywfdj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "IkTzUK68woTPnHHBk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "q5XpLTEZbHtnyzZXCKIvrGbFL2My8Wb0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rdQ7fJEKRbVHtvxpiCxMwn5qtJ9qGM1n"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xGvuYGSPJhOX4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 1491
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->UNKNOWN:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    .line 1493
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1494
    .local p0, "ex":Ljava/lang/Exception;
    :catch_0
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->UNKNOWN:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 1496
    const-class v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 1497
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A03:[Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/protocol/AdPlacementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1495
    iget-object v0, p0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->A00:Ljava/lang/String;

    return-object v0
.end method
