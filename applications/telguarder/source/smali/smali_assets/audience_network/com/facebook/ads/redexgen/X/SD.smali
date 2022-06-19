.class public final Lcom/facebook/ads/redexgen/X/SD;
.super Lcom/facebook/ads/redexgen/X/Me;
.source ""


# static fields
.field public static A05:[B

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public final A00:Landroid/widget/HorizontalScrollView;

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Landroid/widget/LinearLayout;

.field public final A03:Landroid/widget/LinearLayout;

.field public final A04:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 51526
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SD;->A0B()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SD;->A08:I

    .line 51527
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SD;->A07:I

    .line 51528
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SD;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;)V
    .locals 6

    .line 51529
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Me;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;)V

    .line 51530
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SD;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51531
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SD;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A01:Landroid/widget/ImageView;

    .line 51532
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A01:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/SD;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 51533
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51534
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A01:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 51535
    sget v0, Lcom/facebook/ads/redexgen/X/SD;->A06:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51536
    .local p0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51537
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SD;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A02:Landroid/widget/LinearLayout;

    .line 51538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A02:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51539
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51540
    .local p1, "contentParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51541
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SD;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Landroid/widget/HorizontalScrollView;

    .line 51542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 51543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51544
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51545
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SD;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A03:Landroid/widget/LinearLayout;

    .line 51546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51547
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A03:Landroid/widget/LinearLayout;

    const v0, -0xd000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 51548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 51549
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A01:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51550
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51551
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A03:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51552
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A03:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 51553
    return-void
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SD;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x14

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/SD;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x20t
        0x22t
        0x2at
        0x3t
        0x2ct
        0x2ft
        0x33t
        0x25t
        0x60t
        0x1t
        0x24t
        0x60t
        0x12t
        0x25t
        0x30t
        0x2ft
        0x32t
        0x34t
        0x29t
        0x2et
        0x27t
    .end array-data
.end method


# virtual methods
.method public final A0L()V
    .locals 6

    .line 51554
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0E:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51555
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mn;-><init>(Lcom/facebook/ads/redexgen/X/SD;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51556
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SD;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v5, Lcom/facebook/ads/redexgen/X/Mi;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51558
    .local p0, "hideAdView":Lcom/facebook/ads/redexgen/X/Mi;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51559
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0B(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0J:Lcom/facebook/ads/redexgen/X/Lr;

    .line 51560
    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 51561
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mo;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Mo;-><init>(Lcom/facebook/ads/redexgen/X/SD;Lcom/facebook/ads/redexgen/X/Mi;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Mi;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51563
    .local v1, "reportAdView":Lcom/facebook/ads/redexgen/X/Mi;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51564
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0F(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0O:Lcom/facebook/ads/redexgen/X/Lr;

    .line 51565
    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 51566
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mp;

    invoke-direct {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/Mp;-><init>(Lcom/facebook/ads/redexgen/X/SD;Lcom/facebook/ads/redexgen/X/Mi;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Mi;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51568
    .local v0, "whyAmISeeingThisView":Lcom/facebook/ads/redexgen/X/Mi;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51569
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0G(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A06:Lcom/facebook/ads/redexgen/X/Lr;

    .line 51570
    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 51571
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mq;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/Mq;-><init>(Lcom/facebook/ads/redexgen/X/SD;Lcom/facebook/ads/redexgen/X/Mi;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51572
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51573
    .local v0, "menuItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/SD;->A08:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 51574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 51575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51579
    return-void
.end method

.method public final A0M()V
    .locals 0

    .line 51580
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0K(Landroid/view/View;)V

    .line 51581
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 51582
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
    .locals 4

    .line 51583
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A01:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51584
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SD;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51585
    .local p0, "reviewText":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/16 v0, 0xe

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 51586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A07(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51587
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 51588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 51589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51590
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SD;->A03:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51591
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
    .locals 6

    .line 51592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 51593
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A08:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51594
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mr;-><init>(Lcom/facebook/ads/redexgen/X/SD;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51595
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SD;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SD;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 51597
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 51598
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51599
    .local p0, "optionItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/SD;->A08:I

    const/4 v0, 0x0

    invoke-virtual {v5, v0, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 51600
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2B;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/2B;

    .line 51601
    .local p2, "option":Lcom/facebook/ads/redexgen/X/2B;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Mi;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51602
    .local v0, "optionView":Lcom/facebook/ads/redexgen/X/Mi;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2B;->A04()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 51603
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ms;

    invoke-direct {v0, p0, v2, v3}, Lcom/facebook/ads/redexgen/X/Ms;-><init>(Lcom/facebook/ads/redexgen/X/SD;Lcom/facebook/ads/redexgen/X/Mi;Lcom/facebook/ads/redexgen/X/2B;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51605
    .end local p2    # "option":Lcom/facebook/ads/redexgen/X/2B;
    .end local v0    # "optionView":Lcom/facebook/ads/redexgen/X/Mi;
    goto :goto_0

    .line 51606
    :cond_0
    return-void
.end method

.method public final A0P()Z
    .locals 1

    .line 51607
    const/4 v0, 0x1

    return v0
.end method
