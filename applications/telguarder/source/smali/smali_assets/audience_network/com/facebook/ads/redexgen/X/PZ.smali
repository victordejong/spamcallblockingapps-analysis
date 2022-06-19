.class public final Lcom/facebook/ads/redexgen/X/PZ;
.super Lcom/facebook/ads/redexgen/X/4c;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Q8;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Q9;

.field public A02:Lcom/facebook/ads/redexgen/X/Q9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:Landroid/util/SparseBooleanArray;

.field public final A08:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A09:Lcom/facebook/ads/redexgen/X/9g;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9g;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/Q9;IIIILcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 48399
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;-><init>(Landroid/view/View;)V

    .line 48400
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/PZ;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    .line 48401
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/9g;

    .line 48402
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PZ;->A07:Landroid/util/SparseBooleanArray;

    .line 48403
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/PZ;->A01:Lcom/facebook/ads/redexgen/X/Q9;

    .line 48404
    iput p4, p0, Lcom/facebook/ads/redexgen/X/PZ;->A03:I

    .line 48405
    iput p5, p0, Lcom/facebook/ads/redexgen/X/PZ;->A04:I

    .line 48406
    iput p6, p0, Lcom/facebook/ads/redexgen/X/PZ;->A05:I

    .line 48407
    iput p7, p0, Lcom/facebook/ads/redexgen/X/PZ;->A06:I

    .line 48408
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/PZ;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 48409
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A07:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/PZ;)Lcom/facebook/ads/redexgen/X/Q9;
    .locals 0

    .line 48410
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A01:Lcom/facebook/ads/redexgen/X/Q9;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/PZ;)Lcom/facebook/ads/redexgen/X/Q9;
    .locals 0

    .line 48411
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    return-object p0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Lc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Oo;)V
    .locals 9

    .line 48412
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A07:Landroid/util/SparseBooleanArray;

    move-object v5, p4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Oo;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48413
    return-void

    .line 48414
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    if-eqz v0, :cond_1

    .line 48415
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0W()V

    .line 48416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    .line 48417
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Oo;->A04()Ljava/util/Map;

    move-result-object v7

    .line 48418
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/QC;

    move-object v3, p0

    move-object v4, p3

    move-object v8, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/QC;-><init>(Lcom/facebook/ads/redexgen/X/PZ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Oo;Lcom/facebook/ads/redexgen/X/JC;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Lc;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/PZ;->A00:Lcom/facebook/ads/redexgen/X/Q8;

    .line 48419
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/9g;

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A00:Lcom/facebook/ads/redexgen/X/Q8;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Q9;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Q9;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    .line 48420
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0Z(Z)V

    .line 48421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0X(I)V

    .line 48422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0Y(I)V

    .line 48423
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/9g;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pa;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Pa;-><init>(Lcom/facebook/ads/redexgen/X/PZ;Lcom/facebook/ads/redexgen/X/Oo;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9g;->setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/O7;)V

    .line 48424
    return-void
.end method


# virtual methods
.method public final A0m(Lcom/facebook/ads/redexgen/X/Oo;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/Lc;Ljava/lang/String;)V
    .locals 5

    .line 48425
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oo;->A02()I

    move-result v4

    .line 48426
    .local p0, "position":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v0, -0x5f000010

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9g;->setTag(ILjava/lang/Object;)V

    .line 48427
    iget v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A03:I

    const/4 v0, -0x2

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 48428
    .local p1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v4, :cond_2

    iget v3, p0, Lcom/facebook/ads/redexgen/X/PZ;->A04:I

    .line 48429
    .local p2, "leftMargin":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A06:I

    add-int/lit8 v0, v0, -0x1

    if-lt v4, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A04:I

    .line 48430
    .local p3, "rightMargin":I
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 48431
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oo;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v4

    .line 48432
    .local p4, "imageUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oo;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v3

    .line 48433
    .local p5, "videoUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9g;->setIsVideo(Z)V

    .line 48434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/9g;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    .line 48436
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/7D;->A0R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9g;->setVideoUrl(Ljava/lang/String;)V

    .line 48437
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/9g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48438
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/9g;

    .line 48439
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oo;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v1

    .line 48440
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oo;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A01()Ljava/lang/String;

    move-result-object v0

    .line 48441
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9g;->setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 48442
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oo;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oo;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9g;->setCTAInfo(Lcom/facebook/ads/redexgen/X/1J;Ljava/util/Map;)V

    .line 48443
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oo;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9g;->A0i(Ljava/util/Map;)V

    .line 48444
    invoke-direct {p0, p2, p4, p5, p1}, Lcom/facebook/ads/redexgen/X/PZ;->A08(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Lc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Oo;)V

    .line 48445
    return-void

    .line 48446
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/9g;->setImageUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 48447
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A05:I

    goto/16 :goto_1

    .line 48448
    :cond_2
    iget v3, p0, Lcom/facebook/ads/redexgen/X/PZ;->A05:I

    goto/16 :goto_0
.end method
