.class public final Lcom/facebook/ads/redexgen/X/7Z;
.super Lcom/facebook/ads/redexgen/X/MP;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A02:Lcom/facebook/ads/redexgen/X/9G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9G<",
            "Lcom/facebook/ads/redexgen/X/7w;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/9G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9G<",
            "Lcom/facebook/ads/redexgen/X/KU;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7Z;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 3

    .line 16678
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MP;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 16679
    new-instance v0, Lcom/facebook/ads/redexgen/X/IR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/IR;-><init>(Lcom/facebook/ads/redexgen/X/7Z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A03:Lcom/facebook/ads/redexgen/X/9G;

    .line 16680
    new-instance v0, Lcom/facebook/ads/redexgen/X/IK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/IK;-><init>(Lcom/facebook/ads/redexgen/X/7Z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A02:Lcom/facebook/ads/redexgen/X/9G;

    .line 16681
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7Z;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 16682
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    .line 16683
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16684
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    const/high16 v0, -0x1000000

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 16685
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7Z;->addView(Landroid/view/View;)V

    .line 16687
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "t7nWMgaAgPrF08nCpsue0KJ0bXYxildh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6KdtKMmtzfHYFwbGu3Z1Ir1zVfPvm0mZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4a3tRJ2Sc2HJRD7iGLBoGFg5dIAFXATk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UpueiF5Mlf4qFrRwKkN0oaj1wZcm2sVE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2I2trXzlQyfCpDc0SWIB9I9l1xDqUCt2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pVCp6f81Bxfp7pGgyLuO3QWY2ZOI1Rz7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JWrnXr9CYPwxDsxVPLOhiB9OxQPOAEin"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "O346HS8RGmqKBjl58VTWQBGWIRLrpgc9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7Z;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 16688
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/MP;->A07()V

    .line 16689
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16690
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A03:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A02:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16691
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 16692
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16693
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A02:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A03:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A05([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16694
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/MP;->A08()V

    .line 16695
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 16696
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 16697
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16698
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/7Z;->setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nb;)V

    .line 16699
    return-void
.end method

.method public setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nb;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/Nb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16700
    if-nez p1, :cond_0

    .line 16701
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7Z;->setVisibility(I)V

    .line 16702
    return-void

    .line 16703
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7Z;->setVisibility(I)V

    .line 16704
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Z;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 16705
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aA;->A05()Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v0

    .line 16706
    .local p0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/aA;
    if-eqz p2, :cond_1

    .line 16707
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/aA;->A07(Lcom/facebook/ads/redexgen/X/Nb;)Lcom/facebook/ads/redexgen/X/aA;

    .line 16708
    :cond_1
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/7Z;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 16709
    sget-object v2, Lcom/facebook/ads/redexgen/X/7Z;->A04:[Ljava/lang/String;

    const-string v1, "kA5c9xFlh2VnhKEqDnwhhyQ6vC8xp51l"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "v6NK46wFN1tyoiPUrV3jpTAezqYTXUDI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
