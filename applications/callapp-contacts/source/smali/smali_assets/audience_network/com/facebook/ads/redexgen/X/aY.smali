.class public final Lcom/facebook/ads/redexgen/X/aY;
.super Lcom/facebook/ads/redexgen/X/Mj;
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

.field public final A04:Lcom/facebook/ads/redexgen/X/XJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 67750
    invoke-static {}, Lcom/facebook/ads/redexgen/X/aY;->A0B()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/aY;->A08:I

    .line 67751
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/aY;->A07:I

    .line 67752
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/aY;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;)V
    .locals 6

    .line 67753
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Mj;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;)V

    .line 67754
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aY;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67755
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aY;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A01:Landroid/widget/ImageView;

    .line 67756
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A01:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/aY;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 67757
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67758
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A01:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 67759
    sget v0, Lcom/facebook/ads/redexgen/X/aY;->A06:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67760
    .local p0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 67761
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aY;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A02:Landroid/widget/LinearLayout;

    .line 67762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A02:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67763
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67764
    .local p1, "contentParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 67765
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aY;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A00:Landroid/widget/HorizontalScrollView;

    .line 67766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 67767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67768
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A00:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67769
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aY;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A03:Landroid/widget/LinearLayout;

    .line 67770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67771
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A03:Landroid/widget/LinearLayout;

    const v0, -0xd000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 67772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 67773
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A01:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67774
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67775
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A03:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/aY;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67776
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A03:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 67777
    return-void
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/aY;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x8

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/aY;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x39t
        -0x1at
        -0x18t
        -0x10t
        -0x5ct
        -0x33t
        -0x30t
        -0x2ct
        -0x3at
        -0x7ft
        -0x5et
        -0x3bt
        -0x7ft
        -0x4dt
        -0x3at
        -0x2ft
        -0x30t
        -0x2dt
        -0x2bt
        -0x36t
        -0x31t
        -0x38t
    .end array-data
.end method


# virtual methods
.method public final A0K()V
    .locals 6

    .line 67778
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0F:Lcom/facebook/ads/redexgen/X/Lp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67779
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ms;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ms;-><init>(Lcom/facebook/ads/redexgen/X/aY;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67780
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aY;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aY;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v5, Lcom/facebook/ads/redexgen/X/Mn;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Mn;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 67782
    .local p0, "hideAdView":Lcom/facebook/ads/redexgen/X/Mn;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67783
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0B(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0K:Lcom/facebook/ads/redexgen/X/Lp;

    .line 67784
    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 67785
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mt;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Mt;-><init>(Lcom/facebook/ads/redexgen/X/aY;Lcom/facebook/ads/redexgen/X/Mn;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Mn;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Mn;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 67787
    .local v1, "reportAdView":Lcom/facebook/ads/redexgen/X/Mn;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67788
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0F(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0P:Lcom/facebook/ads/redexgen/X/Lp;

    .line 67789
    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 67790
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mu;

    invoke-direct {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/Mu;-><init>(Lcom/facebook/ads/redexgen/X/aY;Lcom/facebook/ads/redexgen/X/Mn;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Mn;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Mn;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 67792
    .local v0, "whyAmISeeingThisView":Lcom/facebook/ads/redexgen/X/Mn;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67793
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0G(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A07:Lcom/facebook/ads/redexgen/X/Lp;

    .line 67794
    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 67795
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mv;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/Mv;-><init>(Lcom/facebook/ads/redexgen/X/aY;Lcom/facebook/ads/redexgen/X/Mn;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67796
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67797
    .local v0, "menuItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/aY;->A08:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 67798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 67799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 67800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67803
    return-void
.end method

.method public final A0L()V
    .locals 0

    .line 67804
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0L(Landroid/view/View;)V

    .line 67805
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 67806
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
    .locals 4

    .line 67807
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A01:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67808
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aY;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 67809
    .local p0, "reviewText":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/16 v0, 0xe

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 67810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A07(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67811
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 67812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 67813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 67814
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aY;->A03:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67815
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
    .locals 6

    .line 67816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 67817
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A09:Lcom/facebook/ads/redexgen/X/Lp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67818
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mw;-><init>(Lcom/facebook/ads/redexgen/X/aY;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67819
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aY;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aY;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 67821
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aY;->A00:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 67822
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67823
    .local p0, "optionItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/aY;->A08:I

    const/4 v0, 0x0

    invoke-virtual {v5, v0, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 67824
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

    .line 67825
    .local p2, "option":Lcom/facebook/ads/redexgen/X/2B;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Mn;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Mn;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 67826
    .local v0, "optionView":Lcom/facebook/ads/redexgen/X/Mn;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2B;->A04()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 67827
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mx;

    invoke-direct {v0, p0, v2, v3}, Lcom/facebook/ads/redexgen/X/Mx;-><init>(Lcom/facebook/ads/redexgen/X/aY;Lcom/facebook/ads/redexgen/X/Mn;Lcom/facebook/ads/redexgen/X/2B;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aY;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67829
    .end local p2    # "option":Lcom/facebook/ads/redexgen/X/2B;
    .end local v0    # "optionView":Lcom/facebook/ads/redexgen/X/Mn;
    goto :goto_0

    .line 67830
    :cond_0
    return-void
.end method

.method public final A0O()Z
    .locals 1

    .line 67831
    const/4 v0, 0x1

    return v0
.end method
