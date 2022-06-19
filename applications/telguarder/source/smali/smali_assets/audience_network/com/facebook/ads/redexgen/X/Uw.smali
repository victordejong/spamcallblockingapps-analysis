.class public final Lcom/facebook/ads/redexgen/X/Uw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DM;


# static fields
.field public static A0K:[B

.field public static A0L:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A0D:Lcom/facebook/ads/redexgen/X/CS;

.field public A0E:Ljava/lang/String;

.field public A0F:Z

.field public A0G:Z

.field public final A0H:Lcom/facebook/ads/redexgen/X/IL;

.field public final A0I:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0J:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uw;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uw;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57741
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0J:Ljava/lang/String;

    .line 57742
    const/16 v1, 0x400

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    .line 57743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0H:Lcom/facebook/ads/redexgen/X/IL;

    .line 57744
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/IL;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 57745
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v2

    .line 57746
    .local p0, "bitsLeft":I
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/I1;->A02(Lcom/facebook/ads/redexgen/X/IL;Z)Landroid/util/Pair;

    move-result-object v1

    .line 57747
    .local p1, "config":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A05:I

    .line 57748
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A02:I

    .line 57749
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/IL;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 57750
    const/4 v4, 0x0

    .line 57751
    .local p0, "muxSlotLengthBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:I

    if-nez v0, :cond_2

    .line 57752
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 57753
    .local p1, "tmp":I
    add-int/2addr v4, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uw;->A0L:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57754
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uw;->A0L:[Ljava/lang/String;

    const-string v1, "ObbRNGWOVW857SzlljgXmn6oRwY5Pu8q"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0xff

    if-eq v3, v0, :cond_0

    .line 57755
    return v4

    .line 57756
    .end local p1    # "tmp":I
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>()V

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IL;)J
    .locals 1

    .line 57757
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 57758
    .local p0, "bytesForValue":I
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uw;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Uw;->A0K:[B

    return-void

    :array_0
    .array-data 1
        -0x29t
        -0x15t
        -0x26t
        -0x21t
        -0x1bt
        -0x5bt
        -0x1dt
        -0x1at
        -0x56t
        -0x29t
        -0x5dt
        -0x1et
        -0x29t
        -0x16t
        -0x1dt
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AcafUr3Q"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5X0SSNkute1PIFyH2WPHD5ovdW8Epysv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "20frekmmUVhx5ibyT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ewLF0eCms4CXSJpoiHkpu6k"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kafxGdyevRxlQA13nvrR7Dj1STB2upJ9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AU6ReiQe0xNIAJi3w"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "N7smxuRZndlAj4X78gxI1GmkCCxzg48q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Uw;->A0L:[Ljava/lang/String;

    return-void
.end method

.method private A06(I)V
    .locals 2

    .line 57759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 57760
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0H:Lcom/facebook/ads/redexgen/X/IL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A0C([B)V

    .line 57761
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/IL;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 57762
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    .line 57763
    .local p0, "useSameStreamMux":Z
    if-nez v0, :cond_2

    .line 57764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0G:Z

    .line 57765
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Uw;->A09(Lcom/facebook/ads/redexgen/X/IL;)V

    .line 57766
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A00:I

    if-nez v0, :cond_4

    .line 57767
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A04:I

    if-nez v0, :cond_3

    .line 57768
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Uw;->A01(Lcom/facebook/ads/redexgen/X/IL;)I

    move-result v0

    .line 57769
    .local p1, "muxSlotLengthBytes":I
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Uw;->A0A(Lcom/facebook/ads/redexgen/X/IL;I)V

    .line 57770
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0F:Z

    if-eqz v0, :cond_1

    .line 57771
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A09:J

    long-to-int v0, v1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57772
    .end local p1    # "muxSlotLengthBytes":I
    :cond_1
    return-void

    .line 57773
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0G:Z

    if-nez v0, :cond_0

    .line 57774
    return-void

    .line 57775
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>()V

    throw v0

    .line 57776
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>()V

    throw v0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/IL;)V
    .locals 6

    .line 57777
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:I

    .line 57778
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:I

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    if-eq v5, v4, :cond_2

    const/4 v1, 0x6

    if-eq v5, v2, :cond_1

    const/4 v0, 0x4

    if-eq v5, v0, :cond_1

    const/4 v0, 0x5

    if-eq v5, v0, :cond_1

    if-eq v5, v1, :cond_0

    const/4 v3, 0x7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uw;->A0L:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uw;->A0L:[Ljava/lang/String;

    const-string v1, "4RRg562PoljpOC0ehXRUaTj7Gxh1syIn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_0

    .line 57779
    :goto_0
    return-void

    .line 57780
    :cond_0
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0

    .line 57781
    :cond_1
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57782
    goto :goto_0

    .line 57783
    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57784
    goto :goto_0

    .line 57785
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57786
    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/IL;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 57787
    move-object/from16 v4, p0

    move-object v4, v4

    const/4 v3, 0x1

    move-object/from16 v5, p1

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 57788
    .local v5, "audioMuxVersion":I
    const/4 v7, 0x0

    if-ne v2, v3, :cond_6

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    :goto_0
    iput v0, v4, Lcom/facebook/ads/redexgen/X/Uw;->A00:I

    .line 57789
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Uw;->A00:I

    if-nez v0, :cond_9

    .line 57790
    if-ne v2, v3, :cond_0

    .line 57791
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Uw;->A02(Lcom/facebook/ads/redexgen/X/IL;)J

    .line 57792
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 57793
    const/4 v0, 0x6

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Uw;->A04:I

    .line 57794
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 57795
    .local v2, "numProgram":I
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 57796
    .local v7, "numLayer":I
    if-nez v1, :cond_7

    if-nez v0, :cond_7

    .line 57797
    const/16 v6, 0x8

    if-nez v2, :cond_5

    .line 57798
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IL;->A04()I

    move-result v0

    .line 57799
    .local v0, "startPosition":I
    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/Uw;->A00(Lcom/facebook/ads/redexgen/X/IL;)I

    move-result v1

    .line 57800
    .local v0, "readBits":I
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 57801
    add-int/lit8 v0, v1, 0x7

    div-int/2addr v0, v6

    new-array v0, v0, [B

    .line 57802
    .local v0, "initData":[B
    invoke-virtual {v5, v0, v7, v1}, Lcom/facebook/ads/redexgen/X/IL;->A0E([BII)V

    .line 57803
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Uw;->A0E:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget v13, v4, Lcom/facebook/ads/redexgen/X/Uw;->A02:I

    iget v14, v4, Lcom/facebook/ads/redexgen/X/Uw;->A05:I

    .line 57804
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/Uw;->A0J:Ljava/lang/String;

    .line 57805
    const/4 v6, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x75

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Uw;->A03(III)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v7

    invoke-static/range {v8 .. v18}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v8

    .line 57806
    .local v3, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Uw;->A0C:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {v8, v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57807
    iput-object v8, v4, Lcom/facebook/ads/redexgen/X/Uw;->A0C:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 57808
    const-wide/32 v6, 0x3d090000

    iget v0, v8, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    int-to-long v0, v0

    div-long/2addr v6, v0

    iput-wide v6, v4, Lcom/facebook/ads/redexgen/X/Uw;->A0A:J

    .line 57809
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Uw;->A0D:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, v8}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 57810
    .end local v3    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v0    # "initData":[B
    :cond_1
    :goto_1
    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/Uw;->A08(Lcom/facebook/ads/redexgen/X/IL;)V

    .line 57811
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Uw;->A0F:Z

    .line 57812
    const-wide/16 v0, 0x0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/Uw;->A09:J

    .line 57813
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Uw;->A0F:Z

    if-eqz v0, :cond_2

    .line 57814
    if-ne v2, v3, :cond_4

    .line 57815
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Uw;->A02(Lcom/facebook/ads/redexgen/X/IL;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/Uw;->A09:J

    .line 57816
    .end local v4
    :cond_2
    :goto_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    .line 57817
    .local v4, "crcCheckPresent":Z
    if-eqz v0, :cond_3

    .line 57818
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57819
    .end local v4    # "crcCheckPresent":Z
    .end local v2    # "numProgram":I
    .end local v7    # "numLayer":I
    :cond_3
    return-void

    .line 57820
    :cond_4
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v6

    .line 57821
    .local v4, "otherDataLenEsc":Z
    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/Uw;->A09:J

    const/16 v0, 0x8

    shl-long/2addr v2, v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v4, Lcom/facebook/ads/redexgen/X/Uw;->A09:J

    .line 57822
    if-nez v6, :cond_4

    goto :goto_2

    .line 57823
    :cond_5
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Uw;->A02(Lcom/facebook/ads/redexgen/X/IL;)J

    move-result-wide v0

    long-to-int v6, v0

    .line 57824
    .local v3, "ascLen":I
    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/Uw;->A00(Lcom/facebook/ads/redexgen/X/IL;)I

    move-result v0

    .line 57825
    .local v0, "bitsRead":I
    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_1

    .line 57826
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 57827
    .restart local v2    # "numProgram":I
    .restart local v7    # "numLayer":I
    :cond_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>()V

    throw v0

    .line 57828
    .end local v2    # "numProgram":I
    .end local v7    # "numLayer":I
    :cond_8
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>()V

    throw v0

    .line 57829
    :cond_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>()V

    throw v0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/IL;I)V
    .locals 7

    .line 57830
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IL;->A04()I

    move-result v2

    .line 57831
    .local p0, "bitPosition":I
    and-int/lit8 v0, v2, 0x7

    move v4, p2

    if-nez v0, :cond_0

    .line 57832
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    shr-int/lit8 v0, v2, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57833
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0D:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 57834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0D:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0B:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 57835
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0B:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0A:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0B:J

    .line 57836
    return-void

    .line 57837
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    mul-int/lit8 v0, v4, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A0E([BII)V

    .line 57838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    goto :goto_0
.end method


# virtual methods
.method public final A45(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 57839
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_9

    .line 57840
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A08:I

    const/16 v7, 0x56

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    const/4 v6, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v4, 0x3

    if-eq v0, v6, :cond_3

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 57841
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A06:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 57842
    .local p0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0H:Lcom/facebook/ads/redexgen/X/IL;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 57843
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:I

    .line 57844
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A06:I

    if-ne v1, v0, :cond_0

    .line 57845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0H:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 57846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0H:Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Uw;->A07(Lcom/facebook/ads/redexgen/X/IL;)V

    .line 57847
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Uw;->A08:I

    goto :goto_0

    .line 57848
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v8

    .line 57849
    .local p0, "secondByte":I
    and-int/lit16 v5, v8, 0xe0

    const/16 v4, 0xe0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uw;->A0L:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_6

    goto :goto_1

    .line 57850
    .end local p0    # "secondByte":I
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A07:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v5, v0, 0x8

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    or-int/2addr v5, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uw;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uw;->A0L:[Ljava/lang/String;

    const-string v1, "y41PRV2gqbXkuojFSCFSRvvfYH5Gzn8V"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput v5, p0, Lcom/facebook/ads/redexgen/X/Uw;->A06:I

    .line 57851
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    array-length v0, v0

    if-le v1, v0, :cond_5

    .line 57852
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A06:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Uw;->A06(I)V

    .line 57853
    :cond_5
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:I

    .line 57854
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Uw;->A08:I

    .line 57855
    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uw;->A0L:[Ljava/lang/String;

    const-string v1, "kBptmGAAFq3nHKLC7CqDBcM5w8KI40V5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v5, v4, :cond_7

    .line 57856
    iput v8, p0, Lcom/facebook/ads/redexgen/X/Uw;->A07:I

    .line 57857
    iput v6, p0, Lcom/facebook/ads/redexgen/X/Uw;->A08:I

    goto/16 :goto_0

    .line 57858
    :cond_7
    if-eq v8, v7, :cond_0

    .line 57859
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Uw;->A08:I

    goto/16 :goto_0

    .line 57860
    .end local p0
    :cond_8
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 57861
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A08:I

    goto/16 :goto_0

    .line 57862
    :cond_9
    return-void
.end method

.method public final A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 2

    .line 57863
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()V

    .line 57864
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0D:Lcom/facebook/ads/redexgen/X/CS;

    .line 57865
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0E:Ljava/lang/String;

    .line 57866
    return-void
.end method

.method public final ACI()V
    .locals 0

    .line 57867
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 0

    .line 57868
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0B:J

    .line 57869
    return-void
.end method

.method public final ADW()V
    .locals 1

    .line 57870
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A08:I

    .line 57871
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A0G:Z

    .line 57872
    return-void
.end method
