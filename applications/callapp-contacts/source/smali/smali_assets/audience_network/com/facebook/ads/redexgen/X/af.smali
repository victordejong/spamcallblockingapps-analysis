.class public final Lcom/facebook/ads/redexgen/X/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/MZ;
    }
.end annotation


# static fields
.field public static A0B:[B


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/7y;

.field public final A02:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A03:Lcom/facebook/ads/redexgen/X/JC;

.field public final A04:Lcom/facebook/ads/redexgen/X/M9;

.field public final A05:Lcom/facebook/ads/redexgen/X/MZ;

.field public final A06:Lcom/facebook/ads/redexgen/X/PD;

.field public final A07:Lcom/facebook/ads/redexgen/X/Le;

.field public final A08:Lcom/facebook/ads/redexgen/X/L4;

.field public final A09:Lcom/facebook/ads/redexgen/X/KW;

.field public final A0A:Lcom/facebook/ads/redexgen/X/KQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/af;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/MZ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;)V
    .locals 5

    .line 68043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68044
    new-instance v0, Lcom/facebook/ads/redexgen/X/A1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/A1;-><init>(Lcom/facebook/ads/redexgen/X/af;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A0A:Lcom/facebook/ads/redexgen/X/KQ;

    .line 68045
    new-instance v0, Lcom/facebook/ads/redexgen/X/9z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9z;-><init>(Lcom/facebook/ads/redexgen/X/af;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A09:Lcom/facebook/ads/redexgen/X/KW;

    .line 68046
    new-instance v0, Lcom/facebook/ads/redexgen/X/9y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9y;-><init>(Lcom/facebook/ads/redexgen/X/af;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A07:Lcom/facebook/ads/redexgen/X/Le;

    .line 68047
    new-instance v0, Lcom/facebook/ads/redexgen/X/9w;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9w;-><init>(Lcom/facebook/ads/redexgen/X/af;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A08:Lcom/facebook/ads/redexgen/X/L4;

    .line 68048
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/af;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    .line 68049
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/af;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 68050
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/af;->A05:Lcom/facebook/ads/redexgen/X/MZ;

    .line 68051
    new-instance v0, Lcom/facebook/ads/redexgen/X/PD;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/PD;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    .line 68052
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7i;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7i;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Z(Lcom/facebook/ads/redexgen/X/PP;)V

    .line 68053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    .line 68054
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v4

    const/4 v0, 0x4

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/af;->A0A:Lcom/facebook/ads/redexgen/X/KQ;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A09:Lcom/facebook/ads/redexgen/X/KW;

    const/4 v2, 0x1

    aput-object v0, v3, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/af;->A07:Lcom/facebook/ads/redexgen/X/Le;

    const/4 v0, 0x2

    aput-object v1, v3, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/af;->A08:Lcom/facebook/ads/redexgen/X/L4;

    const/4 v0, 0x3

    aput-object v1, v3, v0

    .line 68055
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 68056
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/af;->A04:Lcom/facebook/ads/redexgen/X/M9;

    .line 68057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/PD;->setIsFullScreen(Z)V

    .line 68058
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->setVolume(F)V

    .line 68059
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68060
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    invoke-interface {p4, v0, v1}, Lcom/facebook/ads/redexgen/X/M9;->A3M(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 68062
    new-instance v1, Lcom/facebook/ads/redexgen/X/MC;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/MC;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 68063
    .local p1, "closeButton":Lcom/facebook/ads/redexgen/X/MC;
    new-instance v0, Lcom/facebook/ads/redexgen/X/MX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MX;-><init>(Lcom/facebook/ads/redexgen/X/af;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MC;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68064
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/MC;->getDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3M(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 68065
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/af;)Lcom/facebook/ads/redexgen/X/M9;
    .locals 0

    .line 68066
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/af;->A04:Lcom/facebook/ads/redexgen/X/M9;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/af;)Lcom/facebook/ads/redexgen/X/MZ;
    .locals 0

    .line 68067
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/af;->A05:Lcom/facebook/ads/redexgen/X/MZ;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/af;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x26

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/af;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x31t
        -0x1dt
        -0x1et
        -0x23t
        -0x22t
        -0x26t
        -0x31t
        -0x19t
        -0x11t
        -0x8t
        -0xbt
        -0xft
        -0x6t
        0x0t
        -0x20t
        -0x5t
        -0x9t
        -0xft
        -0x6t
        -0x44t
        -0x46t
        -0x54t
        -0x6bt
        -0x58t
        -0x45t
        -0x50t
        -0x43t
        -0x54t
        -0x76t
        -0x45t
        -0x58t
        -0x77t
        -0x44t
        -0x45t
        -0x45t
        -0x4at
        -0x4bt
        -0x49t
        -0x56t
        -0x5bt
        -0x5at
        -0x50t
        -0x76t
        -0x51t
        -0x4bt
        -0x5at
        -0x4dt
        -0x4ct
        -0x4bt
        -0x56t
        -0x4bt
        -0x5et
        -0x53t
        -0x7at
        -0x49t
        -0x5at
        -0x51t
        -0x4bt
        -0x63t
        -0x70t
        -0x75t
        -0x74t
        -0x6at
        0x73t
        -0x6at
        -0x72t
        -0x72t
        -0x74t
        -0x67t
        -0x2t
        -0xft
        -0x14t
        -0x13t
        -0x9t
        -0x2bt
        -0x28t
        -0x34t
        0x18t
        0xbt
        0x6t
        0x7t
        0x11t
        -0xbt
        0x7t
        0x7t
        0xdt
        -0xat
        0xbt
        0xft
        0x7t
        -0x42t
        -0x4ft
        -0x54t
        -0x53t
        -0x49t
        -0x63t
        -0x66t
        -0x6ct
    .end array-data
.end method


# virtual methods
.method public final A04(I)V
    .locals 1

    .line 68068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PD;->setVideoProgressReportIntervalMs(I)V

    .line 68069
    return-void
.end method

.method public final A05(Landroid/view/View;)V
    .locals 1

    .line 68070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PD;->setControlsAnchorView(Landroid/view/View;)V

    .line 68071
    return-void
.end method

.method public final A8J(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 10

    .line 68072
    const/16 v2, 0x13

    const/16 v1, 0x12

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68073
    .local p0, "ctaText":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Or;

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Or;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;)V

    .line 68075
    .local p1, "ctaButton":Lcom/facebook/ads/redexgen/X/Or;
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68076
    .local p2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    .line 68077
    .local p3, "density":F
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 68078
    .local v2, "margin":I
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 68079
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68080
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68081
    new-instance v0, Lcom/facebook/ads/redexgen/X/MY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MY;-><init>(Lcom/facebook/ads/redexgen/X/af;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Or;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A04:Lcom/facebook/ads/redexgen/X/M9;

    invoke-interface {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/M9;->A3M(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 68083
    .end local p1    # "ctaButton":Lcom/facebook/ads/redexgen/X/Or;
    .end local p2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local p3    # "density":F
    .end local v2    # "margin":I
    :cond_0
    const/4 v3, 0x0

    const/16 v2, 0x4d

    const/16 v1, 0xd

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/af;->A00:I

    .line 68084
    new-instance v4, Lcom/facebook/ads/redexgen/X/7y;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/af;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/af;->A03:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    .line 68085
    const/16 v2, 0x8

    const/16 v1, 0xb

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 68086
    const/16 v2, 0x3a

    const/16 v1, 0xb

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/af;->A01:Lcom/facebook/ads/redexgen/X/7y;

    .line 68087
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    const/16 v2, 0x45

    const/16 v1, 0x8

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/PD;->setVideoMPD(Ljava/lang/String;)V

    .line 68088
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    const/16 v2, 0x5a

    const/16 v1, 0x8

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/PD;->setVideoURI(Ljava/lang/String;)V

    .line 68089
    iget v1, p0, Lcom/facebook/ads/redexgen/X/af;->A00:I

    if-lez v1, :cond_1

    .line 68090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/PD;->A0V(I)V

    .line 68091
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68092
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/redexgen/X/PO;

    const/16 v0, 0x11

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Y(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 68093
    :cond_2
    return-void
.end method

.method public final AB2(Z)V
    .locals 5

    .line 68094
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/af;->A04:Lcom/facebook/ads/redexgen/X/M9;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Kj;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Kj;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/M9;->A3u(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 68095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->A0T()V

    .line 68096
    return-void
.end method

.method public final ABR(Z)V
    .locals 5

    .line 68097
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/af;->A04:Lcom/facebook/ads/redexgen/X/M9;

    new-instance v3, Lcom/facebook/ads/redexgen/X/KX;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/KX;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/M9;->A3u(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 68098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->A0g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68099
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/redexgen/X/PO;

    const/16 v0, 0x12

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Y(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 68100
    :cond_0
    return-void
.end method

.method public final ADT(Landroid/os/Bundle;)V
    .locals 0

    .line 68101
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 68102
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/af;->A04:Lcom/facebook/ads/redexgen/X/M9;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/af;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    .line 68103
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getCurrentPositionInMillis()I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/K8;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/K8;-><init>(II)V

    .line 68104
    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/M9;->A3u(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 68105
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/af;->A01:Lcom/facebook/ads/redexgen/X/7y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getCurrentPositionInMillis()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0e(I)V

    .line 68106
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0W(I)V

    .line 68107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/af;->A06:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->A0S()V

    .line 68108
    return-void
.end method
