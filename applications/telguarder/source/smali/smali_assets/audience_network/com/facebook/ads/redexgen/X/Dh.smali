.class public abstract Lcom/facebook/ads/redexgen/X/Dh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/W7;
.implements Lcom/facebook/ads/redexgen/X/AY;


# static fields
.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/AZ;

.field public A04:Lcom/facebook/ads/redexgen/X/FZ;

.field public A05:Z

.field public A06:Z

.field public A07:[Lcom/facebook/ads/internal/exoplayer2/Format;

.field public final A08:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dh;->A0z()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 28579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28580
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A08:I

    .line 28581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Z

    .line 28582
    return-void
.end method

.method public static A0z()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nMKAkkyGzzsPpeicQ0D8yLGcx7fLAYfh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ad6C1OHrGkr2l9qIqS5YhHgyQAcPaFJD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZE95hVs1hKGrzpBOSFbPP60wlTJ8Xqa0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KY6DVafEIwCNFziZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WxfpwIhaMUAxh7EZgZIZ4XEQsmISGCoV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VPLuaPIEt84gom3Vlgdkj9q0pqDrAUF9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NBjSmZWJXnuiu9qpWME1QBbLrS2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5AgydvZ3t52qiKqEhTHkSK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dh;->A09:[Ljava/lang/String;

    return-void
.end method

.method public static A10(Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z
    .locals 2
    .param p0    # Lcom/facebook/ads/redexgen/X/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "*>;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            ")Z"
        }
    .end annotation

    .line 28583
    .local p1, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<*>;"
    if-nez p1, :cond_0

    .line 28584
    const/4 v0, 0x1

    return v0

    .line 28585
    :cond_0
    if-nez p0, :cond_2

    .line 28586
    const/4 p1, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dh;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object p0, Lcom/facebook/ads/redexgen/X/Dh;->A09:[Ljava/lang/String;

    const-string v1, "2LMLEUu21cTG6k7RsRAFBVOY9qR4VTWU"

    const/4 v0, 0x5

    aput-object v1, p0, v0

    return p1

    .line 28587
    :cond_2
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/C0;->A3u(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    sget-object p0, Lcom/facebook/ads/redexgen/X/Dh;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, p0, v0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object p0, Lcom/facebook/ads/redexgen/X/Dh;->A09:[Ljava/lang/String;

    const-string v1, "lYm1fQvyrc6AK1RmWyYYQBSF2qbZi13I"

    const/4 v0, 0x5

    aput-object v1, p0, v0

    return p1

    :cond_3
    return p1
.end method


# virtual methods
.method public final A11()I
    .locals 1

    .line 28588
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:I

    return v0
.end method

.method public final A12(J)I
    .locals 3

    .line 28589
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A02:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/FZ;->AE3(J)I

    move-result v0

    return v0
.end method

.method public final A13(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;Z)I
    .locals 7

    .line 28590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/FZ;->ACn(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;Z)I

    move-result v6

    .line 28591
    .local p0, "result":I
    const/4 v1, -0x4

    if-ne v6, v1, :cond_2

    .line 28592
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Z

    .line 28594
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x3

    goto :goto_0

    .line 28595
    :cond_1
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A02:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    goto :goto_1

    .line 28596
    :cond_2
    const/4 v0, -0x5

    if-ne v6, v0, :cond_3

    .line 28597
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 28598
    .local p1, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-wide v3, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    .line 28599
    iget-wide v2, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A02:J

    add-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I(J)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 28600
    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 28601
    .end local p1    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_3
    :goto_1
    return v6
.end method

.method public final A14()Lcom/facebook/ads/redexgen/X/AZ;
    .locals 1

    .line 28602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A03:Lcom/facebook/ads/redexgen/X/AZ;

    return-object v0
.end method

.method public A15()V
    .locals 0

    .line 28603
    return-void
.end method

.method public A16()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28604
    return-void
.end method

.method public A17()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28605
    return-void
.end method

.method public A18(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28606
    return-void
.end method

.method public A19(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28607
    return-void
.end method

.method public A1A([Lcom/facebook/ads/internal/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28608
    return-void
.end method

.method public final A1B()Z
    .locals 1

    .line 28609
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/FZ;->A8B()Z

    move-result v0

    goto :goto_0
.end method

.method public final A1C()[Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    .line 28610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A07:[Lcom/facebook/ads/internal/exoplayer2/Format;

    return-object v0
.end method

.method public final A4k()V
    .locals 3

    .line 28611
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 28612
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    .line 28613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    .line 28614
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A07:[Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 28615
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    .line 28616
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A15()V

    .line 28617
    return-void

    .line 28618
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A56(Lcom/facebook/ads/redexgen/X/AZ;[Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FZ;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28619
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 28620
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A03:Lcom/facebook/ads/redexgen/X/AZ;

    .line 28621
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    .line 28622
    invoke-virtual {p0, p6}, Lcom/facebook/ads/redexgen/X/Dh;->A19(Z)V

    .line 28623
    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/facebook/ads/redexgen/X/Dh;->ADE([Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FZ;J)V

    .line 28624
    invoke-virtual {p0, p4, p5, p6}, Lcom/facebook/ads/redexgen/X/Dh;->A18(JZ)V

    .line 28625
    return-void

    .line 28626
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A5q()Lcom/facebook/ads/redexgen/X/AY;
    .locals 0

    .line 28627
    return-object p0
.end method

.method public A6k()Lcom/facebook/ads/redexgen/X/ID;
    .locals 1

    .line 28628
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7H()I
    .locals 1

    .line 28629
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    return v0
.end method

.method public final A7M()Lcom/facebook/ads/redexgen/X/FZ;
    .locals 1

    .line 28630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    return-object v0
.end method

.method public final A7R()I
    .locals 1

    .line 28631
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A08:I

    return v0
.end method

.method public A7a(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28632
    return-void
.end method

.method public final A7e()Z
    .locals 1

    .line 28633
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Z

    return v0
.end method

.method public final A7y()Z
    .locals 1

    .line 28634
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    return v0
.end method

.method public final A94()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/FZ;->A91()V

    .line 28636
    return-void
.end method

.method public final ADE([Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FZ;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28637
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 28638
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    .line 28639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Z

    .line 28640
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A07:[Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 28641
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Dh;->A02:J

    .line 28642
    invoke-virtual {p0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/Dh;->A1A([Lcom/facebook/ads/internal/exoplayer2/Format;J)V

    .line 28643
    return-void
.end method

.method public final ADO(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    .line 28645
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Z

    .line 28646
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A18(JZ)V

    .line 28647
    return-void
.end method

.method public final ADj()V
    .locals 1

    .line 28648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Z

    .line 28649
    return-void
.end method

.method public final ADl(I)V
    .locals 0

    .line 28650
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:I

    .line 28651
    return-void
.end method

.method public AEK()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28652
    const/4 v0, 0x0

    return v0
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28653
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 28654
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    .line 28655
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A16()V

    .line 28656
    return-void

    .line 28657
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28658
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    const/4 v1, 0x1

    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 28659
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:I

    .line 28660
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A17()V

    .line 28661
    return-void

    .line 28662
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
