.class public abstract Lcom/facebook/ads/redexgen/X/9g;
.super Lcom/facebook/ads/redexgen/X/Rj;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ri;
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;

.field public static final A0J:I

.field public static final A0K:I

.field public static final A0L:I


# instance fields
.field public A00:Landroid/widget/RelativeLayout;

.field public A01:Lcom/facebook/ads/redexgen/X/MP;

.field public A02:Lcom/facebook/ads/redexgen/X/O7;

.field public A03:Lcom/facebook/ads/redexgen/X/RD;

.field public A04:Lcom/facebook/ads/redexgen/X/Oq;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public final A08:Landroid/graphics/Paint;

.field public final A09:Landroid/graphics/Path;

.field public final A0A:Landroid/graphics/RectF;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0C:Lcom/facebook/ads/redexgen/X/L6;

.field public final A0D:Lcom/facebook/ads/redexgen/X/KS;

.field public final A0E:Lcom/facebook/ads/redexgen/X/KN;

.field public final A0F:Lcom/facebook/ads/redexgen/X/KA;

.field public final A0G:Lcom/facebook/ads/redexgen/X/K0;

.field public final A0H:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 20179
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9g;->A02()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/9g;->A0K:I

    .line 20180
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/9g;->A0L:I

    .line 20181
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/9g;->A0J:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nw;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/RD;)V
    .locals 3

    .line 20182
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rj;-><init>(Lcom/facebook/ads/redexgen/X/Nw;Z)V

    .line 20183
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A09:Landroid/graphics/Path;

    .line 20184
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0A:Landroid/graphics/RectF;

    .line 20185
    new-instance v0, Lcom/facebook/ads/redexgen/X/9l;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9l;-><init>(Lcom/facebook/ads/redexgen/X/9g;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0G:Lcom/facebook/ads/redexgen/X/K0;

    .line 20186
    new-instance v0, Lcom/facebook/ads/redexgen/X/9k;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9k;-><init>(Lcom/facebook/ads/redexgen/X/9g;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0C:Lcom/facebook/ads/redexgen/X/L6;

    .line 20187
    new-instance v0, Lcom/facebook/ads/redexgen/X/9j;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9j;-><init>(Lcom/facebook/ads/redexgen/X/9g;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0E:Lcom/facebook/ads/redexgen/X/KN;

    .line 20188
    new-instance v0, Lcom/facebook/ads/redexgen/X/9i;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9i;-><init>(Lcom/facebook/ads/redexgen/X/9g;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    .line 20189
    new-instance v0, Lcom/facebook/ads/redexgen/X/9h;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9h;-><init>(Lcom/facebook/ads/redexgen/X/9g;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0F:Lcom/facebook/ads/redexgen/X/KA;

    .line 20190
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9g;->A03:Lcom/facebook/ads/redexgen/X/RD;

    .line 20191
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9g;->A0H:Ljava/lang/String;

    .line 20192
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 20193
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9g;->setGravity(I)V

    .line 20194
    sget v1, Lcom/facebook/ads/redexgen/X/9g;->A0K:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/facebook/ads/redexgen/X/9g;->setPadding(IIII)V

    .line 20195
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 20196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9g;->setUpView(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 20197
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A08:Landroid/graphics/Paint;

    .line 20198
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A08:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 20199
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A08:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20200
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A08:Landroid/graphics/Paint;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A08:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge v1, v0, :cond_0

    .line 20203
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/9g;->setLayerType(ILandroid/graphics/Paint;)V

    .line 20204
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9g;)Lcom/facebook/ads/redexgen/X/RD;
    .locals 0

    .line 20205
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9g;->A03:Lcom/facebook/ads/redexgen/X/RD;

    return-object p0
.end method

.method private A01()V
    .locals 1

    .line 20206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A02:Lcom/facebook/ads/redexgen/X/O7;

    if-nez v0, :cond_0

    .line 20207
    return-void

    .line 20208
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

    .line 20209
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A02:Lcom/facebook/ads/redexgen/X/O7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/O7;->A9R()V

    .line 20210
    :cond_3
    return-void
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XgHadHW09EVAxZ9Csjyh8Iwd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cGY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0gnHO0byxZtUV0t5q6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nitlVKI6s75UlUdu4qHy2TBluRJ6Vnqb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dqu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CAnKNEP5j3LNWAO1IgUwk41cBq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Gj8h5dX0pUMTu0Q6FRM85YsFx7LjGw4a"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ydUjPQqek3X4wwrCfoz9Rz5n"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9g;->A0I:[Ljava/lang/String;

    return-void
.end method

.method private A03(Landroid/view/View;)V
    .locals 3

    .line 20211
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20212
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 20213
    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/9g;)V
    .locals 0

    .line 20214
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9g;->A01()V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/9g;Z)Z
    .locals 0

    .line 20215
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9g;->A07:Z

    return p1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/9g;Z)Z
    .locals 0

    .line 20216
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9g;->A06:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 2

    .line 20273
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9g;->setUpImageView(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 20274
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9g;->setUpVideoView(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 20275
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9g;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 20276
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A01:Lcom/facebook/ads/redexgen/X/MP;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 20277
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 20278
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9g;->A0h(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 20279
    return-void
.end method


# virtual methods
.method public A0C()Z
    .locals 1

    .line 20217
    const/4 v0, 0x0

    return v0
.end method

.method public final A0a()Z
    .locals 1

    .line 20218
    const/4 v0, 0x0

    return v0
.end method

.method public final A0c()V
    .locals 1

    .line 20219
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oq;->A01()V

    .line 20221
    :cond_0
    return-void
.end method

.method public final A0d()V
    .locals 5

    .line 20222
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20223
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0e()V

    .line 20224
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    sget-object v3, Lcom/facebook/ads/redexgen/X/PJ;->A03:Lcom/facebook/ads/redexgen/X/PJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9g;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9g;->A0I:[Ljava/lang/String;

    const-string v1, "GrzUS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Oq;->A05(Lcom/facebook/ads/redexgen/X/PJ;)V

    .line 20225
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0e()V
    .locals 5

    .line 20226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A03:Lcom/facebook/ads/redexgen/X/RD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RD;->A0R()Lcom/facebook/ads/redexgen/X/OA;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OA;->getVolume()F

    move-result v4

    .line 20227
    .local p0, "newVolume":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oq;->getVolume()F

    move-result v0

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_0

    .line 20228
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9g;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9g;->A0I:[Ljava/lang/String;

    const-string v1, "cdp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "iOc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Oq;->setVolume(F)V

    .line 20229
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0f()Z
    .locals 4

    .line 20230
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oq;->A06()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9g;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9g;->A0I:[Ljava/lang/String;

    const-string v1, "SbvNib3Q04NWLkmSI4CaBbpy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0g()Z
    .locals 1

    .line 20231
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A05:Z

    return v0
.end method

.method public abstract A0h(Lcom/facebook/ads/redexgen/X/Wm;)V
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

    .line 20232
    .local v2, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oq;->A02()V

    .line 20233
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20234
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0H:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Oq;->A04(Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Ljava/util/Map;)V

    .line 20235
    :cond_0
    return-void
.end method

.method public final getMediaContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .line 20236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/Oq;
    .locals 1

    .line 20237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 20238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A09:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 20239
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9g;->A0A:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20240
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9g;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9g;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/9g;->A0J:I

    int-to-float v2, v0

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 20241
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A09:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A08:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20242
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9g;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/9g;->A0K:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getWidth()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/9g;->A0K:I

    sub-int/2addr v1, v0

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9g;->getHeight()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/9g;->A0K:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v4, v3, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20243
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9g;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9g;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/9g;->A0L:I

    int-to-float v2, v0

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 20244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A09:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 20245
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Rj;->onDraw(Landroid/graphics/Canvas;)V

    .line 20246
    return-void
.end method

.method public setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 20247
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Np;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Np;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 20248
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

    .line 20249
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getCtaButton()Lcom/facebook/ads/redexgen/X/Ry;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0H:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/Ry;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;)V

    .line 20250
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 20251
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A01:Lcom/facebook/ads/redexgen/X/MP;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MP;->setVisibility(I)V

    .line 20252
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->setVisibility(I)V

    .line 20253
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9g;->A01:Lcom/facebook/ads/redexgen/X/MP;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 20254
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A05()Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ri;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Ri;-><init>(Lcom/facebook/ads/redexgen/X/9g;Lcom/facebook/ads/redexgen/X/9l;)V

    .line 20255
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A07(Lcom/facebook/ads/redexgen/X/NW;)Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v0

    .line 20256
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 20257
    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 20258
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9g;->A05:Z

    .line 20259
    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/O7;)V
    .locals 0

    .line 20260
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9g;->A02:Lcom/facebook/ads/redexgen/X/O7;

    .line 20261
    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 20262
    new-instance v0, Lcom/facebook/ads/redexgen/X/MP;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/MP;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A01:Lcom/facebook/ads/redexgen/X/MP;

    .line 20263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A01:Lcom/facebook/ads/redexgen/X/MP;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9g;->A03(Landroid/view/View;)V

    .line 20264
    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 20265
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Landroid/widget/RelativeLayout;

    .line 20266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9g;->A03(Landroid/view/View;)V

    .line 20267
    return-void
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 3

    .line 20268
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9g;->A0H:Ljava/lang/String;

    .line 20269
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 20270
    .local p0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Oq;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Oq;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JK;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    .line 20271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9g;->A03(Landroid/view/View;)V

    .line 20272
    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 20280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oq;->setPlaceholderUrl(Ljava/lang/String;)V

    .line 20281
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 2

    .line 20282
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A01:Lcom/facebook/ads/redexgen/X/MP;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MP;->setVisibility(I)V

    .line 20283
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->setVisibility(I)V

    .line 20284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oq;->setVideoURI(Ljava/lang/String;)V

    .line 20285
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0G:Lcom/facebook/ads/redexgen/X/K0;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20286
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0C:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20287
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0E:Lcom/facebook/ads/redexgen/X/KN;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20288
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20289
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A04:Lcom/facebook/ads/redexgen/X/Oq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A0F:Lcom/facebook/ads/redexgen/X/KA;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oq;->A03(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 20290
    return-void
.end method
