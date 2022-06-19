.class public final Lcom/facebook/ads/redexgen/X/SI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/MU;
    }
.end annotation


# static fields
.field public static A0B:[B


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/7y;

.field public final A02:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A03:Lcom/facebook/ads/redexgen/X/JC;

.field public final A04:Lcom/facebook/ads/redexgen/X/M7;

.field public final A05:Lcom/facebook/ads/redexgen/X/MU;

.field public final A06:Lcom/facebook/ads/redexgen/X/Oj;

.field public final A07:Lcom/facebook/ads/redexgen/X/L6;

.field public final A08:Lcom/facebook/ads/redexgen/X/KZ;

.field public final A09:Lcom/facebook/ads/redexgen/X/KS;

.field public final A0A:Lcom/facebook/ads/redexgen/X/KN;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SI;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;)V
    .locals 5

    .line 51781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51782
    new-instance v0, Lcom/facebook/ads/redexgen/X/A1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/A1;-><init>(Lcom/facebook/ads/redexgen/X/SI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A0A:Lcom/facebook/ads/redexgen/X/KN;

    .line 51783
    new-instance v0, Lcom/facebook/ads/redexgen/X/9z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9z;-><init>(Lcom/facebook/ads/redexgen/X/SI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A09:Lcom/facebook/ads/redexgen/X/KS;

    .line 51784
    new-instance v0, Lcom/facebook/ads/redexgen/X/9y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9y;-><init>(Lcom/facebook/ads/redexgen/X/SI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A07:Lcom/facebook/ads/redexgen/X/L6;

    .line 51785
    new-instance v0, Lcom/facebook/ads/redexgen/X/9w;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9w;-><init>(Lcom/facebook/ads/redexgen/X/SI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A08:Lcom/facebook/ads/redexgen/X/KZ;

    .line 51786
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SI;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51787
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SI;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 51788
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SI;->A05:Lcom/facebook/ads/redexgen/X/MU;

    .line 51789
    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    .line 51790
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7i;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7i;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0a(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 51791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    .line 51792
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v4

    const/4 v0, 0x4

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SI;->A0A:Lcom/facebook/ads/redexgen/X/KN;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A09:Lcom/facebook/ads/redexgen/X/KS;

    const/4 v2, 0x1

    aput-object v0, v3, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SI;->A07:Lcom/facebook/ads/redexgen/X/L6;

    const/4 v0, 0x2

    aput-object v1, v3, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SI;->A08:Lcom/facebook/ads/redexgen/X/KZ;

    const/4 v0, 0x3

    aput-object v1, v3, v0

    .line 51793
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/9F;->A03([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 51794
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/SI;->A04:Lcom/facebook/ads/redexgen/X/M7;

    .line 51795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Oj;->setIsFullScreen(Z)V

    .line 51796
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->setVolume(F)V

    .line 51797
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51798
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-interface {p4, v0, v1}, Lcom/facebook/ads/redexgen/X/M7;->A3I(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 51800
    new-instance v1, Lcom/facebook/ads/redexgen/X/MA;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/MA;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51801
    .local p1, "closeButton":Lcom/facebook/ads/redexgen/X/MA;
    new-instance v0, Lcom/facebook/ads/redexgen/X/MS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MS;-><init>(Lcom/facebook/ads/redexgen/X/SI;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MA;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51802
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/MA;->getDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3I(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 51803
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/SI;)Lcom/facebook/ads/redexgen/X/M7;
    .locals 0

    .line 51804
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SI;->A04:Lcom/facebook/ads/redexgen/X/M7;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/SI;)Lcom/facebook/ads/redexgen/X/MU;
    .locals 0

    .line 51805
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SI;->A05:Lcom/facebook/ads/redexgen/X/MU;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SI;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x66

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SI;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x38t
        0x39t
        0x22t
        0x3dt
        0x21t
        0x2ct
        0x34t
        0x7at
        0x75t
        0x70t
        0x7ct
        0x77t
        0x6dt
        0x4dt
        0x76t
        0x72t
        0x7ct
        0x77t
        0x14t
        0x12t
        0x4t
        0x2ft
        0x0t
        0x15t
        0x8t
        0x17t
        0x4t
        0x22t
        0x15t
        0x0t
        0x23t
        0x14t
        0x15t
        0x15t
        0xet
        0xft
        0x37t
        0x28t
        0x25t
        0x24t
        0x2et
        0x8t
        0x2ft
        0x35t
        0x24t
        0x33t
        0x32t
        0x35t
        0x28t
        0x35t
        0x20t
        0x2dt
        0x4t
        0x37t
        0x24t
        0x2ft
        0x35t
        0x51t
        0x4et
        0x43t
        0x42t
        0x48t
        0x6bt
        0x48t
        0x40t
        0x40t
        0x42t
        0x55t
        0x74t
        0x6bt
        0x66t
        0x67t
        0x6dt
        0x4ft
        0x52t
        0x46t
        0x67t
        0x78t
        0x75t
        0x74t
        0x7et
        0x42t
        0x74t
        0x74t
        0x7at
        0x45t
        0x78t
        0x7ct
        0x74t
        0x3ft
        0x20t
        0x2dt
        0x2ct
        0x26t
        0x1ct
        0x1bt
        0x5t
    .end array-data
.end method


# virtual methods
.method public final A04(I)V
    .locals 1

    .line 51806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->setVideoProgressReportIntervalMs(I)V

    .line 51807
    return-void
.end method

.method public final A05(Landroid/view/View;)V
    .locals 1

    .line 51808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->setControlsAnchorView(Landroid/view/View;)V

    .line 51809
    return-void
.end method

.method public final A8L(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 10

    .line 51810
    const/16 v2, 0x13

    const/16 v1, 0x12

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51811
    .local p0, "ctaText":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Om;

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Om;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)V

    .line 51813
    .local p1, "ctaButton":Lcom/facebook/ads/redexgen/X/Om;
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51814
    .local p2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    .line 51815
    .local p3, "density":F
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 51816
    .local v2, "margin":I
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51817
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51818
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51819
    new-instance v0, Lcom/facebook/ads/redexgen/X/MT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MT;-><init>(Lcom/facebook/ads/redexgen/X/SI;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Om;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A04:Lcom/facebook/ads/redexgen/X/M7;

    invoke-interface {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/M7;->A3I(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 51821
    .end local p1    # "ctaButton":Lcom/facebook/ads/redexgen/X/Om;
    .end local p2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local p3    # "density":F
    .end local v2    # "margin":I
    :cond_0
    const/4 v3, 0x0

    const/16 v2, 0x4d

    const/16 v1, 0xd

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:I

    .line 51822
    new-instance v4, Lcom/facebook/ads/redexgen/X/7y;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/SI;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/SI;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    .line 51823
    const/16 v2, 0x8

    const/16 v1, 0xb

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51824
    const/16 v2, 0x3a

    const/16 v1, 0xb

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Oj;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/SI;->A01:Lcom/facebook/ads/redexgen/X/7y;

    .line 51825
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    const/16 v2, 0x45

    const/16 v1, 0x8

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Oj;->setVideoMPD(Ljava/lang/String;)V

    .line 51826
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    const/16 v2, 0x5a

    const/16 v1, 0x8

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Oj;->setVideoURI(Ljava/lang/String;)V

    .line 51827
    iget v1, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:I

    if-lez v1, :cond_1

    .line 51828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;->A0W(I)V

    .line 51829
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51830
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PJ;->A05:Lcom/facebook/ads/redexgen/X/PJ;

    const/16 v0, 0x11

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0Z(Lcom/facebook/ads/redexgen/X/PJ;I)V

    .line 51831
    :cond_2
    return-void
.end method

.method public final AB2(Z)V
    .locals 5

    .line 51832
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SI;->A04:Lcom/facebook/ads/redexgen/X/M7;

    new-instance v3, Lcom/facebook/ads/redexgen/X/KY;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/KY;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/M7;->A3q(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 51833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0U()V

    .line 51834
    return-void
.end method

.method public final ABR(Z)V
    .locals 5

    .line 51835
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SI;->A04:Lcom/facebook/ads/redexgen/X/M7;

    new-instance v3, Lcom/facebook/ads/redexgen/X/KW;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/KW;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/M7;->A3q(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 51836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51837
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PJ;->A05:Lcom/facebook/ads/redexgen/X/PJ;

    const/16 v0, 0x12

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0Z(Lcom/facebook/ads/redexgen/X/PJ;I)V

    .line 51838
    :cond_0
    return-void
.end method

.method public final ADU(Landroid/os/Bundle;)V
    .locals 0

    .line 51839
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 51840
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SI;->A04:Lcom/facebook/ads/redexgen/X/M7;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/SI;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    .line 51841
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getCurrentPositionInMillis()I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/K8;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/K8;-><init>(II)V

    .line 51842
    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SI;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/M7;->A3q(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 51843
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SI;->A01:Lcom/facebook/ads/redexgen/X/7y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getCurrentPositionInMillis()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0e(I)V

    .line 51844
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0X(I)V

    .line 51845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SI;->A06:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0T()V

    .line 51846
    return-void
.end method
