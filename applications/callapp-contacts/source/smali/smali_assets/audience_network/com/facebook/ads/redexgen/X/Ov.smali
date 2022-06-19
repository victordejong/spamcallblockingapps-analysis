.class public final Lcom/facebook/ads/redexgen/X/Ov;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A07:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/AM;

.field public A01:Lcom/facebook/ads/redexgen/X/7y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/IS;

.field public A03:Lcom/facebook/ads/redexgen/X/7Z;

.field public A04:Lcom/facebook/ads/redexgen/X/7L;

.field public final A05:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A06:Lcom/facebook/ads/redexgen/X/JJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47255
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ov;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JJ;)V
    .locals 0

    .line 47256
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47257
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ov;->A06:Lcom/facebook/ads/redexgen/X/JJ;

    .line 47258
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 47259
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ov;->setUpView(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 47260
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ov;)Lcom/facebook/ads/redexgen/X/7L;
    .locals 0

    .line 47261
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A04:Lcom/facebook/ads/redexgen/X/7L;

    return-object p0
.end method

.method private setUpPlugins(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 5

    .line 47280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->A0U()V

    .line 47281
    new-instance v0, Lcom/facebook/ads/redexgen/X/7Z;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7Z;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A03:Lcom/facebook/ads/redexgen/X/7Z;

    .line 47282
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A03:Lcom/facebook/ads/redexgen/X/7Z;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Z(Lcom/facebook/ads/redexgen/X/PP;)V

    .line 47283
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A06:Lcom/facebook/ads/redexgen/X/JJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IS;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/IS;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A02:Lcom/facebook/ads/redexgen/X/IS;

    .line 47284
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7i;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7i;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Z(Lcom/facebook/ads/redexgen/X/PP;)V

    .line 47285
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A02:Lcom/facebook/ads/redexgen/X/IS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Z(Lcom/facebook/ads/redexgen/X/PP;)V

    .line 47286
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A06:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v4, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7L;

    invoke-direct {v0, p1, v4, v1}, Lcom/facebook/ads/redexgen/X/7L;-><init>(Lcom/facebook/ads/redexgen/X/XJ;ZLcom/facebook/ads/redexgen/X/JJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A04:Lcom/facebook/ads/redexgen/X/7L;

    .line 47287
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A04:Lcom/facebook/ads/redexgen/X/7L;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Z(Lcom/facebook/ads/redexgen/X/PP;)V

    .line 47288
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ov;->A04:Lcom/facebook/ads/redexgen/X/7L;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pb;->A03:Lcom/facebook/ads/redexgen/X/Pb;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ia;

    invoke-direct {v0, v2, v1, v4, v4}, Lcom/facebook/ads/redexgen/X/Ia;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Pb;ZZ)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Z(Lcom/facebook/ads/redexgen/X/PP;)V

    .line 47289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->A0d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47290
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J4;->A1l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47291
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J4;->A1r(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47292
    return-void

    .line 47293
    :cond_0
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47294
    .local p0, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47295
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47296
    sget v0, Lcom/facebook/ads/redexgen/X/Ov;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 47297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A02:Lcom/facebook/ads/redexgen/X/IS;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47298
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A02:Lcom/facebook/ads/redexgen/X/IS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AM;->addView(Landroid/view/View;)V

    .line 47299
    return-void
.end method

.method private setUpVideo(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 4

    .line 47300
    new-instance v0, Lcom/facebook/ads/redexgen/X/AM;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/AM;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    .line 47301
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/PD;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 47303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ov;->addView(Landroid/view/View;)V

    .line 47304
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ou;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ou;-><init>(Lcom/facebook/ads/redexgen/X/Ov;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ov;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47305
    return-void
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 0

    .line 47306
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ov;->setUpVideo(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 47307
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ov;->setUpPlugins(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 47308
    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 3

    .line 47262
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    const/4 v1, 0x1

    const/16 v0, 0xa

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0b(ZI)V

    .line 47263
    return-void
.end method

.method public final A02()V
    .locals 1

    .line 47264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A01:Lcom/facebook/ads/redexgen/X/7y;

    if-eqz v0, :cond_0

    .line 47265
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7y;->A0h()V

    .line 47266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A01:Lcom/facebook/ads/redexgen/X/7y;

    .line 47267
    :cond_0
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/9G;)V
    .locals 1

    .line 47268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9F;->A06(Lcom/facebook/ads/redexgen/X/9G;)Z

    .line 47269
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47270
    .local v5, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ov;->A02()V

    .line 47271
    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    move-object v4, p2

    move-object v5, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A01:Lcom/facebook/ads/redexgen/X/7y;

    .line 47272
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/PO;)V
    .locals 2

    .line 47273
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    const/16 v0, 0xd

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Y(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 47274
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 47275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->A0h()Z

    move-result v0

    return v0
.end method

.method public getSimpleVideoView()Lcom/facebook/ads/redexgen/X/PD;
    .locals 1

    .line 47276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 47277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getVolume()F

    move-result v0

    return v0
.end method

.method public setPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 47278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A03:Lcom/facebook/ads/redexgen/X/7Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7Z;->setImage(Ljava/lang/String;)V

    .line 47279
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1

    .line 47309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PD;->setVideoURI(Ljava/lang/String;)V

    .line 47310
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 47311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Lcom/facebook/ads/redexgen/X/AM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PD;->setVolume(F)V

    .line 47312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ov;->A02:Lcom/facebook/ads/redexgen/X/IS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IS;->A0A()V

    .line 47313
    return-void
.end method
