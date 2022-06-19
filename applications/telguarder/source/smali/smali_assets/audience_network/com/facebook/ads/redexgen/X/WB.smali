.class public final Lcom/facebook/ads/redexgen/X/WB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/DefaultLoadControl$Builder;
    }
.end annotation


# static fields
.field public static A0A:[B


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:I

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:J

.field public final A07:Lcom/facebook/ads/redexgen/X/U0;

.field public final A08:Lcom/facebook/ads/redexgen/X/IQ;

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WB;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 63612
    const/4 v2, 0x1

    const/high16 v1, 0x10000

    new-instance v0, Lcom/facebook/ads/redexgen/X/U0;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/U0;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WB;-><init>(Lcom/facebook/ads/redexgen/X/U0;)V

    .line 63613
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/U0;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63614
    const/16 v2, 0x3a98

    const v3, 0xc350

    const/16 v4, 0x9c4

    const/16 v5, 0x1388

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/WB;-><init>(Lcom/facebook/ads/redexgen/X/U0;IIIIIZ)V

    .line 63615
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/U0;IIIIIZ)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63616
    const/4 v8, 0x0

    move-object v0, p0

    move/from16 v7, p7

    move v6, p6

    move v5, p5

    move v4, p4

    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/WB;-><init>(Lcom/facebook/ads/redexgen/X/U0;IIIIIZLcom/facebook/ads/redexgen/X/IQ;)V

    .line 63617
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/U0;IIIIIZLcom/facebook/ads/redexgen/X/IQ;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63619
    const/16 v2, 0x15

    const/4 v1, 0x1

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WB;->A01(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x36

    const/16 v1, 0x13

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WB;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    invoke-static {p4, v3, v5, v6}, Lcom/facebook/ads/redexgen/X/WB;->A03(IILjava/lang/String;Ljava/lang/String;)V

    .line 63620
    const/16 v2, 0x16

    const/16 v1, 0x20

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WB;->A01(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {p5, v3, v4, v6}, Lcom/facebook/ads/redexgen/X/WB;->A03(IILjava/lang/String;Ljava/lang/String;)V

    .line 63621
    const/16 v2, 0x54

    const/16 v1, 0xb

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WB;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, p4, v3, v5}, Lcom/facebook/ads/redexgen/X/WB;->A03(IILjava/lang/String;Ljava/lang/String;)V

    .line 63622
    invoke-static {p2, p5, v3, v4}, Lcom/facebook/ads/redexgen/X/WB;->A03(IILjava/lang/String;Ljava/lang/String;)V

    .line 63623
    const/16 v2, 0x49

    const/16 v1, 0xb

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0, v3}, Lcom/facebook/ads/redexgen/X/WB;->A03(IILjava/lang/String;Ljava/lang/String;)V

    .line 63624
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WB;->A07:Lcom/facebook/ads/redexgen/X/U0;

    .line 63625
    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:J

    .line 63626
    int-to-long v0, p3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A05:J

    .line 63627
    int-to-long v0, p4

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A04:J

    .line 63628
    int-to-long v0, p5

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A03:J

    .line 63629
    iput p6, p0, Lcom/facebook/ads/redexgen/X/WB;->A02:I

    .line 63630
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/WB;->A09:Z

    .line 63631
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/WB;->A08:Lcom/facebook/ads/redexgen/X/IQ;

    .line 63632
    return-void
.end method

.method private final A00([Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/H5;)I
    .locals 3

    .line 63633
    const/4 v2, 0x0

    .line 63634
    .local p0, "targetBufferSize":I
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 63635
    invoke-virtual {p2, v1}, Lcom/facebook/ads/redexgen/X/H5;->A01(I)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63636
    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/W7;->A7R()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A01(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 63637
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63638
    .end local p1    # "i":I
    :cond_1
    return v2
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WB;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x60

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

    const/16 v0, 0x5f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WB;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0x33t
        0x10t
        0xet
        0x1bt
        0x1bt
        0x1ct
        0x21t
        -0x33t
        0xft
        0x12t
        -0x33t
        0x19t
        0x12t
        0x20t
        0x20t
        -0x33t
        0x21t
        0x15t
        0xet
        0x1bt
        -0x33t
        -0x1ft
        0x28t
        0x3bt
        0x2ct
        0x2ct
        0x2bt
        0x38t
        0xct
        0x35t
        0x38t
        0x16t
        0x32t
        0x27t
        0x3ft
        0x28t
        0x27t
        0x29t
        0x31t
        0x7t
        0x2ct
        0x3at
        0x2bt
        0x38t
        0x18t
        0x2bt
        0x28t
        0x3bt
        0x2ct
        0x2ct
        0x2bt
        0x38t
        0x13t
        0x39t
        -0x3ct
        -0x29t
        -0x38t
        -0x38t
        -0x39t
        -0x2ct
        -0x58t
        -0x2ft
        -0x2ct
        -0x4et
        -0x32t
        -0x3dt
        -0x25t
        -0x3ct
        -0x3dt
        -0x3bt
        -0x33t
        -0x51t
        -0x2bt
        -0x1dt
        -0x29t
        -0x12t
        -0x48t
        -0x15t
        -0x24t
        -0x24t
        -0x25t
        -0x18t
        -0x3dt
        -0x17t
        0x1t
        -0x3t
        0x2t
        -0x2at
        0x9t
        -0x6t
        -0x6t
        -0x7t
        0x6t
        -0x1ft
        0x7t
    .end array-data
.end method

.method public static A03(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 63639
    if-lt p0, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WB;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A05(ZLjava/lang/Object;)V

    .line 63640
    return-void

    .line 63641
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private A04(Z)V
    .locals 3

    .line 63642
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/WB;->A00:I

    .line 63643
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WB;->A08:Lcom/facebook/ads/redexgen/X/IQ;

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A01:Z

    if-eqz v0, :cond_0

    .line 63644
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/IQ;->A03(I)V

    .line 63645
    :cond_0
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/WB;->A01:Z

    .line 63646
    if-eqz p1, :cond_1

    .line 63647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A07:Lcom/facebook/ads/redexgen/X/U0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U0;->A03()V

    .line 63648
    :cond_1
    return-void
.end method


# virtual methods
.method public final A5a()Lcom/facebook/ads/redexgen/X/HA;
    .locals 1

    .line 63649
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A07:Lcom/facebook/ads/redexgen/X/U0;

    return-object v0
.end method

.method public final A5f()J
    .locals 2

    .line 63650
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final ABO()V
    .locals 1

    .line 63651
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WB;->A04(Z)V

    .line 63652
    return-void
.end method

.method public final ABj()V
    .locals 1

    .line 63653
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WB;->A04(Z)V

    .line 63654
    return-void
.end method

.method public final ABq([Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H5;)V
    .locals 2

    .line 63655
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WB;->A02:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 63656
    invoke-direct {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/WB;->A00([Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/H5;)I

    move-result v1

    .line 63657
    :cond_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/WB;->A00:I

    .line 63658
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WB;->A07:Lcom/facebook/ads/redexgen/X/U0;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/U0;->A04(I)V

    .line 63659
    return-void
.end method

.method public final ADP()Z
    .locals 1

    .line 63660
    const/4 v0, 0x0

    return v0
.end method

.method public final ADw(JF)Z
    .locals 8

    .line 63661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A07:Lcom/facebook/ads/redexgen/X/U0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U0;->A02()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A00:I

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-lt v1, v0, :cond_8

    const/4 v7, 0x1

    .line 63662
    .local p0, "targetBufferSizeReached":Z
    :goto_0
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/WB;->A01:Z

    .line 63663
    .local p1, "wasBuffering":Z
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:J

    .line 63664
    .local v0, "minBufferUs":J
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    .line 63665
    invoke-static {v0, v1, p3}, Lcom/facebook/ads/redexgen/X/Ic;->A0C(JF)J

    move-result-wide v2

    .line 63666
    .local v0, "mediaDurationMinBufferUs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A05:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 63667
    .end local v0    # "mediaDurationMinBufferUs":J
    :cond_0
    cmp-long v2, p1, v0

    if-gez v2, :cond_6

    .line 63668
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A09:Z

    if-nez v0, :cond_1

    if-nez v7, :cond_5

    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/WB;->A01:Z

    .line 63669
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WB;->A08:Lcom/facebook/ads/redexgen/X/IQ;

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A01:Z

    if-eq v0, v4, :cond_3

    .line 63670
    if-eqz v0, :cond_4

    .line 63671
    invoke-virtual {v1, v5}, Lcom/facebook/ads/redexgen/X/IQ;->A00(I)V

    .line 63672
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A01:Z

    return v0

    .line 63673
    :cond_4
    invoke-virtual {v1, v5}, Lcom/facebook/ads/redexgen/X/IQ;->A03(I)V

    goto :goto_3

    .line 63674
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 63675
    :cond_6
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/WB;->A05:J

    cmp-long v0, p1, v1

    if-gtz v0, :cond_7

    if-eqz v7, :cond_2

    .line 63676
    :cond_7
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/WB;->A01:Z

    goto :goto_2

    .line 63677
    :cond_8
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public final ADz(JFZ)Z
    .locals 7

    .line 63678
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ic;->A0D(JF)J

    move-result-wide v5

    .line 63679
    if-eqz p4, :cond_2

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/WB;->A03:J

    .line 63680
    .local p0, "minBufferDurationUs":J
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    cmp-long v0, v5, v3

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A09:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A07:Lcom/facebook/ads/redexgen/X/U0;

    .line 63681
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U0;->A02()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A00:I

    if-lt v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 63682
    :goto_1
    return v0

    .line 63683
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 63684
    :cond_2
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/WB;->A04:J

    goto :goto_0
.end method

.method public final onPrepared()V
    .locals 1

    .line 63685
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WB;->A04(Z)V

    .line 63686
    return-void
.end method
