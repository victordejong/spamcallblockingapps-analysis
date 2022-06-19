.class public final Lcom/facebook/ads/redexgen/X/Be;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/UN;
.implements Lcom/facebook/ads/redexgen/X/CI;
.implements Lcom/facebook/ads/redexgen/X/HT;
.implements Lcom/facebook/ads/redexgen/X/HW;
.implements Lcom/facebook/ads/redexgen/X/FY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/F8;,
        Lcom/facebook/ads/redexgen/X/UR;,
        Lcom/facebook/ads/redexgen/X/UQ;,
        Lcom/facebook/ads/redexgen/X/F9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/UN;",
        "Lcom/facebook/ads/redexgen/X/CI;",
        "Lcom/facebook/ads/redexgen/X/HT<",
        "Lcom/facebook/ads/redexgen/X/UR;",
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

.field public A08:Lcom/facebook/ads/redexgen/X/UO;
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

.field public A0K:[Lcom/facebook/ads/redexgen/X/UM;

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

.field public final A0X:Lcom/facebook/ads/redexgen/X/Tn;

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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Be;->A0C()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Be;->A0B()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HI;[Lcom/facebook/ads/redexgen/X/CG;ILcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/F9;Lcom/facebook/ads/redexgen/X/HA;Ljava/lang/String;I)V
    .locals 4
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23558
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Be;->A0Q:Landroid/net/Uri;

    .line 23559
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Be;->A0W:Lcom/facebook/ads/redexgen/X/HI;

    .line 23560
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Be;->A0O:I

    .line 23561
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Be;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    .line 23562
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Be;->A0T:Lcom/facebook/ads/redexgen/X/F9;

    .line 23563
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Be;->A0V:Lcom/facebook/ads/redexgen/X/HA;

    .line 23564
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Be;->A0b:Ljava/lang/String;

    .line 23565
    int-to-long v0, p9

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0P:J

    .line 23566
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Be;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tn;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Tn;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0X:Lcom/facebook/ads/redexgen/X/Tn;

    .line 23567
    new-instance v0, Lcom/facebook/ads/redexgen/X/F8;

    invoke-direct {v0, p3, p0}, Lcom/facebook/ads/redexgen/X/F8;-><init>([Lcom/facebook/ads/redexgen/X/CG;Lcom/facebook/ads/redexgen/X/CI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0S:Lcom/facebook/ads/redexgen/X/F8;

    .line 23568
    new-instance v0, Lcom/facebook/ads/redexgen/X/I3;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/I3;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0Y:Lcom/facebook/ads/redexgen/X/I3;

    .line 23569
    new-instance v0, Lcom/facebook/ads/redexgen/X/F6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/F6;-><init>(Lcom/facebook/ads/redexgen/X/Be;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0Z:Ljava/lang/Runnable;

    .line 23570
    new-instance v0, Lcom/facebook/ads/redexgen/X/F7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/F7;-><init>(Lcom/facebook/ads/redexgen/X/Be;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0a:Ljava/lang/Runnable;

    .line 23571
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0R:Landroid/os/Handler;

    .line 23572
    const/4 v1, 0x0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0J:[I

    .line 23573
    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/UM;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    .line 23574
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Be;->A06:J

    .line 23575
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A05:J

    .line 23576
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Be;->A03:J

    .line 23577
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    .line 23578
    const/4 p4, 0x3

    .line 23579
    :cond_0
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Be;->A00:I

    .line 23580
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/FP;->A04()V

    .line 23581
    return-void
.end method

.method private A00()I
    .locals 5

    .line 23582
    const/4 v4, 0x0

    .line 23583
    .local p0, "extractedSamplesCount":I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 23584
    .local v1, "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0D()I

    move-result v0

    add-int/2addr v4, v0

    .line 23585
    .end local v1    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23586
    :cond_0
    return v4
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/UR;JJLjava/io/IOException;)I
    .locals 21

    move-object/from16 v0, p0

    move-object v0, v0

    .line 23587
    move-object/from16 v19, p6

    invoke-static/range {v19 .. v19}, Lcom/facebook/ads/redexgen/X/Be;->A0O(Ljava/io/IOException;)Z

    move-result v20

    .line 23588
    .local v20, "isErrorFatal":Z
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Be;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    .line 23589
    move-object/from16 v1, p1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/UR;->A03(Lcom/facebook/ads/redexgen/X/UR;)Lcom/facebook/ads/redexgen/X/HM;

    move-result-object v3

    .line 23590
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/UR;->A00(Lcom/facebook/ads/redexgen/X/UR;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/facebook/ads/redexgen/X/Be;->A03:J

    .line 23591
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/UR;->A01(Lcom/facebook/ads/redexgen/X/UR;)J

    move-result-wide v17

    .line 23592
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v15, p4

    move-wide/from16 v13, p2

    invoke-virtual/range {v2 .. v20}, Lcom/facebook/ads/redexgen/X/FP;->A0I(Lcom/facebook/ads/redexgen/X/HM;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 23593
    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Be;->A0F(Lcom/facebook/ads/redexgen/X/UR;)V

    .line 23594
    if-eqz v20, :cond_0

    .line 23595
    const/4 v0, 0x3

    return v0

    .line 23596
    :cond_0
    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Be;->A00()I

    move-result v4

    .line 23597
    .local v1, "extractedSamplesCount":I
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Be;->A02:I

    const/4 v3, 0x1

    if-le v4, v2, :cond_3

    const/4 v2, 0x1

    .line 23598
    .local v13, "madeProgress":Z
    :goto_0
    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/Be;->A0M(Lcom/facebook/ads/redexgen/X/UR;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23599
    if-eqz v2, :cond_1

    .line 23600
    :goto_1
    return v3

    .line 23601
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 23602
    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    .line 23603
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private A02()J
    .locals 7

    .line 23604
    const-wide/high16 v3, -0x8000000000000000L

    .line 23605
    .local p0, "largestQueuedTimestampUs":J
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v5, v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v6, v2

    .line 23606
    .local v2, "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0G()J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 23607
    .end local v2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23608
    :cond_0
    return-wide v3
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Be;)J
    .locals 1

    .line 23609
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0P:J

    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Be;)Landroid/os/Handler;
    .locals 0

    .line 23610
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0R:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Be;)Lcom/facebook/ads/redexgen/X/UO;
    .locals 0

    .line 23611
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Be;->A08:Lcom/facebook/ads/redexgen/X/UO;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Be;)Ljava/lang/Runnable;
    .locals 0

    .line 23612
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0a:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Be;->A0c:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Be;)Ljava/lang/String;
    .locals 0

    .line 23613
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0b:Ljava/lang/String;

    return-object p0
.end method

.method private A09()V
    .locals 8

    .line 23614
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0G:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0F:Z

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A07:Lcom/facebook/ads/redexgen/X/CP;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const-string v1, "ebblg26z5UHu5UO6NPw1O4GWSEgRYSkk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0H:Z

    if-nez v0, :cond_1

    .line 23615
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Be;
    .end local v0
    :cond_0
    return-void

    .line 23616
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v2, v3

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, v3, v1

    .line 23617
    .local v2, "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0H()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    if-nez v0, :cond_2

    .line 23618
    return-void

    .line 23619
    .end local v2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23620
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0Y:Lcom/facebook/ads/redexgen/X/I3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I3;->A02()Z

    .line 23621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v6, v0

    .line 23622
    .local p0, "trackCount":I
    new-array v4, v6, [Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    .line 23623
    .local v0, "trackArray":[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0N:[Z

    .line 23624
    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0L:[Z

    .line 23625
    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0M:[Z

    .line 23626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A07:Lcom/facebook/ads/redexgen/X/CP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A6J()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A03:J

    .line 23627
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v5, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const-string v1, "2GSoNmRSiWu4L4GOgizN9dICZei7v7dx"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge v3, v6, :cond_6

    .line 23628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0H()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v2

    .line 23629
    .local v0, "trackFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    new-array v1, v5, [Lcom/facebook/ads/internal/exoplayer2/Format;

    aput-object v2, v1, v7

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;-><init>([Lcom/facebook/ads/internal/exoplayer2/Format;)V

    aput-object v0, v4, v3

    .line 23630
    iget-object v1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 23631
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IF;->A0C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IF;->A0A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23632
    .local v2, "isAudioVideo":Z
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0N:[Z

    aput-boolean v5, v0, v3

    .line 23633
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0A:Z

    or-int/2addr v0, v5

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0A:Z

    .line 23634
    .end local v2    # "isAudioVideo":Z
    .end local v0    # "trackFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v1    # "mimeType":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23635
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 23636
    .end local v3    # "i":I
    :cond_6
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v4}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;-><init>([Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 23637
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A0O:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_7

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A05:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A07:Lcom/facebook/ads/redexgen/X/CP;

    .line 23638
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A6J()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_7

    .line 23639
    const/4 v0, 0x6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A00:I

    .line 23640
    :cond_7
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Be;->A0F:Z

    .line 23641
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A0T:Lcom/facebook/ads/redexgen/X/F9;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A07:Lcom/facebook/ads/redexgen/X/CP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A8F()Z

    move-result v0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/F9;->ABd(JZ)V

    .line 23642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A08:Lcom/facebook/ads/redexgen/X/UO;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/UO;->ABF(Lcom/facebook/ads/redexgen/X/UN;)V

    .line 23643
    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0A()V
    .locals 15

    .line 23644
    move-object v0, p0

    new-instance v9, Lcom/facebook/ads/redexgen/X/UR;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/Be;->A0Q:Landroid/net/Uri;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Be;->A0W:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/Be;->A0S:Lcom/facebook/ads/redexgen/X/F8;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/Be;->A0Y:Lcom/facebook/ads/redexgen/X/I3;

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/UR;-><init>(Lcom/facebook/ads/redexgen/X/Be;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/F8;Lcom/facebook/ads/redexgen/X/I3;)V

    .line 23645
    .local p0, "loadable":Lcom/facebook/ads/redexgen/X/UR;
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Be;->A0F:Z

    if-eqz v1, :cond_1

    .line 23646
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0J()Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23647
    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/Be;->A03:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v5

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Be;->A06:J

    cmp-long v1, v2, v7

    if-ltz v1, :cond_0

    .line 23648
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Be;->A0B:Z

    .line 23649
    iput-wide v5, v0, Lcom/facebook/ads/redexgen/X/Be;->A06:J

    .line 23650
    return-void

    .line 23651
    :cond_0
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Be;->A07:Lcom/facebook/ads/redexgen/X/CP;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Be;->A06:J

    .line 23652
    invoke-interface {v3, v1, v2}, Lcom/facebook/ads/redexgen/X/CP;->A79(J)Lcom/facebook/ads/redexgen/X/CO;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/CO;->A00:Lcom/facebook/ads/redexgen/X/CQ;

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/CQ;->A00:J

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Be;->A06:J

    .line 23653
    invoke-virtual {v9, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/UR;->A05(JJ)V

    .line 23654
    iput-wide v5, v0, Lcom/facebook/ads/redexgen/X/Be;->A06:J

    .line 23655
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A00()I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Be;->A02:I

    .line 23656
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Be;->A0X:Lcom/facebook/ads/redexgen/X/Tn;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Be;->A00:I

    invoke-virtual {v2, v9, v0, v1}, Lcom/facebook/ads/redexgen/X/Tn;->A04(Lcom/facebook/ads/redexgen/X/HV;Lcom/facebook/ads/redexgen/X/HT;I)J

    move-result-wide v12

    .line 23657
    .local v0, "elapsedRealtimeMs":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Be;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    .line 23658
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/UR;->A03(Lcom/facebook/ads/redexgen/X/UR;)Lcom/facebook/ads/redexgen/X/HM;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 23659
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/UR;->A00(Lcom/facebook/ads/redexgen/X/UR;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/Be;->A03:J

    .line 23660
    invoke-virtual/range {v1 .. v13}, Lcom/facebook/ads/redexgen/X/FP;->A0F(Lcom/facebook/ads/redexgen/X/HM;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 23661
    return-void
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Be;->A0c:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x72t
        0x7ct
        0x79t
        0x78t
        0x6ft
        0x27t
        0x58t
        0x65t
        0x69t
        0x6ft
        0x7ct
        0x7et
        0x69t
        0x72t
        0x6ft
        0x50t
        0x78t
        0x79t
        0x74t
        0x7ct
        0x4dt
        0x78t
        0x6ft
        0x74t
        0x72t
        0x79t
    .end array-data
.end method

.method public static A0C()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PHRRkPJF53Q00ee"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P52dzmICGFSJf3omwB1r0oqV0UWbuezc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8KoloQOxu2wmjEkxvFc2Wzx0YRYvPfXB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XbpIpmcj145hwKmZBTqiAnTlIyZbuIvX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5vDBe3t2U312uBh4v11w2YY2bpAD7cZy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5z85sqy0jzSflDxlcsJTsAfjkHtUubDA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JjADabmWQCpk2PiHLeOZOBrUgHLyOUja"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ixyhVd3BEsSQPtvppU9DBBDxj0ArXGBc"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    return-void
.end method

.method private A0D(I)V
    .locals 8

    .line 23662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0M:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 23663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v3

    .line 23664
    .local p0, "trackFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    iget-object v0, v3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 23665
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IF;->A01(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Be;->A04:J

    .line 23666
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/FP;->A07(ILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 23667
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A0M:[Z

    const/4 v0, 0x1

    aput-boolean v0, v1, p1

    .line 23668
    .end local p0    # "trackFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_0
    return-void
.end method

.method private A0E(I)V
    .locals 4

    .line 23669
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0N:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    aget-object v0, v0, p1

    .line 23670
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0N()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23671
    :cond_0
    return-void

    .line 23672
    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A06:J

    .line 23673
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A0E:Z

    .line 23674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0D:Z

    .line 23675
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A04:J

    .line 23676
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:I

    .line 23677
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v1, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v0, v2, v3

    .line 23678
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0J()V

    .line 23679
    .end local v0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23680
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A08:Lcom/facebook/ads/redexgen/X/UO;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Fa;->A9o(Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 23681
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/UR;)V
    .locals 5

    .line 23682
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A05:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 23683
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/UR;->A02(Lcom/facebook/ads/redexgen/X/UR;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A05:J

    .line 23684
    :cond_0
    return-void
.end method

.method private final A0G(Lcom/facebook/ads/redexgen/X/UR;JJ)V
    .locals 20

    .line 23685
    move-object/from16 v2, p0

    move-object v2, v2

    iget-wide v5, v2, Lcom/facebook/ads/redexgen/X/Be;->A03:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    .line 23686
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Be;->A02()J

    move-result-wide v5

    .line 23687
    .local v0, "largestQueuedTimestampUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    .line 23688
    const-wide/16 v0, 0x0

    .line 23689
    :goto_0
    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Be;->A03:J

    .line 23690
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Be;->A0T:Lcom/facebook/ads/redexgen/X/F9;

    iget-wide v3, v2, Lcom/facebook/ads/redexgen/X/Be;->A03:J

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Be;->A07:Lcom/facebook/ads/redexgen/X/CP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A8F()Z

    move-result v0

    invoke-interface {v1, v3, v4, v0}, Lcom/facebook/ads/redexgen/X/F9;->ABd(JZ)V

    .line 23691
    .end local v0    # "largestQueuedTimestampUs":J
    :cond_0
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Be;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    .line 23692
    move-object/from16 v0, p1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UR;->A03(Lcom/facebook/ads/redexgen/X/UR;)Lcom/facebook/ads/redexgen/X/HM;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 23693
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UR;->A00(Lcom/facebook/ads/redexgen/X/UR;)J

    move-result-wide v10

    iget-wide v12, v2, Lcom/facebook/ads/redexgen/X/Be;->A03:J

    .line 23694
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UR;->A01(Lcom/facebook/ads/redexgen/X/UR;)J

    move-result-wide v18

    .line 23695
    move-wide/from16 v16, p4

    move-wide/from16 v14, p2

    invoke-virtual/range {v3 .. v19}, Lcom/facebook/ads/redexgen/X/FP;->A0H(Lcom/facebook/ads/redexgen/X/HM;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 23696
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Be;->A0F(Lcom/facebook/ads/redexgen/X/UR;)V

    .line 23697
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Be;->A0B:Z

    .line 23698
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Be;->A08:Lcom/facebook/ads/redexgen/X/UO;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Fa;->A9o(Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 23699
    return-void

    .line 23700
    :cond_1
    const-wide/16 v0, 0x2710

    add-long/2addr v0, v5

    goto :goto_0
.end method

.method private final A0H(Lcom/facebook/ads/redexgen/X/UR;JJZ)V
    .locals 19

    move-object/from16 v1, p0

    move-object v1, v1

    .line 23701
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Be;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    .line 23702
    move-object/from16 v0, p1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UR;->A03(Lcom/facebook/ads/redexgen/X/UR;)Lcom/facebook/ads/redexgen/X/HM;

    move-result-object v3

    .line 23703
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UR;->A00(Lcom/facebook/ads/redexgen/X/UR;)J

    move-result-wide v9

    iget-wide v11, v1, Lcom/facebook/ads/redexgen/X/Be;->A03:J

    .line 23704
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UR;->A01(Lcom/facebook/ads/redexgen/X/UR;)J

    move-result-wide v17

    .line 23705
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v15, p4

    move-wide/from16 v13, p2

    invoke-virtual/range {v2 .. v18}, Lcom/facebook/ads/redexgen/X/FP;->A0G(Lcom/facebook/ads/redexgen/X/HM;IILcom/facebook/ads/internal/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 23706
    if-nez p6, :cond_2

    .line 23707
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Be;->A0F(Lcom/facebook/ads/redexgen/X/UR;)V

    .line 23708
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v4, v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x12

    if-eq v2, v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const-string v2, "CDbSpAsq1bnNxD9VSV8dljP3hMNwdy72"

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v5, v2

    .line 23709
    .local v15, "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0J()V

    .line 23710
    .end local v15    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23711
    :cond_1
    iget v4, v1, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v0, 0x65

    if-eq v2, v0, :cond_3

    sget-object v3, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const-string v2, "JRaWcnCnkRzykk2dUwbVKAUC2SbitV9G"

    const/4 v0, 0x2

    aput-object v2, v3, v0

    if-lez v4, :cond_2

    .line 23712
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Be;->A08:Lcom/facebook/ads/redexgen/X/UO;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Fa;->A9o(Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 23713
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/Be;)V
    .locals 0

    .line 23714
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A09()V

    return-void
.end method

.method private A0J()Z
    .locals 5

    .line 23715
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A06:J

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
    .locals 1

    .line 23716
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0D:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0J()Z

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

.method private A0L(J)Z
    .locals 6

    .line 23717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v5, v0

    .line 23718
    .local p0, "trackCount":I
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v4, v5, :cond_3

    .line 23719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    aget-object v0, v0, v4

    .line 23720
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0K()V

    .line 23721
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A0E(JZZ)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 23722
    .local v2, "seekInsideQueue":Z
    :goto_1
    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0N:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0A:Z

    if-nez v0, :cond_1

    .line 23723
    :cond_0
    return v2

    .line 23724
    .end local v2    # "seekInsideQueue":Z
    .end local v0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 23725
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 23726
    .end local p1    # "i":I
    :cond_3
    return v3
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/UR;I)Z
    .locals 9

    .line 23727
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A05:J

    const/4 v7, 0x1

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A07:Lcom/facebook/ads/redexgen/X/CP;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A6J()J

    move-result-wide v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const-string v1, "IUCE48mfts8RRF6QLW1OCwj3IYkWtnzw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "3wOqLRkLupwhKLlKJv1UWjB1wcfYSOUu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 23728
    :cond_0
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:I

    .line 23729
    return v7

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23730
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0F:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0K()Z

    move-result v0

    if-nez v0, :cond_3

    .line 23731
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Be;->A0E:Z

    .line 23732
    return v8

    .line 23733
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0F:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0D:Z

    .line 23734
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Be;->A04:J

    .line 23735
    iput v8, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:I

    .line 23736
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v5, v6

    :goto_0
    if-ge v8, v5, :cond_5

    aget-object v0, v6, v8

    .line 23737
    .local v3, "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0J()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_4

    .line 23738
    .end local v3    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    sget-object v4, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const-string v1, "sAwmlKDo1Ti0Q35qOr1sG6kDqR6WpNWR"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-string v1, "GXij0Cke5nNum7SsuB1fxO0QcbvqH2zA"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v3
    :cond_4
    sget-object v4, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const-string v1, "b62K6xK7tRx4TNR6QlE9wkdYkCRBZm7S"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    add-int/lit8 v8, v8, 0x0

    goto :goto_0

    .line 23739
    :cond_5
    invoke-virtual {p1, v2, v3, v2, v3}, Lcom/facebook/ads/redexgen/X/UR;->A05(JJ)V

    .line 23740
    return v7
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/Be;)Z
    .locals 0

    .line 23741
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0G:Z

    return p0
.end method

.method public static A0O(Ljava/io/IOException;)Z
    .locals 0

    .line 23742
    instance-of p0, p0, Lcom/facebook/ads/redexgen/X/UK;

    return p0
.end method


# virtual methods
.method public final A0P(IJ)I
    .locals 4

    .line 23743
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23744
    const/4 v0, 0x0

    return v0

    .line 23745
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    aget-object v3, v0, p1

    .line 23746
    .local p0, "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0B:Z

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UM;->A0G()J

    move-result-wide v1

    cmp-long v0, p2, v1

    if-lez v0, :cond_3

    .line 23747
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UM;->A0B()I

    move-result v1

    .line 23748
    .local p1, "skipCount":I
    :cond_1
    :goto_0
    if-lez v1, :cond_2

    .line 23749
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Be;->A0D(I)V

    .line 23750
    :goto_1
    return v1

    .line 23751
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Be;->A0E(I)V

    goto :goto_1

    .line 23752
    .end local p1    # "skipCount":I
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v3, p2, p3, v0, v0}, Lcom/facebook/ads/redexgen/X/UM;->A0E(JZZ)I

    move-result v1

    .line 23753
    .restart local p1    # "skipCount":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 23754
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0Q(ILcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;Z)I
    .locals 10

    .line 23755
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0K()Z

    move-result v0

    const/4 v2, -0x3

    if-eqz v0, :cond_0

    .line 23756
    return v2

    .line 23757
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    aget-object v3, v0, p1

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Be;->A0B:Z

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/Be;->A04:J

    .line 23758
    move v6, p4

    move-object v5, p3

    move-object v4, p2

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/UM;->A0F(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;ZZJ)I

    move-result v1

    .line 23759
    .local p0, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_2

    .line 23760
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Be;->A0D(I)V

    .line 23761
    :cond_1
    :goto_0
    return v1

    .line 23762
    :cond_2
    if-ne v1, v2, :cond_1

    .line 23763
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Be;->A0E(I)V

    goto :goto_0
.end method

.method public final A0R()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23764
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A0X:Lcom/facebook/ads/redexgen/X/Tn;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tn;->A06(I)V

    .line 23765
    return-void
.end method

.method public final A0S()V
    .locals 4

    .line 23766
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0F:Z

    if-eqz v0, :cond_0

    .line 23767
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 23768
    .local v2, "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0I()V

    .line 23769
    .end local v2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23770
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0X:Lcom/facebook/ads/redexgen/X/Tn;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Tn;->A07(Lcom/facebook/ads/redexgen/X/HW;)V

    .line 23771
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A0R:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 23772
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A08:Lcom/facebook/ads/redexgen/X/UO;

    .line 23773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0G:Z

    .line 23774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FP;->A05()V

    .line 23775
    return-void
.end method

.method public final A0T(I)Z
    .locals 1

    .line 23776
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0K()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0N()Z

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

.method public final A47(J)Z
    .locals 3

    .line 23777
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0B:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0E:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0F:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    if-nez v0, :cond_1

    .line 23778
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Be;
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 23779
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0Y:Lcom/facebook/ads/redexgen/X/I3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I3;->A03()Z

    move-result v1

    .line 23780
    .local p0, "continuedLoading":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0X:Lcom/facebook/ads/redexgen/X/Tn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tn;->A08()Z

    move-result v0

    if-nez v0, :cond_2

    .line 23781
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0A()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_3

    .line 23782
    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const-string v1, "c"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v1, 0x1

    .line 23783
    :cond_2
    return v1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A4m(JZ)V
    .locals 4

    .line 23784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v3, v0

    .line 23785
    .local p0, "trackCount":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 23786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    aget-object v1, v0, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0L:[Z

    aget-boolean v0, v0, v2

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/UM;->A0L(JZZ)V

    .line 23787
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23788
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method public final A59()V
    .locals 2

    .line 23789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0H:Z

    .line 23790
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23791
    return-void
.end method

.method public final A5X(JLcom/facebook/ads/redexgen/X/Ab;)J
    .locals 9

    .line 23792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A07:Lcom/facebook/ads/redexgen/X/CP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A8F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23793
    const-wide/16 v0, 0x0

    return-wide v0

    .line 23794
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A07:Lcom/facebook/ads/redexgen/X/CP;

    move-wide v2, p1

    invoke-interface {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/CP;->A79(J)Lcom/facebook/ads/redexgen/X/CO;

    move-result-object v1

    .line 23795
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
    .locals 8

    .line 23796
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0B:Z

    const-wide/high16 v6, -0x8000000000000000L

    if-eqz v0, :cond_0

    .line 23797
    return-wide v6

    .line 23798
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23799
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A06:J

    return-wide v0

    .line 23800
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0A:Z

    if-eqz v0, :cond_4

    .line 23801
    const-wide v3, 0x7fffffffffffffffL

    .line 23802
    .local v3, "largestQueuedTimestampUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v5, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_3

    .line 23803
    .local p0, "trackCount":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const-string v1, "zc0mOUdw1jmO2VEUd7QmRKoyyksR7fRi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "EIMNfck3tNJRHr9xJwZimXwWEe7FNUoO"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v2, v5, :cond_5

    .line 23804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0N:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    .line 23805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    aget-object v0, v0, v2

    .line 23806
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0G()J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 23807
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23808
    .end local v3    # "largestQueuedTimestampUs":J
    :cond_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A02()J

    move-result-wide v3

    .line 23809
    .restart local v3    # "largestQueuedTimestampUs":J
    :cond_5
    cmp-long v5, v3, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const-string v1, "lin5tv5B5YZD87jN0f1Pgs8UKnnZ3151"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v5, :cond_6

    .line 23810
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A04:J

    .line 23811
    :cond_6
    return-wide v3

    .line 23812
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A6o()J
    .locals 2

    .line 23813
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Be;->A5m()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final A7Q()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 23814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public final A92()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23815
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0R()V

    .line 23816
    return-void
.end method

.method public final bridge synthetic AAa(Lcom/facebook/ads/redexgen/X/HV;JJZ)V
    .locals 7

    move-object v1, p1

    .line 23817
    check-cast v1, Lcom/facebook/ads/redexgen/X/UR;

    move-object v0, p0

    move-wide v4, p4

    move-wide v2, p2

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Be;->A0H(Lcom/facebook/ads/redexgen/X/UR;JJZ)V

    return-void
.end method

.method public final bridge synthetic AAc(Lcom/facebook/ads/redexgen/X/HV;JJ)V
    .locals 6

    move-object v1, p1

    .line 23818
    check-cast v1, Lcom/facebook/ads/redexgen/X/UR;

    move-object v0, p0

    move-wide v4, p4

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Be;->A0G(Lcom/facebook/ads/redexgen/X/UR;JJ)V

    return-void
.end method

.method public final bridge synthetic AAd(Lcom/facebook/ads/redexgen/X/HV;JJLjava/io/IOException;)I
    .locals 7

    move-object v1, p1

    .line 23819
    check-cast v1, Lcom/facebook/ads/redexgen/X/UR;

    move-object v0, p0

    move-wide v4, p4

    move-wide v2, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Be;->A01(Lcom/facebook/ads/redexgen/X/UR;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public final AAh()V
    .locals 4

    .line 23820
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 23821
    .local v1, "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0J()V

    .line 23822
    .end local v1    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23823
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0S:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F8;->A03()V

    .line 23824
    return-void
.end method

.method public final ABv(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 2

    .line 23825
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23826
    return-void
.end method

.method public final ACV(Lcom/facebook/ads/redexgen/X/UO;J)V
    .locals 1

    .line 23827
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Be;->A08:Lcom/facebook/ads/redexgen/X/UO;

    .line 23828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0Y:Lcom/facebook/ads/redexgen/X/I3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I3;->A03()Z

    .line 23829
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0A()V

    .line 23830
    return-void
.end method

.method public final ACo()J
    .locals 2

    .line 23831
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0C:Z

    if-nez v0, :cond_0

    .line 23832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0U:Lcom/facebook/ads/redexgen/X/FP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FP;->A06()V

    .line 23833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0C:Z

    .line 23834
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0D:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0B:Z

    if-nez v0, :cond_1

    .line 23835
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A02:I

    if-le v1, v0, :cond_2

    .line 23836
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0D:Z

    .line 23837
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A04:J

    return-wide v0

    .line 23838
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final ACv(J)V
    .locals 0

    .line 23839
    return-void
.end method

.method public final ADY(Lcom/facebook/ads/redexgen/X/CP;)V
    .locals 2

    .line 23840
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Be;->A07:Lcom/facebook/ads/redexgen/X/CP;

    .line 23841
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23842
    return-void
.end method

.method public final ADb(J)J
    .locals 4

    .line 23843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A07:Lcom/facebook/ads/redexgen/X/CP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CP;->A8F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23844
    :goto_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Be;->A04:J

    .line 23845
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A0D:Z

    .line 23846
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Be;->A0J()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Be;->A0L(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23847
    return-wide p1

    .line 23848
    :cond_0
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 23849
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A0E:Z

    .line 23850
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Be;->A06:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_4

    .line 23851
    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const-string v1, "7YveqprjcnpvO2f0yekj48CgWEvPG9Kg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Be;->A0B:Z

    .line 23852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0X:Lcom/facebook/ads/redexgen/X/Tn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tn;->A08()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0X:Lcom/facebook/ads/redexgen/X/Tn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tn;->A05()V

    .line 23854
    :cond_2
    return-wide p1

    .line 23855
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v1, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v0, v2, v3

    .line 23856
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0J()V

    .line 23857
    .end local v0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ADc([Lcom/facebook/ads/redexgen/X/H4;[Z[Lcom/facebook/ads/redexgen/X/FZ;[ZJ)J
    .locals 9

    .line 23858
    move-object v4, p0

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A0F:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23859
    iget v2, v4, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    .line 23860
    .local p5, "oldEnabledTrackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p1

    const/4 v5, 0x0

    const/4 v3, 0x1

    if-ge v6, v0, :cond_2

    .line 23861
    aget-object v8, p3, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_9

    sget-object v7, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const-string v1, "5WxhntXoeOAwQ1l35AMf0eM8dmeqm0u7"

    const/4 v0, 0x3

    aput-object v1, v7, v0

    if-eqz v8, :cond_1

    aget-object v0, p1, v6

    if-eqz v0, :cond_0

    aget-boolean v0, p2, v6

    if-nez v0, :cond_1

    .line 23862
    :cond_0
    aget-object v0, p3, v6

    check-cast v0, Lcom/facebook/ads/redexgen/X/UQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UQ;->A00(Lcom/facebook/ads/redexgen/X/UQ;)I

    move-result v1

    .line 23863
    .local v4, "track":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A0L:[Z

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23864
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    sub-int/2addr v0, v3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    .line 23865
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A0L:[Z

    aput-boolean v5, v0, v1

    .line 23866
    const/4 v0, 0x0

    aput-object v0, p3, v6

    .line 23867
    .end local v4    # "track":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 23868
    .end local v6    # "i":I
    :cond_2
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A0I:Z

    if-eqz v0, :cond_7

    if-nez v2, :cond_8

    :goto_1
    const/4 v1, 0x1

    .line 23869
    .local v6, "seekRequired":Z
    :goto_2
    const/4 v6, 0x0

    .local v4, "i":I
    :goto_3
    array-length v0, p1

    if-ge v6, v0, :cond_a

    .line 23870
    aget-object v0, p3, v6

    if-nez v0, :cond_3

    aget-object v8, p1, v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x12

    if-eq v2, v0, :cond_9

    sget-object v7, Lcom/facebook/ads/redexgen/X/Be;->A0d:[Ljava/lang/String;

    const-string v2, "wDlaDZf2YO3uF1jDf1IJ2d0nTbGyVkmf"

    const/4 v0, 0x3

    aput-object v2, v7, v0

    if-eqz v8, :cond_3

    .line 23871
    aget-object v7, p1, v6

    .line 23872
    .local p5, "selection":Lcom/facebook/ads/redexgen/X/H4;
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/H4;->length()I

    move-result v0

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23873
    invoke-interface {v7, v5}, Lcom/facebook/ads/redexgen/X/H4;->A6c(I)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23874
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Be;->A09:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/H4;->A7P()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 23875
    .local p2, "track":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A0L:[Z

    aget-boolean v0, v0, v2

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 23876
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    add-int/2addr v0, v3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    .line 23877
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A0L:[Z

    aput-boolean v3, v0, v2

    .line 23878
    new-instance v0, Lcom/facebook/ads/redexgen/X/UQ;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/UQ;-><init>(Lcom/facebook/ads/redexgen/X/Be;I)V

    aput-object v0, p3, v6

    .line 23879
    aput-boolean v3, p4, v6

    .line 23880
    if-nez v1, :cond_3

    .line 23881
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    aget-object v2, v0, v2

    .line 23882
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UM;->A0K()V

    .line 23883
    invoke-virtual {v2, p5, p6, v3, v3}, Lcom/facebook/ads/redexgen/X/UM;->A0E(JZZ)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_4

    .line 23884
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UM;->A0C()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 23885
    .end local p5    # "selection":Lcom/facebook/ads/redexgen/X/H4;
    .end local p2    # "track":I
    .end local v0    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    :cond_3
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 23886
    :cond_4
    const/4 v1, 0x0

    goto :goto_6

    .line 23887
    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    .line 23888
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 23889
    :cond_7
    const-wide/16 v1, 0x0

    cmp-long v0, p5, v1

    if-eqz v0, :cond_8

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23890
    .end local v4    # "i":I
    :cond_a
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    if-nez v0, :cond_c

    .line 23891
    iput-boolean v5, v4, Lcom/facebook/ads/redexgen/X/Be;->A0E:Z

    .line 23892
    iput-boolean v5, v4, Lcom/facebook/ads/redexgen/X/Be;->A0D:Z

    .line 23893
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A0X:Lcom/facebook/ads/redexgen/X/Tn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tn;->A08()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 23894
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v1, v2

    :goto_7
    if-ge v5, v1, :cond_e

    aget-object v0, v2, v5

    .line 23895
    .local p2, "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0I()V

    .line 23896
    .end local p2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 23897
    :cond_b
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v1, v2

    :goto_8
    if-ge v5, v1, :cond_f

    aget-object v0, v2, v5

    .line 23898
    .restart local p2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UM;->A0J()V

    .line 23899
    .end local p2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/UM;
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 23900
    :cond_c
    if-eqz v1, :cond_f

    .line 23901
    invoke-virtual {p0, p5, p6}, Lcom/facebook/ads/redexgen/X/Be;->ADb(J)J

    move-result-wide p5

    .line 23902
    .end local v0
    .local p3, "positionUs":J
    const/4 v1, 0x0

    .restart local v4    # "i":I
    :goto_9
    array-length v0, p3

    if-ge v1, v0, :cond_f

    .line 23903
    aget-object v0, p3, v1

    if-eqz v0, :cond_d

    .line 23904
    aput-boolean v3, p4, v1

    .line 23905
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 23906
    :cond_e
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Be;->A0X:Lcom/facebook/ads/redexgen/X/Tn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tn;->A05()V

    .line 23907
    .end local v4    # "i":I
    :cond_f
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Be;->A0I:Z

    .line 23908
    return-wide p5
.end method

.method public final AEO(II)Lcom/facebook/ads/redexgen/X/CS;
    .locals 4

    .line 23909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    array-length v3, v0

    .line 23910
    .local p0, "trackCount":I
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 23911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0J:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 23912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    aget-object v0, v0, v1

    return-object v0

    .line 23913
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23914
    .end local p1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0V:Lcom/facebook/ads/redexgen/X/HA;

    new-instance v2, Lcom/facebook/ads/redexgen/X/UM;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/UM;-><init>(Lcom/facebook/ads/redexgen/X/HA;)V

    .line 23915
    .local p1, "trackOutput":Lcom/facebook/ads/redexgen/X/UM;
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/UM;->A0M(Lcom/facebook/ads/redexgen/X/FY;)V

    .line 23916
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A0J:[I

    add-int/lit8 v0, v3, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0J:[I

    .line 23917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0J:[I

    aput p1, v0, v3

    .line 23918
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    add-int/lit8 v0, v3, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/UM;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    .line 23919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A0K:[Lcom/facebook/ads/redexgen/X/UM;

    aput-object v2, v0, v3

    .line 23920
    return-object v2
.end method
