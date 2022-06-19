.class public final Lcom/facebook/ads/redexgen/X/MG;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final A06:I

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I


# instance fields
.field public A00:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Landroid/widget/Button;

.field public final A02:Landroid/widget/Button;

.field public final A03:Landroid/widget/ImageView;

.field public final A04:Landroid/widget/LinearLayout;

.field public final A05:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 43871
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42700000    # 60.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A08:I

    .line 43872
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A07:I

    .line 43873
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A09:I

    .line 43874
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A0A:I

    .line 43875
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43876
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43877
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A05:Landroid/widget/TextView;

    .line 43878
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A02:Landroid/widget/Button;

    .line 43879
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A01:Landroid/widget/Button;

    .line 43880
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A03:Landroid/widget/ImageView;

    .line 43881
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A04:Landroid/widget/LinearLayout;

    .line 43882
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43883
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A00:Landroid/widget/TextView;

    .line 43884
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A05:Landroid/widget/TextView;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 43887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A00:Landroid/widget/TextView;

    const/16 v4, 0x12

    if-eqz v0, :cond_1

    .line 43888
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43890
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MG;->A00:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 43891
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, p8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 43893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A02:Landroid/widget/Button;

    invoke-virtual {v0, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 43894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A02:Landroid/widget/Button;

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 43895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A02:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 43896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A02:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 43897
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MG;->A02:Landroid/widget/Button;

    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 43898
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A01:Landroid/widget/Button;

    invoke-virtual {v0, p7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 43899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A01:Landroid/widget/Button;

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 43900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A01:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 43901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A01:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 43902
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MG;->A01:Landroid/widget/Button;

    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 43903
    invoke-static {p3, v2}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v2

    .line 43904
    .local p0, "negativeButtonColor":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MG;->A02:Landroid/widget/Button;

    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A07:I

    invoke-static {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Q(Landroid/view/View;II)V

    .line 43905
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MG;->A01:Landroid/widget/Button;

    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A07:I

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Q(Landroid/view/View;II)V

    .line 43906
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MG;->A00()V

    .line 43907
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MG;->setGravity(I)V

    .line 43908
    return-void
.end method

.method private A00()V
    .locals 7

    .line 43909
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A0A:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/MG;->setPadding(IIII)V

    .line 43910
    const/4 v6, -0x2

    const/4 v5, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43911
    .local p0, "containerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A04:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43912
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MG;->A04:Landroid/widget/LinearLayout;

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 43913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/MG;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43914
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A08:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43915
    .local v5, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A09:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 43916
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43917
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MG;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A03:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43918
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43919
    .local v2, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A09:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 43920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A05:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 43921
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MG;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A00:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 43923
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43924
    .local v0, "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A09:I

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 43925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 43926
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MG;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A00:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43927
    .end local v0    # "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43928
    .local v0, "btnParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A09:I

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 43929
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MG;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A02:Landroid/widget/Button;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43930
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MG;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A01:Landroid/widget/Button;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43931
    return-void
.end method
