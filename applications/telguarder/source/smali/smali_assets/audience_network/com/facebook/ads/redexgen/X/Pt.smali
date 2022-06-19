.class public final Lcom/facebook/ads/redexgen/X/Pt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ps;,
        Lcom/facebook/ads/redexgen/X/Pq;,
        Lcom/facebook/ads/redexgen/X/Pr;
    }
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/DL;

.field public final A01:Lcom/facebook/ads/redexgen/X/Tz;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pt;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 3

    .line 48647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48648
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Tz;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A01:Lcom/facebook/ads/redexgen/X/Tz;

    .line 48649
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pt;->A01:Lcom/facebook/ads/redexgen/X/Tz;

    new-instance v0, Lcom/facebook/ads/redexgen/X/U6;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/U6;-><init>(Lcom/facebook/ads/redexgen/X/HD;)V

    .line 48650
    .local p0, "trackSelectionFactory":Lcom/facebook/ads/redexgen/X/H3;
    new-instance v2, Lcom/facebook/ads/redexgen/X/BH;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/BH;-><init>(Lcom/facebook/ads/redexgen/X/H3;)V

    .line 48651
    .local p1, "trackSelector":Lcom/facebook/ads/redexgen/X/H7;
    new-instance v1, Lcom/facebook/ads/redexgen/X/WB;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/WB;-><init>()V

    .line 48652
    .local v0, "loadControl":Lcom/facebook/ads/redexgen/X/AF;
    new-instance v0, Lcom/facebook/ads/redexgen/X/W9;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/W9;-><init>(Landroid/content/Context;)V

    .line 48653
    .local v1, "renderersFactory":Lcom/facebook/ads/redexgen/X/Aa;
    invoke-static {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/A2;->A00(Lcom/facebook/ads/redexgen/X/Aa;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/AF;)Lcom/facebook/ads/redexgen/X/DL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    .line 48654
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pt;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x32

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/A0;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 48655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x29

    const/16 v1, 0xb

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pt;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/A0;->A01:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/16 v1, 0x16

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pt;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/A0;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pt;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48656
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/A0;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    const/4 v1, 0x2

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pt;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48657
    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pt;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x40t
        -0x36t
        -0x42t
        -0x40t
        0x1t
        -0x1t
        0x13t
        0x11t
        0x3t
        -0x40t
        -0x42t
        -0x28t
        -0x42t
        -0x40t
        -0x4at
        -0x40t
        -0x4ct
        -0x4at
        0x6t
        -0x7t
        0x2t
        -0x8t
        -0x7t
        0x6t
        -0x7t
        0x6t
        -0x23t
        0x2t
        -0x8t
        -0x7t
        0xct
        -0x4at
        -0x4ct
        -0x32t
        -0x4ct
        -0x4at
        -0x36t
        0x25t
        -0x9t
        -0x6t
        0x9t
        0x10t
        -0x49t
        0x9t
        0xet
        0x5t
        -0x6t
        -0x49t
        -0x4bt
        -0x31t
        -0x4bt
        -0x49t
    .end array-data
.end method

.method public static A03()Z
    .locals 1

    .line 48658
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A04()I
    .locals 1

    .line 48659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0K()I

    move-result v0

    return v0
.end method

.method public final A05()I
    .locals 1

    .line 48660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DL;->A5k()I

    move-result v0

    return v0
.end method

.method public final A06()J
    .locals 2

    .line 48661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DL;->A67()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A07()J
    .locals 2

    .line 48662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DL;->A6I()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/Pr;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 48663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0M()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 48664
    .local p0, "vf":Lcom/facebook/ads/internal/exoplayer2/Format;
    if-nez v0, :cond_0

    .line 48665
    const/4 v0, 0x0

    return-object v0

    .line 48666
    :cond_0
    iget v2, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pr;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Pr;-><init>(II)V

    return-object v0
.end method

.method public final A09()V
    .locals 1

    .line 48667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DL;->ACz()V

    .line 48668
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 48669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DL;->ADa()V

    .line 48670
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 48671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0N()V

    .line 48672
    return-void
.end method

.method public final A0C(F)V
    .locals 1

    .line 48673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/DL;->A0O(F)V

    .line 48674
    return-void
.end method

.method public final A0D(J)V
    .locals 1

    .line 48675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DL;->ADZ(J)V

    .line 48676
    return-void
.end method

.method public final A0E(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 48677
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pt;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/J4;->A1q(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48678
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Px;->A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Px;

    move-result-object v0

    .line 48679
    .local p0, "cacheManager":Lcom/facebook/ads/redexgen/X/Px;
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Px;->A0E(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/HH;

    move-result-object v1

    .line 48680
    .local p1, "cachedDataSourceFactory":Lcom/facebook/ads/redexgen/X/HH;
    new-instance v0, Lcom/facebook/ads/redexgen/X/UP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UP;-><init>(Lcom/facebook/ads/redexgen/X/HH;)V

    .line 48681
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/UP;->A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/Bd;

    move-result-object v1

    .line 48682
    .local p2, "mediaSource":Lcom/facebook/ads/redexgen/X/FE;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/DL;->A0Q(Lcom/facebook/ads/redexgen/X/FE;)V

    .line 48683
    .end local p0    # "cacheManager":Lcom/facebook/ads/redexgen/X/Px;
    .end local p1    # "cachedDataSourceFactory":Lcom/facebook/ads/redexgen/X/HH;
    .end local p2    # "mediaSource":Lcom/facebook/ads/redexgen/X/FE;
    .end local p0
    .end local p1
    :goto_0
    return-void

    .line 48684
    :cond_0
    const/16 v2, 0x26

    const/4 v1, 0x3

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pt;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A01:Lcom/facebook/ads/redexgen/X/Tz;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Tx;

    invoke-direct {v1, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/Tx;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hd;)V

    .line 48685
    .local p0, "dataSourceFactory":Lcom/facebook/ads/redexgen/X/HH;
    new-instance v0, Lcom/facebook/ads/redexgen/X/UP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UP;-><init>(Lcom/facebook/ads/redexgen/X/HH;)V

    .line 48686
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/UP;->A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/Bd;

    move-result-object v1

    .line 48687
    .local p1, "mediaSource":Lcom/facebook/ads/redexgen/X/FE;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/DL;->A0Q(Lcom/facebook/ads/redexgen/X/FE;)V

    goto :goto_0
.end method

.method public final A0F(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 48688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/DL;->A0P(Landroid/view/Surface;)V

    .line 48689
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Pq;)V
    .locals 2

    .line 48690
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/HQ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/HQ;-><init>(Lcom/facebook/ads/redexgen/X/Pt;Lcom/facebook/ads/redexgen/X/Pq;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/DL;->A3E(Lcom/facebook/ads/redexgen/X/AO;)V

    .line 48691
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/Ps;)V
    .locals 2

    .line 48692
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/HY;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/HY;-><init>(Lcom/facebook/ads/redexgen/X/Pt;Lcom/facebook/ads/redexgen/X/Ps;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/DL;->A0R(Lcom/facebook/ads/redexgen/X/Ir;)V

    .line 48693
    return-void
.end method

.method public final A0I(Z)V
    .locals 1

    .line 48694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/DL;->ADq(Z)V

    .line 48695
    return-void
.end method

.method public final A0J()Z
    .locals 1

    .line 48696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DL;->A6z()Z

    move-result v0

    return v0
.end method

.method public final A0K()Z
    .locals 1

    .line 48697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0L()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
