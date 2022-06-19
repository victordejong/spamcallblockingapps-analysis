.class public final Lcom/facebook/ads/redexgen/X/2p;
.super Lcom/facebook/ads/redexgen/X/Bb;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Gm;

.field public final A01:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 6088
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2p;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2p;->A03()V

    const/16 v2, 0x64

    const/4 v1, 0x4

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/2p;->A04:I

    .line 6089
    const/16 v2, 0x68

    const/4 v1, 0x4

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/2p;->A05:I

    .line 6090
    const/16 v2, 0x6c

    const/4 v1, 0x4

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/2p;->A06:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 6091
    const/16 v2, 0x54

    const/16 v1, 0x10

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Bb;-><init>(Ljava/lang/String;)V

    .line 6092
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:Lcom/facebook/ads/redexgen/X/IM;

    .line 6093
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gm;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gm;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:Lcom/facebook/ads/redexgen/X/Gm;

    .line 6094
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/Gm;I)Lcom/facebook/ads/redexgen/X/GB;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6095
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gm;->A0E()V

    .line 6096
    :cond_0
    :goto_0
    if-lez p2, :cond_3

    .line 6097
    const/16 v0, 0x8

    if-lt p2, v0, :cond_2

    .line 6098
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 6099
    .local p0, "boxSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v3

    .line 6100
    .local p1, "boxType":I
    add-int/lit8 p2, p2, -0x8

    .line 6101
    add-int/lit8 v2, v0, -0x8

    .line 6102
    .local p2, "payloadLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 6103
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ic;->A0R([BII)Ljava/lang/String;

    move-result-object v1

    .line 6104
    .local v0, "boxPayload":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 6105
    sub-int/2addr p2, v2

    .line 6106
    sget v0, Lcom/facebook/ads/redexgen/X/2p;->A05:I

    if-ne v3, v0, :cond_1

    .line 6107
    invoke-static {v1, p1}, Lcom/facebook/ads/redexgen/X/Gp;->A09(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gm;)V

    goto :goto_0

    .line 6108
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/2p;->A04:I

    if-ne v3, v0, :cond_0

    .line 6109
    const/4 v2, 0x0

    .line 6110
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 6111
    invoke-static {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A0D(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gm;Ljava/util/List;)V

    goto :goto_0

    .line 6112
    :cond_2
    const/16 v2, 0x30

    const/16 v1, 0x24

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6113
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gm;->A0D()Lcom/facebook/ads/redexgen/X/U8;

    move-result-object v0

    return-object v0
.end method

.method private final A01([BIZ)Lcom/facebook/ads/redexgen/X/U9;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 6115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6116
    .local p0, "resultingCueList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2p;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A03:[Ljava/lang/String;

    const-string v1, "2LnVhiSH7SL9YdZ87F4h"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Qyb1IkHlcD7bTfGOzql4nbken4j"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-lez v3, :cond_4

    .line 6117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2p;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A03:[Ljava/lang/String;

    const-string v1, "6sBEX9P7pFgTsYSgkMQo2fqp4erUYWOw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v0, 0x8

    if-lt v3, v0, :cond_3

    .line 6118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v3

    .line 6119
    .local p1, "boxSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 6120
    .local p2, "boxType":I
    sget v0, Lcom/facebook/ads/redexgen/X/2p;->A06:I

    if-ne v1, v0, :cond_2

    .line 6121
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:Lcom/facebook/ads/redexgen/X/Gm;

    add-int/lit8 v0, v3, -0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A00(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/Gm;I)Lcom/facebook/ads/redexgen/X/GB;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6122
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:Lcom/facebook/ads/redexgen/X/IM;

    add-int/lit8 v0, v3, -0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    goto :goto_0

    .line 6123
    :cond_3
    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6124
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/U9;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/U9;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/2p;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2p;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A03:[Ljava/lang/String;

    const-string v1, "KSvd7kn64kdgL81L3S7WKzT5oR1BMbwm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6c

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x70

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2p;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A03:[Ljava/lang/String;

    const-string v1, "UjOQTjhq5VADvbkhPHT35XYRFSCIL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "7aq5h3BeEMpUdAPohLG1VC7Lxblba"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/2p;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6t
        0x2bt
        0x20t
        0x2ct
        0x2at
        0x2dt
        0x29t
        0x22t
        0x31t
        0x22t
        -0x23t
        0xat
        0x2dt
        -0xft
        0x14t
        0x22t
        0x1ft
        0x33t
        0x31t
        0x31t
        -0x23t
        0x11t
        0x2ct
        0x2dt
        -0x23t
        0x9t
        0x22t
        0x33t
        0x22t
        0x29t
        -0x23t
        0x1ft
        0x2ct
        0x35t
        -0x23t
        0x25t
        0x22t
        0x1et
        0x21t
        0x22t
        0x2ft
        -0x23t
        0x23t
        0x2ct
        0x32t
        0x2bt
        0x21t
        -0x15t
        -0x4at
        -0x25t
        -0x30t
        -0x24t
        -0x26t
        -0x23t
        -0x27t
        -0x2et
        -0x1ft
        -0x2et
        -0x73t
        -0x1dt
        -0x1ft
        -0x1ft
        -0x73t
        -0x30t
        -0x1et
        -0x2et
        -0x73t
        -0x31t
        -0x24t
        -0x1bt
        -0x73t
        -0x2bt
        -0x2et
        -0x32t
        -0x2ft
        -0x2et
        -0x21t
        -0x73t
        -0x2dt
        -0x24t
        -0x1et
        -0x25t
        -0x2ft
        -0x65t
        -0x1at
        0x9t
        -0x33t
        -0x10t
        -0x2t
        -0x5t
        0xft
        0xdt
        0xdt
        -0x23t
        -0x2t
        -0x4t
        0x8t
        -0x3t
        -0x2t
        0xbt
        0x1dt
        0xet
        0x26t
        0x19t
        0x6t
        0x7t
        0x7t
        -0x6t
        0x27t
        0x25t
        0x25t
        0x14t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ntj1qAW0OwCOJ4sLBfuxtZt5oVzOk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3C8nWPoGRinpiPiJvsol7zkcVsPZMttW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fNo0OPuEmVQbZkyUM4q5jOAGj7kvP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1ULz3m2wZ9g8rsJBJDt8Lmr4HGEIjgXb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Km3lk0fQ46UgIiUEuMNFPZWWlOU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fdUIpaGeIPjSHR4kaCP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lgEHSFy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QacdqQhgrfnQn1IavLUS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2p;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic A0d([BIZ)Lcom/facebook/ads/redexgen/X/GC;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6125
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2p;->A01([BIZ)Lcom/facebook/ads/redexgen/X/U9;

    move-result-object v0

    return-object v0
.end method
