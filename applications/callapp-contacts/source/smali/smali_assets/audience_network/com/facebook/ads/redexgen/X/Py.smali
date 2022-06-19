.class public final Lcom/facebook/ads/redexgen/X/Py;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Px;,
        Lcom/facebook/ads/redexgen/X/Pv;,
        Lcom/facebook/ads/redexgen/X/Pw;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Dj;

.field public final A01:Lcom/facebook/ads/redexgen/X/bB;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Py;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Py;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 3

    .line 48612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48613
    new-instance v0, Lcom/facebook/ads/redexgen/X/bB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bB;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A01:Lcom/facebook/ads/redexgen/X/bB;

    .line 48614
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Py;->A01:Lcom/facebook/ads/redexgen/X/bB;

    new-instance v0, Lcom/facebook/ads/redexgen/X/b0;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/b0;-><init>(Lcom/facebook/ads/redexgen/X/HD;)V

    .line 48615
    .local p0, "trackSelectionFactory":Lcom/facebook/ads/redexgen/X/H3;
    new-instance v2, Lcom/facebook/ads/redexgen/X/Bb;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Bb;-><init>(Lcom/facebook/ads/redexgen/X/H3;)V

    .line 48616
    .local p1, "trackSelector":Lcom/facebook/ads/redexgen/X/H7;
    new-instance v1, Lcom/facebook/ads/redexgen/X/YA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/YA;-><init>()V

    .line 48617
    .local v0, "loadControl":Lcom/facebook/ads/redexgen/X/AF;
    new-instance v0, Lcom/facebook/ads/redexgen/X/YC;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/YC;-><init>(Landroid/content/Context;)V

    .line 48618
    .local v1, "renderersFactory":Lcom/facebook/ads/redexgen/X/Aa;
    invoke-static {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/A2;->A00(Lcom/facebook/ads/redexgen/X/Aa;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/AF;)Lcom/facebook/ads/redexgen/X/Dj;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    .line 48619
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Py;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xa

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

    .line 48620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x29

    const/16 v1, 0xb

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Py;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/A0;->A01:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/16 v1, 0x16

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Py;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/A0;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Py;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48621
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/A0;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    const/4 v1, 0x2

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Py;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48622
    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Py;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x72t
        -0x68t
        -0x74t
        -0x72t
        -0x31t
        -0x33t
        -0x1ft
        -0x21t
        -0x2ft
        -0x72t
        -0x74t
        -0x5at
        -0x74t
        -0x72t
        -0x60t
        -0x56t
        -0x62t
        -0x60t
        -0x10t
        -0x1dt
        -0x14t
        -0x1et
        -0x1dt
        -0x10t
        -0x1dt
        -0x10t
        -0x39t
        -0x14t
        -0x1et
        -0x1dt
        -0xat
        -0x60t
        -0x62t
        -0x48t
        -0x62t
        -0x60t
        -0x72t
        -0x17t
        0x6ft
        0x72t
        -0x7ft
        -0x44t
        0x63t
        -0x4bt
        -0x46t
        -0x4ft
        -0x5at
        0x63t
        0x61t
        0x7bt
        0x61t
        0x63t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WzijvlAd9RP1HJzMxCKzeYHnMs2QP54v"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kfrqpsiELz0FvZTPYg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hAwPDz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OryCsPOoCbEZ1Kjw18"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JoqBI6chV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rfkFyJ13DXugB3RLj6H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rQvj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kthZXjW83"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Py;->A03:[Ljava/lang/String;

    return-void
.end method

.method public static A04()Z
    .locals 4

    .line 48623
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Py;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Py;->A03:[Ljava/lang/String;

    const-string v1, "p35x"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A05()I
    .locals 1

    .line 48624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0K()I

    move-result v0

    return v0
.end method

.method public final A06()I
    .locals 1

    .line 48625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A5k()I

    move-result v0

    return v0
.end method

.method public final A07()J
    .locals 2

    .line 48626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A67()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A08()J
    .locals 2

    .line 48627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A6I()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/Pw;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 48628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0M()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 48629
    .local p0, "vf":Lcom/facebook/ads/internal/exoplayer2/Format;
    if-nez v0, :cond_0

    .line 48630
    const/4 v0, 0x0

    return-object v0

    .line 48631
    :cond_0
    iget v2, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pw;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Pw;-><init>(II)V

    return-object v0
.end method

.method public final A0A()V
    .locals 1

    .line 48632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dj;->ACz()V

    .line 48633
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 48634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dj;->ADZ()V

    .line 48635
    return-void
.end method

.method public final A0C()V
    .locals 1

    .line 48636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0N()V

    .line 48637
    return-void
.end method

.method public final A0D(F)V
    .locals 1

    .line 48638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A0O(F)V

    .line 48639
    return-void
.end method

.method public final A0E(J)V
    .locals 1

    .line 48640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dj;->ADY(J)V

    .line 48641
    return-void
.end method

.method public final A0F(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 48642
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Py;->A04()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/J4;->A1s(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48643
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Q2;->A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Q2;

    move-result-object v0

    .line 48644
    .local p0, "cacheManager":Lcom/facebook/ads/redexgen/X/Q2;
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Q2;->A0E(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/HH;

    move-result-object v1

    .line 48645
    .local p1, "cachedDataSourceFactory":Lcom/facebook/ads/redexgen/X/HH;
    new-instance v0, Lcom/facebook/ads/redexgen/X/aT;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/aT;-><init>(Lcom/facebook/ads/redexgen/X/HH;)V

    .line 48646
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/aT;->A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/C4;

    move-result-object v1

    .line 48647
    .local p2, "mediaSource":Lcom/facebook/ads/redexgen/X/FE;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0Q(Lcom/facebook/ads/redexgen/X/FE;)V

    .line 48648
    .end local p0    # "cacheManager":Lcom/facebook/ads/redexgen/X/Q2;
    .end local p1    # "cachedDataSourceFactory":Lcom/facebook/ads/redexgen/X/HH;
    .end local p2    # "mediaSource":Lcom/facebook/ads/redexgen/X/FE;
    .end local p0
    .end local p1
    :goto_0
    return-void

    .line 48649
    :cond_0
    const/16 v2, 0x26

    const/4 v1, 0x3

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Py;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A01:Lcom/facebook/ads/redexgen/X/bB;

    new-instance v1, Lcom/facebook/ads/redexgen/X/bD;

    invoke-direct {v1, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/bD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hd;)V

    .line 48650
    .local p0, "dataSourceFactory":Lcom/facebook/ads/redexgen/X/HH;
    new-instance v0, Lcom/facebook/ads/redexgen/X/aT;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/aT;-><init>(Lcom/facebook/ads/redexgen/X/HH;)V

    .line 48651
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/aT;->A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/C4;

    move-result-object v1

    .line 48652
    .local p1, "mediaSource":Lcom/facebook/ads/redexgen/X/FE;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0Q(Lcom/facebook/ads/redexgen/X/FE;)V

    goto :goto_0
.end method

.method public final A0G(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 48653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A0P(Landroid/view/Surface;)V

    .line 48654
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/Pv;)V
    .locals 2

    .line 48655
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hb;-><init>(Lcom/facebook/ads/redexgen/X/Py;Lcom/facebook/ads/redexgen/X/Pv;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A3I(Lcom/facebook/ads/redexgen/X/AO;)V

    .line 48656
    return-void
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/Px;)V
    .locals 2

    .line 48657
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    new-instance v0, Lcom/facebook/ads/redexgen/X/He;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/He;-><init>(Lcom/facebook/ads/redexgen/X/Py;Lcom/facebook/ads/redexgen/X/Px;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0R(Lcom/facebook/ads/redexgen/X/Ir;)V

    .line 48658
    return-void
.end method

.method public final A0J(Z)V
    .locals 1

    .line 48659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->ADp(Z)V

    .line 48660
    return-void
.end method

.method public final A0K()Z
    .locals 1

    .line 48661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A6z()Z

    move-result v0

    return v0
.end method

.method public final A0L()Z
    .locals 1

    .line 48662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0L()Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
