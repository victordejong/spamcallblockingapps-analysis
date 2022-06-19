.class public final Lcom/facebook/ads/redexgen/X/SF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Mg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Me;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Me;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SF;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SF;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Me;)V
    .locals 0

    .line 51708
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SF;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x11

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

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SF;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0xdt
        0xft
        0x4ct
        0x4t
        0x3t
        0x1t
        0x7t
        0x0t
        0xdt
        0xdt
        0x9t
        0x4ct
        0x3t
        0x6t
        0x11t
        0x4ct
        0x3t
        0x6t
        0x10t
        0x7t
        0x12t
        0xdt
        0x10t
        0x16t
        0xbt
        0xct
        0x5t
        0x4ct
        0x24t
        0x2bt
        0x2ct
        0x2bt
        0x31t
        0x2at
        0x3dt
        0x23t
        0x26t
        0x3dt
        0x30t
        0x27t
        0x32t
        0x2dt
        0x30t
        0x36t
        0x2bt
        0x2ct
        0x25t
        0x3dt
        0x24t
        0x2et
        0x2dt
        0x35t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8F1ylXiPLmOJlxHuSB0OfTD8ERnub0Jc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S6BOYeNFrgFu99vNdASrFyo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dJPilyeR7SZ6Rr21hdX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "myhsKKLHgmC4nogMMn1nxIO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jSXY2xjzyKT8sDO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "m4o2VQ2UIP9pfbMg6FrqdCCZlyPN5tpn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ArrKoNW9WxnAbKv8I1vfh8MoVmXkp7wv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MU6Xe0UyfSgNRnTq3TqZG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SF;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A3z()V
    .locals 4

    .line 51709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A07(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A07(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x35

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    .line 51711
    :cond_0
    return-void
.end method

.method public final A40()V
    .locals 2

    .line 51712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Me;->A0M()V

    .line 51713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A08(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A08(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->ABR(Z)V

    .line 51715
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A0G(Lcom/facebook/ads/redexgen/X/Me;)V

    .line 51716
    return-void
.end method

.method public final A7U()V
    .locals 5

    .line 51717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A05(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51718
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SF;->A40()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/SF;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_0

    .line 51719
    sget-object v2, Lcom/facebook/ads/redexgen/X/SF;->A02:[Ljava/lang/String;

    const-string v1, "E4Sw3glaT0j7tztglKcmJ4X"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "i6sG1P4DTWmVPFfNkRQLKmp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51720
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A01(Lcom/facebook/ads/redexgen/X/Me;)I

    .line 51721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A05(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2B;->A02()Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v0

    if-nez v0, :cond_3

    .line 51722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A0F(Lcom/facebook/ads/redexgen/X/Me;)V

    .line 51723
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    .line 51724
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A06(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51725
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    const/16 v1, 0x80

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Me;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 51726
    :cond_2
    return-void

    .line 51727
    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Me;->A05(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/SF;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/SF;->A02:[Ljava/lang/String;

    const-string v1, "INFlSY3hMh2PzUDbq0dGz0F"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "HzdMOFaNJmeC7SCfZ9pfkiD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/2B;->A02()Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Me;->A0H(Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/2B;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/SF;->A02:[Ljava/lang/String;

    const-string v1, "z9yYgUlQPv8m5YvZTPOnZi9Yl33249VB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/2B;->A02()Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Me;->A0H(Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/2B;)V

    goto :goto_0
.end method

.method public final A8I()V
    .locals 4

    .line 51728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    .line 51729
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A06(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0C(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v0

    .line 51730
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51731
    new-instance v3, Lcom/facebook/ads/redexgen/X/L0;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/L0;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    .line 51732
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A06(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    .line 51733
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A06(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0C(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    .line 51734
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A09(Lcom/facebook/ads/redexgen/X/Me;)Ljava/lang/String;

    move-result-object v0

    .line 51735
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A09(Lcom/facebook/ads/redexgen/X/L0;Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;Ljava/lang/String;)V

    .line 51736
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A04(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/2A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2A;->A04()V

    .line 51737
    return-void
.end method

.method public final A8J()V
    .locals 4

    .line 51738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Me;->A0M()V

    .line 51739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A08(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A08(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->ABR(Z)V

    .line 51741
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A06(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A06(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51742
    new-instance v3, Lcom/facebook/ads/redexgen/X/L0;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/L0;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    .line 51743
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A06(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    .line 51744
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A06(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A06(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    .line 51745
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A09(Lcom/facebook/ads/redexgen/X/Me;)Ljava/lang/String;

    move-result-object v0

    .line 51746
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A09(Lcom/facebook/ads/redexgen/X/L0;Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;Ljava/lang/String;)V

    .line 51747
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A04(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/2A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2A;->A06()V

    .line 51748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A0G(Lcom/facebook/ads/redexgen/X/Me;)V

    .line 51749
    return-void
.end method

.method public final AAp(Lcom/facebook/ads/redexgen/X/29;)V
    .locals 5

    .line 51750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A00(Lcom/facebook/ads/redexgen/X/Me;)I

    .line 51751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Me;->A03(Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/29;)Lcom/facebook/ads/redexgen/X/29;

    .line 51752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A02(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/29;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A03:Lcom/facebook/ads/redexgen/X/29;

    if-ne v1, v0, :cond_0

    .line 51753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A06(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A03(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v4

    .line 51754
    .local p0, "menuItem":Lcom/facebook/ads/redexgen/X/2B;
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    sget-object v2, Lcom/facebook/ads/redexgen/X/SF;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/SF;->A02:[Ljava/lang/String;

    const-string v1, "uGU0gkKbqe2rkd9hIKZj6BU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Cw3GzUJKwEhWx9AKZcDfceI"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/Me;->A0H(Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/2B;)V

    .line 51755
    return-void

    .line 51756
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    sget-object v1, Lcom/facebook/ads/redexgen/X/SF;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/SF;->A02:[Ljava/lang/String;

    const-string v1, "aVWWA7RlXQ4WxwD1lKH3adLgfY6YTeho"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "uW2I9G42iXHj1OU85KkNtz4HKFKkrOfh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Me;->A06(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A04(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Me;->A06(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A04(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v4

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AAy(Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 4

    .line 51757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A00(Lcom/facebook/ads/redexgen/X/Me;)I

    .line 51758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Me;->A04(Lcom/facebook/ads/redexgen/X/Me;)Lcom/facebook/ads/redexgen/X/2A;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2B;->A01()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2A;->A07(I)V

    .line 51759
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2B;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Me;->A0I(Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/2B;)V

    .line 51761
    :goto_0
    return-void

    .line 51762
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/Me;

    sget-object v2, Lcom/facebook/ads/redexgen/X/SF;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/SF;->A02:[Ljava/lang/String;

    const-string v1, "wullz3k0Ma2cYDBinBI95xBWIfHYuzlI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "wkJ6jlNGXVBBqnzofRVuEUhlZdNAnE5y"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/Me;->A0H(Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/2B;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
