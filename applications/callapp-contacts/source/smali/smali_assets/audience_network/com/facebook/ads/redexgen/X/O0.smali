.class public final Lcom/facebook/ads/redexgen/X/O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/O1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterstitialLayoutParamsBuilder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/cD;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/M4;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/IB;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A06:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/16;

.field public final A08:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A09:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0A:Lcom/facebook/ads/redexgen/X/La;

.field public final A0B:Lcom/facebook/ads/redexgen/X/M9;

.field public final A0C:Lcom/facebook/ads/redexgen/X/QE;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V
    .locals 1
    .param p5    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46067
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A01:I

    .line 46068
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A00:I

    .line 46069
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O0;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    .line 46070
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/O0;->A09:Lcom/facebook/ads/redexgen/X/JC;

    .line 46071
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/O0;->A0B:Lcom/facebook/ads/redexgen/X/M9;

    .line 46072
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/O0;->A07:Lcom/facebook/ads/redexgen/X/16;

    .line 46073
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/O0;->A06:Landroid/view/View;

    .line 46074
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/O0;->A0C:Lcom/facebook/ads/redexgen/X/QE;

    .line 46075
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/O0;->A0A:Lcom/facebook/ads/redexgen/X/La;

    .line 46076
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/O0;)I
    .locals 0

    .line 46077
    iget p0, p0, Lcom/facebook/ads/redexgen/X/O0;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/O0;)I
    .locals 0

    .line 46078
    iget p0, p0, Lcom/facebook/ads/redexgen/X/O0;->A00:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/O0;)Landroid/view/View;
    .locals 0

    .line 46079
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O0;->A02:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/O0;)Landroid/view/View;
    .locals 0

    .line 46080
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O0;->A06:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/O0;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 46081
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O0;->A07:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/O0;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 46082
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O0;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/O0;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 46083
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O0;->A09:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/O0;)Lcom/facebook/ads/redexgen/X/cD;
    .locals 0

    .line 46084
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O0;->A03:Lcom/facebook/ads/redexgen/X/cD;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/O0;)Lcom/facebook/ads/redexgen/X/La;
    .locals 0

    .line 46085
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O0;->A0A:Lcom/facebook/ads/redexgen/X/La;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/O0;)Lcom/facebook/ads/redexgen/X/M4;
    .locals 0

    .line 46086
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O0;->A04:Lcom/facebook/ads/redexgen/X/M4;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/O0;)Lcom/facebook/ads/redexgen/X/M9;
    .locals 0

    .line 46087
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O0;->A0B:Lcom/facebook/ads/redexgen/X/M9;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/O0;)Lcom/facebook/ads/redexgen/X/IB;
    .locals 0

    .line 46088
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O0;->A05:Lcom/facebook/ads/redexgen/X/IB;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/O0;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 0

    .line 46089
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O0;->A0C:Lcom/facebook/ads/redexgen/X/QE;

    return-object p0
.end method


# virtual methods
.method public final A0D(I)Lcom/facebook/ads/redexgen/X/O0;
    .locals 0

    .line 46090
    iput p1, p0, Lcom/facebook/ads/redexgen/X/O0;->A00:I

    .line 46091
    return-object p0
.end method

.method public final A0E(I)Lcom/facebook/ads/redexgen/X/O0;
    .locals 0

    .line 46092
    iput p1, p0, Lcom/facebook/ads/redexgen/X/O0;->A01:I

    .line 46093
    return-object p0
.end method

.method public final A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/O0;
    .locals 0

    .line 46094
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O0;->A02:Landroid/view/View;

    .line 46095
    return-object p0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/O0;
    .locals 0

    .line 46096
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O0;->A03:Lcom/facebook/ads/redexgen/X/cD;

    .line 46097
    return-object p0
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/M4;)Lcom/facebook/ads/redexgen/X/O0;
    .locals 0

    .line 46098
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O0;->A04:Lcom/facebook/ads/redexgen/X/M4;

    .line 46099
    return-object p0
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/IB;)Lcom/facebook/ads/redexgen/X/O0;
    .locals 0

    .line 46100
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O0;->A05:Lcom/facebook/ads/redexgen/X/IB;

    .line 46101
    return-object p0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/O1;
    .locals 2

    .line 46102
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/O1;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/O1;-><init>(Lcom/facebook/ads/redexgen/X/O0;Lcom/facebook/ads/redexgen/X/Nz;)V

    return-object v0
.end method
