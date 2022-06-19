.class public final Lcom/facebook/ads/redexgen/X/Gq;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/regex/Pattern;

.field public static final A03:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 35630
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gq;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gq;->A03()V

    const/16 v2, 0x34

    const/16 v1, 0x10

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A02:Ljava/util/regex/Pattern;

    .line 35631
    const/16 v2, 0x44

    const/16 v1, 0x16

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A03:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Ljava/lang/String;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 35633
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35634
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    return v1

    .line 35635
    :cond_0
    const/16 v2, 0x17

    const/16 v1, 0x1b

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(Ljava/lang/String;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 35636
    const-wide/16 v8, 0x0

    .line 35637
    .local p0, "value":J
    const/16 v2, 0x32

    const/4 v1, 0x2

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0n(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 35638
    .local v2, "parts":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v3, v6, v7

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 35639
    .local v1, "subparts":[Ljava/lang/String;
    array-length v4, v5

    :goto_0
    if-ge v7, v4, :cond_0

    aget-object v0, v5, v7

    .line 35640
    .local v0, "subpart":Ljava/lang/String;
    const-wide/16 v2, 0x3c

    mul-long/2addr v2, v8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long v8, v2, v0

    .line 35641
    .end local v0    # "subpart":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 35642
    :cond_0
    const-wide/16 v2, 0x3e8

    mul-long/2addr v8, v2

    .line 35643
    array-length v1, v6

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 35644
    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v8, v0

    .line 35645
    :cond_1
    mul-long/2addr v2, v8

    return-wide v2
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x78

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A00:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A01:[Ljava/lang/String;

    const-string v1, "EmscGhQ19WOox1Pj3WWrJMtqH7MHDKoy"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :array_0
    .array-data 1
        -0x2dt
        -0x45t
        0x29t
        0x5ct
        0x54t
        0x49t
        0x47t
        0x58t
        0x49t
        0x48t
        0x4t
        0x3bt
        0x29t
        0x26t
        0x3at
        0x38t
        0x38t
        0x12t
        0x4t
        0x2bt
        0x53t
        0x58t
        0x4t
        -0x2et
        -0x19t
        -0xct
        -0x1bt
        -0x19t
        -0x10t
        -0xat
        -0x1dt
        -0x17t
        -0x19t
        -0xbt
        -0x5et
        -0x11t
        -0x9t
        -0xbt
        -0xat
        -0x5et
        -0x19t
        -0x10t
        -0x1at
        -0x5et
        -0x7t
        -0x15t
        -0xat
        -0x16t
        -0x5et
        -0x59t
        0x13t
        -0x1bt
        -0xbt
        -0x1bt
        -0x1at
        -0x15t
        -0x24t
        -0x41t
        -0x41t
        -0x49t
        0x13t
        -0x60t
        -0x40t
        -0x3bt
        -0x3ft
        -0x40t
        -0x2at
        -0x45t
        0x5t
        -0x6at
        0x62t
        0x66t
        -0x1at
        -0x2t
        -0x14t
        -0x17t
        -0x3t
        -0x5t
        -0x5t
        -0x31t
        -0x31t
        -0x39t
        0x23t
        -0x50t
        -0x30t
        -0x2bt
        -0x2ft
        -0x30t
        -0x1at
        -0x35t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8rWBSz5yXILhtcVJQ1bFETmHIz7Kaj85"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Z033FvDEIdefLnRj1c4eVCnDBaNUjpge"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FlTMzIPJ7LynY8FUlmtKWuzJEYKUpsyC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "16JW4ORaIYyVb6cBIlMcSnyMhhbSC7RW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Dn84PruSrTzgmH8WiROOh1Sul18ict0X"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3UcLpUou6cUGeqUUK61iR9pTTEpPSPQd"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5BTctuAUxkuJr8BLOx4Q67JttiHhCuAB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0eLc3qMf6nTdEhHCEAHzvcpg2RITbfRz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 35646
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object p0

    .line 35647
    .local p0, "line":Ljava/lang/String;
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35648
    return-void

    .line 35649
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0x15

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;)V

    throw v0
.end method
