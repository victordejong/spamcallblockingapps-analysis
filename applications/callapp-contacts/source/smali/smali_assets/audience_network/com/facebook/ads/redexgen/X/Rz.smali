.class public abstract Lcom/facebook/ads/redexgen/X/Rz;
.super Lcom/facebook/ads/redexgen/X/48;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/15;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/48<",
        "Lcom/facebook/ads/redexgen/X/cq;",
        ">;"
    }
.end annotation


# static fields
.field public static final A05:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/15;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cD;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A04:Lcom/facebook/ads/redexgen/X/QD;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 51811
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rz;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1W;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cD;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            ")V"
        }
    .end annotation

    .line 51812
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/48;-><init>()V

    .line 51813
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rx;-><init>(Lcom/facebook/ads/redexgen/X/Rz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A04:Lcom/facebook/ads/redexgen/X/QD;

    .line 51814
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rz;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 51815
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1W;->getChildSpacing()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A02:I

    .line 51816
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:Ljava/util/List;

    .line 51817
    return-void
.end method

.method private A04(I)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 4

    .line 51818
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 51819
    .local p0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Rz;->A02:I

    if-nez p1, :cond_0

    mul-int/lit8 v2, v2, 0x2

    .line 51820
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A02:I

    mul-int/lit8 v1, v0, 0x2

    .line 51821
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 51822
    return-object v3

    .line 51823
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A02:I

    goto :goto_0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Rz;)Lcom/facebook/ads/redexgen/X/15;
    .locals 0

    .line 51824
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/15;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Rz;)Lcom/facebook/ads/redexgen/X/QD;
    .locals 0

    .line 51825
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A04:Lcom/facebook/ads/redexgen/X/QD;

    return-object p0
.end method


# virtual methods
.method public final A0E()I
    .locals 1

    .line 51826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 51827
    check-cast p1, Lcom/facebook/ads/redexgen/X/cq;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rz;->A0I(Lcom/facebook/ads/redexgen/X/cq;I)V

    return-void
.end method

.method public final A0G(Landroid/widget/ImageView;I)V
    .locals 4

    .line 51828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/cD;

    .line 51829
    .local p0, "childAd":Lcom/facebook/ads/redexgen/X/cD;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cD;->A12()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v2

    .line 51830
    .local p1, "coverImage":Lcom/facebook/ads/redexgen/X/JY;
    if-eqz v2, :cond_0

    .line 51831
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 51832
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aA;->A05()Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v1

    .line 51833
    .local p2, "downloadImageTask":Lcom/facebook/ads/redexgen/X/aA;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ry;

    invoke-direct {v0, p0, p2, v3}, Lcom/facebook/ads/redexgen/X/Ry;-><init>(Lcom/facebook/ads/redexgen/X/Rz;ILcom/facebook/ads/redexgen/X/cD;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A07(Lcom/facebook/ads/redexgen/X/Nb;)Lcom/facebook/ads/redexgen/X/aA;

    .line 51834
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/JY;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 51835
    .end local p2    # "downloadImageTask":Lcom/facebook/ads/redexgen/X/aA;
    :cond_0
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/15;)V
    .locals 0

    .line 51836
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/redexgen/X/15;

    .line 51837
    return-void
.end method

.method public A0I(Lcom/facebook/ads/redexgen/X/cq;I)V
    .locals 2

    .line 51838
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cq;->A0m()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v1

    .line 51839
    .local p0, "cardView":Lcom/facebook/ads/internal/api/AdNativeComponentView;
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Rz;->A04(I)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51840
    return-void
.end method
