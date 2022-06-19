.class public final Lcom/facebook/ads/redexgen/X/ZW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Lcom/facebook/ads/redexgen/X/CJ;

.field public static final A07:I


# instance fields
.field public A00:Z

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/ZX;

.field public final A03:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 64740
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZW;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZW;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZV;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZW;->A06:Lcom/facebook/ads/redexgen/X/CJ;

    .line 64741
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZW;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZW;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64742
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ZW;-><init>(J)V

    .line 64743
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 64744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64745
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/ZW;->A01:J

    .line 64746
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ZX;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZW;->A02:Lcom/facebook/ads/redexgen/X/ZX;

    .line 64747
    const/16 v1, 0xc8

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZW;->A03:Lcom/facebook/ads/redexgen/X/IM;

    .line 64748
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZW;->A04:[B

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

.method public static A01()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZW;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1bt
        0x16t
        0x61t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6Yd3MlxO6zs0On0JMF5Pwnois3aNTjpE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MmQBoaYzrmdPmtEAYQ3R1Y6Mcsh6By7B"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7RUBoC8KCwVWfiCX9SWb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GS41ND25W7ytYawGpGonJQP9IOOENLXr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lL4oomLzy5vPLaNFQ0K"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "J26"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "emQAR3GMgLzBn72fJq6a"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GcSIxJRAUXsHB0u2DOmppTTbOqtsj228"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZW;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7q(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 4

    .line 64749
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZW;->A02:Lcom/facebook/ads/redexgen/X/ZX;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Da;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Da;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/ZX;->A4V(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 64750
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CI;->A5B()V

    .line 64751
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yt;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Yt;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADX(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 64752
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZW;->A03:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v4, 0x0

    const/16 v0, 0xc8

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/CH;->read([BII)I

    move-result v1

    .line 64754
    .local p0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 64755
    return v0

    .line 64756
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZW;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 64757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZW;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 64758
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZW;->A00:Z

    if-nez v0, :cond_1

    .line 64759
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZW;->A02:Lcom/facebook/ads/redexgen/X/ZX;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ZW;->A01:J

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/ZX;->ACJ(JZ)V

    .line 64760
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZW;->A00:Z

    .line 64761
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZW;->A02:Lcom/facebook/ads/redexgen/X/ZX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZW;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZX;->A49(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 64762
    return v4
.end method

.method public final ADW(JJ)V
    .locals 1

    .line 64763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZW;->A00:Z

    .line 64764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZW;->A02:Lcom/facebook/ads/redexgen/X/ZX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZX;->ADV()V

    .line 64765
    return-void
.end method

.method public final AE4(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64766
    const/16 v2, 0xa

    new-instance v5, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v5, v2}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    .line 64767
    .local p0, "scratch":Lcom/facebook/ads/redexgen/X/IM;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    new-instance v4, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    .line 64768
    .local v2, "scratchBits":Lcom/facebook/ads/redexgen/X/IL;
    const/4 v3, 0x0

    .line 64769
    .local v5, "startPosition":I
    :goto_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v8, 0x0

    invoke-interface {p1, v0, v8, v2}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 64770
    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 64771
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/ZW;->A07:I

    if-eq v1, v0, :cond_4

    .line 64772
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 64773
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    .line 64774
    move v7, v3

    .line 64775
    .local p1, "headerPosition":I
    const/4 v6, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZW;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_5

    .line 64776
    .local v0, "validFramesSize":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZW;->A05:[Ljava/lang/String;

    const-string v1, "mY90xJHLqPMDpFXgmiZe2UkYD68ZyI7P"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v2, 0x0

    .line 64777
    .local v3, "validFramesCount":I
    :goto_1
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x2

    invoke-interface {p1, v1, v8, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 64778
    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 64779
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    .line 64780
    .local v0, "syncBytes":I
    const v1, 0xfff6

    and-int/2addr v1, v0

    const v0, 0xfff0

    if-eq v1, v0, :cond_1

    .line 64781
    const/4 v2, 0x0

    .line 64782
    const/4 v6, 0x0

    .line 64783
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 64784
    add-int/lit8 v7, v7, 0x1

    sub-int v1, v7, v3

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_0

    .line 64785
    return v8

    .line 64786
    :cond_0
    invoke-interface {p1, v7}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    goto :goto_1

    .line 64787
    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x4

    if-lt v2, v1, :cond_2

    const/16 v0, 0xbc

    if-le v6, v0, :cond_2

    .line 64788
    const/4 v0, 0x1

    return v0

    .line 64789
    :cond_2
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v8, v1}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 64790
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 64791
    const/16 v0, 0xd

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 64792
    .local v8, "frameSize":I
    const/4 v0, 0x6

    if-gt v1, v0, :cond_3

    .line 64793
    return v8

    .line 64794
    :cond_3
    add-int/lit8 v0, v1, -0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    .line 64795
    add-int/2addr v6, v1

    goto :goto_1

    .line 64796
    .end local p1    # "headerPosition":I
    .end local v0    # "syncBytes":I
    .end local v3    # "validFramesCount":I
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 64797
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0E()I

    move-result v1

    .line 64798
    .local v0, "length":I
    add-int/lit8 v0, v1, 0xa

    add-int/2addr v3, v0

    .line 64799
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    .line 64800
    .end local v0    # "length":I
    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
