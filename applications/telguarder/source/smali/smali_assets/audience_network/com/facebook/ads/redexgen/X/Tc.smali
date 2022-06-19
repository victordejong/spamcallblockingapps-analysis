.class public final Lcom/facebook/ads/redexgen/X/Tc;
.super Lcom/facebook/ads/redexgen/X/Hl;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/regex/Pattern;

.field public static final A03:Ljava/util/regex/Pattern;

.field public static final A04:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 54639
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tc;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tc;->A07()V

    const/16 v3, 0x20

    const/16 v2, 0x8

    const/16 v1, 0x1d

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tc;->A02:Ljava/util/regex/Pattern;

    .line 54640
    const/16 v2, 0x25

    const/16 v1, 0x1d

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tc;->A03:Ljava/util/regex/Pattern;

    .line 54641
    const/16 v2, 0x42

    const/16 v1, 0x1e

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tc;->A04:Ljava/util/regex/Pattern;

    .line 54642
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .locals 0
    .param p8    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54643
    invoke-direct/range {p0 .. p8}, Lcom/facebook/ads/redexgen/X/Hl;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 54644
    return-void
.end method

.method public static A00(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Hp;)Lcom/facebook/ads/redexgen/X/Tc;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54645
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 54646
    .local p0, "name":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v1, 0x7

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 54647
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Tc;->A05(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Hp;)Ljava/io/File;

    move-result-object p0

    .line 54648
    .end local v0
    .local p1, "file":Ljava/io/File;
    if-nez p0, :cond_0

    .line 54649
    return-object v2

    .line 54650
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 54651
    .end local v0
    .restart local p1    # "file":Ljava/io/File;
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tc;->A04:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 54652
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 54653
    return-object v2

    .line 54654
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 54655
    .local v6, "length":J
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 54656
    .local v0, "id":I
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hp;->A0D(I)Ljava/lang/String;

    move-result-object v3

    .line 54657
    .local v0, "key":Ljava/lang/String;
    if-nez v3, :cond_3

    :goto_0
    return-object v2

    .line 54658
    :cond_3
    new-instance v2, Lcom/facebook/ads/redexgen/X/Tc;

    const/4 v0, 0x2

    .line 54659
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/Tc;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    goto :goto_0
.end method

.method public static A01(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Tc;
    .locals 9

    .line 54660
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tc;

    const-wide/16 v4, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-wide v2, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Tc;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0
.end method

.method public static A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Tc;
    .locals 9

    .line 54661
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tc;

    const-wide/16 v4, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-wide v2, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Tc;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0
.end method

.method public static A03(Ljava/lang/String;JJ)Lcom/facebook/ads/redexgen/X/Tc;
    .locals 9

    .line 54662
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tc;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-wide v4, p3

    move-wide v2, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Tc;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0
.end method

.method public static A04(Ljava/io/File;IJJ)Ljava/io/File;
    .locals 4

    .line 54663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v1, 0x7

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A05(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Hp;)Ljava/io/File;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54664
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 54665
    .local p0, "filename":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tc;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 54666
    .local p1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 54667
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tc;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_0

    .line 54668
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tc;->A01:[Ljava/lang/String;

    const-string v1, "RfNYMUbLAxJuvYToqUazWbGkTNn1uMu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v4, :cond_4

    .line 54669
    return-object v5

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54670
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tc;->A02:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tc;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_2

    .line 54671
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tc;->A01:[Ljava/lang/String;

    const-string v1, "QBaQIAtLclSB3vvHzmYIXAdThi7Eh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    .line 54672
    :goto_0
    return-object v5

    .line 54673
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tc;->A01:[Ljava/lang/String;

    const-string v1, "Zn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "DtnVbU5Ek"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 54674
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 54675
    .restart local v1    # "key":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 54676
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Hp;->A09(Ljava/lang/String;)I

    move-result v7

    const/4 v0, 0x2

    .line 54677
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v0, 0x3

    .line 54678
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 54679
    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Tc;->A04(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v1

    .line 54680
    .local v0, "newCacheFile":Ljava/io/File;
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 54681
    return-object v5

    .line 54682
    :cond_5
    return-object v1
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tc;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 4

    const/16 v0, 0x60

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tc;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tc;->A01:[Ljava/lang/String;

    const-string v1, "29"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "ma7d9nVb9"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Tc;->A00:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x68t
        -0x15t
        0x33t
        -0x10t
        -0x15t
        0x22t
        0x35t
        0x2ct
        0xat
        -0x2ct
        -0x26t
        -0x29t
        -0x2bt
        0x8t
        -0x26t
        -0x2ct
        0x8t
        0x10t
        -0x29t
        -0x2bt
        0x8t
        -0x26t
        -0x2ct
        0x8t
        0x10t
        -0x29t
        -0x2bt
        0x8t
        -0x26t
        0x22t
        -0x23t
        0x8t
        -0x26t
        0x11t
        0x24t
        0x1bt
        -0x30t
        -0x4at
        -0x80t
        -0x7at
        -0x7dt
        -0x7ft
        -0x4ct
        -0x7at
        -0x80t
        -0x4ct
        -0x44t
        -0x7dt
        -0x7ft
        -0x4ct
        -0x7at
        -0x80t
        -0x4ct
        -0x44t
        -0x7dt
        -0x7ft
        -0x4ct
        -0x7at
        -0x32t
        -0x76t
        -0x4ct
        -0x7at
        -0x43t
        -0x30t
        -0x39t
        0x7ct
        -0x20t
        -0x56t
        -0x22t
        -0x1at
        -0x53t
        -0x55t
        -0x22t
        -0x50t
        -0x56t
        -0x22t
        -0x1at
        -0x53t
        -0x55t
        -0x22t
        -0x50t
        -0x56t
        -0x22t
        -0x1at
        -0x53t
        -0x55t
        -0x22t
        -0x50t
        -0x8t
        -0x4bt
        -0x22t
        -0x50t
        -0x19t
        -0x6t
        -0xft
        -0x5at
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fafEySHwOF9t35Lq0KzFtlGcP7waFIVZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4aPJWq54v"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ji"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uRl8fgYYLvbe7bX7RdQo7jV6N4Bfzz3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6zm0KTKywlVRMMWXSC1dcqbRsSccMxh6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4hpWFqWpx1fI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Kv0X96Pf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tc;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A09(I)Lcom/facebook/ads/redexgen/X/Tc;
    .locals 9

    .line 54683
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hl;->A05:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 54684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 54685
    .local v6, "now":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hl;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    move v3, p1

    invoke-static/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Tc;->A04(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v8

    .line 54686
    .local p0, "newCacheFile":Ljava/io/File;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Tc;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0
.end method
