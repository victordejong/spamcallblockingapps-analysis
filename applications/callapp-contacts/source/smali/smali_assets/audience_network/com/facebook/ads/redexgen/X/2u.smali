.class public final Lcom/facebook/ads/redexgen/X/2u;
.super Lcom/facebook/ads/redexgen/X/C3;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GW;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Ljava/util/zip/Inflater;

.field public A02:[B

.field public final A03:Lcom/facebook/ads/redexgen/X/GW;

.field public final A04:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2u;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2u;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 6571
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/C3;-><init>(Ljava/lang/String;)V

    .line 6572
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Lcom/facebook/ads/redexgen/X/IM;

    .line 6573
    new-instance v0, Lcom/facebook/ads/redexgen/X/GW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/GW;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A03:Lcom/facebook/ads/redexgen/X/GW;

    .line 6574
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/GW;)Lcom/facebook/ads/redexgen/X/GB;
    .locals 5

    .line 6575
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    .line 6576
    .local p0, "limit":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 6577
    .local p1, "sectionType":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v1

    .line 6578
    .local v0, "sectionLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    add-int/2addr v4, v1

    .line 6579
    .local v2, "nextSectionPosition":I
    if-le v4, v0, :cond_0

    .line 6580
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 6581
    const/4 v0, 0x0

    return-object v0

    .line 6582
    :cond_0
    const/4 v3, 0x0

    .line 6583
    .local v1, "cue":Lcom/facebook/ads/redexgen/X/GB;
    const/16 v0, 0x80

    if-eq v2, v0, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 6584
    :goto_0
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/2u;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6585
    :pswitch_0
    invoke-static {p1, p0, v1}, Lcom/facebook/ads/redexgen/X/GW;->A01(Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 6586
    goto :goto_0

    .line 6587
    :pswitch_1
    invoke-static {p1, p0, v1}, Lcom/facebook/ads/redexgen/X/GW;->A02(Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 6588
    goto :goto_0

    .line 6589
    :pswitch_2
    invoke-static {p1, p0, v1}, Lcom/facebook/ads/redexgen/X/GW;->A03(Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 6590
    goto :goto_0

    .line 6591
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/GW;->A07()Lcom/facebook/ads/redexgen/X/GB;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 6592
    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A06:[Ljava/lang/String;

    const-string v1, "8Q7r9e8nqCgCYEZ6IU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/GW;->A08()V

    .line 6593
    goto :goto_0

    .line 6594
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/GW;->A08()V

    .line 6595
    goto :goto_0

    .line 6596
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A06:[Ljava/lang/String;

    const-string v1, "BTE07TDUmys5OOcsYpYqmwkAe847KCkG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2u;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x75

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2u;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x61t
        0x56t
        0x42t
        0x75t
        0x54t
        0x52t
        0x5et
        0x55t
        0x54t
        0x43t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "D8ktImD4gI341B9dMX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "p"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8S1Qfr0uQHuWlKinBNgV3mwJeBc1O2wn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "O"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UgOsD1qslkvgk8WTNW5IJqqmR5mppeJL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YmudOgNfte0R1MlRzZs3i7R"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "t"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Vvarb6mClw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2u;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A04([BI)Z
    .locals 7

    .line 6597
    const/4 v6, 0x0

    if-eqz p2, :cond_1

    aget-byte v3, p1, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/2u;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A06:[Ljava/lang/String;

    const-string v1, "3s6wsel2PksO74PVHVwG8hUXCMbdJ5Q0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, 0x78

    if-eq v3, v0, :cond_2

    .line 6598
    .end local p1    # null:[B
    :cond_1
    return v6

    .line 6599
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    if-nez v0, :cond_3

    .line 6600
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    .line 6601
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    .line 6602
    :cond_3
    iput v6, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    .line 6603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, v6, p2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 6604
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6605
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    array-length v0, v0

    if-ne v1, v0, :cond_4

    .line 6606
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    .line 6607
    :cond_4
    iget v5, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    sub-int/2addr v1, v0

    .line 6608
    invoke-virtual {v4, v3, v2, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    add-int/2addr v5, v0

    iput v5, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    goto :goto_0

    .line 6609
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 6611
    return v1

    .line 6612
    :catchall_0
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 6613
    throw v1

    .line 6614
    .local p1, "e":Ljava/util/zip/DataFormatException;
    :catch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 6615
    return v6
.end method


# virtual methods
.method public final A0d([BIZ)Lcom/facebook/ads/redexgen/X/GC;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6616
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2u;->A04([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6617
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 6618
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A03:Lcom/facebook/ads/redexgen/X/GW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GW;->A08()V

    .line 6619
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6620
    .local p0, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    const/4 v0, 0x3

    if-lt v1, v0, :cond_3

    .line 6621
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A03:Lcom/facebook/ads/redexgen/X/GW;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/GW;)Lcom/facebook/ads/redexgen/X/GB;

    move-result-object v0

    .line 6622
    .local p1, "cue":Lcom/facebook/ads/redexgen/X/GB;
    if-eqz v0, :cond_0

    .line 6623
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6624
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2u;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A06:[Ljava/lang/String;

    const-string v1, "roAZZspd009Dh1499aBQr6xCTRbeSGaA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    goto :goto_0

    .line 6625
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/as;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/as;-><init>(Ljava/util/List;)V

    return-object v0
.end method
