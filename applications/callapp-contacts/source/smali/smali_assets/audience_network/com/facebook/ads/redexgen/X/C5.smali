.class public final Lcom/facebook/ads/redexgen/X/C5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/aW;
.implements Lcom/facebook/ads/redexgen/X/CI;
.implements Lcom/facebook/ads/redexgen/X/HT;
.implements Lcom/facebook/ads/redexgen/X/HW;
.implements Lcom/facebook/ads/redexgen/X/FY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/F8;,
        Lcom/facebook/ads/redexgen/X/aR;,
        Lcom/facebook/ads/redexgen/X/aS;,
        Lcom/facebook/ads/redexgen/X/F9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/aW;",
        "Lcom/facebook/ads/redexgen/X/CI;",
        "Lcom/facebook/ads/redexgen/X/HT<",
        "Lcom/facebook/ads/redexgen/X/aR;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/HW;",
        "Lcom/facebook/ads/redexgen/X/FY;"
    }
.end annotation


# static fields
.field public static A0c:[B

.field public static A0d:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Lcom/facebook/ads/redexgen/X/CP;

.field public A08:Lcom/facebook/ads/redexgen/X/aV;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:[I

.field public A0K:[Lcom/facebook/ads/redexgen/X/aX;

.field public A0L:[Z

.field public A0M:[Z

.field public A0N:[Z

.field public final A0O:I

.field public final A0P:J

.field public final A0Q:Landroid/net/Uri;

.field public final A0R:Landroid/os/Handler;

.field public final A0S:Lcom/facebook/ads/redexgen/X/F8;

.field public final A0T:Lcom/facebook/ads/redexgen/X/F9;

.field public final A0U:Lcom/facebook/ads/redexgen/X/FP;

.field public final A0V:Lcom/facebook/ads/redexgen/X/HA;

.field public final A0W:Lcom/facebook/ads/redexgen/X/HI;

.field public final A0X:Lcom/facebook/ads/redexgen/X/bN;

.field public final A0Y:Lcom/facebook/ads/redexgen/X/I3;

.field public final A0Z:Ljava/lang/Runnable;

.field public final A0a:Ljava/lang/Runnable;

.field public final A0b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/C5;->A0C()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/C5;->A0B()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HI;[Lcom/facebook/ads/redexgen/X/CG;ILcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/F9;Lcom/facebook/ads/redexgen/X/HA;Ljava/lang/String;I)V
    .locals 4
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23660
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C5;->A0Q:Landroid/net/Uri;

    .line 23661
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/C5;->A0W:Lcom/facebook/ads/redexgen/X/HI;

    .line 23662
    iput p4, p0, Lcom/facebook/ads/redexgen/X/C5;->A0O:I

    .line 23663
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/C5;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    .line 23664
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/C5;->A0T:Lcom/facebook/ads/redexgen/X/F9;

    .line 23665
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/C5;->A0V:Lcom/facebook/ads/redexgen/X/HA;

    .line 23666
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/C5;->A0b:Ljava/lang/String;

    .line 23667
    int-to-long v0, p9

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0P:J

    .line 23668
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C5;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bN;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/bN;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0X:Lcom/facebook/ads/redexgen/X/bN;

    .line 23669
    new-instance v0, Lcom/facebook/ads/redexgen/X/F8;

    invoke-direct {v0, p3, p0}, Lcom/facebook/ads/redexgen/X/F8;-><init>([Lcom/facebook/ads/redexgen/X/CG;Lcom/facebook/ads/redexgen/X/CI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0S:Lcom/facebook/ads/redexgen/X/F8;

    .line 23670
    new-instance v0, Lcom/facebook/ads/redexgen/X/I3;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/I3;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0Y:Lcom/facebook/ads/redexgen/X/I3;

    .line 23671
    new-instance v0, Lcom/facebook/ads/redexgen/X/F6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/F6;-><init>(Lcom/facebook/ads/redexgen/X/C5;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0Z:Ljava/lang/Runnable;

    .line 23672
    new-instance v0, Lcom/facebook/ads/redexgen/X/F7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/F7;-><init>(Lcom/facebook/ads/redexgen/X/C5;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0a:Ljava/lang/Runnable;

    .line 23673
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0R:Landroid/os/Handler;

    .line 23674
    const/4 v1, 0x0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0J:[I

    .line 23675
    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/aX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    .line 23676
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/C5;->A06:J

    .line 23677
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A05:J

    .line 23678
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/C5;->A03:J

    .line 23679
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    .line 23680
    const/4 p4, 0x3

    .line 23681
    :cond_0
    iput p4, p0, Lcom/facebook/ads/redexgen/X/C5;->A00:I

    .line 23682
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/FP;->A04()V

    .line 23683
    return-void
.end method

.method private A00()I
    .locals 8

    .line 23684
    const/4 v7, 0x0

    .line 23685
    .local p0, "extractedSamplesCount":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v5, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 23686
    .local v3, "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "qSOUgbz3JlJaX9UdXA1gn9agrJ83m9Y6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "wkCF1xtIBevCyUX610AjJpYT598Om9ct"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/aX;->A0D()I

    move-result v0

    add-int/2addr v7, v0

    .line 23687
    .end local v3    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23688
    :cond_1
    return v7
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/aR;JJLjava/io/IOException;)I
    .locals 21

    move-object/from16 v0, p0

    move-object v0, v0

    .line 23689
    move-object/from16 v19, p6

    invoke-static/range {v19 .. v19}, Lcom/facebook/ads/redexgen/X/C5;->A0O(Ljava/io/IOException;)Z

    move-result v20

    .line 23690
    .local v20, "isErrorFatal":Z
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/C5;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    .line 23691
    move-object/from16 v1, p1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/aR;->A03(Lcom/facebook/ads/redexgen/X/aR;)Lcom/facebook/ads/redexgen/X/HM;

    move-result-object v3

    .line 23692
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/aR;->A00(Lcom/facebook/ads/redexgen/X/aR;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/facebook/ads/redexgen/X/C5;->A03:J

    .line 23693
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/aR;->A01(Lcom/facebook/ads/redexgen/X/aR;)J

    move-result-wide v17

    .line 23694
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-virtual/range {v2 .. v20}, Lcom/facebook/ads/redexgen/X/FP;->A0I(Lcom/facebook/ads/redexgen/X/HM;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 23695
    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/C5;->A0F(Lcom/facebook/ads/redexgen/X/aR;)V

    .line 23696
    if-eqz v20, :cond_0

    .line 23697
    const/4 v0, 0x3

    return v0

    .line 23698
    :cond_0
    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/C5;->A00()I

    move-result v4

    .line 23699
    .local v1, "extractedSamplesCount":I
    iget v2, v0, Lcom/facebook/ads/redexgen/X/C5;->A02:I

    const/4 v3, 0x1

    if-le v4, v2, :cond_3

    const/4 v2, 0x1

    .line 23700
    .local v13, "madeProgress":Z
    :goto_0
    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/C5;->A0M(Lcom/facebook/ads/redexgen/X/aR;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23701
    if-eqz v2, :cond_1

    .line 23702
    :goto_1
    return v3

    .line 23703
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 23704
    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    .line 23705
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private A02()J
    .locals 9

    .line 23706
    const-wide/high16 v2, -0x8000000000000000L

    .line 23707
    .local p0, "largestQueuedTimestampUs":J
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v6, v7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v8, v7, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23708
    .local v5, "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "ZyGj31aUIwj7oXhThZ"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/aX;->A0G()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 23709
    .end local v5    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 23710
    :cond_1
    return-wide v2
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/C5;)J
    .locals 1

    .line 23711
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0P:J

    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/C5;)Landroid/os/Handler;
    .locals 0

    .line 23712
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0R:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/C5;)Lcom/facebook/ads/redexgen/X/aV;
    .locals 0

    .line 23713
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/C5;->A08:Lcom/facebook/ads/redexgen/X/aV;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/C5;)Ljava/lang/Runnable;
    .locals 0

    .line 23714
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0a:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0c:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "Up"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x78

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/C5;)Ljava/lang/String;
    .locals 0

    .line 23715
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0b:Ljava/lang/String;

    return-object p0
.end method

.method private A09()V
    .locals 9

    .line 23716
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0G:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Lcom/facebook/ads/redexgen/X/CP;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0H:Z

    if-nez v0, :cond_1

    .line 23717
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/C5;
    .end local v0
    :cond_0
    return-void

    .line 23718
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v2, v3

    const/4 v8, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, v3, v1

    .line 23719
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aX;->A0H()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    if-nez v0, :cond_2

    .line 23720
    return-void

    .line 23721
    .end local v0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23722
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0Y:Lcom/facebook/ads/redexgen/X/I3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I3;->A02()Z

    .line 23723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v7, v0

    .line 23724
    .local p0, "trackCount":I
    new-array v6, v7, [Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    .line 23725
    .local v0, "trackArray":[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    new-array v0, v7, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0N:[Z

    .line 23726
    new-array v0, v7, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0L:[Z

    .line 23727
    new-array v0, v7, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0M:[Z

    .line 23728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Lcom/facebook/ads/redexgen/X/CP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A6J()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A03:J

    .line 23729
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v5, 0x1

    if-ge v4, v7, :cond_7

    .line 23730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aX;->A0H()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v2

    .line 23731
    .local v3, "trackFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    new-array v1, v5, [Lcom/facebook/ads/internal/exoplayer2/Format;

    aput-object v2, v1, v8

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;-><init>([Lcom/facebook/ads/internal/exoplayer2/Format;)V

    aput-object v0, v6, v4

    .line 23732
    iget-object v1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 23733
    .local v2, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IF;->A0C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IF;->A0A(Ljava/lang/String;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "sORkCePcQUNrHwPTmIu9z8sBJIN6eDJt"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_6

    .line 23734
    .local v0, "isAudioVideo":Z
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0N:[Z

    aput-boolean v5, v0, v4

    .line 23735
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0A:Z

    or-int/2addr v0, v5

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0A:Z

    .line 23736
    .end local v0    # "isAudioVideo":Z
    .end local v3    # "trackFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v2    # "mimeType":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 23737
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 23738
    .end local v0
    :cond_7
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v6}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;-><init>([Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 23739
    iget v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A0O:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_8

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A05:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Lcom/facebook/ads/redexgen/X/CP;

    .line 23740
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A6J()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_8

    .line 23741
    const/4 v0, 0x6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A00:I

    .line 23742
    :cond_8
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Z

    .line 23743
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A0T:Lcom/facebook/ads/redexgen/X/F9;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Lcom/facebook/ads/redexgen/X/CP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A8D()Z

    move-result v0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/F9;->ABd(JZ)V

    .line 23744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A08:Lcom/facebook/ads/redexgen/X/aV;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/aV;->ABF(Lcom/facebook/ads/redexgen/X/aW;)V

    .line 23745
    return-void
.end method

.method private A0A()V
    .locals 15

    .line 23746
    move-object v0, p0

    new-instance v9, Lcom/facebook/ads/redexgen/X/aR;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/C5;->A0Q:Landroid/net/Uri;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/C5;->A0W:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/C5;->A0S:Lcom/facebook/ads/redexgen/X/F8;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/C5;->A0Y:Lcom/facebook/ads/redexgen/X/I3;

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/aR;-><init>(Lcom/facebook/ads/redexgen/X/C5;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/F8;Lcom/facebook/ads/redexgen/X/I3;)V

    .line 23747
    .local p0, "loadable":Lcom/facebook/ads/redexgen/X/aR;
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Z

    if-eqz v1, :cond_1

    .line 23748
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0J()Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23749
    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/C5;->A03:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v5

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/C5;->A06:J

    cmp-long v1, v2, v7

    if-ltz v1, :cond_0

    .line 23750
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/C5;->A0B:Z

    .line 23751
    iput-wide v5, v0, Lcom/facebook/ads/redexgen/X/C5;->A06:J

    .line 23752
    return-void

    .line 23753
    :cond_0
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/C5;->A07:Lcom/facebook/ads/redexgen/X/CP;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/C5;->A06:J

    .line 23754
    invoke-interface {v3, v1, v2}, Lcom/facebook/ads/redexgen/X/CP;->A77(J)Lcom/facebook/ads/redexgen/X/CO;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/CO;->A00:Lcom/facebook/ads/redexgen/X/CQ;

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/CQ;->A00:J

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/C5;->A06:J

    .line 23755
    invoke-virtual {v9, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/aR;->A05(JJ)V

    .line 23756
    iput-wide v5, v0, Lcom/facebook/ads/redexgen/X/C5;->A06:J

    .line 23757
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A00()I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/C5;->A02:I

    .line 23758
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/C5;->A0X:Lcom/facebook/ads/redexgen/X/bN;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/C5;->A00:I

    invoke-virtual {v2, v9, v0, v1}, Lcom/facebook/ads/redexgen/X/bN;->A05(Lcom/facebook/ads/redexgen/X/HV;Lcom/facebook/ads/redexgen/X/HT;I)J

    move-result-wide v12

    .line 23759
    .local v0, "elapsedRealtimeMs":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/C5;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    .line 23760
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/aR;->A03(Lcom/facebook/ads/redexgen/X/aR;)Lcom/facebook/ads/redexgen/X/HM;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 23761
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/aR;->A00(Lcom/facebook/ads/redexgen/X/aR;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/C5;->A03:J

    .line 23762
    invoke-virtual/range {v1 .. v13}, Lcom/facebook/ads/redexgen/X/FP;->A0F(Lcom/facebook/ads/redexgen/X/HM;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 23763
    return-void
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/C5;->A0c:[B

    return-void

    :array_0
    .array-data 1
        0x66t
        0x45t
        0x4bt
        0x4et
        0x4ft
        0x58t
        0x10t
        0x6ft
        0x52t
        0x5et
        0x58t
        0x4bt
        0x49t
        0x5et
        0x45t
        0x58t
        0x67t
        0x4ft
        0x4et
        0x43t
        0x4bt
        0x7at
        0x4ft
        0x58t
        0x43t
        0x45t
        0x4et
    .end array-data
.end method

.method public static A0C()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iI0ZOGUFhjVKOFZqbUjTJbzZriBk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wCM5SpVnQk8vEGvx3xuFkFQnwN8gnHkn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sZUrtXRAji2vfBWVwphN9cenOJ8FQWpp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "F506DqgxlNyYyNAR0eHuGAxqIBb0RwxX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mj8nEZtHpBznvwUNQKJPsV2u1H4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sYtV3FATfn8NsU7nH3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hZDPske6mXbyt4vhVom9Ng"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    return-void
.end method

.method private A0D(I)V
    .locals 8

    .line 23764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0M:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 23765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A02(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v3

    .line 23766
    .local p0, "trackFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    iget-object v0, v3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 23767
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IF;->A01(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:J

    .line 23768
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/FP;->A07(ILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 23769
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A0M:[Z

    const/4 v0, 0x1

    aput-boolean v0, v1, p1

    .line 23770
    .end local p0    # "trackFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_0
    return-void
.end method

.method private A0E(I)V
    .locals 4

    .line 23771
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0N:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    aget-object v0, v0, p1

    .line 23772
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aX;->A0N()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23773
    :cond_0
    return-void

    .line 23774
    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A06:J

    .line 23775
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A0E:Z

    .line 23776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0D:Z

    .line 23777
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:J

    .line 23778
    iput v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A02:I

    .line 23779
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v1, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v0, v2, v3

    .line 23780
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aX;->A0J()V

    .line 23781
    .end local v0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23782
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A08:Lcom/facebook/ads/redexgen/X/aV;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Fa;->A9p(Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 23783
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/aR;)V
    .locals 5

    .line 23784
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A05:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 23785
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/aR;->A02(Lcom/facebook/ads/redexgen/X/aR;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A05:J

    .line 23786
    :cond_0
    return-void
.end method

.method private final A0G(Lcom/facebook/ads/redexgen/X/aR;JJ)V
    .locals 20

    .line 23787
    move-object/from16 v2, p0

    move-object v2, v2

    iget-wide v5, v2, Lcom/facebook/ads/redexgen/X/C5;->A03:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    .line 23788
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/C5;->A02()J

    move-result-wide v5

    .line 23789
    .local v0, "largestQueuedTimestampUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    .line 23790
    const-wide/16 v0, 0x0

    .line 23791
    :goto_0
    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/C5;->A03:J

    .line 23792
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/C5;->A0T:Lcom/facebook/ads/redexgen/X/F9;

    iget-wide v3, v2, Lcom/facebook/ads/redexgen/X/C5;->A03:J

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/C5;->A07:Lcom/facebook/ads/redexgen/X/CP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A8D()Z

    move-result v0

    invoke-interface {v1, v3, v4, v0}, Lcom/facebook/ads/redexgen/X/F9;->ABd(JZ)V

    .line 23793
    .end local v0    # "largestQueuedTimestampUs":J
    :cond_0
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/C5;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    .line 23794
    move-object/from16 v0, p1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aR;->A03(Lcom/facebook/ads/redexgen/X/aR;)Lcom/facebook/ads/redexgen/X/HM;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 23795
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aR;->A00(Lcom/facebook/ads/redexgen/X/aR;)J

    move-result-wide v10

    iget-wide v12, v2, Lcom/facebook/ads/redexgen/X/C5;->A03:J

    .line 23796
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aR;->A01(Lcom/facebook/ads/redexgen/X/aR;)J

    move-result-wide v18

    .line 23797
    move-wide/from16 v16, p4

    move-wide/from16 v14, p2

    invoke-virtual/range {v3 .. v19}, Lcom/facebook/ads/redexgen/X/FP;->A0H(Lcom/facebook/ads/redexgen/X/HM;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 23798
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/C5;->A0F(Lcom/facebook/ads/redexgen/X/aR;)V

    .line 23799
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/C5;->A0B:Z

    .line 23800
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/C5;->A08:Lcom/facebook/ads/redexgen/X/aV;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Fa;->A9p(Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 23801
    return-void

    .line 23802
    :cond_1
    const-wide/16 v0, 0x2710

    add-long/2addr v0, v5

    goto :goto_0
.end method

.method private final A0H(Lcom/facebook/ads/redexgen/X/aR;JJZ)V
    .locals 19

    move-object/from16 v1, p0

    move-object v1, v1

    .line 23803
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/C5;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    .line 23804
    move-object/from16 v0, p1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aR;->A03(Lcom/facebook/ads/redexgen/X/aR;)Lcom/facebook/ads/redexgen/X/HM;

    move-result-object v3

    .line 23805
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aR;->A00(Lcom/facebook/ads/redexgen/X/aR;)J

    move-result-wide v9

    iget-wide v11, v1, Lcom/facebook/ads/redexgen/X/C5;->A03:J

    .line 23806
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aR;->A01(Lcom/facebook/ads/redexgen/X/aR;)J

    move-result-wide v17

    .line 23807
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v15, p4

    move-wide/from16 v13, p2

    invoke-virtual/range {v2 .. v18}, Lcom/facebook/ads/redexgen/X/FP;->A0G(Lcom/facebook/ads/redexgen/X/HM;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 23808
    if-nez p6, :cond_1

    .line 23809
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/C5;->A0F(Lcom/facebook/ads/redexgen/X/aR;)V

    .line 23810
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v4, v2

    .line 23811
    .local v15, "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aX;->A0J()V

    .line 23812
    .end local v15    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23813
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/C5;->A01:I

    if-lez v0, :cond_1

    .line 23814
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/C5;->A08:Lcom/facebook/ads/redexgen/X/aV;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Fa;->A9p(Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 23815
    :cond_1
    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/C5;)V
    .locals 0

    .line 23816
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A09()V

    return-void
.end method

.method private A0J()Z
    .locals 5

    .line 23817
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A06:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0K()Z
    .locals 4

    .line 23818
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0D:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0J()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "wEe5Kid34hKwvsAXbAWEFW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0L(J)Z
    .locals 6

    .line 23819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v5, v0

    .line 23820
    .local p0, "trackCount":I
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v4, v5, :cond_3

    .line 23821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    aget-object v0, v0, v4

    .line 23822
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aX;->A0K()V

    .line 23823
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v3, v2}, Lcom/facebook/ads/redexgen/X/aX;->A0E(JZZ)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 23824
    .local v2, "seekInsideQueue":Z
    :goto_1
    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0N:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0A:Z

    if-nez v0, :cond_1

    .line 23825
    :cond_0
    return v2

    .line 23826
    .end local v2    # "seekInsideQueue":Z
    .end local v0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 23827
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 23828
    .end local p1    # "i":I
    :cond_3
    return v3
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/aR;I)Z
    .locals 9

    .line 23829
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A05:J

    const/4 v6, 0x1

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Lcom/facebook/ads/redexgen/X/CP;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A6J()J

    move-result-wide v7

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "Q0rpoNhjqPePbxzXOOIqRvZr1JNrttpQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    cmp-long v0, v7, v3

    if-eqz v0, :cond_2

    .line 23830
    :cond_0
    iput p2, p0, Lcom/facebook/ads/redexgen/X/C5;->A02:I

    .line 23831
    return v6

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23832
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0K()Z

    move-result v0

    if-nez v0, :cond_4

    .line 23833
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/C5;->A0E:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_3

    .line 23834
    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "yM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v5

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23835
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0D:Z

    .line 23836
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:J

    .line 23837
    iput v5, p0, Lcom/facebook/ads/redexgen/X/C5;->A02:I

    .line 23838
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v1, v4

    :goto_0
    if-ge v5, v1, :cond_5

    aget-object v0, v4, v5

    .line 23839
    .local v3, "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aX;->A0J()V

    .line 23840
    .end local v3    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 23841
    :cond_5
    invoke-virtual {p1, v2, v3, v2, v3}, Lcom/facebook/ads/redexgen/X/aR;->A05(JJ)V

    .line 23842
    return v6
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/C5;)Z
    .locals 0

    .line 23843
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0G:Z

    return p0
.end method

.method public static A0O(Ljava/io/IOException;)Z
    .locals 0

    .line 23844
    instance-of p0, p0, Lcom/facebook/ads/redexgen/X/ad;

    return p0
.end method


# virtual methods
.method public final A0P(IJ)I
    .locals 4

    .line 23845
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23846
    const/4 v0, 0x0

    return v0

    .line 23847
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    aget-object v3, v0, p1

    .line 23848
    .local p0, "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0B:Z

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/aX;->A0G()J

    move-result-wide v1

    cmp-long v0, p2, v1

    if-lez v0, :cond_3

    .line 23849
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/aX;->A0B()I

    move-result v1

    .line 23850
    .local p1, "skipCount":I
    :cond_1
    :goto_0
    if-lez v1, :cond_2

    .line 23851
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/C5;->A0D(I)V

    .line 23852
    :goto_1
    return v1

    .line 23853
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/C5;->A0E(I)V

    goto :goto_1

    .line 23854
    .end local p1    # "skipCount":I
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v3, p2, p3, v0, v0}, Lcom/facebook/ads/redexgen/X/aX;->A0E(JZZ)I

    move-result v1

    .line 23855
    .restart local p1    # "skipCount":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 23856
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0Q(ILcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/YY;Z)I
    .locals 11

    .line 23857
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0K()Z

    move-result v0

    const/4 v3, -0x3

    if-eqz v0, :cond_0

    .line 23858
    return v3

    .line 23859
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    aget-object v4, v0, p1

    iget-boolean v8, p0, Lcom/facebook/ads/redexgen/X/C5;->A0B:Z

    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:J

    .line 23860
    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "BZZhA5HnQ267vlJC28K7sY9wv6QGzHwf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    move-object v6, p3

    move v7, p4

    move-object v5, p2

    invoke-virtual/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/aX;->A0F(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/YY;ZZJ)I

    move-result v1

    .line 23861
    .local p0, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_3

    .line 23862
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/C5;->A0D(I)V

    .line 23863
    :cond_2
    :goto_0
    return v1

    .line 23864
    :cond_3
    if-ne v1, v3, :cond_2

    .line 23865
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/C5;->A0E(I)V

    goto :goto_0
.end method

.method public final A0R()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23866
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A0X:Lcom/facebook/ads/redexgen/X/bN;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bN;->A07(I)V

    .line 23867
    return-void
.end method

.method public final A0S()V
    .locals 4

    .line 23868
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Z

    if-eqz v0, :cond_0

    .line 23869
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 23870
    .local v2, "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aX;->A0I()V

    .line 23871
    .end local v2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23872
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0X:Lcom/facebook/ads/redexgen/X/bN;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/bN;->A08(Lcom/facebook/ads/redexgen/X/HW;)V

    .line 23873
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A0R:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 23874
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A08:Lcom/facebook/ads/redexgen/X/aV;

    .line 23875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0G:Z

    .line 23876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FP;->A05()V

    .line 23877
    return-void
.end method

.method public final A0T(I)Z
    .locals 1

    .line 23878
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0K()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aX;->A0N()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A4B(J)Z
    .locals 4

    .line 23879
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0B:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0E:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0F:Z

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "7rVHsGRdVZCry1KpVG9eopTEFKGRMHdR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 23880
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/C5;
    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23881
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0Y:Lcom/facebook/ads/redexgen/X/I3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I3;->A03()Z

    move-result v1

    .line 23882
    .local p0, "continuedLoading":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0X:Lcom/facebook/ads/redexgen/X/bN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bN;->A09()Z

    move-result v0

    if-nez v0, :cond_3

    .line 23883
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0A()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 23884
    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "GZZ8Yg3MT0LKLUTCQO9quz1OXrB3914Q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v1, 0x1

    .line 23885
    :cond_3
    :goto_0
    return v1

    .line 23886
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "KAHjzw5ailzTQNPlHwAo2zZrrjfyTj4F"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A4o(JZ)V
    .locals 4

    .line 23887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v3, v0

    .line 23888
    .local p0, "trackCount":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 23889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    aget-object v1, v0, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0L:[Z

    aget-boolean v0, v0, v2

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/aX;->A0L(JZZ)V

    .line 23890
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23891
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method public final A5B()V
    .locals 2

    .line 23892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0H:Z

    .line 23893
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23894
    return-void
.end method

.method public final A5X(JLcom/facebook/ads/redexgen/X/Ab;)J
    .locals 9

    .line 23895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Lcom/facebook/ads/redexgen/X/CP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A8D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23896
    const-wide/16 v0, 0x0

    return-wide v0

    .line 23897
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Lcom/facebook/ads/redexgen/X/CP;

    move-wide v2, p1

    invoke-interface {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/CP;->A77(J)Lcom/facebook/ads/redexgen/X/CO;

    move-result-object v1

    .line 23898
    .local p0, "seekPoints":Lcom/facebook/ads/redexgen/X/CO;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/CO;->A00:Lcom/facebook/ads/redexgen/X/CQ;

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/CQ;->A01:J

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/CO;->A01:Lcom/facebook/ads/redexgen/X/CQ;

    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/CQ;->A01:J

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Ic;->A0I(JLcom/facebook/ads/redexgen/X/Ab;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A5m()J
    .locals 10

    .line 23899
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0B:Z

    const-wide/high16 v8, -0x8000000000000000L

    if-eqz v0, :cond_0

    .line 23900
    return-wide v8

    .line 23901
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23902
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A06:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_2

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23903
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0A:Z

    if-eqz v0, :cond_6

    .line 23904
    const-wide v2, 0x7fffffffffffffffL

    sget-object v1, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "v1DtQTmxA3FTsqocwnKPSJWZapJDPMlv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-wide v3

    .line 23905
    .local v3, "largestQueuedTimestampUs":J
    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "vaKypmx8P8ApWe5d9yUSyn"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v6, v0

    .line 23906
    .local p0, "trackCount":I
    const/4 v5, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v5, v6, :cond_7

    .line 23907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0N:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_4

    .line 23908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    aget-object v7, v0, v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 23909
    sget-object v4, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v1, "ClOx81htkGLxdwhy5PY2qE"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/aX;->A0G()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 23910
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23911
    .end local v3    # "i":I
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A02()J

    move-result-wide v2

    .line 23912
    .restart local v3    # "i":I
    :cond_7
    cmp-long v0, v2, v8

    if-nez v0, :cond_8

    .line 23913
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:J

    .line 23914
    :cond_8
    return-wide v2
.end method

.method public final A6o()J
    .locals 2

    .line 23915
    iget v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A01:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/C5;->A5m()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final A7O()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 23916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public final A90()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23917
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0R()V

    .line 23918
    return-void
.end method

.method public final bridge synthetic AAa(Lcom/facebook/ads/redexgen/X/HV;JJZ)V
    .locals 7

    move-object v1, p1

    .line 23919
    check-cast v1, Lcom/facebook/ads/redexgen/X/aR;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/C5;->A0H(Lcom/facebook/ads/redexgen/X/aR;JJZ)V

    return-void
.end method

.method public final bridge synthetic AAc(Lcom/facebook/ads/redexgen/X/HV;JJ)V
    .locals 6

    move-object v1, p1

    .line 23920
    check-cast v1, Lcom/facebook/ads/redexgen/X/aR;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/C5;->A0G(Lcom/facebook/ads/redexgen/X/aR;JJ)V

    return-void
.end method

.method public final bridge synthetic AAd(Lcom/facebook/ads/redexgen/X/HV;JJLjava/io/IOException;)I
    .locals 7

    move-object v1, p1

    .line 23921
    check-cast v1, Lcom/facebook/ads/redexgen/X/aR;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/C5;->A01(Lcom/facebook/ads/redexgen/X/aR;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public final AAh()V
    .locals 4

    .line 23922
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 23923
    .local v1, "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aX;->A0J()V

    .line 23924
    .end local v1    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23925
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0S:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F8;->A04()V

    .line 23926
    return-void
.end method

.method public final ABv(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 2

    .line 23927
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23928
    return-void
.end method

.method public final ACV(Lcom/facebook/ads/redexgen/X/aV;J)V
    .locals 1

    .line 23929
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C5;->A08:Lcom/facebook/ads/redexgen/X/aV;

    .line 23930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0Y:Lcom/facebook/ads/redexgen/X/I3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I3;->A03()Z

    .line 23931
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0A()V

    .line 23932
    return-void
.end method

.method public final ACo()J
    .locals 2

    .line 23933
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0C:Z

    if-nez v0, :cond_0

    .line 23934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FP;->A06()V

    .line 23935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0C:Z

    .line 23936
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0D:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0B:Z

    if-nez v0, :cond_1

    .line 23937
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A02:I

    if-le v1, v0, :cond_2

    .line 23938
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0D:Z

    .line 23939
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:J

    return-wide v0

    .line 23940
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final ACv(J)V
    .locals 0

    .line 23941
    return-void
.end method

.method public final ADX(Lcom/facebook/ads/redexgen/X/CP;)V
    .locals 2

    .line 23942
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Lcom/facebook/ads/redexgen/X/CP;

    .line 23943
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23944
    return-void
.end method

.method public final ADa(J)J
    .locals 4

    .line 23945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A07:Lcom/facebook/ads/redexgen/X/CP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A8D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23946
    :goto_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/C5;->A04:J

    .line 23947
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A0D:Z

    .line 23948
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C5;->A0J()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/C5;->A0L(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23949
    return-wide p1

    .line 23950
    :cond_0
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 23951
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A0E:Z

    .line 23952
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/C5;->A06:J

    .line 23953
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/C5;->A0B:Z

    .line 23954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0X:Lcom/facebook/ads/redexgen/X/bN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bN;->A09()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0X:Lcom/facebook/ads/redexgen/X/bN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bN;->A06()V

    .line 23956
    :cond_2
    return-wide p1

    .line 23957
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v1, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v0, v2, v3

    .line 23958
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aX;->A0J()V

    .line 23959
    .end local v0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public final ADb([Lcom/facebook/ads/redexgen/X/H4;[Z[Lcom/facebook/ads/redexgen/X/FZ;[ZJ)J
    .locals 12

    move-wide/from16 v0, p5

    .line 23960
    move-object v6, p0

    iget-boolean v2, v6, Lcom/facebook/ads/redexgen/X/C5;->A0F:Z

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23961
    iget v3, v6, Lcom/facebook/ads/redexgen/X/C5;->A01:I

    .line 23962
    .local v0, "oldEnabledTrackCount":I
    const/4 v4, 0x0

    .local v6, "i":I
    :goto_0
    array-length v8, p1

    const/4 v7, 0x0

    sget-object v5, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v5, v5, v2

    const/4 v2, 0x6

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v2, 0x59

    if-eq v5, v2, :cond_12

    sget-object v9, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v5, "SYrZ4V4BuS5f1iQivHtPvbJPBq8KYGcV"

    const/4 v2, 0x3

    aput-object v5, v9, v2

    const-string v5, "Qj6kIai7maHlsMhbAYZIdrm5vw8KbeiE"

    const/4 v2, 0x1

    aput-object v5, v9, v2

    const/4 v5, 0x1

    if-ge v4, v8, :cond_2

    .line 23963
    aget-object v2, p3, v4

    if-eqz v2, :cond_1

    aget-object v2, p1, v4

    if-eqz v2, :cond_0

    aget-boolean v2, p2, v4

    if-nez v2, :cond_1

    .line 23964
    :cond_0
    aget-object v2, p3, v4

    check-cast v2, Lcom/facebook/ads/redexgen/X/aS;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/aS;->A00(Lcom/facebook/ads/redexgen/X/aS;)I

    move-result v8

    .line 23965
    .local v6, "track":I
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/C5;->A0L:[Z

    aget-boolean v2, v2, v8

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23966
    iget v2, v6, Lcom/facebook/ads/redexgen/X/C5;->A01:I

    sub-int/2addr v2, v5

    iput v2, v6, Lcom/facebook/ads/redexgen/X/C5;->A01:I

    .line 23967
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/C5;->A0L:[Z

    aput-boolean v7, v2, v8

    .line 23968
    const/4 v2, 0x0

    aput-object v2, p3, v4

    .line 23969
    .end local v6    # "track":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 23970
    .end local v6
    :cond_2
    iget-boolean v2, v6, Lcom/facebook/ads/redexgen/X/C5;->A0I:Z

    if-eqz v2, :cond_8

    if-nez v3, :cond_9

    :goto_1
    const/4 v3, 0x1

    .line 23971
    .local v6, "seekRequired":Z
    :goto_2
    const/4 v9, 0x0

    .local v6, "i":I
    :goto_3
    array-length v2, p1

    if-ge v9, v2, :cond_a

    .line 23972
    aget-object v2, p3, v9

    if-nez v2, :cond_6

    aget-object v2, p1, v9

    if-eqz v2, :cond_6

    .line 23973
    aget-object v8, p1, v9

    .line 23974
    .local v0, "selection":Lcom/facebook/ads/redexgen/X/H4;
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/H4;->length()I

    move-result v2

    if-ne v2, v5, :cond_4

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23975
    invoke-interface {v8, v7}, Lcom/facebook/ads/redexgen/X/H4;->A6c(I)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23976
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/C5;->A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/H4;->A7N()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)I

    move-result v4

    .line 23977
    .local v11, "track":I
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/C5;->A0L:[Z

    aget-boolean v2, v2, v4

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23978
    iget v2, v6, Lcom/facebook/ads/redexgen/X/C5;->A01:I

    add-int/2addr v2, v5

    iput v2, v6, Lcom/facebook/ads/redexgen/X/C5;->A01:I

    .line 23979
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/C5;->A0L:[Z

    aput-boolean v5, v2, v4

    .line 23980
    new-instance v2, Lcom/facebook/ads/redexgen/X/aS;

    invoke-direct {v2, p0, v4}, Lcom/facebook/ads/redexgen/X/aS;-><init>(Lcom/facebook/ads/redexgen/X/C5;I)V

    aput-object v2, p3, v9

    .line 23981
    aput-boolean v5, p4, v9

    .line 23982
    if-nez v3, :cond_6

    .line 23983
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    aget-object v11, v2, v4

    .line 23984
    .local v2, "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/aX;->A0K()V

    .line 23985
    invoke-virtual {v11, v0, v1, v5, v5}, Lcom/facebook/ads/redexgen/X/aX;->A0E(JZZ)I

    move-result v10

    const/4 v8, -0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x16

    if-eq v3, v2, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23986
    :cond_3
    const/4 v2, 0x0

    goto :goto_5

    .line 23987
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 23988
    :cond_5
    sget-object v4, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v3, "lOsySJaFgyeJ3Ig8A3"

    const/4 v2, 0x6

    aput-object v3, v4, v2

    if-ne v10, v8, :cond_7

    .line 23989
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/aX;->A0C()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    .line 23990
    .end local v0    # "selection":Lcom/facebook/ads/redexgen/X/H4;
    .end local v11    # "track":I
    .end local v2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    :cond_6
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 23991
    :cond_7
    const/4 v3, 0x0

    goto :goto_6

    .line 23992
    :cond_8
    const-wide/16 v3, 0x0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_9

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 23993
    .end local v6    # "i":I
    :cond_a
    iget v2, v6, Lcom/facebook/ads/redexgen/X/C5;->A01:I

    if-nez v2, :cond_d

    .line 23994
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/C5;->A0E:Z

    .line 23995
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/C5;->A0D:Z

    .line 23996
    iget-object v8, v6, Lcom/facebook/ads/redexgen/X/C5;->A0X:Lcom/facebook/ads/redexgen/X/bN;

    sget-object v4, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v4, v2

    const/4 v2, 0x1

    aget-object v4, v4, v2

    const/16 v2, 0x1a

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_b

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/bN;->A09()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 23997
    :goto_7
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v3, v4

    :goto_8
    if-ge v7, v3, :cond_10

    aget-object v2, v4, v7

    .line 23998
    .local v11, "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/aX;->A0I()V

    .line 23999
    .end local v11    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_b
    sget-object v4, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v3, "gg"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/bN;->A09()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    .line 24000
    :cond_c
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v3, v4

    :goto_9
    if-ge v7, v3, :cond_11

    aget-object v2, v4, v7

    .line 24001
    .restart local v11    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/aX;->A0J()V

    .line 24002
    .end local v11    # "sampleQueue":Lcom/facebook/ads/redexgen/X/aX;
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 24003
    :cond_d
    if-eqz v3, :cond_11

    .line 24004
    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/C5;->ADa(J)J

    move-result-wide v0

    .line 24005
    .end local v2
    .local p3, "positionUs":J
    const/4 v7, 0x0

    .restart local v6    # "i":I
    :goto_a
    array-length v8, p3

    sget-object v3, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x2

    if-eq v3, v2, :cond_e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e
    sget-object v4, Lcom/facebook/ads/redexgen/X/C5;->A0d:[Ljava/lang/String;

    const-string v3, "D8RgEMde5uPIB6l0iM"

    const/4 v2, 0x6

    aput-object v3, v4, v2

    if-ge v7, v8, :cond_11

    .line 24006
    aget-object v2, p3, v7

    if-eqz v2, :cond_f

    .line 24007
    aput-boolean v5, p4, v7

    .line 24008
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 24009
    :cond_10
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/C5;->A0X:Lcom/facebook/ads/redexgen/X/bN;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/bN;->A06()V

    .line 24010
    .end local v6    # "i":I
    :cond_11
    iput-boolean v5, v6, Lcom/facebook/ads/redexgen/X/C5;->A0I:Z

    .line 24011
    return-wide v0

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEM(II)Lcom/facebook/ads/redexgen/X/CS;
    .locals 4

    .line 24012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    array-length v3, v0

    .line 24013
    .local p0, "trackCount":I
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 24014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0J:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 24015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    aget-object v0, v0, v1

    return-object v0

    .line 24016
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24017
    .end local p1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0V:Lcom/facebook/ads/redexgen/X/HA;

    new-instance v2, Lcom/facebook/ads/redexgen/X/aX;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/aX;-><init>(Lcom/facebook/ads/redexgen/X/HA;)V

    .line 24018
    .local p1, "trackOutput":Lcom/facebook/ads/redexgen/X/aX;
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/aX;->A0M(Lcom/facebook/ads/redexgen/X/FY;)V

    .line 24019
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A0J:[I

    add-int/lit8 v0, v3, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0J:[I

    .line 24020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0J:[I

    aput p1, v0, v3

    .line 24021
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    add-int/lit8 v0, v3, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/aX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    .line 24022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A0K:[Lcom/facebook/ads/redexgen/X/aX;

    aput-object v2, v0, v3

    .line 24023
    return-object v2
.end method
