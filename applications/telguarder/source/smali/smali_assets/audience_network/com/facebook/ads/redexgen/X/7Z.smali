.class public final Lcom/facebook/ads/redexgen/X/7Z;
.super Lcom/facebook/ads/redexgen/X/Lg;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Lcom/facebook/ads/redexgen/X/Wm;

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
            "Lcom/facebook/ads/redexgen/X/KP;",
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

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 3

    .line 16780
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Lg;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 16781
    new-instance v0, Lcom/facebook/ads/redexgen/X/IJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/IJ;-><init>(Lcom/facebook/ads/redexgen/X/7Z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A03:Lcom/facebook/ads/redexgen/X/9G;

    .line 16782
    new-instance v0, Lcom/facebook/ads/redexgen/X/IB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/IB;-><init>(Lcom/facebook/ads/redexgen/X/7Z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A02:Lcom/facebook/ads/redexgen/X/9G;

    .line 16783
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7Z;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 16784
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    .line 16785
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16786
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    const/high16 v0, -0x1000000

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 16787
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7Z;->addView(Landroid/view/View;)V

    .line 16789
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hk0dnqphYZ0B2FA2HHbeoaEOUC9cHUBv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tTD1hmxYdA3U5n9t8Z20NsAIS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BfpeWRttIDT9n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BdF5VvNpfNEd8dAFz8yBB3tju8j2QPKu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "opIRFI8OjkHX6xnIsWRzCqWD0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Ob0oYr4gU4dgC4EVWukqT8XlG8BtSCcB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HPuRIIJ62FmEL4YF0ip1f4WrSa12U9bK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7SB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7Z;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 16790
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Lg;->A07()V

    .line 16791
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16792
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v4

    const/4 v0, 0x2

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/7Z;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/7Z;->A04:[Ljava/lang/String;

    const-string v1, "Nqq"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "4efeQvUmAeHBj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A03:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v3, v5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A02:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v3, v1

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/9F;->A03([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16793
    :cond_1
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 16794
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16795
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lg;->getVideoView()Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A02:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7Z;->A03:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16796
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Lg;->A08()V

    .line 16797
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 16798
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 16799
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16800
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/7Z;->setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NW;)V

    .line 16801
    return-void
.end method

.method public setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NW;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/NW;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16802
    if-nez p1, :cond_0

    .line 16803
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7Z;->setVisibility(I)V

    .line 16804
    return-void

    .line 16805
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7Z;->setVisibility(I)V

    .line 16806
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7Z;->A00:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Z;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 16807
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A05()Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v0

    .line 16808
    .local p0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Rz;
    if-eqz p2, :cond_1

    .line 16809
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Rz;->A07(Lcom/facebook/ads/redexgen/X/NW;)Lcom/facebook/ads/redexgen/X/Rz;

    .line 16810
    :cond_1
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 16811
    return-void
.end method
