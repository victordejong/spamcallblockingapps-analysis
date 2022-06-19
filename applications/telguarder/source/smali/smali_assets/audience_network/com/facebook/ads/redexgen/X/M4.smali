.class public final Lcom/facebook/ads/redexgen/X/M4;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A03:[B

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 43607
    invoke-static {}, Lcom/facebook/ads/redexgen/X/M4;->A02()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M4;->A07:I

    .line 43608
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M4;->A04:I

    .line 43609
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M4;->A05:I

    .line 43610
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M4;->A08:I

    .line 43611
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M4;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;I)V
    .locals 1

    .line 43612
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43613
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 43614
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M4;->setOrientation(I)V

    .line 43615
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A00:Landroid/widget/ImageView;

    .line 43616
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A01:Landroid/widget/ImageView;

    .line 43617
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/M4;->A03(I)V

    .line 43618
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/M4;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 43619
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/M4;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x76

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/M4;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x67t
        0x42t
    .end array-data
.end method

.method private A03(I)V
    .locals 7

    .line 43620
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M4;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A06:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->A04(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 43621
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    .line 43622
    sget v2, Lcom/facebook/ads/redexgen/X/M4;->A04:I

    div-int/lit8 v1, v2, 0x3

    div-int/lit8 v0, v2, 0x3

    invoke-virtual {p0, v2, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/M4;->setPadding(IIII)V

    .line 43623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43624
    .local v0, "adTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43625
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43626
    sget v2, Lcom/facebook/ads/redexgen/X/M4;->A04:I

    div-int/lit8 v1, v2, 0x2

    div-int/lit8 v0, v2, 0x2

    div-int/2addr v2, v6

    invoke-virtual {v4, v3, v1, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43627
    const/16 v0, 0xd

    invoke-static {v4, v5, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 43628
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43629
    .local p0, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43630
    invoke-virtual {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/M4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43631
    sget v0, Lcom/facebook/ads/redexgen/X/M4;->A06:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43632
    .local v1, "adChoicesIconParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/M4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43634
    .end local p0    # "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "adChoicesIconParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v0    # "adTextView":Landroid/widget/TextView;
    .end local p0
    .end local v1
    .end local v5
    :goto_0
    return-void

    .line 43635
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/M4;->A04:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/M4;->setPadding(IIII)V

    .line 43636
    if-ne p1, v5, :cond_1

    .line 43637
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lr;->A07:Lcom/facebook/ads/redexgen/X/Lr;

    .line 43638
    .local p0, "infoIconImage":Lcom/facebook/ads/redexgen/X/Lr;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A01:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/M4;->A04(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 43639
    sget v0, Lcom/facebook/ads/redexgen/X/M4;->A05:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43640
    .local v1, "infoButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/M4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43642
    sget v0, Lcom/facebook/ads/redexgen/X/M4;->A05:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43643
    .local v5, "adChoicesParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/M4;->A08:I

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 43644
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/M4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 43646
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lr;->A0G:Lcom/facebook/ads/redexgen/X/Lr;

    goto :goto_1
.end method

.method public static A04(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Lr;)V
    .locals 1

    .line 43647
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43648
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43649
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 43650
    return-void
.end method


# virtual methods
.method public setAdDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/redexgen/X/M7;)V
    .locals 6

    .line 43651
    new-instance v0, Lcom/facebook/ads/redexgen/X/M3;

    move-object v1, p0

    move-object v3, p4

    move-object v2, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/M3;-><init>(Lcom/facebook/ads/redexgen/X/M4;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/redexgen/X/M7;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M4;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43652
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 43653
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43654
    .local p0, "backgroundStyle":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 43655
    sget v0, Lcom/facebook/ads/redexgen/X/M4;->A07:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43656
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43657
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43658
    return-void
.end method

.method public setIconColors(I)V
    .locals 1

    .line 43659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 43660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M4;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 43661
    return-void
.end method
