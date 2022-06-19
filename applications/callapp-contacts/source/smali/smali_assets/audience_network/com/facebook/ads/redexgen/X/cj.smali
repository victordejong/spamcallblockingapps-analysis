.class public final Lcom/facebook/ads/redexgen/X/cj;
.super Lcom/facebook/ads/redexgen/X/Nf;
.source ""


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:I

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I

.field public static final A0N:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1G;

.field public A01:Z

.field public A02:Z

.field public final A03:Landroid/widget/ImageView;

.field public final A04:Landroid/widget/LinearLayout$LayoutParams;

.field public final A05:Landroid/widget/LinearLayout$LayoutParams;

.field public final A06:Landroid/widget/LinearLayout;

.field public final A07:Landroid/widget/LinearLayout;

.field public final A08:Landroid/widget/RelativeLayout$LayoutParams;

.field public final A09:Landroid/widget/RelativeLayout$LayoutParams;

.field public final A0A:Landroid/widget/TextView;

.field public final A0B:Landroid/widget/TextView;

.field public final A0C:Landroid/widget/TextView;

.field public final A0D:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 72939
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cj;->A09()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cj;->A08()V

    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cj;->A0H:I

    .line 72940
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cj;->A0G:I

    .line 72941
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cj;->A0I:I

    .line 72942
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    .line 72943
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cj;->A0N:I

    .line 72944
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cj;->A0J:I

    .line 72945
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cj;->A0K:I

    .line 72946
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42a40000    # 82.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cj;->A0L:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;ILcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V
    .locals 7

    .line 72947
    invoke-direct/range {p0 .. p8}, Lcom/facebook/ads/redexgen/X/Nf;-><init>(Lcom/facebook/ads/redexgen/X/XJ;ILcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    .line 72948
    const/4 v1, -0x2

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A09:Landroid/widget/RelativeLayout$LayoutParams;

    .line 72949
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A08:Landroid/widget/RelativeLayout$LayoutParams;

    .line 72950
    const/4 v3, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A04:Landroid/widget/LinearLayout$LayoutParams;

    .line 72951
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A05:Landroid/widget/LinearLayout$LayoutParams;

    .line 72952
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/cj;->A02:Z

    .line 72953
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/cj;->A01:Z

    .line 72954
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/cj;->setOrientation(I)V

    .line 72955
    const/16 v0, 0x8

    new-array v6, v0, [F

    const/4 v1, 0x0

    aput v1, v6, v3

    aput v1, v6, v2

    const/4 v0, 0x2

    aput v1, v6, v0

    const/4 v0, 0x3

    aput v1, v6, v0

    sget v5, Lcom/facebook/ads/redexgen/X/cj;->A0J:I

    int-to-float v1, v5

    const/4 v0, 0x4

    aput v1, v6, v0

    int-to-float v1, v5

    const/4 v0, 0x5

    aput v1, v6, v0

    int-to-float v1, v5

    const/4 v0, 0x6

    aput v1, v6, v0

    int-to-float v1, v5

    const/4 v0, 0x7

    aput v1, v6, v0

    const v0, -0x40ccd1d2    # -0.6999234f

    invoke-static {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/Lh;->A0V(Landroid/view/View;I[F)V

    .line 72956
    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0I:I

    invoke-virtual {p0, v3, v3, v3, v0}, Lcom/facebook/ads/redexgen/X/cj;->setPadding(IIII)V

    .line 72957
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A09:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72958
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A09:Landroid/widget/RelativeLayout$LayoutParams;

    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    invoke-virtual {v1, v0, v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 72959
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A03:Landroid/widget/ImageView;

    .line 72960
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A03:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 72962
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A03:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0X:Lcom/facebook/ads/redexgen/X/Lp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72963
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0B:Landroid/widget/TextView;

    .line 72964
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0C:Landroid/widget/TextView;

    .line 72965
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    .line 72966
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    .line 72967
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A06:Landroid/widget/LinearLayout;

    .line 72968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A06:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72969
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A07:Landroid/widget/LinearLayout;

    .line 72970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72971
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/XJ;->A09()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/XJ;->A09()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72972
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/XJ;->A09()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 72973
    .local p2, "decorView":Landroid/view/View;
    new-instance v0, Lcom/facebook/ads/redexgen/X/M5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/M5;-><init>(Lcom/facebook/ads/redexgen/X/cj;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 72974
    .end local p2    # "decorView":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 72975
    :goto_0
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/cj;->setupMetadataContainer(Z)V

    .line 72976
    return-void

    .line 72977
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static synthetic A00()I
    .locals 1

    .line 72978
    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    return v0
.end method

.method private A01(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 72979
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 72980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A08:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 72981
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cj;->A08:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72982
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cj;->A05()V

    .line 72983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A08:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/cj;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 72984
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cj;->A09:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/cj;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 72985
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cj;->A08:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/cj;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/cj;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cj;->A0F:[Ljava/lang/String;

    const-string v1, "CFHt0yNdC2PEY9oUs7GHhr9LuJSrb6a"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x59

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .locals 7

    .line 72986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 72987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/cj;->removeView(Landroid/view/View;)V

    .line 72988
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/cj;->setGravity(I)V

    .line 72989
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A04:Landroid/widget/LinearLayout$LayoutParams;

    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    const/4 v5, 0x3

    mul-int/lit8 v0, v0, 0x3

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 72990
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/16 v0, 0x12

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 72991
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A05:Landroid/widget/LinearLayout$LayoutParams;

    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 72992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72993
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A04:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72994
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A05:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72995
    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0L:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72996
    .local p0, "iconViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    invoke-virtual {v4, v0, v6, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 72997
    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72998
    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0L:I

    const/4 v1, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72999
    .local v1, "metadataContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73000
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73001
    .local v0, "ctaButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    mul-int/lit8 v0, v1, 0x3

    invoke-virtual {v2, v1, v1, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 73002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->getId()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73003
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73004
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A06:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73005
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73006
    return-void
.end method

.method private A06()V
    .locals 6

    .line 73007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 73008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/cj;->removeView(Landroid/view/View;)V

    .line 73009
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A04:Landroid/widget/LinearLayout$LayoutParams;

    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73010
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    .line 73011
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A01:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    .line 73012
    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 73013
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A05:Landroid/widget/LinearLayout$LayoutParams;

    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73014
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73015
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A04:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73016
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A05:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73017
    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0K:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73018
    .local p0, "iconViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    invoke-virtual {v4, v0, v5, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 73019
    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73020
    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0K:I

    const/4 v1, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73021
    .local v0, "metadataContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73022
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73023
    .local v1, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0I:I

    invoke-virtual {v2, v1, v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73024
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73025
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A06:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/cj;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73027
    return-void

    .line 73028
    :cond_0
    const/16 v0, 0xf

    goto :goto_0
.end method

.method private A07()V
    .locals 7

    .line 73029
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A00:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73030
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A00:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A00:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 73032
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/cj;->A0B:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A00:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/cj;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/cj;->A0F:[Ljava/lang/String;

    const-string v1, "A4j7vT1O3iieC5LYKxgUzJw3IAPRsZqa"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-string v1, "kbxlqPL3bcSaGLfdPxpm8hIEsv0pbZnU"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73033
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 73034
    .local p0, "wrapSpec":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0B:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 73035
    .end local p0    # "wrapSpec":I
    goto :goto_0

    .line 73036
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0B:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73038
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A00:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 73039
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A00:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cj;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73040
    .local p0, "reviewsCountText":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73041
    .end local p0    # "reviewsCountText":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 73042
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0C:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A00:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73045
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    const/16 v0, 0x12

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 73046
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 73047
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A05:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 73048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73049
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 73050
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    const/16 v0, 0xf

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 73051
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/cj;->A01:Z

    goto :goto_1
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cj;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x3ft
        0x13t
        0x6t
        0x17t
        0xat
        0x6t
        0x18t
        0x14t
    .end array-data
.end method

.method public static A09()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Qaz6s2rZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AcoknuDDmNnfRhvATxJBAe7psr5ZdYIV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xUaT3nis"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3ZYb8Y0gA5eZOJbeDVtSAHPMCBzrwI9S"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CaGCkJyqrjmkUmEgaxYP5OnLIzM2aaQv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YMuz8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "po4IGEuOfM3V3RWL9cKG7EahlbwG6cRm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tP1qXeWZ1rY33RxSca4DZNHo6L2lNWeK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cj;->A0F:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/cj;Z)Z
    .locals 0

    .line 73052
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/cj;->A02:Z

    return p1
.end method

.method private getPortraitLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    .line 73083
    const/16 v0, 0x8

    new-array v4, v0, [F

    const/4 v3, 0x0

    const/4 v1, 0x0

    aput v1, v4, v3

    const/4 v0, 0x1

    aput v1, v4, v0

    const/4 v0, 0x2

    aput v1, v4, v0

    const/4 v0, 0x3

    aput v1, v4, v0

    sget v2, Lcom/facebook/ads/redexgen/X/cj;->A0J:I

    int-to-float v1, v2

    const/4 v0, 0x4

    aput v1, v4, v0

    int-to-float v1, v2

    const/4 v0, 0x5

    aput v1, v4, v0

    int-to-float v1, v2

    const/4 v0, 0x6

    aput v1, v4, v0

    int-to-float v1, v2

    const/4 v0, 0x7

    aput v1, v4, v0

    const v0, -0x40ccd1d2    # -0.6999234f

    invoke-static {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Lh;->A0V(Landroid/view/View;I[F)V

    .line 73084
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cj;->A09:Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    .line 73085
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A02:Z

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v1, 0x3

    .line 73086
    :goto_0
    invoke-virtual {v2, v1, v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 73087
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cj;->A06()V

    .line 73088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A09:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0

    .line 73089
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setupMetadataContainer(Z)V
    .locals 11

    .line 73094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A06:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 73095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 73096
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A04:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 73097
    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    if-eqz p1, :cond_9

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73098
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A05:Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A01:Z

    if-eqz v0, :cond_8

    const/high16 v0, 0x40000000    # 2.0f

    :goto_1
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 73099
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A01:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 73100
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    .line 73101
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A01:Z

    const/16 v5, 0xf

    if-nez v0, :cond_0

    if-nez p1, :cond_6

    :cond_0
    const/16 v0, 0x12

    .line 73102
    :goto_3
    invoke-static {v1, v9, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 73103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73104
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 73105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 73106
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cj;->A05:Landroid/widget/LinearLayout$LayoutParams;

    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    if-eqz p1, :cond_5

    :goto_4
    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73107
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73108
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73109
    .local p0, "headlineViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 73110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 73111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73112
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A01:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x30

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 73113
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    .line 73114
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A01:Z

    const/16 v7, 0xd

    if-eqz v0, :cond_2

    .line 73115
    :goto_7
    invoke-static {v4, v2, v5}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 73116
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 73117
    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73118
    const/4 v10, -0x2

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73119
    .local p1, "ratingViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0B:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0B:Landroid/widget/TextView;

    invoke-static {v0, v9, v7}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 73121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0B:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 73122
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73123
    .local v1, "ratingIconParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0N:I

    invoke-virtual {v5, v2, v0, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73124
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73125
    .local v4, "reviewsCountViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0C:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 73126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73127
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0C:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 73128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0C:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 73129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0C:Landroid/widget/TextView;

    invoke-static {v0, v2, v7}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 73130
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0B:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73131
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A03:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73132
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0C:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73133
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A07:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A01:Z

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73134
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cj;->A06:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A05:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73135
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cj;->A06:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A04:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73136
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A06:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73137
    return-void

    .line 73138
    :cond_2
    const/16 v5, 0xd

    goto/16 :goto_7

    .line 73139
    :cond_3
    const/16 v0, 0x10

    goto/16 :goto_6

    .line 73140
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 73141
    :cond_5
    mul-int/lit8 v0, v0, 0x3

    goto/16 :goto_4

    .line 73142
    :cond_6
    const/16 v0, 0xf

    goto/16 :goto_3

    .line 73143
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 73144
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 73145
    :cond_9
    mul-int/lit8 v0, v0, 0x3

    goto/16 :goto_0
.end method


# virtual methods
.method public final A0C(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    .line 73053
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const v4, -0x40ccd1d2    # -0.6999234f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 73054
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cj;->A06()V

    .line 73055
    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0J:I

    invoke-static {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0R(Landroid/view/View;II)V

    .line 73056
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cj;->A09:Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/facebook/ads/redexgen/X/cj;->A0M:I

    .line 73057
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A02:Z

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v1, 0x3

    .line 73058
    :goto_0
    invoke-virtual {v2, v1, v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 73059
    sget v0, Lcom/facebook/ads/redexgen/X/cj;->A0I:I

    invoke-virtual {p0, v3, v0, v3, v0}, Lcom/facebook/ads/redexgen/X/cj;->setPadding(IIII)V

    .line 73060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A09:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0

    .line 73061
    :cond_0
    move v0, v1

    goto :goto_0

    .line 73062
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A08:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 73063
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cj;->A08:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73064
    invoke-static {p0, v4}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 73065
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cj;->A05()V

    .line 73066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A08:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method public final A0D(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 73067
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cj;->bringToFront()V

    .line 73068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/cj;->addView(Landroid/view/View;)V

    .line 73069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0C:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 73070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A04:Lcom/facebook/ads/redexgen/X/No;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 73071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0D:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 73072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0B:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 73073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A03:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 73074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:Lcom/facebook/ads/redexgen/X/a7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 73075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A0A:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 73076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A06:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 73077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cj;->A07:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 73078
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 73079
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cj;->getPortraitLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0

    .line 73080
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/cj;->A01(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public final A0E(I)V
    .locals 0

    .line 73081
    return-void
.end method

.method public final A0F(Z)V
    .locals 0

    .line 73082
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ni;)V
    .locals 0
    .param p5    # Lcom/facebook/ads/redexgen/X/Ni;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73090
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Nf;->setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 73091
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cj;->A00:Lcom/facebook/ads/redexgen/X/1G;

    .line 73092
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cj;->A07()V

    .line 73093
    return-void
.end method
