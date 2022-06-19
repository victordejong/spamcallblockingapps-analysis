.class public abstract Lcom/facebook/ads/redexgen/X/9g;
.super Lcom/facebook/ads/redexgen/X/YM;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/YJ;
    }
.end annotation


# static fields
.field public static final A0I:I

.field public static final A0J:I

.field public static final A0K:I


# instance fields
.field public A00:Landroid/widget/RelativeLayout;

.field public A01:Lcom/facebook/ads/redexgen/X/MU;

.field public A02:Lcom/facebook/ads/redexgen/X/OC;

.field public A03:Lcom/facebook/ads/redexgen/X/RH;

.field public A04:Lcom/facebook/ads/redexgen/X/Ov;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public final A08:Landroid/graphics/Paint;

.field public final A09:Landroid/graphics/Path;

.field public final A0A:Landroid/graphics/RectF;

.field public final A0B:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Le;

.field public final A0D:Lcom/facebook/ads/redexgen/X/KW;

.field public final A0E:Lcom/facebook/ads/redexgen/X/KQ;

.field public final A0F:Lcom/facebook/ads/redexgen/X/KL;

.field public final A0G:Lcom/facebook/ads/redexgen/X/K1;

.field public final A0H:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 20053
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/9g;->A0J:I

    .line 20054
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/9g;->A0K:I

    .line 20055
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/9g;->A0I:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/O1;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/RH;)V
    .locals 3

    .line 20056
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YM;-><init>(Lcom/facebook/ads/redexgen/X/O1;Z)V

    .line 20057
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A09:Landroid/graphics/Path;

    .line 20058
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0A:Landroid/graphics/RectF;

    .line 20059
    new-instance v0, Lcom/facebook/ads/redexgen/X/9l;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9l;-><init>(Lcom/facebook/ads/redexgen/X/9g;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0G:Lcom/facebook/ads/redexgen/X/K1;

    .line 20060
    new-instance v0, Lcom/facebook/ads/redexgen/X/9k;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9k;-><init>(Lcom/facebook/ads/redexgen/X/9g;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0C:Lcom/facebook/ads/redexgen/X/Le;

    .line 20061
    new-instance v0, Lcom/facebook/ads/redexgen/X/9j;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9j;-><init>(Lcom/facebook/ads/redexgen/X/9g;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0E:Lcom/facebook/ads/redexgen/X/KQ;

    .line 20062
    new-instance v0, Lcom/facebook/ads/redexgen/X/9i;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9i;-><init>(Lcom/facebook/ads/redexgen/X/9g;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0D:Lcom/facebook/ads/redexgen/X/KW;

    .line 20063
    new-instance v0, Lcom/facebook/ads/redexgen/X/9h;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9h;-><init>(Lcom/facebook/ads/redexgen/X/9g;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0F:Lcom/facebook/ads/redexgen/X/KL;

    .line 20064
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9g;->A03:Lcom/facebook/ads/redexgen/X/RH;

    .line 20065
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9g;->A0H:Ljava/lang/String;

    .line 20066
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0B:Lcom/facebook/ads/redexgen/X/XJ;

    .line 20067
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9g;->setGravity(I)V

    .line 20068
    sget v1, Lcom/facebook/ads/redexgen/X/9g;->A0J:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/facebook/ads/redexgen/X/9g;->setPadding(IIII)V

    .line 20069
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 20070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0B:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9g;->setUpView(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 20071
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A08:Landroid/graphics/Paint;

    .line 20072
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A08:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 20073
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A08:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20074
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A08:Landroid/graphics/Paint;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A08:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20076
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge v1, v0, :cond_0

    .line 20077
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/9g;->setLayerType(ILandroid/graphics/Paint;)V

    .line 20078
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9g;)Lcom/facebook/ads/redexgen/X/RH;
    .locals 0

    .line 20079
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9g;->A03:Lcom/facebook/ads/redexgen/X/RH;

    return-object p0
.end method

.method private A01()V
    .locals 1

    .line 20080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A02:Lcom/facebook/ads/redexgen/X/OC;

    if-nez v0, :cond_0

    .line 20081
    return-void

    .line 20082
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A07:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A06:Z

    if-eqz v0, :cond_3

    .line 20083
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A02:Lcom/facebook/ads/redexgen/X/OC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OC;->A9R()V

    .line 20084
    :cond_3
    return-void
.end method

.method private A02(Landroid/view/View;)V
    .locals 3

    .line 20085
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20086
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 20087
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/9g;)V
    .locals 0

    .line 20088
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9g;->A01()V

    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/9g;Z)Z
    .locals 0

    .line 20089
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9g;->A07:Z

    return p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/9g;Z)Z
    .locals 0

    .line 20090
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9g;->A06:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 2

    .line 20147
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9g;->setUpImageView(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 20148
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9g;->setUpVideoView(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 20149
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9g;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 20150
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A01:Lcom/facebook/ads/redexgen/X/MU;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 20151
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 20152
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9g;->A0h(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 20153
    return-void
.end method


# virtual methods
.method public A0A()Z
    .locals 1

    .line 20091
    const/4 v0, 0x0

    return v0
.end method

.method public final A0a()Z
    .locals 1

    .line 20092
    const/4 v0, 0x0

    return v0
.end method

.method public final A0c()V
    .locals 1

    .line 20093
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ov;->A01()V

    .line 20095
    :cond_0
    return-void
.end method

.method public final A0d()V
    .locals 2

    .line 20096
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20097
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0e()V

    .line 20098
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PO;->A03:Lcom/facebook/ads/redexgen/X/PO;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A05(Lcom/facebook/ads/redexgen/X/PO;)V

    .line 20099
    :cond_0
    return-void
.end method

.method public final A0e()V
    .locals 2

    .line 20100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A03:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A0R()Lcom/facebook/ads/redexgen/X/OF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OF;->getVolume()F

    move-result v1

    .line 20101
    .local p0, "newVolume":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ov;->getVolume()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 20102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ov;->setVolume(F)V

    .line 20103
    :cond_0
    return-void
.end method

.method public final A0f()Z
    .locals 1

    .line 20104
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ov;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0g()Z
    .locals 1

    .line 20105
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A05:Z

    return v0
.end method

.method public abstract A0h(Lcom/facebook/ads/redexgen/X/XJ;)V
.end method

.method public final A0i(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20106
    .local v2, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ov;->A02()V

    .line 20107
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20108
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0H:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Ov;->A04(Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Ljava/util/Map;)V

    .line 20109
    :cond_0
    return-void
.end method

.method public final getMediaContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .line 20110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/Ov;
    .locals 1

    .line 20111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 20112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A09:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 20113
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9g;->A0A:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20114
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9g;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9g;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/9g;->A0I:I

    int-to-float v2, v0

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 20115
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A09:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A08:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20116
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9g;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/9g;->A0J:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getWidth()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/9g;->A0J:I

    sub-int/2addr v1, v0

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getHeight()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/9g;->A0J:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v4, v3, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20117
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9g;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9g;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/9g;->A0K:I

    int-to-float v2, v0

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 20118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A09:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 20119
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/YM;->onDraw(Landroid/graphics/Canvas;)V

    .line 20120
    return-void
.end method

.method public setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 20121
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 20122
    return-void
.end method

.method public setCTAInfo(Lcom/facebook/ads/redexgen/X/1J;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1J;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20123
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getCtaButton()Lcom/facebook/ads/redexgen/X/a7;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0H:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/a7;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;)V

    .line 20124
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 20125
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A01:Lcom/facebook/ads/redexgen/X/MU;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->setVisibility(I)V

    .line 20126
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->setVisibility(I)V

    .line 20127
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9g;->A01:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A0B:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 20128
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aA;->A05()Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/YJ;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/YJ;-><init>(Lcom/facebook/ads/redexgen/X/9g;Lcom/facebook/ads/redexgen/X/9l;)V

    .line 20129
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/aA;->A07(Lcom/facebook/ads/redexgen/X/Nb;)Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v0

    .line 20130
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 20131
    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 20132
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9g;->A05:Z

    .line 20133
    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/OC;)V
    .locals 0

    .line 20134
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9g;->A02:Lcom/facebook/ads/redexgen/X/OC;

    .line 20135
    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 1

    .line 20136
    new-instance v0, Lcom/facebook/ads/redexgen/X/MU;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/MU;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A01:Lcom/facebook/ads/redexgen/X/MU;

    .line 20137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A01:Lcom/facebook/ads/redexgen/X/MU;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9g;->A02(Landroid/view/View;)V

    .line 20138
    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 1

    .line 20139
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Landroid/widget/RelativeLayout;

    .line 20140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9g;->A02(Landroid/view/View;)V

    .line 20141
    return-void
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 3

    .line 20142
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9g;->A0H:Ljava/lang/String;

    .line 20143
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 20144
    .local p0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ov;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Ov;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    .line 20145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9g;->A02(Landroid/view/View;)V

    .line 20146
    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 20154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ov;->setPlaceholderUrl(Ljava/lang/String;)V

    .line 20155
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 2

    .line 20156
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A01:Lcom/facebook/ads/redexgen/X/MU;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->setVisibility(I)V

    .line 20157
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->setVisibility(I)V

    .line 20158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ov;->setVideoURI(Ljava/lang/String;)V

    .line 20159
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0G:Lcom/facebook/ads/redexgen/X/K1;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20160
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0C:Lcom/facebook/ads/redexgen/X/Le;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20161
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0E:Lcom/facebook/ads/redexgen/X/KQ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20162
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0D:Lcom/facebook/ads/redexgen/X/KW;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20163
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Ov;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0F:Lcom/facebook/ads/redexgen/X/KL;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20164
    return-void
.end method
