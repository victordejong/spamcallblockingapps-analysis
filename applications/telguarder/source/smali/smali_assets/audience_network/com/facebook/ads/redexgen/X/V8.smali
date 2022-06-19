.class public final Lcom/facebook/ads/redexgen/X/V8;
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

.field public final A02:Lcom/facebook/ads/redexgen/X/V7;

.field public final A03:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 58726
    invoke-static {}, Lcom/facebook/ads/redexgen/X/V8;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/V8;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/V9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/V9;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/V8;->A06:Lcom/facebook/ads/redexgen/X/CJ;

    .line 58727
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/V8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/V8;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58728
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/V8;-><init>(J)V

    .line 58729
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 58730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58731
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/V8;->A01:J

    .line 58732
    new-instance v0, Lcom/facebook/ads/redexgen/X/V7;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/V7;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V8;->A02:Lcom/facebook/ads/redexgen/X/V7;

    .line 58733
    const/16 v1, 0xae2

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V8;->A03:Lcom/facebook/ads/redexgen/X/IM;

    .line 58734
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/V8;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x39

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/V8;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x72t
        -0x77t
        0x78t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1nlg6XZxkWE1PvWWliap68rZCi4SUpYJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eqt7g"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SeYlitOvg7po0kerjnSVXr18iQjeRMkq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jq4IqJJsbkhQhmYC22CCKbZiK8Ge0sIR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ickqZ5GA2QCrM9io46Y83ECvlRsPwTFI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RXlFiZ1H6ktttkXaKjyTBuqwqEaGWuce"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LX8wyMQ1zh8cpl3x17Knwddxu2gFtHXL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9gfsgcuX10UVV2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V8;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7s(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 4

    .line 58735
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/V8;->A02:Lcom/facebook/ads/redexgen/X/V7;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Da;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Da;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/V7;->A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 58736
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 58737
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 58738
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

    .line 58739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V8;->A03:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v4, 0x0

    const/16 v0, 0xae2

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/CH;->read([BII)I

    move-result v1

    .line 58740
    .local p0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 58741
    return v0

    .line 58742
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V8;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V8;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 58744
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V8;->A00:Z

    if-nez v0, :cond_1

    .line 58745
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/V8;->A02:Lcom/facebook/ads/redexgen/X/V7;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/V8;->A01:J

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/V7;->ACJ(JZ)V

    .line 58746
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V8;->A00:Z

    .line 58747
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V8;->A02:Lcom/facebook/ads/redexgen/X/V7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V8;->A03:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/V7;->A45(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 58748
    return v4
.end method

.method public final ADX(JJ)V
    .locals 1

    .line 58749
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V8;->A00:Z

    .line 58750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V8;->A02:Lcom/facebook/ads/redexgen/X/V7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V7;->ADW()V

    .line 58751
    return-void
.end method

.method public final AE6(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58752
    const/16 v2, 0xa

    new-instance v4, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v4, v2}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    .line 58753
    .local p0, "scratch":Lcom/facebook/ads/redexgen/X/IM;
    const/4 v3, 0x0

    .line 58754
    .local v2, "startPosition":I
    :goto_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v7, 0x0

    invoke-interface {p1, v0, v7, v2}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 58755
    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58756
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/V8;->A07:I

    if-eq v1, v0, :cond_5

    .line 58757
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 58758
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    .line 58759
    move v6, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/V8;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_6

    .line 58760
    .local p1, "headerPosition":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/V8;->A05:[Ljava/lang/String;

    const-string v1, "vClGiXzAVNNShttETqEyGrWqhiPtwZqN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "lMlpQWefv94RlhOQZpL6q96vrXrr7BU8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v5, 0x0

    .line 58761
    .local v4, "validFramesCount":I
    :goto_1
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/V8;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/V8;->A05:[Ljava/lang/String;

    const-string v1, "aUlOa9HTri92sbeOwV0C9JFY1qcGPh1K"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "9elLWqVzpU4UG3vjURr0nGX2dgpQP8r5"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x5

    invoke-interface {p1, v8, v7, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 58762
    invoke-virtual {v4, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58763
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v1

    .line 58764
    .local v0, "syncBytes":I
    const/16 v0, 0xb77

    if-eq v1, v0, :cond_1

    .line 58765
    const/4 v5, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/V8;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_6

    .line 58766
    sget-object v2, Lcom/facebook/ads/redexgen/X/V8;->A05:[Ljava/lang/String;

    const-string v1, "MgBmDOXN7WFRaO"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 58767
    add-int/lit8 v6, v6, 0x1

    sub-int v1, v6, v3

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_0

    .line 58768
    return v7

    .line 58769
    :cond_0
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    goto :goto_1

    .line 58770
    :cond_1
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x4

    if-lt v5, v0, :cond_2

    .line 58771
    const/4 v0, 0x1

    return v0

    .line 58772
    :cond_2
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/V8;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/V8;->A05:[Ljava/lang/String;

    const-string v1, "94tabhvLhPmpK7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Ao;->A05([B)I

    move-result v1

    .line 58773
    .local v7, "frameSize":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_4

    .line 58774
    return v7

    .line 58775
    :cond_4
    add-int/lit8 v0, v1, -0x5

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    goto/16 :goto_1

    .line 58776
    .end local p1    # "headerPosition":I
    .end local v4    # "validFramesCount":I
    :cond_5
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 58777
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/IM;->A0E()I

    move-result v1

    .line 58778
    .local v4, "length":I
    add-int/lit8 v0, v1, 0xa

    add-int/2addr v3, v0

    .line 58779
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    .line 58780
    .end local v4    # "length":I
    goto/16 :goto_0

    .line 58781
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
