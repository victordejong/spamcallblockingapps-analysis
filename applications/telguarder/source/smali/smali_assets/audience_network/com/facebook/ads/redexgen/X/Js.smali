.class public final enum Lcom/facebook/ads/redexgen/X/Js;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/facebook/ads/internal/api/AdSizeApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/Js;",
        ">;",
        "Ljava/io/Serializable;",
        "Lcom/facebook/ads/internal/api/AdSizeApi;"
    }
.end annotation


# static fields
.field public static A02:[B = null

.field public static A03:[Ljava/lang/String; = null

.field public static final synthetic A04:[Lcom/facebook/ads/redexgen/X/Js;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/Js;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum A06:Lcom/facebook/ads/redexgen/X/Js;

.field public static final enum A07:Lcom/facebook/ads/redexgen/X/Js;

.field public static final enum A08:Lcom/facebook/ads/redexgen/X/Js;

.field public static final enum A09:Lcom/facebook/ads/redexgen/X/Js;

.field public static final serialVersionUID:J = 0x2aL


# instance fields
.field public final A00:I

.field public final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 40488
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Js;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Js;->A04()V

    const/16 v3, 0x32

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Js;->A03(III)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x140

    new-instance v0, Lcom/facebook/ads/redexgen/X/Js;

    invoke-direct {v0, v2, v7, v1, v3}, Lcom/facebook/ads/redexgen/X/Js;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Js;->A05:Lcom/facebook/ads/redexgen/X/Js;

    .line 40489
    const/4 v6, 0x1

    const/16 v2, 0x2d

    const/16 v1, 0xc

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Js;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Js;

    invoke-direct {v0, v1, v6, v7, v7}, Lcom/facebook/ads/redexgen/X/Js;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Js;->A08:Lcom/facebook/ads/redexgen/X/Js;

    .line 40490
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/16 v2, 0xd

    const/16 v1, 0x10

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Js;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Js;

    invoke-direct {v0, v1, v5, v8, v3}, Lcom/facebook/ads/redexgen/X/Js;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Js;->A06:Lcom/facebook/ads/redexgen/X/Js;

    .line 40491
    const/4 v4, 0x3

    const/16 v2, 0x1d

    const/16 v1, 0x10

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Js;->A03(III)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x5a

    new-instance v0, Lcom/facebook/ads/redexgen/X/Js;

    invoke-direct {v0, v2, v4, v8, v1}, Lcom/facebook/ads/redexgen/X/Js;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Js;->A07:Lcom/facebook/ads/redexgen/X/Js;

    .line 40492
    const/4 v3, 0x4

    const/16 v2, 0x39

    const/16 v1, 0x14

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Js;->A03(III)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0xfa

    new-instance v0, Lcom/facebook/ads/redexgen/X/Js;

    invoke-direct {v0, v2, v3, v8, v1}, Lcom/facebook/ads/redexgen/X/Js;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Js;->A09:Lcom/facebook/ads/redexgen/X/Js;

    .line 40493
    const/4 v0, 0x5

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/Js;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Js;->A05:Lcom/facebook/ads/redexgen/X/Js;

    aput-object v0, v1, v7

    sget-object v0, Lcom/facebook/ads/redexgen/X/Js;->A08:Lcom/facebook/ads/redexgen/X/Js;

    aput-object v0, v1, v6

    sget-object v0, Lcom/facebook/ads/redexgen/X/Js;->A06:Lcom/facebook/ads/redexgen/X/Js;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/Js;->A07:Lcom/facebook/ads/redexgen/X/Js;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/Js;->A09:Lcom/facebook/ads/redexgen/X/Js;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/Js;->A04:[Lcom/facebook/ads/redexgen/X/Js;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 40494
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40495
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Js;->A01:I

    .line 40496
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Js;->A00:I

    .line 40497
    return-void
.end method

.method public static A00(I)Lcom/facebook/ads/internal/api/AdSizeApi;
    .locals 4

    .line 40498
    const/4 v0, 0x4

    if-eq p0, v0, :cond_7

    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    const/4 v3, 0x6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Js;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Js;->A03:[Ljava/lang/String;

    const-string v1, "d6xHwW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x64

    if-ne p0, v0, :cond_2

    .line 40499
    sget-object v3, Lcom/facebook/ads/redexgen/X/Js;->A08:Lcom/facebook/ads/redexgen/X/Js;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Js;->A03:[Ljava/lang/String;

    const-string v1, "9Uxk3mv3WsrPMErcxT6Ht5YAKrK89FvY"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    return-object v3

    .line 40500
    :cond_2
    const/16 v2, 0x4d

    const/16 v1, 0x14

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Js;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40501
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Js;->A09:Lcom/facebook/ads/redexgen/X/Js;

    return-object v0

    .line 40502
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/Js;->A07:Lcom/facebook/ads/redexgen/X/Js;

    return-object v0

    .line 40503
    :cond_5
    sget-object v3, Lcom/facebook/ads/redexgen/X/Js;->A06:Lcom/facebook/ads/redexgen/X/Js;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Js;->A03:[Ljava/lang/String;

    const-string v1, "y7LxyXpw28uPG1oh6ojydDBHFz8O2dUV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Js;->A03:[Ljava/lang/String;

    const-string v1, "I8l7wEp0gNnZBY4ZT4NfQEdl26oUK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 40504
    :cond_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/Js;->A05:Lcom/facebook/ads/redexgen/X/Js;

    return-object v0
.end method

.method public static A01(II)Lcom/facebook/ads/redexgen/X/Js;
    .locals 5

    .line 40505
    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A08:Lcom/facebook/ads/redexgen/X/Js;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Js;->A00:I

    if-ne v0, p1, :cond_0

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Js;->A01:I

    if-ne v0, p0, :cond_0

    .line 40506
    return-object v1

    .line 40507
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A05:Lcom/facebook/ads/redexgen/X/Js;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Js;->A00:I

    if-ne v0, p1, :cond_1

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Js;->A01:I

    if-ne v0, p0, :cond_1

    .line 40508
    return-object v1

    .line 40509
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A06:Lcom/facebook/ads/redexgen/X/Js;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Js;->A00:I

    if-ne v0, p1, :cond_2

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Js;->A01:I

    if-ne v0, p0, :cond_2

    .line 40510
    return-object v1

    .line 40511
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A07:Lcom/facebook/ads/redexgen/X/Js;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Js;->A00:I

    if-ne v0, p1, :cond_3

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Js;->A01:I

    if-ne v0, p0, :cond_3

    .line 40512
    return-object v1

    .line 40513
    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/Js;->A09:Lcom/facebook/ads/redexgen/X/Js;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Js;->A00:I

    if-ne v0, p1, :cond_5

    iget v3, v4, Lcom/facebook/ads/redexgen/X/Js;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Js;->A03:[Ljava/lang/String;

    const-string v1, "wE5TdRv4fqa3ypxdO4XZR5CKBc7OfdTv"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4wIZRzMfb7RCybhEAXaIRWUeHU2aSPXz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v3, p0, :cond_5

    .line 40514
    return-object v4

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40515
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/AdSize;)Lcom/facebook/ads/redexgen/X/Js;
    .locals 2

    .line 40516
    invoke-virtual {p0}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Js;->A01(II)Lcom/facebook/ads/redexgen/X/Js;

    move-result-object v0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Js;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Js;->A03:[Ljava/lang/String;

    const-string v1, "VIfYmPrZv6LGyPijtMThbF852HrrLBlI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4hX5Bu6XJriXyO1ylOVNaDjvP68bIemq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x44

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x61

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Js;->A02:[B

    return-void

    :array_0
    .array-data 1
        0xft
        0xct
        0x3t
        0x3t
        0x8t
        0x1ft
        0x12t
        0x7et
        0x7ft
        0x7dt
        0x12t
        0x78t
        0x7dt
        0x31t
        0x32t
        0x3dt
        0x3dt
        0x36t
        0x21t
        0x2ct
        0x3bt
        0x36t
        0x3at
        0x34t
        0x3bt
        0x27t
        0x2ct
        0x46t
        0x43t
        0x3dt
        0x3et
        0x31t
        0x31t
        0x3at
        0x2dt
        0x20t
        0x37t
        0x3at
        0x36t
        0x38t
        0x37t
        0x2bt
        0x20t
        0x46t
        0x4ft
        0x61t
        0x66t
        0x7ct
        0x6dt
        0x7at
        0x7bt
        0x7ct
        0x61t
        0x7ct
        0x61t
        0x69t
        0x64t
        0x24t
        0x33t
        0x35t
        0x22t
        0x37t
        0x38t
        0x31t
        0x3at
        0x33t
        0x29t
        0x3et
        0x33t
        0x3ft
        0x31t
        0x3et
        0x22t
        0x29t
        0x44t
        0x43t
        0x46t
        0x23t
        0x18t
        0x1dt
        0x18t
        0x19t
        0x1t
        0x18t
        0x56t
        0x37t
        0x12t
        0x25t
        0x1ft
        0xct
        0x13t
        0x56t
        0x2t
        0xft
        0x6t
        0x13t
        0x58t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Tf0gzpE1z0DOygMknAScYVGYgxUCN6If"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OJWxv0TW5miQ3Kn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GlLNElMoCA8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Xgk0OdYHTIXe2Q1HA3YZKPRbdeS7oU4D"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PHyDcqcelsxe2C8hrB0OPMJ92C1p28xb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tjympuwDZEvmjp4dt80fu9pzZi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KXSmHfhq6DtFyO2I4KCsZ7pXn2h8CepA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nIUh7sEtDWkIx81Fpy5uA9wFEXEhOC2B"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Js;->A03:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Js;
    .locals 1

    .line 40520
    const-class v0, Lcom/facebook/ads/redexgen/X/Js;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Js;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/Js;
    .locals 1

    .line 40521
    sget-object v0, Lcom/facebook/ads/redexgen/X/Js;->A04:[Lcom/facebook/ads/redexgen/X/Js;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/Js;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Js;

    return-object v0
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/AdSize;
    .locals 2

    .line 40517
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Js;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Js;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/AdSize;->fromWidthAndHeight(II)Lcom/facebook/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 40518
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Js;->A00:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 40519
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Js;->A01:I

    return v0
.end method
