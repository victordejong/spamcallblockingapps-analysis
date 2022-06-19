.class public final Lcom/facebook/ads/redexgen/X/YW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Az;


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:Lcom/facebook/ads/redexgen/X/BU;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Ljava/nio/ByteBuffer;

.field public A0A:Ljava/nio/ByteBuffer;

.field public A0B:Ljava/nio/ShortBuffer;

.field public A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YW;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60748
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A01:F

    .line 60749
    iput v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:F

    .line 60750
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A02:I

    .line 60751
    iput v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A05:I

    .line 60752
    iput v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A03:I

    .line 60753
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A09:Ljava/nio/ByteBuffer;

    .line 60754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A0B:Ljava/nio/ShortBuffer;

    .line 60755
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A0A:Ljava/nio/ByteBuffer;

    .line 60756
    iput v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A04:I

    .line 60757
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iVI49d2ZLsEdnN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8nt9Mx90pYcLgm8jwIqfRxnuNB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "N5EnT7xPV04alRStuSSEb4qxGw0ypgBS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CZFk7KMkAj1VPwfzqXgnV4RMFN6v0v1b"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0r4SPeKqFHrxpG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Bbc1ECWkbstPDX5EGN6JJHjdPo9FJmAx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C6RSY0Y2UTdbfyI9HBBCvYbiYc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "niyGYsc3TbIZXUeN92sM43TjCNQsZLKY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YW;->A0D:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(F)F
    .locals 2

    .line 60758
    const v1, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A00(FFF)F

    move-result v1

    .line 60759
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 60760
    iput v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:F

    .line 60761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A08:Lcom/facebook/ads/redexgen/X/BU;

    .line 60762
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YW;->flush()V

    .line 60763
    return v1
.end method

.method public final A02(F)F
    .locals 2

    .line 60764
    const v1, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A00(FFF)F

    move-result v1

    .line 60765
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A01:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 60766
    iput v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A01:F

    .line 60767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A08:Lcom/facebook/ads/redexgen/X/BU;

    .line 60768
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YW;->flush()V

    .line 60769
    return v1
.end method

.method public final A03(J)J
    .locals 10

    .line 60770
    move-object v3, p0

    iget-wide v8, v3, Lcom/facebook/ads/redexgen/X/YW;->A07:J

    const-wide/16 v1, 0x400

    cmp-long v0, v8, v1

    move-wide v4, p1

    if-ltz v0, :cond_1

    .line 60771
    iget v0, v3, Lcom/facebook/ads/redexgen/X/YW;->A03:I

    iget v2, v3, Lcom/facebook/ads/redexgen/X/YW;->A05:I

    if-ne v0, v2, :cond_0

    .line 60772
    iget-wide v6, v3, Lcom/facebook/ads/redexgen/X/YW;->A06:J

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v0

    .line 60773
    :goto_0
    return-wide v0

    .line 60774
    :cond_0
    iget-wide v6, v3, Lcom/facebook/ads/redexgen/X/YW;->A06:J

    int-to-long v0, v0

    mul-long/2addr v6, v0

    int-to-long v0, v2

    mul-long/2addr v8, v0

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v0

    goto :goto_0

    .line 60775
    :cond_1
    iget v0, v3, Lcom/facebook/ads/redexgen/X/YW;->A01:F

    float-to-double v2, v0

    long-to-double v0, v4

    mul-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0
.end method

.method public final A48(III)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Ay;
        }
    .end annotation

    .line 60776
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 60777
    iget v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A04:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 60778
    move v1, p1

    .line 60779
    .local p0, "outputSampleRateHz":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A05:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A02:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A03:I

    if-ne v0, v1, :cond_1

    .line 60780
    const/4 v0, 0x0

    return v0

    .line 60781
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/YW;->A05:I

    .line 60782
    iput p2, p0, Lcom/facebook/ads/redexgen/X/YW;->A02:I

    .line 60783
    iput v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A03:I

    .line 60784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A08:Lcom/facebook/ads/redexgen/X/BU;

    .line 60785
    const/4 v0, 0x1

    return v0

    .line 60786
    .end local p0    # "outputSampleRateHz":I
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ay;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ay;-><init>(III)V

    throw v0
.end method

.method public final A6p()Ljava/nio/ByteBuffer;
    .locals 2

    .line 60787
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A0A:Ljava/nio/ByteBuffer;

    .line 60788
    .local p0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A0A:Ljava/nio/ByteBuffer;

    .line 60789
    return-object v1
.end method

.method public final A6q()I
    .locals 1

    .line 60790
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A02:I

    return v0
.end method

.method public final A6r()I
    .locals 1

    .line 60791
    const/4 v0, 0x2

    return v0
.end method

.method public final A6s()I
    .locals 1

    .line 60792
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A03:I

    return v0
.end method

.method public final A7v()Z
    .locals 5

    .line 60793
    iget v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A05:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A01:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 60794
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v4

    if-gez v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:F

    sub-float/2addr v0, v1

    .line 60795
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YW;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/YW;->A0D:[Ljava/lang/String;

    const-string v1, "vE55EECrsMoThx"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "BaJHYxULwHsid1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    cmpl-float v0, v3, v4

    if-gez v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A05:I

    if-eq v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 60796
    :goto_0
    return v0
.end method

.method public final A7z()Z
    .locals 1

    .line 60797
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A0C:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A08:Lcom/facebook/ads/redexgen/X/BU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BU;->A0I()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ACh()V
    .locals 2

    .line 60798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A08:Lcom/facebook/ads/redexgen/X/BU;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 60799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A08:Lcom/facebook/ads/redexgen/X/BU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BU;->A0K()V

    .line 60800
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A0C:Z

    .line 60801
    return-void

    .line 60802
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ACi(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 60803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A08:Lcom/facebook/ads/redexgen/X/BU;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 60804
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60805
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 60806
    .local p0, "shortBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 60807
    .local p1, "inputSize":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YW;->A06:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YW;->A06:J

    .line 60808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A08:Lcom/facebook/ads/redexgen/X/BU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/BU;->A0M(Ljava/nio/ShortBuffer;)V

    .line 60809
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 60810
    .end local p0    # "shortBuffer":Ljava/nio/ShortBuffer;
    .end local p1    # "inputSize":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A08:Lcom/facebook/ads/redexgen/X/BU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BU;->A0I()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A02:I

    mul-int/2addr v1, v0

    mul-int/lit8 v4, v1, 0x2

    .line 60811
    .local p0, "outputSize":I
    if-lez v4, :cond_1

    .line 60812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 60813
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A09:Ljava/nio/ByteBuffer;

    .line 60814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A0B:Ljava/nio/ShortBuffer;

    .line 60815
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A08:Lcom/facebook/ads/redexgen/X/BU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A0B:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BU;->A0L(Ljava/nio/ShortBuffer;)V

    .line 60816
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/YW;->A07:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/YW;->A07:J

    .line 60817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 60818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A09:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A0A:Ljava/nio/ByteBuffer;

    .line 60819
    :cond_1
    return-void

    .line 60820
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 60821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A0B:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 60822
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final flush()V
    .locals 6

    .line 60823
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YW;->A7v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A08:Lcom/facebook/ads/redexgen/X/BU;

    if-nez v0, :cond_1

    .line 60825
    new-instance v0, Lcom/facebook/ads/redexgen/X/BU;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A05:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/YW;->A02:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/YW;->A01:F

    iget v4, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:F

    iget v5, p0, Lcom/facebook/ads/redexgen/X/YW;->A03:I

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/BU;-><init>(IIFFI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A08:Lcom/facebook/ads/redexgen/X/BU;

    .line 60826
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A0A:Ljava/nio/ByteBuffer;

    .line 60827
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A06:J

    .line 60828
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A07:J

    .line 60829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A0C:Z

    .line 60830
    return-void

    .line 60831
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BU;->A0J()V

    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    .line 60832
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A01:F

    .line 60833
    iput v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:F

    .line 60834
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A02:I

    .line 60835
    iput v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A05:I

    .line 60836
    iput v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A03:I

    .line 60837
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A09:Ljava/nio/ByteBuffer;

    .line 60838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A0B:Ljava/nio/ShortBuffer;

    .line 60839
    sget-object v0, Lcom/facebook/ads/redexgen/X/Az;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A0A:Ljava/nio/ByteBuffer;

    .line 60840
    iput v1, p0, Lcom/facebook/ads/redexgen/X/YW;->A04:I

    .line 60841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A08:Lcom/facebook/ads/redexgen/X/BU;

    .line 60842
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A06:J

    .line 60843
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A07:J

    .line 60844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A0C:Z

    .line 60845
    return-void
.end method
