.class public final Lcom/facebook/ads/redexgen/X/N9;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/N8;
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:Landroid/net/Uri;

.field public static final A0E:Landroid/view/View$OnTouchListener;


# instance fields
.field public A00:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/widget/ImageView;

.field public A02:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Landroid/widget/ImageView;

.field public A04:Lcom/facebook/ads/redexgen/X/N8;

.field public A05:Lcom/facebook/ads/redexgen/X/NF;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public final A08:Landroid/webkit/WebView;

.field public final A09:Lcom/facebook/ads/redexgen/X/NI;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 44629
    invoke-static {}, Lcom/facebook/ads/redexgen/X/N9;->A07()V

    const/16 v0, 0xe0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/N9;->A0B:I

    .line 44630
    const/16 v2, 0x5a

    const/16 v1, 0x17

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/N9;->A0D:Landroid/net/Uri;

    .line 44631
    new-instance v0, Lcom/facebook/ads/redexgen/X/N3;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/N3;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/N9;->A0E:Landroid/view/View$OnTouchListener;

    .line 44632
    const/4 v1, 0x0

    const/16 v0, 0x22

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/N9;->A0C:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/webkit/WebView;)V
    .locals 1

    .line 44633
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44634
    new-instance v0, Lcom/facebook/ads/redexgen/X/SB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SB;-><init>(Lcom/facebook/ads/redexgen/X/N9;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A09:Lcom/facebook/ads/redexgen/X/NI;

    .line 44635
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/N9;->A08:Landroid/webkit/WebView;

    .line 44636
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J5;->A06(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A07:Z

    .line 44637
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/N9;->A08(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 44638
    return-void
.end method

.method public static synthetic A00()I
    .locals 1

    .line 44639
    sget v0, Lcom/facebook/ads/redexgen/X/N9;->A0C:I

    return v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/N9;)Landroid/webkit/WebView;
    .locals 0

    .line 44640
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N9;->A08:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/N9;)Landroid/widget/ImageView;
    .locals 0

    .line 44641
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N9;->A00:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/N9;)Landroid/widget/ImageView;
    .locals 0

    .line 44642
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N9;->A02:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/N9;)Lcom/facebook/ads/redexgen/X/N8;
    .locals 0

    .line 44643
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N9;->A04:Lcom/facebook/ads/redexgen/X/N8;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/N9;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/N9;)Ljava/lang/String;
    .locals 0

    .line 44644
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N9;->A06:Ljava/lang/String;

    return-object p0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x71

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/N9;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0x17t
        0x8t
        0xat
        0x12t
        -0x72t
        -0x49t
        -0x46t
        -0x42t
        -0x50t
        -0x16t
        0x13t
        0x16t
        0x1bt
        0x5t
        0x16t
        0x8t
        -0x4at
        -0x29t
        -0x34t
        -0x2bt
        -0x79t
        -0x2bt
        -0x38t
        -0x25t
        -0x30t
        -0x23t
        -0x34t
        -0x79t
        -0x37t
        -0x27t
        -0x2at
        -0x22t
        -0x26t
        -0x34t
        -0x27t
        -0x6t
        -0x5t
        0x8t
        0xet
        0xdt
        -0x2dt
        -0x5t
        0x5t
        -0x6t
        0x7t
        0x4t
        0x17t
        0x24t
        0x1at
        0x28t
        0x25t
        0x1ft
        0x1at
        -0x1ct
        0x1ft
        0x24t
        0x2at
        0x1bt
        0x24t
        0x2at
        -0x1ct
        0x17t
        0x19t
        0x2at
        0x1ft
        0x25t
        0x24t
        -0x1ct
        0xct
        -0x1t
        -0x5t
        0xdt
        0x12t
        0x1et
        0x1ct
        -0x23t
        0x10t
        0x1dt
        0x13t
        0x21t
        0x1et
        0x18t
        0x13t
        -0x23t
        0x12t
        0x17t
        0x21t
        0x1et
        0x1ct
        0x14t
        -0x44t
        -0x38t
        -0x38t
        -0x3ct
        -0x72t
        -0x7dt
        -0x7dt
        -0x35t
        -0x35t
        -0x35t
        -0x7et
        -0x46t
        -0x4bt
        -0x49t
        -0x47t
        -0x4at
        -0x3dt
        -0x3dt
        -0x41t
        -0x7et
        -0x49t
        -0x3dt
        -0x3ft
    .end array-data
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 7

    .line 44645
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N9;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 44646
    .local p0, "density":F
    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 44647
    .local p1, "buttonSizePx":I
    .local v0, "titlePaddingPx":I
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 44648
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/N9;->setGravity(I)V

    .line 44649
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A01:Landroid/widget/ImageView;

    .line 44650
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/N9;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44651
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44652
    .local v0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44653
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A09:Lcom/facebook/ads/redexgen/X/Lr;

    .line 44654
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44655
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44656
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/N9;->A0E:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44657
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/N4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/N4;-><init>(Lcom/facebook/ads/redexgen/X/N9;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/N9;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44659
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A07:Z

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 44660
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A00:Landroid/widget/ImageView;

    .line 44661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 44662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 44663
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/N9;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44664
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44665
    .local v1, "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A00:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44666
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A08:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44667
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/N9;->A0E:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44668
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/N5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/N5;-><init>(Lcom/facebook/ads/redexgen/X/N9;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/N9;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44670
    .end local v1    # "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/NF;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/NF;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A05:Lcom/facebook/ads/redexgen/X/NF;

    .line 44671
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44672
    .local v1, "titleViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A07:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 44673
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A05:Lcom/facebook/ads/redexgen/X/NF;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NF;->setGravity(I)V

    .line 44674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A05:Lcom/facebook/ads/redexgen/X/NF;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/N9;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44675
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A07:Z

    if-eqz v0, :cond_1

    .line 44676
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A02:Landroid/widget/ImageView;

    .line 44677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 44678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 44679
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/N9;->A02:Landroid/widget/ImageView;

    const/16 v2, 0x9

    const/4 v1, 0x7

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44680
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44681
    .local v0, "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A02:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44682
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A02:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A08:Lcom/facebook/ads/redexgen/X/Lr;

    .line 44683
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A02(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44684
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44685
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A02:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/N9;->A0E:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44686
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A02:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/N6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/N6;-><init>(Lcom/facebook/ads/redexgen/X/N9;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A02:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/N9;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44688
    .end local v0    # "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Landroid/widget/ImageView;

    .line 44689
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44690
    .local v0, "nativeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Landroid/widget/ImageView;

    const/16 v2, 0x10

    const/16 v1, 0x13

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44691
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44692
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/N9;->A0E:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44693
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/N7;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/N7;-><init>(Lcom/facebook/ads/redexgen/X/N9;Lcom/facebook/ads/redexgen/X/Wm;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/N9;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44695
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/N9;->setupDefaultNativeBrowser(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 44696
    return-void

    .line 44697
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/N9;)Z
    .locals 0

    .line 44698
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/N9;->A07:Z

    return p0
.end method

.method private setupDefaultNativeBrowser(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 5

    .line 44713
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Wm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 44714
    .local p0, "pm":Landroid/content/pm/PackageManager;
    sget-object v3, Lcom/facebook/ads/redexgen/X/N9;->A0D:Landroid/net/Uri;

    const/16 v2, 0x2e

    const/16 v1, 0x1a

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->A05(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 44715
    const/high16 v0, 0x10000

    invoke-virtual {v4, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 44716
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 44717
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44718
    const/4 v1, 0x0

    .line 44719
    .local v4, "nativeBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "nativeBitmap":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44720
    return-void

    .line 44721
    .end local v4    # "nativeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    .line 44722
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x12

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44723
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0A:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v4    # "nativeBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 44724
    .end local v4    # "nativeBitmap":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0B:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/NI;
    .locals 1

    .line 44699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A09:Lcom/facebook/ads/redexgen/X/NI;

    return-object v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/N8;)V
    .locals 0

    .line 44700
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N9;->A04:Lcom/facebook/ads/redexgen/X/N8;

    .line 44701
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 44702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A05:Lcom/facebook/ads/redexgen/X/NF;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NF;->setTitle(Ljava/lang/String;)V

    .line 44703
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 4

    .line 44704
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N9;->A06:Ljava/lang/String;

    .line 44705
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/16 v2, 0x23

    const/16 v1, 0xb

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44706
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A05:Lcom/facebook/ads/redexgen/X/NF;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/NF;->setSubtitle(Ljava/lang/String;)V

    .line 44707
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 44708
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/ads/redexgen/X/N9;->A0B:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 44709
    :goto_0
    return-void

    .line 44710
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A05:Lcom/facebook/ads/redexgen/X/NF;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NF;->setSubtitle(Ljava/lang/String;)V

    .line 44711
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 44712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N9;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
