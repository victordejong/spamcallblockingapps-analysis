.class public final Lcom/facebook/ads/redexgen/X/2u;
.super Lcom/facebook/ads/redexgen/X/Bb;
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

    .line 6682
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Bb;-><init>(Ljava/lang/String;)V

    .line 6683
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Lcom/facebook/ads/redexgen/X/IM;

    .line 6684
    new-instance v0, Lcom/facebook/ads/redexgen/X/GW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/GW;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A03:Lcom/facebook/ads/redexgen/X/GW;

    .line 6685
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/GW;)Lcom/facebook/ads/redexgen/X/GB;
    .locals 5

    .line 6686
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    .line 6687
    .local p0, "limit":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v4

    .line 6688
    .local p1, "sectionType":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v3

    .line 6689
    .local v0, "sectionLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v2

    add-int/2addr v2, v3

    .line 6690
    .local v4, "nextSectionPosition":I
    if-le v2, v0, :cond_1

    .line 6691
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 6692
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2u;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A06:[Ljava/lang/String;

    const-string v1, "KjfvQNKVWcr0NaWLSm0Aoc4YRedoIkWR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6693
    :cond_1
    const/4 v1, 0x0

    .line 6694
    .local v3, "cue":Lcom/facebook/ads/redexgen/X/GB;
    const/16 v0, 0x80

    if-eq v4, v0, :cond_2

    packed-switch v4, :pswitch_data_0

    .line 6695
    :goto_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 6696
    return-object v1

    .line 6697
    :pswitch_0
    invoke-static {p1, p0, v3}, Lcom/facebook/ads/redexgen/X/GW;->A01(Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 6698
    goto :goto_0

    .line 6699
    :pswitch_1
    invoke-static {p1, p0, v3}, Lcom/facebook/ads/redexgen/X/GW;->A02(Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 6700
    goto :goto_0

    .line 6701
    :pswitch_2
    invoke-static {p1, p0, v3}, Lcom/facebook/ads/redexgen/X/GW;->A03(Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 6702
    goto :goto_0

    .line 6703
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/GW;->A07()Lcom/facebook/ads/redexgen/X/GB;

    move-result-object v1

    .line 6704
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/GW;->A08()V

    .line 6705
    goto :goto_0

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

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6b

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
        0x31t
        0x48t
        0x54t
        0x25t
        0x46t
        0x44t
        0x50t
        0x45t
        0x46t
        0x53t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NQKPQFjg712hOqWZ6DCPRC1kOiBt44C7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zOzIxMQffw9l9kg3v3eMx6CHzKw5iZjy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ffgMJvopUrXtMfEfI1dHh2kjqZU8cjfI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HjiAl2mR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4bhFiAcqNo4E937TSagJBL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zMSKT0UwOJ3wf9fr8qqNB9EdhaTpNojR"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KvhO8Gu7T7UKmPVAKkRcPmoXOuJxc6U5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "R76YNEjzIgUr0IYBbHfjagjejGcZAu9y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2u;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A04([BI)Z
    .locals 7

    .line 6706
    const/4 v6, 0x0

    if-eqz p2, :cond_0

    aget-byte v1, p1, v6

    const/16 v0, 0x78

    if-eq v1, v0, :cond_1

    .line 6707
    .end local p1    # null:[B
    :cond_0
    return v6

    .line 6708
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    if-nez v0, :cond_2

    .line 6709
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    .line 6710
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    .line 6711
    :cond_2
    iput v6, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    .line 6712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, v6, p2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 6713
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6714
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    array-length v0, v0

    if-ne v1, v0, :cond_3

    .line 6715
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    .line 6716
    :cond_3
    iget v5, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    sub-int/2addr v1, v0

    .line 6717
    invoke-virtual {v4, v3, v2, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    add-int/2addr v5, v0

    iput v5, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    goto :goto_0

    .line 6718
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 6720
    return v1

    .line 6721
    :catchall_0
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 6722
    throw v1

    .line 6723
    .local p1, "e":Ljava/util/zip/DataFormatException;
    :catch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 6724
    return v6
.end method


# virtual methods
.method public final A0d([BIZ)Lcom/facebook/ads/redexgen/X/GC;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6725
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2u;->A04([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6726
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 6727
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A03:Lcom/facebook/ads/redexgen/X/GW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GW;->A08()V

    .line 6728
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6729
    .local p0, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    const/4 v0, 0x3

    if-lt v1, v0, :cond_2

    .line 6730
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A03:Lcom/facebook/ads/redexgen/X/GW;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/GW;)Lcom/facebook/ads/redexgen/X/GB;

    move-result-object v0

    .line 6731
    .local p1, "cue":Lcom/facebook/ads/redexgen/X/GB;
    if-eqz v0, :cond_0

    .line 6732
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6733
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    goto :goto_0

    .line 6734
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/UE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UE;-><init>(Ljava/util/List;)V

    return-object v0
.end method
