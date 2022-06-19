.class public final Lcom/facebook/ads/redexgen/X/Dz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/facebook/ads/redexgen/X/aV;
.implements Lcom/facebook/ads/redexgen/X/H6;
.implements Lcom/facebook/ads/redexgen/X/FD;
.implements Lcom/facebook/ads/redexgen/X/9x;
.implements Lcom/facebook/ads/redexgen/X/AU;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/A8;,
        Lcom/facebook/ads/redexgen/X/A6;,
        Lcom/facebook/ads/redexgen/X/A7;,
        Lcom/facebook/ads/redexgen/X/A9;
    }
.end annotation


# static fields
.field public static A0V:[B

.field public static A0W:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/A9;

.field public A05:Lcom/facebook/ads/redexgen/X/AK;

.field public A06:Lcom/facebook/ads/redexgen/X/Ab;

.field public A07:Lcom/facebook/ads/redexgen/X/FE;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:[Lcom/facebook/ads/redexgen/X/YH;

.field public final A0D:J

.field public final A0E:Landroid/os/Handler;

.field public final A0F:Landroid/os/HandlerThread;

.field public final A0G:Lcom/facebook/ads/redexgen/X/YB;

.field public final A0H:Lcom/facebook/ads/redexgen/X/YF;

.field public final A0I:Lcom/facebook/ads/redexgen/X/A8;

.field public final A0J:Lcom/facebook/ads/redexgen/X/AF;

.field public final A0K:Lcom/facebook/ads/redexgen/X/AI;

.field public final A0L:Lcom/facebook/ads/redexgen/X/Ad;

.field public final A0M:Lcom/facebook/ads/redexgen/X/Ae;

.field public final A0N:Lcom/facebook/ads/redexgen/X/H7;

.field public final A0O:Lcom/facebook/ads/redexgen/X/H8;

.field public final A0P:Lcom/facebook/ads/redexgen/X/I0;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/IA;

.field public final A0R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/A7;",
            ">;"
        }
    .end annotation
.end field

.field public final A0S:Z

.field public final A0T:[Lcom/facebook/ads/redexgen/X/YH;

.field public final A0U:[Lcom/facebook/ads/redexgen/X/AY;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dz;->A0L()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dz;->A0K()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/YH;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/H8;Lcom/facebook/ads/redexgen/X/AF;ZIZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/YF;Lcom/facebook/ads/redexgen/X/I0;)V
    .locals 10

    .line 27800
    move-object v2, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27801
    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0T:[Lcom/facebook/ads/redexgen/X/YH;

    .line 27802
    iput-object p2, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0N:Lcom/facebook/ads/redexgen/X/H7;

    .line 27803
    move-object v9, p3

    iput-object v9, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0O:Lcom/facebook/ads/redexgen/X/H8;

    .line 27804
    iput-object p4, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    .line 27805
    move v0, p5

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A08:Z

    .line 27806
    move/from16 v0, p6

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A02:I

    .line 27807
    move/from16 v0, p7

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0B:Z

    .line 27808
    move-object/from16 v0, p8

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0E:Landroid/os/Handler;

    .line 27809
    move-object/from16 v0, p9

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0H:Lcom/facebook/ads/redexgen/X/YF;

    .line 27810
    move-object/from16 v3, p10

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0P:Lcom/facebook/ads/redexgen/X/I0;

    .line 27811
    new-instance v0, Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AI;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    .line 27812
    invoke-interface {p4}, Lcom/facebook/ads/redexgen/X/AF;->A5f()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0D:J

    .line 27813
    invoke-interface {p4}, Lcom/facebook/ads/redexgen/X/AF;->ADP()Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0S:Z

    .line 27814
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ab;->A03:Lcom/facebook/ads/redexgen/X/Ab;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    .line 27815
    new-instance v4, Lcom/facebook/ads/redexgen/X/AK;

    sget-object v5, Lcom/facebook/ads/redexgen/X/Af;->A01:Lcom/facebook/ads/redexgen/X/Af;

    sget-object v8, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v4

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;JLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27816
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/A8;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/A8;-><init>(Lcom/facebook/ads/redexgen/X/A5;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    .line 27817
    array-length v0, p1

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/AY;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0U:[Lcom/facebook/ads/redexgen/X/AY;

    .line 27818
    const/4 v4, 0x0

    .local p4, "i":I
    :goto_0
    array-length v0, p1

    if-ge v4, v0, :cond_0

    .line 27819
    aget-object v0, p1, v4

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/YH;->ADk(I)V

    .line 27820
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0U:[Lcom/facebook/ads/redexgen/X/AY;

    aget-object v0, p1, v4

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YH;->A5q()Lcom/facebook/ads/redexgen/X/AY;

    move-result-object v0

    aput-object v0, v1, v4

    .line 27821
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27822
    .end local p4    # "i":I
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/YB;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/YB;-><init>(Lcom/facebook/ads/redexgen/X/9x;Lcom/facebook/ads/redexgen/X/I0;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0G:Lcom/facebook/ads/redexgen/X/YB;

    .line 27823
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    .line 27824
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/YH;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    .line 27825
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ae;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ae;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0M:Lcom/facebook/ads/redexgen/X/Ae;

    .line 27826
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ad;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ad;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    .line 27827
    invoke-virtual {p2, v2}, Lcom/facebook/ads/redexgen/X/H7;->A00(Lcom/facebook/ads/redexgen/X/H6;)V

    .line 27828
    const/16 v5, -0x10

    const/16 v4, 0x15

    const/16 v1, 0x1d

    const/16 v0, 0xf

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0F:Landroid/os/HandlerThread;

    .line 27829
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 27830
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/I0;->A4J(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/facebook/ads/redexgen/X/IA;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    .line 27831
    return-void
.end method

.method private A00()I
    .locals 3

    .line 27832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 27833
    .local p0, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27834
    const/4 v0, 0x0

    .line 27835
    :goto_0
    return v0

    .line 27836
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0B:Z

    .line 27837
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Af;->A06(Z)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0M:Lcom/facebook/ads/redexgen/X/Ae;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0C(ILcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ae;->A00:I

    goto :goto_0
.end method

.method private A01(ILcom/facebook/ads/redexgen/X/Af;Lcom/facebook/ads/redexgen/X/Af;)I
    .locals 10

    move v5, p1

    .line 27838
    const/4 v1, -0x1

    .line 27839
    .local p0, "newPeriodIndex":I
    move-object v4, p2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Af;->A01()I

    move-result v3

    .line 27840
    .local v5, "maxIterations":I
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 27841
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0M:Lcom/facebook/ads/redexgen/X/Ae;

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Dz;->A02:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0B:Z

    .line 27842
    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Af;->A04(ILcom/facebook/ads/redexgen/X/Ad;Lcom/facebook/ads/redexgen/X/Ae;IZ)I

    move-result v5

    .line 27843
    if-ne v5, v0, :cond_1

    .line 27844
    .end local v4    # "i":I
    :cond_0
    return v1

    .line 27845
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    .line 27846
    const/4 v0, 0x1

    invoke-virtual {v4, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Af;->A05(Ljava/lang/Object;)I

    move-result v1

    .line 27847
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/FC;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    .line 27849
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0I()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    .line 27850
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A03(Lcom/facebook/ads/redexgen/X/FC;JZ)J

    move-result-wide v0

    return-wide v0

    .line 27851
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/FC;JZ)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27852
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0H()V

    .line 27853
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Dz;->A09:Z

    .line 27854
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/Dz;->A0O(I)V

    .line 27855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v1

    .line 27856
    .local p2, "oldPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    move-object v3, v1

    .line 27857
    .local v3, "newPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    :goto_0
    if-eqz v3, :cond_0

    .line 27858
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/Dz;->A0u(Lcom/facebook/ads/redexgen/X/FC;JLcom/facebook/ads/redexgen/X/AG;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/AI;->A0T(Lcom/facebook/ads/redexgen/X/AG;)Z

    .line 27860
    :cond_0
    if-ne v1, v3, :cond_1

    if-eqz p4, :cond_5

    .line 27861
    :cond_1
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v8, v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "MfZ5b0v7S5HL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v4, v9, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_2

    .line 27862
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "gre2iAEzIfwakAGQE6Y0w4gvRDGAgj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Dz;->A0c(Lcom/facebook/ads/redexgen/X/YH;)V

    .line 27863
    .end local v0    # "renderer":Lcom/facebook/ads/redexgen/X/YH;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 27864
    :cond_4
    new-array v0, v5, [Lcom/facebook/ads/redexgen/X/YH;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    .line 27865
    const/4 v1, 0x0

    .line 27866
    :cond_5
    if-eqz v3, :cond_7

    .line 27867
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Dz;->A0W(Lcom/facebook/ads/redexgen/X/AG;)V

    .line 27868
    iget-boolean v4, v3, Lcom/facebook/ads/redexgen/X/AG;->A05:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "xpv6IUpjcorvZnU437"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_6

    .line 27869
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/aW;->ADa(J)J

    move-result-wide p2

    .line 27870
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0D:J

    sub-long v1, p2, v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0S:Z

    invoke-interface {v5, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/aW;->A4o(JZ)V

    .line 27871
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/Dz;->A0Q(J)V

    .line 27872
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A09()V

    .line 27873
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/IA;->ADc(I)Z

    .line 27874
    return-wide p2

    .line 27875
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AI;->A0P(Z)V

    .line 27876
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/Dz;->A0Q(J)V

    goto :goto_2

    .line 27877
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0D()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/A9;Z)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/A9;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 27878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 27879
    .local p0, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/A9;->A02:Lcom/facebook/ads/redexgen/X/Af;

    .line 27880
    .local p1, "seekTimeline":Lcom/facebook/ads/redexgen/X/Af;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 27881
    return-object v5

    .line 27882
    :cond_0
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27883
    move-object v6, v4

    .line 27884
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0M:Lcom/facebook/ads/redexgen/X/Ae;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    iget v9, p1, Lcom/facebook/ads/redexgen/X/A9;->A00:I

    iget-wide v10, p1, Lcom/facebook/ads/redexgen/X/A9;->A01:J

    .line 27885
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Af;->A08(Lcom/facebook/ads/redexgen/X/Ae;Lcom/facebook/ads/redexgen/X/Ad;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 27886
    .local p2, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-ne v4, v6, :cond_2

    .line 27887
    return-object v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27888
    :cond_2
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 27889
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    const/4 v0, 0x1

    invoke-virtual {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Af;->A05(Ljava/lang/Object;)I

    move-result v0

    .line 27890
    .local v4, "periodIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 27891
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "NzmvKaw5D7qN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 27892
    :cond_4
    if-eqz p2, :cond_6

    .line 27893
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v6, v4}, Lcom/facebook/ads/redexgen/X/Dz;->A01(ILcom/facebook/ads/redexgen/X/Af;Lcom/facebook/ads/redexgen/X/Af;)I

    move-result v1

    .line 27894
    if-eq v1, v2, :cond_6

    .line 27895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    .line 27896
    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget v3, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "Yw40DLhiFndXC7wfBusX4OUMnHZHVu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 27897
    invoke-direct {p0, v4, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Dz;->A05(Lcom/facebook/ads/redexgen/X/Af;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v4, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Dz;->A05(Lcom/facebook/ads/redexgen/X/Af;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 27898
    :cond_6
    return-object v5

    .line 27899
    .end local p2    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v4    # "periodIndex":I
    .local p2, "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_0
    iget v3, p1, Lcom/facebook/ads/redexgen/X/A9;->A00:I

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/A9;->A01:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/AE;

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/AE;-><init>(Lcom/facebook/ads/redexgen/X/Af;IJ)V

    throw v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Af;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Af;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 27900
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0M:Lcom/facebook/ads/redexgen/X/Ae;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    move v3, p2

    move-wide v4, p3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Af;->A08(Lcom/facebook/ads/redexgen/X/Ae;Lcom/facebook/ads/redexgen/X/Ad;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0V:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A07()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 27901
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A0P:Lcom/facebook/ads/redexgen/X/I0;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I0;->AEU()J

    move-result-wide v2

    .line 27902
    .local v5, "operationStartTimeMs":J
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0I()V

    .line 27903
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v4

    const-wide/16 v0, 0xa

    if-nez v4, :cond_0

    .line 27904
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0B()V

    .line 27905
    invoke-direct {v5, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Dz;->A0S(JJ)V

    .line 27906
    return-void

    .line 27907
    :cond_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v11

    .line 27908
    .local v2, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    const/16 v4, 0x96

    const/16 v1, 0xa

    const/16 v0, 0x71

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IZ;->A02(Ljava/lang/String;)V

    .line 27909
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0J()V

    .line 27910
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v0, 0x3e8

    mul-long/2addr v6, v0

    .line 27911
    .local v4, "rendererPositionElapsedRealtimeUs":J
    iget-object v10, v11, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    iget-wide v8, v5, Lcom/facebook/ads/redexgen/X/Dz;->A0D:J

    sub-long/2addr v0, v8

    iget-boolean v4, v5, Lcom/facebook/ads/redexgen/X/Dz;->A0S:Z

    invoke-interface {v10, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/aW;->A4o(JZ)V

    .line 27912
    const/4 v14, 0x1

    .line 27913
    .local v11, "renderersEnded":Z
    const/4 v4, 0x1

    .line 27914
    .local v4, "renderersReadyOrEnded":Z
    iget-object v12, v5, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v10, v12

    const/4 v9, 0x0

    .end local v11    # "renderersEnded":Z
    .local v6, "renderersEnded":Z
    :goto_0
    if-ge v9, v10, :cond_9

    aget-object v8, v12, v9

    .line 27915
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    invoke-interface {v8, v0, v1, v6, v7}, Lcom/facebook/ads/redexgen/X/YH;->ADC(JJ)V

    .line 27916
    const/4 v15, 0x1

    if-eqz v14, :cond_3

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/YH;->A7z()Z

    move-result v14

    sget-object v13, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v13, v0

    const/4 v0, 0x7

    aget-object v0, v13, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v13, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "7MZ43Mfosz2cVY7YLE"

    const/4 v0, 0x5

    aput-object v1, v13, v0

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27917
    :cond_4
    sget-object v13, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "fzNe8vrGdkAB7w8Spfiah9EVMBtgHYCD"

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const-string v1, "yf8JTWMsX4Kj3fiI7V6gWL7AnmER89HT"

    const/4 v0, 0x2

    aput-object v1, v13, v0

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/YH;->A89()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/YH;->A7z()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {v5, v8}, Lcom/facebook/ads/redexgen/X/Dz;->A0t(Lcom/facebook/ads/redexgen/X/YH;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    const/4 v0, 0x1

    .line 27918
    .local v0, "rendererReadyOrEnded":Z
    :goto_2
    if-nez v0, :cond_6

    .line 27919
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/YH;->A92()V

    .line 27920
    :cond_6
    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    :goto_3
    move v4, v15

    .line 27921
    .end local v0    # "rendererReadyOrEnded":Z
    .end local v0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 27922
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 27923
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 27924
    :cond_9
    if-nez v4, :cond_a

    .line 27925
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0B()V

    .line 27926
    :cond_a
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    .line 27927
    .local v8, "playingPeriodDurationUs":J
    const/4 v7, 0x4

    const/4 v10, 0x3

    const/4 v6, 0x2

    if-eqz v14, :cond_d

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v12

    if-eqz v0, :cond_b

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    cmp-long v12, v8, v0

    if-gtz v12, :cond_d

    :cond_b
    iget-object v9, v11, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_1

    sget-object v8, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "wV9HOTo1O64nuX5ISvKSbD"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    const-string v1, "bxDx4NmgY0h2jOwlZLjnQH"

    const/4 v0, 0x7

    aput-object v1, v8, v0

    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/AH;->A05:Z

    if-eqz v0, :cond_d

    .line 27928
    invoke-direct {v5, v7}, Lcom/facebook/ads/redexgen/X/Dz;->A0O(I)V

    .line 27929
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0H()V

    .line 27930
    :cond_c
    :goto_4
    iget-object v8, v5, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    sget-object v4, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v4, v0

    const/4 v0, 0x2

    aget-object v4, v4, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_17

    sget-object v4, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "xlSDIVprGLpZzqi21Os"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-ne v0, v6, :cond_11

    .line 27931
    iget-object v8, v5, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v4, v8

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v4, :cond_11

    aget-object v0, v8, v1

    .line 27932
    .local p0, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YH;->A92()V

    .line 27933
    .end local p0    # "renderer":Lcom/facebook/ads/redexgen/X/YH;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 27934
    :cond_d
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-ne v0, v6, :cond_e

    .line 27935
    invoke-direct {v5, v4}, Lcom/facebook/ads/redexgen/X/Dz;->A0v(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 27936
    invoke-direct {v5, v10}, Lcom/facebook/ads/redexgen/X/Dz;->A0O(I)V

    .line 27937
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A08:Z

    if-eqz v0, :cond_c

    .line 27938
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()V

    goto :goto_4

    .line 27939
    :cond_e
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-ne v0, v10, :cond_c

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v0, v0

    if-nez v0, :cond_f

    .line 27940
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0r()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4

    :cond_f
    if-nez v4, :cond_c

    .line 27941
    :cond_10
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A08:Z

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A09:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_18

    .line 27942
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "etImyFrMwyU7Uaqc08"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    invoke-direct {v5, v6}, Lcom/facebook/ads/redexgen/X/Dz;->A0O(I)V

    .line 27943
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0H()V

    goto :goto_4

    .line 27944
    :cond_11
    iget-boolean v8, v5, Lcom/facebook/ads/redexgen/X/Dz;->A08:Z

    sget-object v4, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v4, v0

    const/4 v0, 0x7

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_16

    if-eqz v8, :cond_12

    :goto_6
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-eq v0, v10, :cond_13

    :cond_12
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-ne v0, v6, :cond_14

    .line 27945
    :cond_13
    const-wide/16 v0, 0xa

    invoke-direct {v5, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Dz;->A0S(JJ)V

    .line 27946
    :goto_7
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A00()V

    .line 27947
    return-void

    .line 27948
    :cond_14
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v0, v0

    if-eqz v0, :cond_15

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-eq v0, v7, :cond_15

    .line 27949
    const-wide/16 v0, 0x3e8

    invoke-direct {v5, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Dz;->A0S(JJ)V

    goto :goto_7

    .line 27950
    :cond_15
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/IA;->AD9(I)V

    goto :goto_7

    :cond_16
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "A8R7VCW6d20zhsH9TJ0X19"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "kPu9qHLeO477rnG8ZKl3CX"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    if-eqz v8, :cond_12

    goto :goto_6

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08()V
    .locals 2

    .line 27951
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0O(I)V

    .line 27952
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/facebook/ads/redexgen/X/Dz;->A0p(ZZZ)V

    .line 27953
    return-void
.end method

.method private A09()V
    .locals 6

    .line 27954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0G()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v5

    .line 27955
    .local p0, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/AG;->A07()J

    move-result-wide v1

    .line 27956
    .local v0, "nextLoadPositionUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 27957
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0l(Z)V

    .line 27958
    return-void

    .line 27959
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    .line 27960
    invoke-virtual {v5, v3, v4}, Lcom/facebook/ads/redexgen/X/AG;->A09(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 27961
    .local v1, "bufferedDurationUs":J
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0G:Lcom/facebook/ads/redexgen/X/YB;

    .line 27962
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YB;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    .line 27963
    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AF;->ADv(JF)Z

    move-result v0

    .line 27964
    .local v3, "continueLoading":Z
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0l(Z)V

    .line 27965
    if-eqz v0, :cond_1

    .line 27966
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/AG;->A0G(J)V

    .line 27967
    :cond_1
    return-void
.end method

.method private A0A()V
    .locals 5

    .line 27968
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A06(Lcom/facebook/ads/redexgen/X/AK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27969
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0E:Landroid/os/Handler;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    .line 27970
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A8;->A00(Lcom/facebook/ads/redexgen/X/A8;)I

    move-result v2

    .line 27971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A8;->A02(Lcom/facebook/ads/redexgen/X/A8;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A8;->A01(Lcom/facebook/ads/redexgen/X/A8;)I

    move-result v1

    .line 27973
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27974
    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 27975
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 27976
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/AK;)V

    .line 27977
    :cond_0
    return-void

    .line 27978
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private A0B()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0G()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v4

    .line 27980
    .local p0, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0I()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v1

    .line 27981
    .local v0, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    if-eqz v4, :cond_3

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    if-ne v0, v4, :cond_3

    .line 27982
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, v3, v1

    .line 27983
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YH;->A7c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27984
    return-void

    .line 27985
    .end local v0    # "renderer":Lcom/facebook/ads/redexgen/X/YH;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27986
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aW;->A90()V

    .line 27987
    :cond_3
    return-void
.end method

.method private A0C()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27988
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/AI;->A0N(J)V

    .line 27989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27990
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AI;->A0J(JLcom/facebook/ads/redexgen/X/AK;)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v10

    .line 27991
    .local p0, "info":Lcom/facebook/ads/redexgen/X/AH;
    if-nez v10, :cond_1

    .line 27992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A07:Lcom/facebook/ads/redexgen/X/FE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/FE;->A91()V

    .line 27993
    .end local p0    # "info":Lcom/facebook/ads/redexgen/X/AH;
    .end local v2
    .end local v0
    :cond_0
    :goto_0
    return-void

    .line 27994
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    .line 27995
    .local v2, "uid":Ljava/lang/Object;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0U:[Lcom/facebook/ads/redexgen/X/AY;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0N:Lcom/facebook/ads/redexgen/X/H7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    .line 27996
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AF;->A5a()Lcom/facebook/ads/redexgen/X/HA;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Dz;->A07:Lcom/facebook/ads/redexgen/X/FE;

    .line 27997
    invoke-virtual/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/AI;->A0L([Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/FE;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/AH;)Lcom/facebook/ads/redexgen/X/aW;

    move-result-object v2

    .line 27998
    .local v0, "mediaPeriod":Lcom/facebook/ads/redexgen/X/aW;
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    invoke-interface {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/aW;->ACV(Lcom/facebook/ads/redexgen/X/aV;J)V

    .line 27999
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Dz;->A0l(Z)V

    goto :goto_0
.end method

.method private A0D()V
    .locals 2

    .line 28000
    const/4 v1, 0x1

    invoke-direct {p0, v1, v1, v1}, Lcom/facebook/ads/redexgen/X/Dz;->A0p(ZZZ)V

    .line 28001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AF;->ABO()V

    .line 28002
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Dz;->A0O(I)V

    .line 28003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 28004
    monitor-enter p0

    .line 28005
    :try_start_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0A:Z

    .line 28006
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 28007
    monitor-exit p0

    .line 28008
    return-void

    .line 28009
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private A0E()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28010
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28011
    return-void

    .line 28012
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A0G:Lcom/facebook/ads/redexgen/X/YB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YB;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iget v4, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    .line 28013
    .local v3, "playbackSpeed":F
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v7

    .line 28014
    .local v0, "periodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0I()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v2

    .line 28015
    .local v0, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    const/4 v1, 0x1

    .line 28016
    .local v0, "selectionsChangedForReadPeriod":Z
    :goto_0
    if-eqz v7, :cond_1

    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-nez v0, :cond_2

    .line 28017
    .end local v0    # "selectionsChangedForReadPeriod":Z
    .restart local v2
    :cond_1
    return-void

    .line 28018
    :cond_2
    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/AG;->A0J(F)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28019
    const/4 v6, 0x4

    if-eqz v1, :cond_b

    .line 28020
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v4

    .line 28021
    .local v0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/AI;->A0T(Lcom/facebook/ads/redexgen/X/AG;)Z

    move-result v2

    .line 28022
    .local v7, "recreateStreams":Z
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A0T:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v0, v0

    new-array v5, v0, [Z

    .line 28023
    .local v0, "streamResetFlags":[Z
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    .line 28024
    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/facebook/ads/redexgen/X/AG;->A0C(JZ[Z)J

    move-result-wide v9

    .line 28025
    .local v2, "periodPositionUs":J
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0j(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 28026
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-eq v0, v6, :cond_3

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    cmp-long v0, v9, v1

    if-eqz v0, :cond_3

    .line 28027
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v11, v0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    .line 28028
    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28029
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/A8;->A04(I)V

    .line 28030
    invoke-direct {v3, v9, v10}, Lcom/facebook/ads/redexgen/X/Dz;->A0Q(J)V

    .line 28031
    :cond_3
    const/4 v7, 0x0

    .line 28032
    .local v0, "enabledRendererCount":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A0T:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v0, v0

    new-array v6, v0, [Z

    .line 28033
    .local v0, "rendererWasEnabledFlags":[Z
    const/4 v9, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Dz;->A0T:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v0, v1

    if-ge v9, v0, :cond_c

    .line 28034
    aget-object v8, v1, v9

    .line 28035
    .local v4, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/YH;->A7F()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    aput-boolean v0, v6, v9

    .line 28036
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    aget-object v11, v0, v9

    .line 28037
    .local v0, "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    if-eqz v11, :cond_4

    .line 28038
    add-int/lit8 v7, v7, 0x1

    .line 28039
    :cond_4
    aget-boolean v0, v6, v9

    if-eqz v0, :cond_5

    .line 28040
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/YH;->A7K()Lcom/facebook/ads/redexgen/X/FZ;

    move-result-object v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "CIOLNyaJNw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v11, v10, :cond_6

    .line 28041
    invoke-direct {v3, v8}, Lcom/facebook/ads/redexgen/X/Dz;->A0c(Lcom/facebook/ads/redexgen/X/YH;)V

    .line 28042
    .end local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    .end local v4    # "renderer":Lcom/facebook/ads/redexgen/X/YH;
    .end local v0
    .restart local v2    # "periodPositionUs":J
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 28043
    :cond_6
    aget-boolean v0, v5, v9

    if-eqz v0, :cond_5

    .line 28044
    .end local v0
    .local v2, "selectionsChangedForReadPeriod":Z
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    invoke-interface {v8, v0, v1}, Lcom/facebook/ads/redexgen/X/YH;->ADO(J)V

    goto :goto_3

    .line 28045
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 28046
    .end local v2    # "selectionsChangedForReadPeriod":Z
    .local v0, "selectionsChangedForReadPeriod":Z
    .end local v0    # "selectionsChangedForReadPeriod":Z
    .restart local v2    # "selectionsChangedForReadPeriod":Z
    :cond_8
    if-ne v7, v2, :cond_9

    .line 28047
    const/4 v1, 0x0

    .line 28048
    .end local v2    # "selectionsChangedForReadPeriod":Z
    .restart local v0    # "selectionsChangedForReadPeriod":Z
    .end local v2
    .restart local v0    # "selectionsChangedForReadPeriod":Z
    :cond_9
    iget-object v7, v7, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    goto/16 :goto_0

    .line 28049
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28050
    .end local v2
    .restart local v0    # "selectionsChangedForReadPeriod":Z
    .end local v0    # "selectionsChangedForReadPeriod":Z
    .restart local v2    # "selectionsChangedForReadPeriod":Z
    :cond_b
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/AI;->A0T(Lcom/facebook/ads/redexgen/X/AG;)Z

    .line 28051
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-eqz v0, :cond_d

    .line 28052
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    .line 28053
    invoke-virtual {v7, v0, v1}, Lcom/facebook/ads/redexgen/X/AG;->A09(J)J

    move-result-wide v0

    .line 28054
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 28055
    .local v0, "loadingPeriodPositionUs":J
    const/4 v0, 0x0

    invoke-virtual {v7, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AG;->A0B(JZ)J

    .line 28056
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0j(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    goto :goto_4

    .line 28057
    .end local v2    # "selectionsChangedForReadPeriod":Z
    .restart local v0    # "loadingPeriodPositionUs":J
    .end local v0    # "loadingPeriodPositionUs":J
    .end local v6    # "i":I
    .restart local v2    # "selectionsChangedForReadPeriod":Z
    :cond_c
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 28058
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AK;->A05(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28059
    invoke-direct {v3, v6, v7}, Lcom/facebook/ads/redexgen/X/Dz;->A0q([ZI)V

    .line 28060
    .end local v0
    .end local v7    # "recreateStreams":Z
    .end local v0
    .end local v2    # "selectionsChangedForReadPeriod":Z
    .end local v0
    .end local v0
    .end local v0
    :cond_d
    :goto_4
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_e

    .line 28061
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A09()V

    .line 28062
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0J()V

    .line 28063
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/IA;->ADc(I)Z

    .line 28064
    :cond_e
    return-void
.end method

.method private A0F()V
    .locals 3

    .line 28065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local p0, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 28066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0s(Lcom/facebook/ads/redexgen/X/A7;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A7;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AW;->A0A(Z)V

    .line 28068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28069
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 28070
    .end local p0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 28071
    return-void
.end method

.method private A0G()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28072
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Dz;->A09:Z

    .line 28073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0G:Lcom/facebook/ads/redexgen/X/YB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YB;->A05()V

    .line 28074
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v1, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v0, v2, v3

    .line 28075
    .local v2, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YH;->start()V

    .line 28076
    .end local v2    # "renderer":Lcom/facebook/ads/redexgen/X/YH;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28077
    :cond_0
    return-void
.end method

.method private A0H()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0G:Lcom/facebook/ads/redexgen/X/YB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YB;->A06()V

    .line 28079
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 28080
    .local v2, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0d(Lcom/facebook/ads/redexgen/X/YH;)V

    .line 28081
    .end local v2    # "renderer":Lcom/facebook/ads/redexgen/X/YH;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28082
    :cond_0
    return-void
.end method

.method private A0I()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 28083
    move-object v1, p0

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Dz;->A07:Lcom/facebook/ads/redexgen/X/FE;

    if-nez v2, :cond_0

    .line 28084
    return-void

    .line 28085
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Dz;->A01:I

    if-lez v0, :cond_1

    .line 28086
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/FE;->A91()V

    .line 28087
    return-void

    .line 28088
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0C()V

    .line 28089
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0G()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v0

    .line 28090
    .local v1, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AG;->A0I()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28091
    :cond_2
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Dz;->A0l(Z)V

    .line 28092
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v0

    if-nez v0, :cond_5

    .line 28093
    return-void

    .line 28094
    :cond_4
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    if-nez v0, :cond_3

    .line 28095
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A09()V

    goto :goto_0

    .line 28096
    :cond_5
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v5

    .line 28097
    .local v0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0I()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v4

    .line 28098
    .local v0, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    const/4 v8, 0x0

    .line 28099
    .local v0, "advancedPlayingPeriod":Z
    :goto_1
    iget-boolean v6, v1, Lcom/facebook/ads/redexgen/X/Dz;->A08:Z

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v2, v3, v0

    const/4 v0, 0x2

    aget-object v3, v3, v0

    const/16 v0, 0x1b

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_1c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v2, "0oLwhKi5Kra6RCRQth8cI0tAgv4BlfMk"

    const/4 v0, 0x6

    aput-object v2, v3, v0

    if-eqz v6, :cond_8

    if-eq v5, v4, :cond_8

    iget-wide v6, v1, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/AG;->A00:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_8

    .line 28100
    if-eqz v8, :cond_6

    .line 28101
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0A()V

    .line 28102
    :cond_6
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A06:Z

    if-eqz v0, :cond_7

    .line 28103
    const/4 v3, 0x0

    .line 28104
    .local v2, "discontinuityReason":I
    :goto_2
    move-object v2, v5

    .line 28105
    .local v0, "oldPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0D()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v5

    .line 28106
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Dz;->A0W(Lcom/facebook/ads/redexgen/X/AG;)V

    .line 28107
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/AH;->A00:J

    .line 28108
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28109
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/A8;->A04(I)V

    .line 28110
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0J()V

    .line 28111
    const/4 v8, 0x1

    .line 28112
    .end local v2    # "discontinuityReason":I
    .end local v0    # "oldPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    goto :goto_1

    .line 28113
    :cond_7
    const/4 v3, 0x3

    goto :goto_2

    .line 28114
    :cond_8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A05:Z

    if-eqz v0, :cond_b

    .line 28115
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Dz;->A0T:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v0, v2

    if-ge v5, v0, :cond_a

    .line 28116
    aget-object v3, v2, v5

    .line 28117
    .local v2, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    aget-object v2, v0, v5

    .line 28118
    .local v0, "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    if-eqz v2, :cond_9

    .line 28119
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/YH;->A7K()Lcom/facebook/ads/redexgen/X/FZ;

    move-result-object v0

    if-ne v0, v2, :cond_9

    .line 28120
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/YH;->A7c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28121
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/YH;->ADi()V

    .line 28122
    .end local v2    # "renderer":Lcom/facebook/ads/redexgen/X/YH;
    .end local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 28123
    .end local v2
    :cond_a
    return-void

    .line 28124
    :cond_b
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_c

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-nez v0, :cond_d

    .line 28125
    .end local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .end local v0
    .restart local v8
    .restart local v6
    :cond_c
    return-void

    .line 28126
    :cond_d
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v7, v1, Lcom/facebook/ads/redexgen/X/Dz;->A0T:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v6, v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v0, 0x63

    if-eq v2, v0, :cond_10

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v2, "ghsgso7PHHKUfGJDBRDWa58h1rLx"

    const/4 v0, 0x4

    aput-object v2, v3, v0

    if-ge v5, v6, :cond_11

    .line 28127
    :goto_5
    aget-object v3, v7, v5

    .line 28128
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    aget-object v2, v0, v5

    .line 28129
    .local v0, "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/YH;->A7K()Lcom/facebook/ads/redexgen/X/FZ;

    move-result-object v0

    if-ne v0, v2, :cond_e

    if-eqz v2, :cond_f

    .line 28130
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/YH;->A7c()Z

    move-result v0

    if-nez v0, :cond_f

    .line 28131
    .restart local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    .restart local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    :cond_e
    return-void

    .line 28132
    .end local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    .end local v0
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_10
    sget-object v3, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v2, "W3Zxvi1uQeiwcOM1a3uIixoX4KFWrQEX"

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const-string v2, "hMjrL9hJ9zdobOz7Vqnbeo3Jken9e002"

    const/4 v0, 0x2

    aput-object v2, v3, v0

    if-ge v5, v6, :cond_11

    goto :goto_5

    .line 28133
    .end local v2    # "i":I
    .end local v0
    .end local v0
    :cond_11
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 28134
    .local v2, "oldTrackSelectorResult":Lcom/facebook/ads/redexgen/X/H8;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0E()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v7

    .line 28135
    iget-object v6, v7, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 28136
    .local v0, "newTrackSelectorResult":Lcom/facebook/ads/redexgen/X/H8;
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    .line 28137
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aW;->ACo()J

    move-result-wide v9

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v9, v2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x1d

    if-eq v2, v0, :cond_17

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v2, "vjt4oSs9hMr9NwWN4mwojUjVUYrN8cQ6"

    const/4 v0, 0x6

    aput-object v2, v3, v0

    if-eqz v4, :cond_18

    :goto_6
    const/4 v13, 0x1

    .line 28138
    .local v0, "initialDiscontinuity":Z
    :goto_7
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Dz;->A0T:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v0, v2

    if-ge v5, v0, :cond_1b

    .line 28139
    aget-object v4, v2, v5

    .line 28140
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    invoke-virtual {v8, v5}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v0

    .line 28141
    .local v0, "rendererWasEnabled":Z
    if-nez v0, :cond_13

    .line 28142
    .end local v1
    .end local v0    # "rendererWasEnabled":Z
    .end local v0
    .end local v0
    .restart local v8
    .restart local v6
    :cond_12
    :goto_9
    add-int/lit8 v5, v5, 0x1

    move-object v1, p0

    goto :goto_8

    .line 28143
    :cond_13
    if-eqz v13, :cond_14

    .line 28144
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/YH;->ADi()V

    goto :goto_9

    .line 28145
    :cond_14
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/YH;->A7w()Z

    move-result v0

    if-nez v0, :cond_12

    .line 28146
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/H5;->A01(I)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v12

    .line 28147
    .local v5, "newSelection":Lcom/facebook/ads/redexgen/X/H4;
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v11

    .line 28148
    .local v0, "newRendererEnabled":Z
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dz;->A0U:[Lcom/facebook/ads/redexgen/X/AY;

    aget-object v0, v0, v5

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AY;->A7P()I

    move-result v1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_15

    const/4 v10, 0x1

    .line 28149
    .local v2, "isNoSampleRenderer":Z
    :goto_a
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/H8;->A03:[Lcom/facebook/ads/redexgen/X/AZ;

    aget-object v3, v0, v5

    .line 28150
    .local v4, "oldConfig":Lcom/facebook/ads/redexgen/X/AZ;
    iget-object v9, v6, Lcom/facebook/ads/redexgen/X/H8;->A03:[Lcom/facebook/ads/redexgen/X/AZ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "Ap10Ra2l8gLZ0YRne2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget-object v0, v9, v5

    .line 28151
    .local v0, "newConfig":Lcom/facebook/ads/redexgen/X/AZ;
    if-eqz v11, :cond_16

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/AZ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez v10, :cond_16

    .line 28152
    invoke-static {v12}, Lcom/facebook/ads/redexgen/X/Dz;->A0w(Lcom/facebook/ads/redexgen/X/H4;)[Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v3

    .line 28153
    .local p0, "formats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v1
    .local v8, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_19

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "P6QWonkpaKbLAx4pgk"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget-object v2, v9, v5

    .line 28154
    .end local v2    # "isNoSampleRenderer":Z
    .end local v0    # "newConfig":Lcom/facebook/ads/redexgen/X/AZ;
    .local v6, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .local v3, "isNoSampleRenderer":Z
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/AG;->A08()J

    move-result-wide v0

    .line 28155
    invoke-interface {v4, v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/YH;->ADE([Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FZ;J)V

    .line 28156
    .end local p0    # "formats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    goto :goto_9

    .line 28157
    :cond_15
    const/4 v10, 0x0

    goto :goto_a

    .line 28158
    .end local v8    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .end local v6    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .end local v3    # "isNoSampleRenderer":Z
    .restart local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .restart local v2    # "isNoSampleRenderer":Z
    .restart local v0    # "newConfig":Lcom/facebook/ads/redexgen/X/AZ;
    .end local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .end local v2    # "isNoSampleRenderer":Z
    .end local v0    # "newConfig":Lcom/facebook/ads/redexgen/X/AZ;
    .restart local v8    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .restart local v6    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .restart local v3    # "isNoSampleRenderer":Z
    :cond_16
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/YH;->ADi()V

    goto :goto_9

    :cond_17
    if-eqz v4, :cond_18

    goto/16 :goto_6

    .line 28159
    :cond_18
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28160
    .end local v0
    .end local v8    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .end local v6    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .restart local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .restart local v0    # "newConfig":Lcom/facebook/ads/redexgen/X/AZ;
    :cond_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0J()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28162
    return-void

    .line 28163
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v4

    .line 28164
    .local p0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aW;->ACo()J

    move-result-wide v7

    .line 28165
    .local v1, "periodPositionUs":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v1

    if-eqz v0, :cond_3

    .line 28166
    invoke-direct {p0, v7, v8}, Lcom/facebook/ads/redexgen/X/Dz;->A0Q(J)V

    .line 28167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    cmp-long v0, v7, v1

    if-eqz v0, :cond_1

    .line 28168
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v9, v0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    .line 28169
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28170
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A04(I)V

    .line 28171
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 28173
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    .line 28174
    :goto_1
    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/AK;->A09:J

    .line 28175
    return-void

    .line 28176
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/AG;->A0D(Z)J

    move-result-wide v0

    goto :goto_1

    .line 28177
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0G:Lcom/facebook/ads/redexgen/X/YB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YB;->A04()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    .line 28178
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    invoke-virtual {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/AG;->A09(J)J

    move-result-wide v2

    .line 28179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Dz;->A0R(JJ)V

    .line 28180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    goto :goto_0
.end method

.method public static A0K()V
    .locals 1

    const/16 v0, 0xa0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dz;->A0V:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        0x15t
        0x2t
        0x3dt
        0x1t
        0xct
        0x14t
        0x8t
        0x1ft
        0x24t
        0x0t
        0x1dt
        0x1t
        0x24t
        0x3t
        0x19t
        0x8t
        0x1ft
        0x3t
        0xct
        0x1t
        0x28t
        0x15t
        0x2t
        0x3dt
        0x1t
        0xct
        0x14t
        0x8t
        0x1ft
        0x24t
        0x0t
        0x1dt
        0x1t
        0x24t
        0x3t
        0x19t
        0x8t
        0x1ft
        0x3t
        0xct
        0x1t
        0x57t
        0x25t
        0xct
        0x3t
        0x9t
        0x1t
        0x8t
        0x1ft
        0x19t
        0x37t
        0x3et
        0x3ft
        0x22t
        0x39t
        0x3et
        0x37t
        0x70t
        0x3dt
        0x35t
        0x23t
        0x23t
        0x31t
        0x37t
        0x35t
        0x23t
        0x70t
        0x23t
        0x35t
        0x3et
        0x24t
        0x70t
        0x31t
        0x36t
        0x24t
        0x35t
        0x22t
        0x70t
        0x22t
        0x35t
        0x3ct
        0x35t
        0x31t
        0x23t
        0x35t
        0x7et
        0x47t
        0x60t
        0x7at
        0x6bt
        0x7ct
        0x60t
        0x6ft
        0x62t
        0x2et
        0x7ct
        0x7bt
        0x60t
        0x7at
        0x67t
        0x63t
        0x6bt
        0x2et
        0x6bt
        0x7ct
        0x7ct
        0x61t
        0x7ct
        0x20t
        0x32t
        0xet
        0x3t
        0x1bt
        0x0t
        0x3t
        0x1t
        0x9t
        0x42t
        0x7t
        0x10t
        0x10t
        0xdt
        0x10t
        0x4ct
        0x66t
        0x5at
        0x40t
        0x47t
        0x56t
        0x50t
        0x15t
        0x50t
        0x47t
        0x47t
        0x5at
        0x47t
        0x1bt
        0x4at
        0x6dt
        0x76t
        0x69t
        0x39t
        0x7ft
        0x78t
        0x70t
        0x75t
        0x7ct
        0x7dt
        0x37t
        0x77t
        0x7ct
        0x40t
        0x7ct
        0x7et
        0x76t
        0x44t
        0x7ct
        0x61t
        0x78t
    .end array-data
.end method

.method public static A0L()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "86glHvEVsTHsOarjgO3yrK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TuAJpp7uzbfmMtpdLTRiZnKK78MiZtWb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2J1ujHTPZohQZteX1j6kCS7zhajZ8mZI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eCxkC7v7XtRVNueTNXvbthBaIEqCwNNl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "l3Yyub2xLFiYeWCCac"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TG0XkoHYQCfebcNj4J"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6SVWI1Jvh0Z3jrcRBB9hLc8AjjQAtTry"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lVbeqNrXIfO7zu9EZv7JtI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    return-void
.end method

.method private A0M(F)V
    .locals 5

    .line 28181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0F()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v4

    .line 28182
    .local p0, "periodHolder":Lcom/facebook/ads/redexgen/X/AG;
    :goto_0
    if-eqz v4, :cond_2

    .line 28183
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    if-eqz v0, :cond_1

    .line 28184
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H5;->A02()[Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v3

    .line 28185
    .local p1, "trackSelections":[Lcom/facebook/ads/redexgen/X/H4;
    array-length v2, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v0, v3, v1

    .line 28186
    .local v0, "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    if-eqz v0, :cond_0

    .line 28187
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/H4;->AB8(F)V

    .line 28188
    .end local v0    # "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28189
    .end local p1    # "trackSelections":[Lcom/facebook/ads/redexgen/X/H4;
    :cond_1
    iget-object v4, v4, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    goto :goto_0

    .line 28190
    :cond_2
    return-void
.end method

.method private A0N(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28191
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A02:I

    .line 28192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AI;->A0S(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28193
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0k(Z)V

    .line 28194
    :cond_0
    return-void
.end method

.method private A0O(I)V
    .locals 1

    .line 28195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-eq v0, p1, :cond_0

    .line 28196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AK;->A02(I)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28197
    :cond_0
    return-void
.end method

.method private A0P(IZI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28198
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v3

    .line 28199
    .local p2, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0T:[Lcom/facebook/ads/redexgen/X/YH;

    aget-object v4, v0, p1

    .line 28200
    .local p3, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    aput-object v4, v0, p3

    .line 28201
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/YH;->A7F()I

    move-result v0

    if-nez v0, :cond_0

    .line 28202
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/H8;->A03:[Lcom/facebook/ads/redexgen/X/AZ;

    aget-object v5, v0, p1

    .line 28203
    .local v0, "rendererConfiguration":Lcom/facebook/ads/redexgen/X/AZ;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    .line 28204
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/H5;->A01(I)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    .line 28205
    .local v5, "newSelection":Lcom/facebook/ads/redexgen/X/H4;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0w(Lcom/facebook/ads/redexgen/X/H4;)[Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v6

    .line 28206
    .local v0, "formats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A08:Z

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    const/4 v1, 0x1

    .line 28207
    .local v0, "playing":Z
    :goto_0
    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    .line 28208
    .local v0, "joining":Z
    :goto_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    aget-object v7, v0, p1

    iget-wide v8, v2, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    .line 28209
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/AG;->A08()J

    move-result-wide v11

    .line 28210
    invoke-interface/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/YH;->A58(Lcom/facebook/ads/redexgen/X/AZ;[Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FZ;JZJ)V

    .line 28211
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0G:Lcom/facebook/ads/redexgen/X/YB;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/YB;->A09(Lcom/facebook/ads/redexgen/X/YH;)V

    .line 28212
    if-eqz v1, :cond_0

    .line 28213
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/YH;->start()V

    .line 28214
    .end local v0    # "joining":Z
    .end local v0
    .end local v5    # "newSelection":Lcom/facebook/ads/redexgen/X/H4;
    .end local v0
    .end local v0
    :cond_0
    return-void

    .line 28215
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 28216
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private A0Q(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28218
    :goto_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    .line 28219
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0G:Lcom/facebook/ads/redexgen/X/YB;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A07(J)V

    .line 28220
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v5, v3

    .line 28221
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/YH;->ADO(J)V

    .line 28222
    .end local v0    # "renderer":Lcom/facebook/ads/redexgen/X/YH;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 28223
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "3Dp2X759xi1gKy2gc8ykMJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "GcHSrS1OF4oxjH6XmPjhKR"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/AG;->A0A(J)J

    move-result-wide p1

    goto :goto_0

    .line 28224
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0R(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28226
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Dz;
    .end local p1    # null:J
    .end local p3    # null:J
    :cond_0
    return-void

    .line 28227
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_2

    .line 28228
    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 28229
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    .line 28230
    .local p0, "currentPeriodIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    const/4 v6, 0x0

    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A7;

    .line 28231
    .local p1, "previousInfo":Lcom/facebook/ads/redexgen/X/A7;
    :goto_0
    if-eqz v0, :cond_7

    iget v1, v0, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    if-gt v1, v2, :cond_3

    iget v5, v0, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v3, v3, v1

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v1, 0x63

    if-eq v3, v1, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v3, "ZbbXGQ7fBHqOH9bFx5EieA"

    const/4 v1, 0x0

    aput-object v3, v4, v1

    const-string v3, "wqQaVgv9yDX8FIaCovLxd4"

    const/4 v1, 0x7

    aput-object v3, v4, v1

    if-ne v5, v2, :cond_7

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/A7;->A01:J

    cmp-long v0, v3, p1

    if-lez v0, :cond_7

    .line 28232
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    .line 28233
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A7;

    goto :goto_0

    :cond_4
    move-object v0, v6

    goto :goto_0

    .line 28234
    :cond_5
    move-object v0, v6

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28235
    :cond_7
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 28236
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/A7;

    .line 28237
    .local p3, "nextInfo":Lcom/facebook/ads/redexgen/X/A7;
    :goto_1
    if-eqz v1, :cond_b

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/A7;->A02:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget v0, v1, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    if-lt v0, v2, :cond_8

    iget v0, v1, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    if-ne v0, v2, :cond_b

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/A7;->A01:J

    cmp-long v0, v3, p1

    if-gtz v0, :cond_b

    .line 28238
    :cond_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    .line 28239
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 28240
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/A7;

    goto :goto_1

    .line 28241
    :cond_9
    move-object v1, v6

    goto :goto_1

    .line 28242
    :cond_a
    move-object v1, v6

    goto :goto_1

    .line 28243
    :cond_b
    :goto_2
    if-eqz v1, :cond_f

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/A7;->A02:Ljava/lang/Object;

    if-eqz v0, :cond_f

    iget v0, v1, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    if-ne v0, v2, :cond_f

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/A7;->A01:J

    cmp-long v0, v3, p1

    if-lez v0, :cond_f

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/A7;->A01:J

    cmp-long v0, v3, p3

    if-gtz v0, :cond_f

    .line 28244
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0a(Lcom/facebook/ads/redexgen/X/AW;)V

    .line 28245
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A0B()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A0D()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 28246
    :cond_c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28247
    :goto_3
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 28248
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/A7;

    goto :goto_2

    .line 28249
    :cond_d
    move-object v1, v6

    goto :goto_2

    .line 28250
    :cond_e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    goto :goto_3

    .line 28251
    :cond_f
    return-void
.end method

.method private A0S(JJ)V
    .locals 2

    .line 28252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/IA;->AD9(I)V

    .line 28253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/IA;->ADd(IJ)Z

    .line 28254
    return-void
.end method

.method private A0T(Lcom/facebook/ads/redexgen/X/A6;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28255
    move-object v0, p0

    move-object/from16 v3, p1

    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/A6;->A01:Lcom/facebook/ads/redexgen/X/FE;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A07:Lcom/facebook/ads/redexgen/X/FE;

    if-eq v2, v1, :cond_0

    .line 28256
    return-void

    .line 28257
    :cond_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v11, v1, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 28258
    .local v0, "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/A6;->A00:Lcom/facebook/ads/redexgen/X/Af;

    .line 28259
    .local v3, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/A6;->A02:Ljava/lang/Object;

    .line 28260
    .local v2, "manifest":Ljava/lang/Object;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v1, v7}, Lcom/facebook/ads/redexgen/X/AI;->A0O(Lcom/facebook/ads/redexgen/X/Af;)V

    .line 28261
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual {v1, v7, v2}, Lcom/facebook/ads/redexgen/X/AK;->A03(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28262
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0F()V

    .line 28263
    iget v6, v0, Lcom/facebook/ads/redexgen/X/Dz;->A01:I

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-lez v6, :cond_8

    .line 28264
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/A8;->A03(I)V

    .line 28265
    iput v5, v0, Lcom/facebook/ads/redexgen/X/Dz;->A01:I

    .line 28266
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Dz;->A04:Lcom/facebook/ads/redexgen/X/A9;

    if-eqz v3, :cond_4

    .line 28267
    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Dz;->A04(Lcom/facebook/ads/redexgen/X/A9;Z)Landroid/util/Pair;

    move-result-object v3

    .line 28268
    .local v1, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A04:Lcom/facebook/ads/redexgen/X/A9;

    .line 28269
    if-nez v3, :cond_2

    .line 28270
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A08()V

    .line 28271
    :cond_1
    :goto_0
    return-void

    .line 28272
    :cond_2
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 28273
    .local v1, "periodIndex":I
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 28274
    .local v11, "positionUs":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v1, v2, v6, v7}, Lcom/facebook/ads/redexgen/X/AI;->A0M(IJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v3

    .line 28275
    .local v2, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28276
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v4, 0x0

    .line 28277
    :goto_1
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    goto :goto_0

    .line 28278
    :cond_3
    move-wide v4, v6

    goto :goto_1

    .line 28279
    .end local v1    # "periodIndex":I
    .end local v1
    .end local v11    # "positionUs":J
    .end local v2    # "periodId":Lcom/facebook/ads/redexgen/X/FC;
    :cond_4
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    cmp-long v3, v4, v1

    if-nez v3, :cond_1

    .line 28280
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v6

    sget-object v5, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v4, v5, v3

    const/4 v3, 0x2

    aget-object v5, v5, v3

    const/16 v3, 0x1b

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v4, v3, :cond_7

    sget-object v5, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v4, "lH2oXw2RUPBHBuRA0"

    const/4 v3, 0x4

    aput-object v4, v5, v3

    if-eqz v6, :cond_5

    .line 28281
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A08()V

    goto :goto_0

    .line 28282
    :cond_5
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0B:Z

    .line 28283
    invoke-virtual {v7, v3}, Lcom/facebook/ads/redexgen/X/Af;->A06(Z)I

    move-result v3

    .line 28284
    invoke-direct {v0, v7, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/Dz;->A05(Lcom/facebook/ads/redexgen/X/Af;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 28285
    .local v1, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 28286
    .restart local v1    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 28287
    .local v11, "startPositionUs":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v1, v2, v6, v7}, Lcom/facebook/ads/redexgen/X/AI;->A0M(IJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v3

    .line 28288
    .restart local v2    # "periodId":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28289
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v4, 0x0

    .line 28290
    :goto_2
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    goto/16 :goto_0

    .line 28291
    :cond_6
    move-wide v4, v6

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28292
    :cond_8
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v10, v3, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    .line 28293
    .local v1, "playingPeriodIndex":I
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v13, v3, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    .line 28294
    .local v5, "contentPositionUs":J
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 28295
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v1

    if-nez v1, :cond_9

    .line 28296
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    .line 28297
    invoke-virtual {v1, v10, v13, v14}, Lcom/facebook/ads/redexgen/X/AI;->A0M(IJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v10

    .line 28298
    .local v1, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28299
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v1

    if-eqz v1, :cond_a

    const-wide/16 v11, 0x0

    .line 28300
    .end local v5    # "contentPositionUs":J
    .local v11, "contentPositionUs":J
    :goto_3
    invoke-virtual/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28301
    .end local v5
    .restart local v11    # "contentPositionUs":J
    :cond_9
    return-void

    .line 28302
    :cond_a
    move-wide v11, v13

    goto :goto_3

    .line 28303
    .end local v11    # "contentPositionUs":J
    .restart local v5    # "contentPositionUs":J
    :cond_b
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/AI;->A0F()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v3

    .line 28304
    .local v1, "periodHolder":Lcom/facebook/ads/redexgen/X/AG;
    if-nez v3, :cond_d

    .line 28305
    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    sget-object v8, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v8, v8, v6

    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v6, 0x63

    if-eq v8, v6, :cond_c

    sget-object v9, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v8, "AIgzGczszMkheYOO0l2WDA"

    const/4 v6, 0x0

    aput-object v8, v9, v6

    const-string v8, "AQm6fITMTu1q9a2hy8bL0W"

    const/4 v6, 0x7

    aput-object v8, v9, v6

    invoke-virtual {v11, v10, v12, v4}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v6

    iget-object v6, v6, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    .line 28306
    .local v6, "playingPeriodUid":Ljava/lang/Object;
    :goto_4
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/Af;->A05(Ljava/lang/Object;)I

    move-result v6

    .line 28307
    .local v1, "periodIndex":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_12

    .line 28308
    invoke-direct {v0, v10, v11, v7}, Lcom/facebook/ads/redexgen/X/Dz;->A01(ILcom/facebook/ads/redexgen/X/Af;Lcom/facebook/ads/redexgen/X/Af;)I

    move-result v6

    .line 28309
    .local v1, "newPeriodIndex":I
    if-ne v6, v8, :cond_e

    .line 28310
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A08()V

    .line 28311
    return-void

    :cond_c
    sget-object v9, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v8, "kxPd1uECtZJZCmNWUxsBgkB7loYAAl3C"

    const/4 v6, 0x6

    aput-object v8, v9, v6

    invoke-virtual {v11, v10, v12, v4}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v6

    iget-object v6, v6, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    goto :goto_4

    .line 28312
    :cond_d
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/AG;->A09:Ljava/lang/Object;

    goto :goto_4

    .line 28313
    :cond_e
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    .line 28314
    invoke-virtual {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v5

    iget v5, v5, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    .line 28315
    invoke-direct {v0, v7, v5, v1, v2}, Lcom/facebook/ads/redexgen/X/Dz;->A05(Lcom/facebook/ads/redexgen/X/Af;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 28316
    .local v7, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 28317
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 28318
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v1, v5, v9, v10}, Lcom/facebook/ads/redexgen/X/AI;->A0M(IJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v6

    .line 28319
    .restart local v2    # "periodId":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v7, v5, v1, v4}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    .line 28320
    if-eqz v3, :cond_10

    .line 28321
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    .line 28322
    .local v11, "newPeriodUid":Ljava/lang/Object;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/AH;->A00(I)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    .line 28323
    :goto_5
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v1, :cond_10

    .line 28324
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    .line 28325
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/AG;->A09:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 28326
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    invoke-virtual {v2, v1, v5}, Lcom/facebook/ads/redexgen/X/AI;->A0K(Lcom/facebook/ads/redexgen/X/AH;I)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    goto :goto_5

    .line 28327
    :cond_f
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/AH;->A00(I)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    goto :goto_5

    .line 28328
    .end local v11    # "newPeriodUid":Ljava/lang/Object;
    :cond_10
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v1

    if-eqz v1, :cond_11

    const-wide/16 v1, 0x0

    .end local v0    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    .local v11, "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    :goto_6
    invoke-direct {v0, v6, v1, v2}, Lcom/facebook/ads/redexgen/X/Dz;->A02(Lcom/facebook/ads/redexgen/X/FC;J)J

    move-result-wide v7

    .line 28329
    .local v3, "seekPositionUs":J
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28330
    return-void

    .line 28331
    :cond_11
    move-wide v1, v9

    goto :goto_6

    .line 28332
    .end local v3    # "seekPositionUs":J
    .end local v1    # "newPeriodIndex":I
    .end local v11    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    .end local v7    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v2    # "periodId":Lcom/facebook/ads/redexgen/X/FC;
    .restart local v0    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    .end local v0    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    .restart local v11    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    :cond_12
    if-eq v6, v10, :cond_13

    .line 28333
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/AK;->A01(I)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x1d

    if-eq v2, v1, :cond_17

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v2, "bxSLNYRWzgoGTszax8Z4I"

    const/4 v1, 0x4

    aput-object v2, v3, v1

    iput-object v4, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28334
    :cond_13
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 28335
    .local v3, "playingPeriodId":Lcom/facebook/ads/redexgen/X/FC;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 28336
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v1, v6, v13, v14}, Lcom/facebook/ads/redexgen/X/AI;->A0M(IJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v10

    .line 28337
    .local v0, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    invoke-virtual {v10, v4}, Lcom/facebook/ads/redexgen/X/FC;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 28338
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v1

    if-eqz v1, :cond_14

    const-wide/16 v1, 0x0

    :goto_7
    invoke-direct {v0, v10, v1, v2}, Lcom/facebook/ads/redexgen/X/Dz;->A02(Lcom/facebook/ads/redexgen/X/FC;J)J

    move-result-wide v11

    .line 28339
    .local v7, "seekPositionUs":J
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .end local v6    # "playingPeriodUid":Ljava/lang/Object;
    .local v1, "playingPeriodUid":Ljava/lang/Object;
    .end local v5    # "contentPositionUs":J
    .local v3, "contentPositionUs":J
    invoke-virtual/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28340
    return-void

    .line 28341
    :cond_14
    move-wide v1, v13

    goto :goto_7

    .line 28342
    .end local v6
    .end local v5
    .restart local v1    # "playingPeriodUid":Ljava/lang/Object;
    .restart local v3    # "contentPositionUs":J
    :cond_15
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    invoke-virtual {v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/AI;->A0V(Lcom/facebook/ads/redexgen/X/FC;J)Z

    move-result v1

    if-nez v1, :cond_16

    .line 28343
    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/Dz;->A0k(Z)V

    .line 28344
    :cond_16
    return-void

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0U(Lcom/facebook/ads/redexgen/X/A9;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28345
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/A8;->A03(I)V

    .line 28346
    move-object/from16 v9, p1

    invoke-direct {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/Dz;->A04(Lcom/facebook/ads/redexgen/X/A9;Z)Landroid/util/Pair;

    move-result-object v4

    .line 28347
    .local v0, "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 28348
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dz;->A00()I

    move-result v0

    new-instance v14, Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct {v14, v0}, Lcom/facebook/ads/redexgen/X/FC;-><init>(I)V

    .line 28349
    .local v10, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 28350
    .local v8, "periodPositionUs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 28351
    .local v0, "contentPositionUs":J
    const/4 v12, 0x1

    .line 28352
    .local v15, "seekPositionAdjusted":Z
    .local v10, "seekPositionAdjusted":Z
    :goto_0
    const/4 v6, 0x2

    :try_start_0
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dz;->A07:Lcom/facebook/ads/redexgen/X/FE;

    if-eqz v2, :cond_b

    iget v2, v7, Lcom/facebook/ads/redexgen/X/Dz;->A01:I

    if-lez v2, :cond_0

    goto/16 :goto_3

    .line 28353
    :cond_0
    cmp-long v2, v15, v10

    if-nez v2, :cond_1

    .line 28354
    const/4 v2, 0x4

    goto :goto_2

    .line 28355
    :cond_1
    move-wide v4, v15

    .line 28356
    .local v8, "newPeriodPositionUs":J
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v14, v2}, Lcom/facebook/ads/redexgen/X/FC;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 28357
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    sget-object v8, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v8, v2

    const/4 v2, 0x7

    aget-object v2, v8, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_6

    goto :goto_1

    .line 28358
    .end local v10    # "seekPositionAdjusted":Z
    .end local v8    # "newPeriodPositionUs":J
    .end local v0    # "contentPositionUs":J
    .end local v15    # "seekPositionAdjusted":Z
    :cond_2
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 28359
    .local v10, "periodIndex":I
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 28360
    .restart local v0    # "contentPositionUs":J
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/AI;->A0M(IJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v14

    .line 28361
    .local v8, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 28362
    const-wide/16 v15, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v4, v2

    const/4 v2, 0x7

    aget-object v2, v4, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_3

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28363
    .local v15, "periodPositionUs":J
    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v3, "i2wx9svvSsraq7xK4Hb6P8jzWPWvECua"

    const/4 v2, 0x3

    aput-object v3, v4, v2

    const/4 v12, 0x1

    .local v5, "seekPositionAdjusted":Z
    goto :goto_0

    .line 28364
    .end local v5    # "seekPositionAdjusted":Z
    .end local v15    # "periodPositionUs":J
    :cond_4
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 28365
    .restart local v15    # "periodPositionUs":J
    iget-wide v3, v9, Lcom/facebook/ads/redexgen/X/A9;->A01:J

    cmp-long v2, v3, v10

    if-nez v2, :cond_5

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 28366
    :goto_2
    :try_start_1
    invoke-direct {v7, v2}, Lcom/facebook/ads/redexgen/X/Dz;->A0O(I)V

    .line 28367
    invoke-direct {v7, v5, v8, v5}, Lcom/facebook/ads/redexgen/X/Dz;->A0p(ZZZ)V

    goto :goto_6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 28368
    .local v15, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    :cond_6
    sget-object v8, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v3, "hQgZLd0P1yiuMRtM5yatEhywmfTa4Rur"

    const/4 v2, 0x3

    aput-object v3, v8, v2

    if-eqz v10, :cond_7

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-eqz v2, :cond_7

    .line 28369
    :try_start_2
    iget-object v3, v10, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/aW;

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dz;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    .line 28370
    invoke-interface {v3, v4, v5, v2}, Lcom/facebook/ads/redexgen/X/aW;->A5X(JLcom/facebook/ads/redexgen/X/Ab;)J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 28371
    :cond_7
    :try_start_3
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v10

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "contentPositionUs":J
    .local v12, "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :try_start_4
    iget-wide v2, v2, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v8

    cmp-long v2, v10, v8

    if-nez v2, :cond_9

    .line 28372
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v15, v2, Lcom/facebook/ads/redexgen/X/AK;->A0A:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28373
    .end local v15    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .local v12, "periodPositionUs":J
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .end local v15
    .local p0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28374
    if-eqz v12, :cond_8

    .line 28375
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/A8;->A04(I)V

    .line 28376
    :cond_8
    return-void

    .line 28377
    .end local v0
    .restart local v12    # "periodPositionUs":J
    :cond_9
    :try_start_5
    invoke-direct {v7, v14, v4, v5}, Lcom/facebook/ads/redexgen/X/Dz;->A02(Lcom/facebook/ads/redexgen/X/FC;J)J

    move-result-wide v3

    .line 28378
    .end local v8    # "periodId":Lcom/facebook/ads/redexgen/X/FC;
    .local v9, "newPeriodPositionUs":J
    cmp-long v2, v15, v3

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 28379
    .end local v0
    .restart local v12    # "periodPositionUs":J
    :cond_b
    :goto_3
    iput-object v9, v7, Lcom/facebook/ads/redexgen/X/Dz;->A04:Lcom/facebook/ads/redexgen/X/A9;

    goto :goto_6

    .line 28380
    :goto_4
    const/4 v2, 0x1

    :goto_5
    or-int/2addr v12, v2

    .line 28381
    move-wide v15, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 28382
    :goto_6
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28383
    if-eqz v12, :cond_c

    .line 28384
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/A8;->A04(I)V

    .line 28385
    :cond_c
    return-void

    .line 28386
    :catchall_0
    move-exception v2

    goto :goto_7

    .end local v12    # "periodPositionUs":J
    .restart local v0    # "contentPositionUs":J
    :catchall_1
    move-exception v2

    goto :goto_7

    :catchall_2
    move-exception v2

    .end local v0    # "contentPositionUs":J
    .restart local v12    # "periodPositionUs":J
    :goto_7
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28387
    if-eqz v12, :cond_d

    .line 28388
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/A8;->A04(I)V

    .line 28389
    :cond_d
    throw v2
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/Dz;Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28390
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dz;->A0Y(Lcom/facebook/ads/redexgen/X/AW;)V

    return-void
.end method

.method private A0W(Lcom/facebook/ads/redexgen/X/AG;)V
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/AG;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v6

    .line 28392
    .local p0, "newPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    if-eqz v6, :cond_0

    if-ne p1, v6, :cond_1

    .line 28393
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/AG;
    .end local v0
    :cond_0
    return-void

    .line 28394
    :cond_1
    const/4 v4, 0x0

    .line 28395
    .local p1, "enabledRendererCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0T:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v0, v0

    new-array v3, v0, [Z

    .line 28396
    .local v0, "rendererWasEnabledFlags":[Z
    const/4 v5, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0T:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v0, v1

    if-ge v5, v0, :cond_6

    .line 28397
    aget-object v2, v1, v5

    .line 28398
    .local v4, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/YH;->A7F()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, v3, v5

    .line 28399
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28400
    add-int/lit8 v4, v4, 0x1

    .line 28401
    :cond_2
    aget-boolean v0, v3, v5

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 28402
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28403
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/YH;->A7w()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28404
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/YH;->A7K()Lcom/facebook/ads/redexgen/X/FZ;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    aget-object v0, v0, v5

    if-ne v1, v0, :cond_4

    .line 28405
    :cond_3
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Dz;->A0c(Lcom/facebook/ads/redexgen/X/YH;)V

    .line 28406
    .end local v4    # "renderer":Lcom/facebook/ads/redexgen/X/YH;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 28407
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 28408
    .end local v6    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "YeyTuc4hJN2cviDoFTSuVw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "y3cCzPpceybwtUTWhAu8hu"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 28409
    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/AK;->A05(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28410
    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/Dz;->A0q([ZI)V

    .line 28411
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0X(Lcom/facebook/ads/redexgen/X/AL;)V
    .locals 1

    .line 28412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0G:Lcom/facebook/ads/redexgen/X/YB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YB;->ADq(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    .line 28413
    return-void
.end method

.method private A0Y(Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28414
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A0D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28415
    return-void

    .line 28416
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A04()Lcom/facebook/ads/redexgen/X/AV;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A00()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A09()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AV;->A7Y(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28417
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/AW;->A0A(Z)V

    .line 28418
    return-void

    .line 28419
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/AW;->A0A(Z)V

    .line 28420
    throw v0
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28421
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A02()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 28422
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dz;->A0a(Lcom/facebook/ads/redexgen/X/AW;)V

    .line 28423
    :goto_0
    return-void

    .line 28424
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A07:Lcom/facebook/ads/redexgen/X/FE;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A01:I

    if-lez v0, :cond_2

    .line 28425
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Dz;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/A7;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/A7;-><init>(Lcom/facebook/ads/redexgen/X/AW;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28426
    :cond_2
    new-instance v4, Lcom/facebook/ads/redexgen/X/A7;

    invoke-direct {v4, p1}, Lcom/facebook/ads/redexgen/X/A7;-><init>(Lcom/facebook/ads/redexgen/X/AW;)V

    .line 28427
    .local p0, "pendingMessageInfo":Lcom/facebook/ads/redexgen/X/A7;
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Dz;->A0s(Lcom/facebook/ads/redexgen/X/A7;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28428
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "bdowkwDe22b4JBVUMCxt2Emm6YTTpUJh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 28430
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/AW;->A0A(Z)V

    goto :goto_0
.end method

.method private A0a(Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28431
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A03()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/IA;->A6j()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 28432
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dz;->A0Y(Lcom/facebook/ads/redexgen/X/AW;)V

    .line 28433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-ne v0, v1, :cond_1

    .line 28434
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/IA;->ADc(I)Z

    .line 28435
    :cond_1
    :goto_0
    return-void

    .line 28436
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/16 v0, 0xf

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/IA;->A9C(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 2

    .line 28437
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A03()Landroid/os/Handler;

    move-result-object v1

    .line 28438
    .local p0, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/facebook/ads/redexgen/X/A5;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/A5;-><init>(Lcom/facebook/ads/redexgen/X/Dz;Lcom/facebook/ads/redexgen/X/AW;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28439
    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/YH;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0G:Lcom/facebook/ads/redexgen/X/YB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YB;->A08(Lcom/facebook/ads/redexgen/X/YH;)V

    .line 28441
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dz;->A0d(Lcom/facebook/ads/redexgen/X/YH;)V

    .line 28442
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/YH;->A4m()V

    .line 28443
    return-void
.end method

.method private A0d(Lcom/facebook/ads/redexgen/X/YH;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28444
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/YH;->A7F()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 28445
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/YH;->stop()V

    .line 28446
    :cond_0
    return-void
.end method

.method private A0e(Lcom/facebook/ads/redexgen/X/Ab;)V
    .locals 0

    .line 28447
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    .line 28448
    return-void
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/aW;)V
    .locals 3

    .line 28449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AI;->A0U(Lcom/facebook/ads/redexgen/X/aW;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28450
    return-void

    .line 28451
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/AI;->A0N(J)V

    .line 28452
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A09()V

    .line 28453
    return-void
.end method

.method private A0g(Lcom/facebook/ads/redexgen/X/aW;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AI;->A0U(Lcom/facebook/ads/redexgen/X/aW;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28455
    return-void

    .line 28456
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0G()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v2

    .line 28457
    .local p0, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0G:Lcom/facebook/ads/redexgen/X/YB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YB;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/AG;->A0F(F)V

    .line 28458
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0j(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 28459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0D()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v0

    .line 28461
    .local p1, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Dz;->A0Q(J)V

    .line 28462
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0W(Lcom/facebook/ads/redexgen/X/AG;)V

    .line 28463
    .end local p1    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A09()V

    .line 28464
    return-void
.end method

.method private final A0h(Lcom/facebook/ads/redexgen/X/aW;)V
    .locals 2

    .line 28465
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/16 v0, 0xa

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/IA;->A9C(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28466
    return-void
.end method

.method private A0i(Lcom/facebook/ads/redexgen/X/FE;ZZ)V
    .locals 3

    .line 28467
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A01:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A01:I

    .line 28468
    invoke-direct {p0, v2, p2, p3}, Lcom/facebook/ads/redexgen/X/Dz;->A0p(ZZZ)V

    .line 28469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AF;->onPrepared()V

    .line 28470
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A07:Lcom/facebook/ads/redexgen/X/FE;

    .line 28471
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Dz;->A0O(I)V

    .line 28472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0H:Lcom/facebook/ads/redexgen/X/YF;

    invoke-interface {p1, v0, v2, p0}, Lcom/facebook/ads/redexgen/X/FE;->ACY(Lcom/facebook/ads/redexgen/X/YF;ZLcom/facebook/ads/redexgen/X/FD;)V

    .line 28473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/IA;->ADc(I)Z

    .line 28474
    return-void
.end method

.method private A0j(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V
    .locals 3

    .line 28475
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0T:[Lcom/facebook/ads/redexgen/X/YH;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    invoke-interface {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/AF;->ABq([Lcom/facebook/ads/redexgen/X/YH;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H5;)V

    .line 28476
    return-void
.end method

.method private A0k(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 28478
    .local p0, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    .line 28479
    const/4 v0, 0x1

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A03(Lcom/facebook/ads/redexgen/X/FC;JZ)J

    move-result-wide v4

    .line 28480
    .local v1, "newPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 28481
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    .line 28482
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28483
    if-eqz p1, :cond_0

    .line 28484
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A04(I)V

    .line 28485
    :cond_0
    return-void
.end method

.method private A0l(Z)V
    .locals 1

    .line 28486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    if-eq v0, p1, :cond_0

    .line 28487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AK;->A06(Z)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28488
    :cond_0
    return-void
.end method

.method private A0m(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A09:Z

    .line 28490
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A08:Z

    .line 28491
    if-nez p1, :cond_1

    .line 28492
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0H()V

    .line 28493
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0J()V

    .line 28494
    :cond_0
    :goto_0
    return-void

    .line 28495
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    const/4 v0, 0x3

    const/4 v3, 0x2

    if-ne v1, v0, :cond_2

    .line 28496
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_3

    .line 28497
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "X2QfJ1e23pCpGilE5nvaFXYxLnWx3Vax"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/IA;->ADc(I)Z

    goto :goto_0

    .line 28498
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-ne v0, v3, :cond_0

    .line 28499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/IA;->ADc(I)Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0n(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28500
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0B:Z

    .line 28501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AI;->A0W(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28502
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0k(Z)V

    .line 28503
    :cond_0
    return-void
.end method

.method private A0o(ZZ)V
    .locals 3

    .line 28504
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, p1}, Lcom/facebook/ads/redexgen/X/Dz;->A0p(ZZZ)V

    .line 28505
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A01:I

    .line 28506
    add-int/2addr v0, p2

    .line 28507
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A03(I)V

    .line 28508
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A01:I

    .line 28509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AF;->ABj()V

    .line 28510
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Dz;->A0O(I)V

    .line 28511
    return-void
.end method

.method private A0p(ZZZ)V
    .locals 18

    .line 28512
    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/IA;->AD9(I)V

    .line 28513
    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/facebook/ads/redexgen/X/Dz;->A09:Z

    .line 28514
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0G:Lcom/facebook/ads/redexgen/X/YB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YB;->A06()V

    .line 28515
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    .line 28516
    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v8, v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, v9, v7

    .line 28517
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/YH;
    :try_start_0
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0c(Lcom/facebook/ads/redexgen/X/YH;)V

    goto :goto_2
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/A0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28518
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    .line 28519
    .local p0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    const/16 v1, 0x15

    const/16 v0, 0xf

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A06(III)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x8a

    const/16 v1, 0xc

    const/16 v0, 0x7b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28520
    .end local p0    # "e":Ljava/lang/Exception;
    .end local v0    # "renderer":Lcom/facebook/ads/redexgen/X/YH;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 28521
    :cond_0
    new-array v0, v5, [Lcom/facebook/ads/redexgen/X/YH;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    .line 28522
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x2

    aget-object v3, v3, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_e

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "2WNzaDjkqcOaPFAy0QOPwI"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const-string v1, "unAKX8spYNQMyMddShLfR5"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/AI;->A0P(Z)V

    .line 28523
    invoke-direct {v2, v5}, Lcom/facebook/ads/redexgen/X/Dz;->A0l(Z)V

    .line 28524
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 28525
    iput-object v1, v2, Lcom/facebook/ads/redexgen/X/Dz;->A04:Lcom/facebook/ads/redexgen/X/A9;

    .line 28526
    :cond_1
    if-eqz p3, :cond_4

    .line 28527
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Af;->A01:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/AI;->A0O(Lcom/facebook/ads/redexgen/X/Af;)V

    .line 28528
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x12

    if-eq v3, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v3, "oYGfQB8mGDj6jmVX6XAe4nZE0DoRm7Og"

    const/4 v0, 0x6

    aput-object v3, v4, v0

    check-cast v6, Lcom/facebook/ads/redexgen/X/A7;

    .line 28529
    .local v2, "pendingMessageInfo":Lcom/facebook/ads/redexgen/X/A7;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/AW;->A0A(Z)V

    .line 28530
    .end local v2    # "pendingMessageInfo":Lcom/facebook/ads/redexgen/X/A7;
    goto :goto_3

    .line 28531
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28532
    iput v5, v2, Lcom/facebook/ads/redexgen/X/Dz;->A00:I

    .line 28533
    :cond_4
    new-instance v6, Lcom/facebook/ads/redexgen/X/AK;

    .line 28534
    if-eqz p3, :cond_d

    sget-object v7, Lcom/facebook/ads/redexgen/X/Af;->A01:Lcom/facebook/ads/redexgen/X/Af;

    .line 28535
    :goto_4
    if-eqz p3, :cond_c

    move-object v8, v1

    .line 28536
    :goto_5
    if-eqz p2, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dz;->A00()I

    move-result v0

    new-instance v9, Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct {v9, v0}, Lcom/facebook/ads/redexgen/X/FC;-><init>(I)V

    .line 28537
    :goto_6
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_a

    move-wide v10, v12

    .line 28538
    :goto_7
    if-eqz p2, :cond_9

    :goto_8
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v14, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    const/4 v15, 0x0

    .line 28539
    if-eqz p3, :cond_7

    sget-object v3, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 28540
    :goto_9
    if-eqz p3, :cond_6

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A0O:Lcom/facebook/ads/redexgen/X/H8;

    :goto_a
    move-object/from16 v16, v3

    move-object/from16 v17, v0

    invoke-direct/range {v6 .. v17}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    iput-object v6, v2, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 28541
    if-eqz p1, :cond_5

    .line 28542
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A07:Lcom/facebook/ads/redexgen/X/FE;

    if-eqz v0, :cond_5

    .line 28543
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/FE;->AD6(Lcom/facebook/ads/redexgen/X/FD;)V

    .line 28544
    iput-object v1, v2, Lcom/facebook/ads/redexgen/X/Dz;->A07:Lcom/facebook/ads/redexgen/X/FE;

    .line 28545
    :cond_5
    return-void

    .line 28546
    :cond_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    goto :goto_a

    .line 28547
    :cond_7
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    sget-object v4, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v0, 0x12

    if-eq v4, v0, :cond_8

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    goto :goto_9

    :cond_8
    sget-object v5, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v4, "udHBd6VluCWpjwypGpbQkm44C5lEXr7W"

    const/4 v0, 0x1

    aput-object v4, v5, v0

    const-string v4, "ikIjUWR3chEMULYYaopllYxVSgtPleKx"

    const/4 v0, 0x2

    aput-object v4, v5, v0

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    goto :goto_9

    .line 28548
    :cond_9
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v12, v0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    goto :goto_8

    .line 28549
    :cond_a
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    goto :goto_7

    .line 28550
    :cond_b
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    goto :goto_6

    .line 28551
    :cond_c
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    goto :goto_5

    .line 28552
    :cond_d
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0q([ZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28553
    new-array v0, p2, [Lcom/facebook/ads/redexgen/X/YH;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    .line 28554
    const/4 v4, 0x0

    .line 28555
    .local p0, "enabledRendererCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v3

    .line 28556
    .local p1, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    const/4 v2, 0x0

    .local p2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0T:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 28557
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28558
    aget-boolean v1, p1, v2

    add-int/lit8 v0, v4, 0x1

    .end local p0    # "enabledRendererCount":I
    .local v4, "enabledRendererCount":I
    invoke-direct {p0, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/Dz;->A0P(IZI)V

    move v4, v0

    .line 28559
    .end local v4    # "enabledRendererCount":I
    .restart local p0    # "enabledRendererCount":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28560
    .end local p2    # "i":I
    :cond_1
    return-void
.end method

.method private A0r()Z
    .locals 6

    .line 28561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v5

    .line 28562
    .local p0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    .line 28563
    .local v0, "playingPeriodDurationUs":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-nez v0, :cond_0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 28564
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 28565
    :goto_0
    return v0

    .line 28566
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0s(Lcom/facebook/ads/redexgen/X/A7;)Z
    .locals 7

    .line 28567
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A7;->A02:Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 28568
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    .line 28569
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A08()Lcom/facebook/ads/redexgen/X/Af;

    move-result-object v5

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    .line 28570
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A01()I

    move-result v3

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    .line 28571
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A02()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9u;->A00(J)J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/A9;

    invoke-direct {v0, v5, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/A9;-><init>(Lcom/facebook/ads/redexgen/X/Af;IJ)V

    .line 28572
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Dz;->A04(Lcom/facebook/ads/redexgen/X/A9;Z)Landroid/util/Pair;

    move-result-object v3

    .line 28573
    .local p0, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v3, :cond_2

    .line 28574
    return v4

    .line 28575
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A7;->A02:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A05(Ljava/lang/Object;)I

    move-result v1

    .line 28576
    .local p0, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 28577
    return v4

    .line 28578
    :cond_1
    iput v1, p1, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    goto :goto_0

    .line 28579
    :cond_2
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 28580
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 28581
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 28582
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v4, v3, v0, v6}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    .line 28583
    invoke-virtual {p1, v5, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/A7;->A01(IJLjava/lang/Object;)V

    .line 28584
    .end local p0    # "index":I
    .end local p0
    :goto_0
    return v6
.end method

.method private A0t(Lcom/facebook/ads/redexgen/X/YH;)Z
    .locals 2

    .line 28585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0I()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v1

    .line 28586
    .local p0, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-eqz v0, :cond_0

    .line 28587
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/YH;->A7c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 28588
    :goto_0
    return v0

    .line 28589
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0u(Lcom/facebook/ads/redexgen/X/FC;JLcom/facebook/ads/redexgen/X/AG;)Z
    .locals 5

    .line 28590
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/FC;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p4, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-eqz v0, :cond_1

    .line 28591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    .line 28592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Ad;->A04(J)I

    move-result v1

    .line 28593
    .local p0, "nextAdGroupIndex":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    .line 28594
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ad;->A09(I)J

    move-result-wide v3

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 28595
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 28596
    .end local p0    # "nextAdGroupIndex":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private A0v(Z)Z
    .locals 7

    .line 28597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0C:[Lcom/facebook/ads/redexgen/X/YH;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 28598
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0r()Z

    move-result v0

    return v0

    .line 28599
    :cond_0
    const/4 v6, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "XitCw2lYTMNoWfZ3MNfhmS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "pjSmPGutCkFid20LDJR8Tk"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez p1, :cond_2

    .line 28600
    return v6

    .line 28601
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 28602
    return v3

    .line 28603
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0G()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    .line 28604
    .local p1, "loadingHolder":Lcom/facebook/ads/redexgen/X/AG;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "c9QtbAseiMx42ehTAZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A05:Z

    xor-int/2addr v0, v3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/AG;->A0D(Z)J

    move-result-wide v3

    .line 28605
    .local v0, "bufferedPositionUs":J
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A03:J

    .line 28606
    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/AG;->A09(J)J

    move-result-wide v0

    sub-long/2addr v3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0G:Lcom/facebook/ads/redexgen/X/YB;

    .line 28607
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YB;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A09:Z

    .line 28608
    invoke-interface {v2, v3, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/AF;->ADy(JFZ)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 28609
    :cond_5
    return v6

    .line 28610
    .local p1, "loadingHolder":Lcom/facebook/ads/redexgen/X/AG;
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "5BPuibQqZ5NKjWZyuTION1z1lHkA3o6b"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "lue4BzZmQF8ChJf2GK4Pk4NwU097v1o6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A05:Z

    xor-int/2addr v0, v3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/AG;->A0D(Z)J

    move-result-wide v3

    .line 28611
    .local v0, "bufferedPositionUs":J
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    goto :goto_0
.end method

.method public static A0w(Lcom/facebook/ads/redexgen/X/H4;)[Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 28612
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/H4;->length()I

    move-result v5

    .line 28613
    .local p0, "length":I
    :goto_0
    new-array v4, v5, [Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 28614
    .local v5, "formats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    const/4 v3, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 28615
    invoke-interface {p0, v3}, Lcom/facebook/ads/redexgen/X/H4;->A6X(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    aput-object v0, v4, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_1

    .line 28616
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "cHoAaTwhCyKnC5gIlgOheFkD17ImOLE4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "NdVO49IoL7wvUQC4on3mokgCd3AJvc50"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 28617
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28618
    .end local v4    # "i":I
    :cond_2
    return-object v4
.end method


# virtual methods
.method public final A0x()Landroid/os/Looper;
    .locals 1

    .line 28619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized A0y()V
    .locals 3

    monitor-enter p0

    .line 28620
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0A:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28621
    monitor-exit p0

    return-void

    .line 28622
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/4 v0, 0x7

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/IA;->ADc(I)Z

    .line 28623
    const/4 v1, 0x0

    .line 28624
    .local p0, "wasInterrupted":Z
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0A:Z

    if-nez v0, :cond_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28625
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28626
    .end local v1
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_0
    const/4 v1, 0x1

    .line 28627
    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 28628
    :cond_1
    if-eqz v1, :cond_2

    .line 28629
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28630
    :cond_2
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "ci8xVCbgf6WZorAiSg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28631
    .end local p0    # "wasInterrupted":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0z(Lcom/facebook/ads/redexgen/X/Af;IJ)V
    .locals 3

    .line 28632
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/A9;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/A9;-><init>(Lcom/facebook/ads/redexgen/X/Af;IJ)V

    .line 28633
    const/4 v0, 0x3

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/IA;->A9C(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28634
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28635
    return-void
.end method

.method public final A10(Lcom/facebook/ads/redexgen/X/FE;ZZ)V
    .locals 2

    .line 28636
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    .line 28637
    const/4 v0, 0x0

    invoke-interface {v1, v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/IA;->A9B(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28638
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28639
    return-void
.end method

.method public final A11(Z)V
    .locals 3

    .line 28640
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {v2, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/IA;->A9A(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28641
    return-void
.end method

.method public final A12(Z)V
    .locals 3

    .line 28642
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/4 v1, 0x0

    const/4 v0, 0x6

    invoke-interface {v2, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/IA;->A9A(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28643
    return-void
.end method

.method public final bridge synthetic A9p(Lcom/facebook/ads/redexgen/X/Fb;)V
    .locals 0

    .line 28644
    check-cast p1, Lcom/facebook/ads/redexgen/X/aW;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dz;->A0h(Lcom/facebook/ads/redexgen/X/aW;)V

    return-void
.end method

.method public final AB7(Lcom/facebook/ads/redexgen/X/AL;)V
    .locals 2

    .line 28645
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0E:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28646
    iget v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0M(F)V

    .line 28647
    return-void
.end method

.method public final ABF(Lcom/facebook/ads/redexgen/X/aW;)V
    .locals 2

    .line 28648
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/16 v0, 0x9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/IA;->A9C(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28649
    return-void
.end method

.method public final ABe(Lcom/facebook/ads/redexgen/X/FE;Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;)V
    .locals 3

    .line 28650
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/A6;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/A6;-><init>(Lcom/facebook/ads/redexgen/X/FE;Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;)V

    .line 28651
    const/16 v0, 0x8

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/IA;->A9C(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28652
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28653
    return-void
.end method

.method public final declared-synchronized ADe(Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 4

    monitor-enter p0

    .line 28654
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0A:Z

    if-eqz v0, :cond_0

    .line 28655
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x32

    const/16 v1, 0x25

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28656
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/AW;->A0A(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28657
    monitor-exit p0

    return-void

    .line 28658
    .end local v0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/16 v0, 0xe

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/IA;->A9C(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28659
    monitor-exit p0

    return-void

    .line 28660
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 28661
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A06(III)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 28662
    return v6

    .line 28663
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/ads/redexgen/X/FE;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0i(Lcom/facebook/ads/redexgen/X/FE;ZZ)V

    goto :goto_5

    .line 28664
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0m(Z)V

    goto :goto_5

    .line 28665
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A07()V

    goto :goto_5

    .line 28666
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/A9;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0U(Lcom/facebook/ads/redexgen/X/A9;)V

    goto :goto_5

    .line 28667
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/AL;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0X(Lcom/facebook/ads/redexgen/X/AL;)V

    goto :goto_5

    .line 28668
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0e(Lcom/facebook/ads/redexgen/X/Ab;)V

    goto :goto_5

    .line 28669
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Dz;->A0o(ZZ)V

    goto :goto_5

    .line 28670
    :pswitch_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0D()V

    .line 28671
    return v3

    .line 28672
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/A6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0T(Lcom/facebook/ads/redexgen/X/A6;)V

    goto :goto_5

    .line 28673
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0g(Lcom/facebook/ads/redexgen/X/aW;)V

    goto :goto_5

    .line 28674
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0f(Lcom/facebook/ads/redexgen/X/aW;)V

    goto :goto_5

    .line 28675
    :pswitch_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0E()V

    goto :goto_5

    .line 28676
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0N(I)V

    goto :goto_5

    .line 28677
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0n(Z)V

    goto :goto_5

    .line 28678
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0Z(Lcom/facebook/ads/redexgen/X/AW;)V

    goto :goto_5

    .line 28679
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0b(Lcom/facebook/ads/redexgen/X/AW;)V

    .line 28680
    :goto_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0A()V

    goto :goto_6
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/A0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 28681
    .end local v0
    :catch_0
    move-exception v4

    .line 28682
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x7d

    const/16 v1, 0xd

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28683
    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/Dz;->A0o(ZZ)V

    .line 28684
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0E:Landroid/os/Handler;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/A0;->A00(Ljava/io/IOException;)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28685
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0A()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 28686
    :catch_1
    move-exception v4

    .line 28687
    .local v0, "e":Lcom/facebook/ads/redexgen/X/A0;
    const/16 v2, 0x6e

    const/16 v1, 0xf

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28688
    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/Dz;->A0o(ZZ)V

    .line 28689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0E:Landroid/os/Handler;

    invoke-virtual {v0, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28690
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0A()V

    goto :goto_6

    .line 28691
    :catch_2
    move-exception v4

    .line 28692
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v2, 0x57

    const/16 v1, 0x17

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dz;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28693
    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/Dz;->A0o(ZZ)V

    .line 28694
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dz;->A0E:Landroid/os/Handler;

    .line 28695
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/A0;->A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28696
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_5

    .line 28697
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dz;->A0W:[Ljava/lang/String;

    const-string v1, "BLVAUEtDSJNWXrvjpr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0A()V

    .line 28698
    :goto_6
    return v3

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
