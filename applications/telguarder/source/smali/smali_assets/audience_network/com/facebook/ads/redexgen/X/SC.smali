.class public final Lcom/facebook/ads/redexgen/X/SC;
.super Lcom/facebook/ads/redexgen/X/Me;
.source ""


# static fields
.field public static A04:[B

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Landroid/widget/LinearLayout;

.field public final A02:Landroid/widget/ScrollView;

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 51424
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SC;->A0B()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SC;->A07:I

    .line 51425
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SC;->A06:I

    .line 51426
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SC;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;)V
    .locals 4

    .line 51427
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Me;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;)V

    .line 51428
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SC;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51429
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SC;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Landroid/widget/ImageView;

    .line 51430
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/SC;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 51431
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 51432
    sget v0, Lcom/facebook/ads/redexgen/X/SC;->A05:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51433
    .local p0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x3

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51435
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SC;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A02:Landroid/widget/ScrollView;

    .line 51436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A02:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 51437
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A02:Landroid/widget/ScrollView;

    const v0, -0xd000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 51438
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SC;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    .line 51439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51440
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/SC;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 51441
    const/4 v3, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51442
    .local p1, "mainLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A02:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51443
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A02:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/SC;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51444
    return-void
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SC;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x18

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SC;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x34t
        -0x15t
        -0x13t
        -0xbt
        0x78t
        -0x5ft
        -0x5ct
        -0x58t
        -0x66t
        0x55t
        0x76t
        -0x67t
        0x55t
        -0x79t
        -0x66t
        -0x5bt
        -0x5ct
        -0x59t
        -0x57t
        -0x62t
        -0x5dt
        -0x64t
    .end array-data
.end method


# virtual methods
.method public final A0L()V
    .locals 9

    .line 51445
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0E:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51446
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mx;-><init>(Lcom/facebook/ads/redexgen/X/SC;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51447
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SC;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v7, Lcom/facebook/ads/redexgen/X/Mi;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51449
    .local p0, "hideAdView":Lcom/facebook/ads/redexgen/X/Mi;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51450
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0B(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0J:Lcom/facebook/ads/redexgen/X/Lr;

    .line 51451
    invoke-virtual {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 51452
    new-instance v0, Lcom/facebook/ads/redexgen/X/My;

    invoke-direct {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/My;-><init>(Lcom/facebook/ads/redexgen/X/SC;Lcom/facebook/ads/redexgen/X/Mi;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Mi;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51454
    .local v1, "reportAdView":Lcom/facebook/ads/redexgen/X/Mi;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51455
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0F(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0O:Lcom/facebook/ads/redexgen/X/Lr;

    .line 51456
    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 51457
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mz;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/redexgen/X/Mz;-><init>(Lcom/facebook/ads/redexgen/X/SC;Lcom/facebook/ads/redexgen/X/Mi;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v5, Lcom/facebook/ads/redexgen/X/Mi;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51459
    .local v0, "whyAmISeeingThisView":Lcom/facebook/ads/redexgen/X/Mi;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51460
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0G(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A06:Lcom/facebook/ads/redexgen/X/Lr;

    .line 51461
    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 51462
    new-instance v0, Lcom/facebook/ads/redexgen/X/N0;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/N0;-><init>(Lcom/facebook/ads/redexgen/X/SC;Lcom/facebook/ads/redexgen/X/Mi;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51463
    const/4 v8, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51464
    .local v0, "menuItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SC;->A07:I

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 51465
    const/16 v1, 0x11

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51466
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SC;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51467
    .local v3, "menuLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51468
    const/4 v0, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51469
    .local v1, "menuParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51470
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 51472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51473
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51475
    invoke-virtual {v3, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51476
    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51477
    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51478
    return-void
.end method

.method public final A0M()V
    .locals 0

    .line 51479
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0K(Landroid/view/View;)V

    .line 51480
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 51481
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
    .locals 6

    .line 51482
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51483
    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A05:Lcom/facebook/ads/redexgen/X/29;

    if-ne p2, v0, :cond_0

    .line 51484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A09(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v5

    .line 51485
    .local p0, "title":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/Lr;->A0O:Lcom/facebook/ads/redexgen/X/Lr;

    .line 51486
    .local p1, "icon":Lcom/facebook/ads/redexgen/X/Lr;
    const v3, -0x86dc5

    .line 51487
    .local p2, "iconBackground":I
    .restart local p2    # "iconBackground":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SC;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Me;->A0A:Lcom/facebook/ads/redexgen/X/Mg;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mc;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Mc;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Mg;)V

    .line 51488
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mc;->A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51489
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A07(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mc;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v1

    .line 51490
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2B;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mc;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v0

    .line 51491
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mc;->A0K(Z)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v0

    .line 51492
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Mc;->A0E(Lcom/facebook/ads/redexgen/X/Lr;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v0

    .line 51493
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Mc;->A0D(I)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v0

    .line 51494
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mc;->A0L(Z)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v0

    .line 51495
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mc;->A0J(Z)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v0

    .line 51496
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mc;->A0M()Lcom/facebook/ads/redexgen/X/Md;

    move-result-object v3

    .line 51497
    .local v1, "adHiddenView":Lcom/facebook/ads/redexgen/X/Md;
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51498
    .local v0, "adHiddenViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51499
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 51501
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A02:Landroid/widget/ScrollView;

    const/16 v0, 0x21

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 51502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51504
    return-void

    .line 51505
    .end local p0    # "title":Ljava/lang/String;
    .end local p1    # "icon":Lcom/facebook/ads/redexgen/X/Lr;
    .end local p2    # "iconBackground":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0B(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v5

    .line 51506
    .restart local p0    # "title":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/Lr;->A0J:Lcom/facebook/ads/redexgen/X/Lr;

    .line 51507
    .restart local p1    # "icon":Lcom/facebook/ads/redexgen/X/Lr;
    const v3, -0xca871b

    goto :goto_0
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
    .locals 6

    .line 51508
    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A05:Lcom/facebook/ads/redexgen/X/29;

    const/4 v3, 0x0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 51509
    .local p0, "isReportFlow":Z
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SC;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Me;->A0A:Lcom/facebook/ads/redexgen/X/Mg;

    .line 51510
    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0O:Lcom/facebook/ads/redexgen/X/Lr;

    :goto_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/Mw;

    invoke-direct {v4, v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Mw;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/Mg;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 51511
    .local p2, "optionChooserView":Landroid/view/View;
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51512
    .local p1, "optionChooserParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51513
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51514
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A08:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51515
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/N1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/N1;-><init>(Lcom/facebook/ads/redexgen/X/SC;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51516
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SC;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 51518
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A02:Landroid/widget/ScrollView;

    const/16 v0, 0x21

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 51519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51520
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51522
    return-void

    .line 51523
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0J:Lcom/facebook/ads/redexgen/X/Lr;

    goto :goto_1

    .line 51524
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0P()Z
    .locals 1

    .line 51525
    const/4 v0, 0x1

    return v0
.end method
