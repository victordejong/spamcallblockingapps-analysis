.class public final Lcom/facebook/ads/redexgen/X/2s;
.super Lcom/facebook/ads/redexgen/X/Bb;
.source ""


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 6549
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2s;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2s;->A03()V

    const/16 v2, 0x50

    const/16 v1, 0x4c

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2s;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2s;->A03:Ljava/util/regex/Pattern;

    .line 6550
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 6551
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2s;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Bb;-><init>(Ljava/lang/String;)V

    .line 6552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2s;->A00:Ljava/lang/StringBuilder;

    .line 6553
    return-void
.end method

.method public static A00(Ljava/util/regex/Matcher;I)J
    .locals 8

    .line 6554
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v4, 0x3c

    mul-long/2addr v6, v4

    mul-long/2addr v6, v4

    const-wide/16 v2, 0x3e8

    mul-long/2addr v6, v2

    .line 6555
    .local p0, "timestampMs":J
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v4

    mul-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 6556
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 6557
    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v6, v0

    .line 6558
    mul-long/2addr v2, v6

    return-wide v2
.end method

.method private final A01([BIZ)Lcom/facebook/ads/redexgen/X/UC;
    .locals 10

    .line 6559
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2s;->A02(III)Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6560
    .local p1, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    new-instance v4, Lcom/facebook/ads/redexgen/X/IC;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/IC;-><init>()V

    .line 6561
    .local p2, "cueTimesUs":Lcom/facebook/ads/redexgen/X/IC;
    new-instance v3, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/IM;-><init>([BI)V

    .line 6562
    .local p3, "subripData":Lcom/facebook/ads/redexgen/X/IM;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v8

    .local v1, "currentLine":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 6563
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6564
    :cond_1
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6565
    .end local v2
    .end local v0
    .local v2, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/16 v1, 0x18

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2s;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6566
    goto :goto_0

    .line 6567
    :goto_1
    const/4 v9, 0x0

    .line 6568
    .local v2, "haveEndTimecode":Z
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v8

    .line 6569
    if-nez v8, :cond_3

    .line 6570
    const/16 v2, 0x42

    const/16 v1, 0xe

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2s;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6571
    .end local v2    # "haveEndTimecode":Z
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GB;

    .line 6572
    .local p0, "cuesArray":[Lcom/facebook/ads/redexgen/X/GB;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6573
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IC;->A05()[J

    move-result-object v1

    .line 6574
    .local v2, "cueTimesUsArray":[J
    new-instance v0, Lcom/facebook/ads/redexgen/X/UC;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/UC;-><init>([Lcom/facebook/ads/redexgen/X/GB;[J)V

    return-object v0

    .line 6575
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/2s;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 6576
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6577
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/2s;->A00(Ljava/util/regex/Matcher;I)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/IC;->A04(J)V

    .line 6578
    const/4 v1, 0x6

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6579
    const/4 v9, 0x1

    .line 6580
    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/2s;->A00(Ljava/util/regex/Matcher;I)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/IC;->A04(J)V

    .line 6581
    :cond_4
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2s;->A00:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2s;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/2s;->A02:[Ljava/lang/String;

    const-string v1, "PTFzIxruiex4CdGCS8VTx87yMrd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "EmUduYXwC8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6582
    :goto_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/2s;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/2s;->A02:[Ljava/lang/String;

    const-string v1, "LlmiR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 6583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2s;->A00:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 6584
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2s;->A00:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2s;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6585
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2s;->A00:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6586
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2s;->A00:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 6587
    .local v6, "text":Landroid/text/Spanned;
    new-instance v0, Lcom/facebook/ads/redexgen/X/GB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GB;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6588
    if-eqz v9, :cond_0

    .line 6589
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6590
    .restart local v2    # "cueTimesUsArray":[J
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c

    const/16 v1, 0x19

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2s;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6591
    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2s;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x78

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
    .locals 1

    const/16 v0, 0x9c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2s;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x42t
        0x1ct
        0xct
        0x40t
        0x68t
        0x50t
        0x52t
        0x4bt
        0x4bt
        0x52t
        0x55t
        0x5ct
        0x1bt
        0x52t
        0x55t
        0x4dt
        0x5at
        0x57t
        0x52t
        0x5ft
        0x1bt
        0x52t
        0x55t
        0x5ft
        0x5et
        0x43t
        0x1t
        0x1bt
        0x3bt
        0x3t
        0x1t
        0x18t
        0x18t
        0x1t
        0x6t
        0xft
        0x48t
        0x1t
        0x6t
        0x1et
        0x9t
        0x4t
        0x1t
        0xct
        0x48t
        0x1ct
        0x1t
        0x5t
        0x1t
        0x6t
        0xft
        0x52t
        0x48t
        0x5bt
        0x7dt
        0x6at
        0x7at
        0x61t
        0x78t
        0x4ct
        0x6dt
        0x6bt
        0x67t
        0x6ct
        0x6dt
        0x7at
        0x4bt
        0x70t
        0x7bt
        0x66t
        0x6et
        0x7bt
        0x7dt
        0x6at
        0x7bt
        0x7at
        0x3et
        0x7bt
        0x70t
        0x7at
        0x14t
        0x3bt
        0x62t
        0x60t
        0x60t
        0x77t
        0x72t
        0x60t
        0x14t
        0x2ct
        0x63t
        0x61t
        0x72t
        0x61t
        0x77t
        0x60t
        0x14t
        0x2ct
        0x63t
        0x61t
        0x72t
        0x60t
        0x14t
        0x2ct
        0x63t
        0x61t
        0x64t
        0x60t
        0x14t
        0x2ct
        0x63t
        0x61t
        0x61t
        0x14t
        0x3bt
        0x62t
        0x65t
        0x65t
        0x76t
        0x14t
        0x3bt
        0x62t
        0x60t
        0x60t
        0x77t
        0x72t
        0x60t
        0x14t
        0x2ct
        0x63t
        0x61t
        0x72t
        0x61t
        0x77t
        0x60t
        0x14t
        0x2ct
        0x63t
        0x61t
        0x72t
        0x60t
        0x14t
        0x2ct
        0x63t
        0x61t
        0x64t
        0x60t
        0x14t
        0x2ct
        0x63t
        0x61t
        0x61t
        0x77t
        0x14t
        0x3bt
        0x62t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7qZ7etdNJNdh8HZtqnuyrg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "boBQNIrWXC7Nog5p4w27lbWjEuekGecC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AZbNLcIsCWAK2XJrOjRXO4rinwl248ht"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Uh7IZ2pkL3oQBhZtTRjoAlHw7fv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sB4tH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0PCSQ5s9vP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zKgqWpNJAq4GdNq5UVNigNmo2KQXMXIE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Byg9dfAcrY9xfYIaULMMCc3xieQQzilk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2s;->A02:[Ljava/lang/String;

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

    .line 6592
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2s;->A01([BIZ)Lcom/facebook/ads/redexgen/X/UC;

    move-result-object v0

    return-object v0
.end method
