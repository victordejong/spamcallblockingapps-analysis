.class public final Lcom/facebook/ads/redexgen/X/Gp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Gn;,
        Lcom/facebook/ads/redexgen/X/Go;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/util/regex/Pattern;

.field public static final A04:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 35423
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gp;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gp;->A05()V

    const/16 v2, 0xa1

    const/16 v1, 0x1a

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gp;->A03:Ljava/util/regex/Pattern;

    .line 35424
    const/4 v2, 0x3

    const/16 v1, 0xc

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gp;->A04:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gp;->A00:Ljava/lang/StringBuilder;

    .line 35427
    return-void
.end method

.method public static A00(Ljava/lang/String;)I
    .locals 7

    .line 35428
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_1

    .line 35429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2b

    const/16 v1, 0x16

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/16 v1, 0xf

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35430
    const/high16 v0, -0x80000000

    return v0

    .line 35431
    :sswitch_0
    const/16 v2, 0xc5

    const/4 v1, 0x6

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xfe

    const/4 v1, 0x6

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/16 v2, 0xcb

    const/4 v1, 0x3

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x119

    const/4 v1, 0x5

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 35432
    :cond_1
    return v4

    .line 35433
    :cond_2
    return v3

    .line 35434
    :cond_3
    return v6

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_0
        -0x4009266b -> :sswitch_1
        0x188db -> :sswitch_2
        0x68ac462 -> :sswitch_3
    .end sparse-switch
.end method

.method public static A01(Ljava/lang/String;I)I
    .locals 2

    .line 35435
    const/16 v0, 0x3e

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 35436
    .local p0, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public static A02(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 9

    .line 35437
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v6, :cond_2

    if-eq v0, v7, :cond_2

    .line 35438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    const/16 v1, 0x19

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/16 v1, 0xf

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35439
    const/4 v0, 0x0

    return-object v0

    .line 35440
    :sswitch_0
    const/16 v2, 0xc5

    const/4 v1, 0x6

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xfe

    const/4 v1, 0x6

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "Nev7snLoL"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "GG7J0bVfg5e3yRX2ET6pLDSQlPDtyxDc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_2
    const/16 v2, 0xcb

    const/4 v1, 0x3

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_3
    const/16 v2, 0xf4

    const/4 v1, 0x4

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_4
    const/16 v2, 0x110

    const/4 v1, 0x5

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "8ehJNkDn0bxVwAzqp3NLeAXYAjiG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "60JeRiKTAuaVpz1XxBWd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v8, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_5
    const/16 v2, 0x119

    const/4 v1, 0x5

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 35441
    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    .line 35442
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    .line 35443
    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_0
        -0x4009266b -> :sswitch_1
        0x188db -> :sswitch_2
        0x32a007 -> :sswitch_3
        0x677c21c -> :sswitch_4
        0x68ac462 -> :sswitch_5
    .end sparse-switch
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gp;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 35444
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 35445
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35446
    const/4 v0, 0x0

    return-object v0

    .line 35447
    :cond_0
    const/16 v2, 0x9c

    const/4 v1, 0x5

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0n(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x120

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gp;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x50t
        -0x72t
        -0x5bt
        -0x4et
        -0x1at
        -0x23t
        -0x4bt
        -0x37t
        -0x4dt
        -0x3ct
        -0x4et
        -0x1at
        -0x23t
        -0x4bt
        -0x4dt
        -0x26t
        -0x32t
        -0x46t
        -0x7t
        0x1et
        0x26t
        0x11t
        0x1ct
        0x19t
        0x14t
        -0x30t
        0x11t
        0x1ct
        0x19t
        0x17t
        0x1et
        0x1dt
        0x15t
        0x1et
        0x24t
        -0x30t
        0x26t
        0x11t
        0x1ct
        0x25t
        0x15t
        -0x16t
        -0x30t
        0x23t
        0x48t
        0x50t
        0x3bt
        0x46t
        0x43t
        0x3et
        -0x6t
        0x3bt
        0x48t
        0x3dt
        0x42t
        0x49t
        0x4ct
        -0x6t
        0x50t
        0x3bt
        0x46t
        0x4ft
        0x3ft
        0x14t
        -0x6t
        0x4t
        0x1ct
        0x1at
        0x21t
        0x21t
        0x1at
        0x1ft
        0x18t
        -0x2ft
        0x13t
        0x12t
        0x15t
        -0x2ft
        0x14t
        0x26t
        0x16t
        -0x2ft
        0x24t
        0x16t
        0x25t
        0x25t
        0x1at
        0x1ft
        0x18t
        -0x15t
        -0x2ft
        0x2at
        0x42t
        0x40t
        0x47t
        0x47t
        0x40t
        0x45t
        0x3et
        -0x9t
        0x3at
        0x4ct
        0x3ct
        -0x9t
        0x4et
        0x40t
        0x4bt
        0x3ft
        -0x9t
        0x39t
        0x38t
        0x3bt
        -0x9t
        0x3ft
        0x3ct
        0x38t
        0x3bt
        0x3ct
        0x49t
        0x11t
        -0x9t
        0x1at
        0x33t
        0x30t
        0x33t
        0x34t
        0x3ct
        0x33t
        -0x1bt
        0x28t
        0x3at
        0x2at
        -0x1bt
        0x38t
        0x2at
        0x39t
        0x39t
        0x2et
        0x33t
        0x2ct
        -0x1bt
        -0x26t
        -0x18t
        -0x1bt
        -0x7t
        -0x9t
        -0x9t
        -0x3at
        -0x8t
        -0x18t
        -0x2dt
        -0x1ct
        -0xbt
        -0xat
        -0x18t
        -0xbt
        0x19t
        -0x22t
        0x1at
        -0x14t
        0x1bt
        0x17t
        -0x1ft
        0x15t
        0xct
        -0x1ct
        -0x1et
        0x15t
        0x2ct
        -0x1ct
        -0x1at
        -0x1at
        -0x9t
        0x15t
        0x2ct
        -0x1ct
        -0x1ft
        0x15t
        0xct
        -0x1ct
        -0x1et
        -0x1ft
        -0x19t
        -0x1dt
        -0x1et
        -0x8t
        -0x23t
        0xat
        0x15t
        0x12t
        0x10t
        0x17t
        -0x23t
        -0x17t
        -0x14t
        -0x2t
        0x3ct
        0xdt
        0xft
        0x18t
        0x1et
        0xft
        0x1ct
        0x16t
        0x1ft
        0x15t
        0x26t
        0x33t
        0xbt
        0x43t
        0x41t
        0x48t
        0x49t
        0x4ct
        0x43t
        0x48t
        0x41t
        -0x6t
        0x4ft
        0x48t
        0x4dt
        0x4ft
        0x4at
        0x4at
        0x49t
        0x4ct
        0x4et
        0x3ft
        0x3et
        -0x6t
        0x3ft
        0x48t
        0x4et
        0x43t
        0x4et
        0x53t
        0x14t
        -0x6t
        0x1t
        0x0t
        0x52t
        0x47t
        0x54t
        0x4dt
        0x31t
        0x2at
        0x2bt
        0x39t
        0x41t
        0x3et
        0x43t
        0x3at
        0xft
        0x17t
        -0x16t
        -0x1at
        -0x1ft
        -0x1ft
        -0x17t
        -0x1et
        -0x15t
        -0x21t
        -0x10t
        -0x13t
        0xft
        0xet
        0x12t
        0x8t
        0x13t
        0x8t
        0xet
        0xdt
        0xft
        0x6t
        0x4t
        0x5t
        0x11t
        0x2ct
        0x22t
        0x33t
        0x1et
        0x0t
        0x1t
        -0x12t
        -0x1t
        0x1t
        0x27t
        0x59t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zqkrgmpUIOITf23t7W2X"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZVNObR70hdsGy2llb8MyAx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4lzeLXvfxusHT60jBShkgBh2HroxYPLb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "B3GTWRJ8b09m8eIA1Jst"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZqeI67JFehXMiCY2A1U0D4eOUZT1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "samvHjuLkZUHaqDsDKCZ6bKTKLBU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KsqGa9wAcggy6xDnVQC2l2SxVAAG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RIhdlOLGA1ikMhOqMtbWaw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static A07(Landroid/text/SpannableStringBuilder;Lcom/facebook/ads/redexgen/X/Gk;II)V
    .locals 5

    .line 35448
    if-nez p1, :cond_0

    .line 35449
    return-void

    .line 35450
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A09()I

    move-result v1

    const/4 v0, -0x1

    const/16 v3, 0x21

    if-eq v1, v0, :cond_1

    .line 35451
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A09()I

    move-result v1

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 35452
    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35453
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A0P()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "TPflp7kkpc4Xgky6lG48X0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "FquUf6LqKb0IlvRsTwbZaS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    .line 35454
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35455
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A0Q()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "eVgfdvkpdWi1uZLGOVYHa7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "x3P3S6rl3oxkvBVHKeZFdh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    .line 35456
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35457
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A0O()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35458
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A07()I

    move-result v1

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 35459
    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35460
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A0N()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35461
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A06()I

    move-result v1

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 35462
    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35463
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A0I()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 35464
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A0I()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 35465
    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35466
    :cond_7
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A0B()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 35467
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A0B()Landroid/text/Layout$Alignment;

    move-result-object v1

    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    .line 35468
    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35469
    :cond_8
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A08()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    const/4 v0, 0x2

    if-eq v1, v0, :cond_a

    const/4 v0, 0x3

    if-eq v1, v0, :cond_9

    .line 35470
    :goto_0
    return-void

    .line 35471
    :cond_9
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A05()F

    move-result v1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 35472
    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35473
    goto :goto_0

    .line 35474
    :cond_a
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A05()F

    move-result v1

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 35475
    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35476
    goto :goto_0

    .line 35477
    :cond_b
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Gk;->A05()F

    move-result v0

    float-to-int v1, v0

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 35478
    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35479
    goto :goto_0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A08(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 6

    .line 35480
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v0, 0xced

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-eq v1, v0, :cond_8

    const/16 v0, 0xd88

    if-eq v1, v0, :cond_7

    const v0, 0x179c4

    if-eq v1, v0, :cond_6

    const v0, 0x337f11

    if-eq v1, v0, :cond_5

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_1

    .line 35481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd1

    const/16 v1, 0x1f

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    const/4 v1, 0x2

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/16 v1, 0xf

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35482
    :goto_1
    return-void

    .line 35483
    :cond_1
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 35484
    goto :goto_1

    .line 35485
    :cond_2
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 35486
    goto :goto_1

    .line 35487
    :cond_3
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 35488
    goto :goto_1

    .line 35489
    :cond_4
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 35490
    goto :goto_1

    .line 35491
    :cond_5
    const/16 v2, 0x104

    const/4 v1, 0x4

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    const/16 v2, 0xc0

    const/4 v1, 0x3

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_7
    const/16 v2, 0xfc

    const/4 v1, 0x2

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0xce

    const/4 v1, 0x2

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static A09(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gm;)V
    .locals 7

    .line 35492
    const/16 v2, 0x8d

    const/16 v1, 0xf

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gp;->A04:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 35493
    .local p1, "cueSettingMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35494
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 35495
    .local v2, "name":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 35496
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    const/16 v2, 0xf8

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35497
    invoke-static {v6, p1}, Lcom/facebook/ads/redexgen/X/Gp;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gm;)V

    goto :goto_0

    .line 35498
    :cond_0
    const/16 v2, 0xbb

    const/4 v1, 0x5

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35499
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Gp;->A02(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gm;->A0B(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Gm;

    goto :goto_0

    .line 35500
    :cond_1
    const/16 v2, 0x108

    const/16 v1, 0x8

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35501
    invoke-static {v6, p1}, Lcom/facebook/ads/redexgen/X/Gp;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gm;)V

    goto :goto_0

    .line 35502
    :cond_2
    const/16 v2, 0x115

    const/4 v1, 0x4

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35503
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Gq;->A00(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gm;->A05(F)Lcom/facebook/ads/redexgen/X/Gm;

    goto :goto_0

    .line 35504
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x79

    const/16 v1, 0x14

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    const/4 v1, 0x1

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35505
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x41

    const/16 v1, 0x1a

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 35506
    :cond_4
    return-void
.end method

.method public static A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 35507
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 35508
    .local p0, "commaIndex":I
    const/4 v3, 0x0

    const/4 v0, -0x1

    if-eq v5, v0, :cond_3

    .line 35509
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gp;->A00(Ljava/lang/String;)I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "eCPsa0ENRhmL3kbl29TivILnEOKV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "V5yuFNnDMZFXNiLu1M8w"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Gm;->A06(I)Lcom/facebook/ads/redexgen/X/Gm;

    .line 35510
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 35511
    :goto_0
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35512
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Gq;->A00(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gm;->A03(F)Lcom/facebook/ads/redexgen/X/Gm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Gm;->A07(I)Lcom/facebook/ads/redexgen/X/Gm;

    .line 35513
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Gm;
    :goto_1
    return-void

    .line 35514
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 35515
    .local p1, "lineNumber":I
    if-gez v3, :cond_1

    .line 35516
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 35517
    :cond_1
    int-to-float v0, v3

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gm;->A03(F)Lcom/facebook/ads/redexgen/X/Gm;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Gm;->A07(I)Lcom/facebook/ads/redexgen/X/Gm;

    goto :goto_1

    .line 35518
    .local p1, "lineNumber":I
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "MPZnjPwgX4U4ij13oFP24JsVAxNGFQgP"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-gez v3, :cond_1

    goto :goto_2

    .line 35519
    :cond_3
    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gm;->A06(I)Lcom/facebook/ads/redexgen/X/Gm;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gm;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 35520
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 35521
    .local p0, "commaIndex":I
    const/4 v0, -0x1

    if-eq v4, v0, :cond_1

    .line 35522
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "UQ8LPkNS8TwbVMUzOZcvR8VtEGv7P5ML"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Gp;->A00(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gm;->A08(I)Lcom/facebook/ads/redexgen/X/Gm;

    .line 35523
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 35524
    :cond_1
    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gm;->A08(I)Lcom/facebook/ads/redexgen/X/Gm;

    .line 35525
    :goto_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Gq;->A00(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gm;->A04(F)Lcom/facebook/ads/redexgen/X/Gm;

    .line 35526
    return-void
.end method

.method public static A0C(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gn;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Gn;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Gk;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Go;",
            ">;)V"
        }
    .end annotation

    .line 35527
    .local v5, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    .local v9, "scratchStyleMatches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;>;"
    iget v4, p1, Lcom/facebook/ads/redexgen/X/Gn;->A00:I

    .line 35528
    .local p0, "start":I
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 35529
    .local p1, "end":I
    iget-object v7, p1, Lcom/facebook/ads/redexgen/X/Gn;->A01:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v6, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    const/16 v9, 0x69

    sget-object v8, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v2, v8, v0

    const/4 v0, 0x7

    aget-object v0, v8, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    :goto_1
    const/16 v1, 0x21

    packed-switch v0, :pswitch_data_0

    .line 35530
    return-void

    .line 35531
    :cond_1
    sget-object v8, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v2, "zL7GuH4XHmQhlJnrbm3Z1n3"

    const/4 v0, 0x3

    aput-object v2, v8, v0

    if-eq v1, v9, :cond_8

    const v0, 0x3291ee

    if-eq v1, v0, :cond_7

    const/16 v0, 0x62

    if-eq v1, v0, :cond_6

    const/16 v0, 0x63

    if-eq v1, v0, :cond_5

    const/16 v0, 0x75

    if-eq v1, v0, :cond_4

    const/16 v0, 0x76

    if-eq v1, v0, :cond_3

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    const/16 v2, 0x11f

    const/4 v1, 0x1

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    const/16 v2, 0x11e

    const/4 v1, 0x1

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    const/16 v9, 0xc4

    const/4 v8, 0x1

    const/16 v2, 0x70

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_b

    sget-object v10, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "u4jYv8uTHTCGkTzp8oyQPYOcUJ39"

    const/4 v0, 0x6

    aput-object v1, v10, v0

    const-string v1, "LWQCxoRgb5cL3CIsjjFe1Bfr2mRi"

    const/4 v0, 0x5

    aput-object v1, v10, v0

    invoke-static {v9, v8, v2}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_6
    const/16 v2, 0xc3

    const/4 v1, 0x1

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    const/16 v2, 0xf0

    const/4 v1, 0x4

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto/16 :goto_1

    :cond_8
    const/16 v2, 0xd0

    const/4 v1, 0x1

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto/16 :goto_1

    .line 35532
    :pswitch_0
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v0, v4, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35533
    goto :goto_2

    .line 35534
    :pswitch_1
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v0, v4, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35535
    goto :goto_2

    .line 35536
    :pswitch_2
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2, v0, v4, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35537
    :goto_2
    :pswitch_3
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 35538
    invoke-static {p3, p0, p1, p4}, Lcom/facebook/ads/redexgen/X/Gp;->A0E(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gn;Ljava/util/List;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    goto/16 :goto_0

    .line 35539
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "nVnfpvkwzr96dBPJUNvLmZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "hT1Hj90HR1mG2AKf2NEuaB"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    .line 35540
    .local p2, "styleMatchesCount":I
    const/4 v1, 0x0

    .local p3, "i":I
    :goto_3
    if-ge v1, v2, :cond_a

    .line 35541
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Go;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Go;->A01:Lcom/facebook/ads/redexgen/X/Gk;

    invoke-static {p2, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Gp;->A07(Landroid/text/SpannableStringBuilder;Lcom/facebook/ads/redexgen/X/Gk;II)V

    .line 35542
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 35543
    .end local p3    # "i":I
    :cond_a
    return-void

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static A0D(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gm;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Gm;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Gk;",
            ">;)V"
        }
    .end annotation

    .line 35544
    .local v1, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 35545
    .local p0, "spannedText":Landroid/text/SpannableStringBuilder;
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 35546
    .local p1, "startTagStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/ads/internal/exoplayer2/text/webvtt/WebvttCueParser$StartTag;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 35547
    .local p2, "scratchStyleMatches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v7, 0x0

    .line 35548
    .local p3, "pos":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_12

    .line 35549
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 35550
    .local v4, "curr":C
    const/16 v0, 0x26

    if-eq v2, v0, :cond_b

    const/16 v0, 0x3c

    if-eq v2, v0, :cond_1

    .line 35551
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_c

    .line 35552
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "MGzabAcQVQWcqq08arYyLb0oUgjL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "hquwr8b7zaTb3OBDGlJy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 35553
    :cond_1
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 35554
    add-int/lit8 v7, v7, 0x1

    .line 35555
    goto :goto_0

    .line 35556
    :cond_2
    move v9, v7

    .line 35557
    .local v5, "ltPos":I
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v8, 0x0

    const/16 v2, 0x2f

    const/4 v1, 0x1

    if-ne v0, v2, :cond_6

    const/4 v6, 0x1

    .line 35558
    .local v3, "isClosingTag":Z
    :goto_1
    add-int/lit8 v0, v9, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A01(Ljava/lang/String;I)I

    move-result v7

    .line 35559
    add-int/lit8 v0, v7, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v8, 0x1

    .line 35560
    .local v7, "isVoidTag":Z
    :cond_3
    if-eqz v6, :cond_4

    const/4 v1, 0x2

    :cond_4
    add-int/2addr v1, v9

    if-eqz v8, :cond_5

    add-int/lit8 v0, v7, -0x2

    :goto_2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 35561
    .local v0, "fullTagExpression":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Gp;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35562
    .local v2, "tagName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Gp;->A0F(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 35563
    :cond_5
    add-int/lit8 v0, v7, -0x1

    goto :goto_2

    .line 35564
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 35565
    :cond_7
    if-eqz v6, :cond_a

    .line 35566
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 35567
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gn;

    .line 35568
    .local v0, "startTag":Lcom/facebook/ads/redexgen/X/Gn;
    invoke-static {p0, v0, v4, p3, v3}, Lcom/facebook/ads/redexgen/X/Gp;->A0C(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gn;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 35569
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gn;->A01:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_0

    .line 35570
    .end local v0    # "startTag":Lcom/facebook/ads/redexgen/X/Gn;
    :cond_a
    if-nez v8, :cond_0

    .line 35571
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Gn;->A01(Ljava/lang/String;I)Lcom/facebook/ads/redexgen/X/Gn;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 35572
    .end local v5    # "ltPos":I
    .end local v3    # "isClosingTag":Z
    .end local v7    # "isVoidTag":Z
    .end local v0
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_b
    const/16 v1, 0x3b

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 35573
    .local v5, "semiColonEndIndex":I
    const/16 v1, 0x20

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 35574
    .local v3, "spaceEndIndex":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_e

    .line 35575
    move v6, v8

    .line 35576
    .local v0, "entityEndIndex":I
    :goto_3
    if-eq v6, v0, :cond_d

    .line 35577
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_10

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35578
    :cond_d
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_c

    .line 35579
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "N1OayJfMuOVknzobQ0uXfzHttpDN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "koPdciR5m3KG8F8FzH9f"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 v7, v7, 0x1

    .line 35580
    goto/16 :goto_0

    .line 35581
    :cond_e
    if-ne v8, v0, :cond_f

    goto :goto_3

    .line 35582
    :cond_f
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_3

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "boaYs1Clds5izLkSD84qB9Oefvsz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "RMqRJee9M50xm87h8THMCMMzlOrM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v7, v4}, Lcom/facebook/ads/redexgen/X/Gp;->A08(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    .line 35583
    if-ne v6, v8, :cond_11

    .line 35584
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 35585
    :cond_11
    add-int/lit8 v7, v6, 0x1

    goto/16 :goto_0

    .line 35586
    :cond_12
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 35587
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/Gn;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_13

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_13
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gp;->A02:[Ljava/lang/String;

    const-string v1, "St4hLC9yT11NHsQw91wfRFDNmH5o8Q2K"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {p0, v6, v4, p3, v3}, Lcom/facebook/ads/redexgen/X/Gp;->A0C(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gn;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    goto :goto_4

    .line 35588
    :cond_14
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gn;->A00()Lcom/facebook/ads/redexgen/X/Gn;

    move-result-object v0

    .line 35589
    invoke-static {p0, v0, v4, p3, v3}, Lcom/facebook/ads/redexgen/X/Gp;->A0C(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gn;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 35590
    invoke-virtual {p2, v4}, Lcom/facebook/ads/redexgen/X/Gm;->A0C(Landroid/text/SpannableStringBuilder;)Lcom/facebook/ads/redexgen/X/Gm;

    .line 35591
    return-void
.end method

.method public static A0E(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gn;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Gk;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Gn;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Go;",
            ">;)V"
        }
    .end annotation

    .line 35592
    .local v3, "declaredStyles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    .local v1, "output":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 35593
    .local p0, "styleCount":I
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 35594
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Gk;

    .line 35595
    .local p2, "style":Lcom/facebook/ads/redexgen/X/Gk;
    iget-object v2, p2, Lcom/facebook/ads/redexgen/X/Gn;->A01:Ljava/lang/String;

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Gn;->A03:[Ljava/lang/String;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Gn;->A02:Ljava/lang/String;

    invoke-virtual {v3, p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gk;->A0A(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 35596
    .local p3, "score":I
    if-lez v1, :cond_0

    .line 35597
    new-instance v0, Lcom/facebook/ads/redexgen/X/Go;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Go;-><init>(ILcom/facebook/ads/redexgen/X/Gk;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35598
    .end local p2    # "style":Lcom/facebook/ads/redexgen/X/Gk;
    .end local p3    # "score":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 35599
    .end local p1    # "i":I
    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 35600
    return-void
.end method

.method public static A0F(Ljava/lang/String;)Z
    .locals 9

    .line 35601
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v0, 0x62

    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-eq v1, v0, :cond_6

    const/16 v0, 0x63

    if-eq v1, v0, :cond_5

    const/16 v0, 0x69

    if-eq v1, v0, :cond_4

    const v0, 0x3291ee

    if-eq v1, v0, :cond_3

    const/16 v0, 0x75

    if-eq v1, v0, :cond_2

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_7

    if-eq v0, v4, :cond_7

    if-eq v0, v5, :cond_7

    if-eq v0, v6, :cond_7

    if-eq v0, v7, :cond_7

    .line 35602
    return v8

    .line 35603
    :cond_1
    const/16 v2, 0x11f

    const/4 v1, 0x1

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/16 v2, 0x11e

    const/4 v1, 0x1

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/16 v2, 0xf0

    const/4 v1, 0x4

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/16 v2, 0xd0

    const/4 v1, 0x1

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const/16 v2, 0xc4

    const/4 v1, 0x1

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/16 v2, 0xc3

    const/4 v1, 0x1

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 35604
    :cond_7
    return v3
.end method

.method public static A0G(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/Gm;Ljava/lang/StringBuilder;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Lcom/facebook/ads/redexgen/X/IM;",
            "Lcom/facebook/ads/redexgen/X/Gm;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Gk;",
            ">;)Z"
        }
    .end annotation

    .line 35605
    .local p5, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    const/4 v4, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gq;->A01(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/facebook/ads/redexgen/X/Gm;->A0A(J)Lcom/facebook/ads/redexgen/X/Gm;

    move-result-object v3

    const/4 v0, 0x2

    .line 35606
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gq;->A01(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Gm;->A09(J)Lcom/facebook/ads/redexgen/X/Gm;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35607
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/facebook/ads/redexgen/X/Gp;->A09(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gm;)V

    .line 35608
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 35609
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v4

    .local p2, "line":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35610
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 35611
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x3d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35612
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 35613
    :cond_1
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3, p5}, Lcom/facebook/ads/redexgen/X/Gp;->A0D(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gm;Ljava/util/List;)V

    .line 35614
    return v2

    .line 35615
    .end local p2    # "line":Ljava/lang/String;
    .local p1, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    const/16 v1, 0x1e

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/16 v1, 0xf

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gp;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35616
    return v4
.end method


# virtual methods
.method public final A0H(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/Gm;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IM;",
            "Lcom/facebook/ads/redexgen/X/Gm;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Gk;",
            ">;)Z"
        }
    .end annotation

    .line 35617
    .local v8, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    move-object v5, p1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v3

    .line 35618
    .local p0, "firstLine":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v3, :cond_0

    .line 35619
    return v2

    .line 35620
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gp;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 35621
    .local v6, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    move-object v8, p3

    move-object v6, p2

    if-eqz v0, :cond_1

    .line 35622
    const/4 v3, 0x0

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Gp;->A00:Ljava/lang/StringBuilder;

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Gp;->A0G(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/Gm;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v0

    return v0

    .line 35623
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v1

    .line 35624
    .local v8, "secondLine":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 35625
    return v2

    .line 35626
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gp;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 35627
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35628
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Gp;->A00:Ljava/lang/StringBuilder;

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Gp;->A0G(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/Gm;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v0

    return v0

    .line 35629
    :cond_3
    return v2
.end method
