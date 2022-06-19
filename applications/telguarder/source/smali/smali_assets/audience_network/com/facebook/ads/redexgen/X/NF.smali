.class public final Lcom/facebook/ads/redexgen/X/NF;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/graphics/drawable/Drawable;

.field public A01:Landroid/widget/TextView;

.field public A02:Landroid/widget/TextView;

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NF;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NF;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 44827
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44828
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NF;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 44829
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NF;->A01()V

    .line 44830
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/NF;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/NF;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/NF;->A05:[Ljava/lang/String;

    const-string v1, "BgS7v0vuK4FmmS5TgN4Oq9qrsj8N"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "egQQbAPCKiEugSC3TXQQi3lfGkkhl"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x58

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01()V
    .locals 10

    .line 44831
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NF;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 44832
    .local p0, "density":F
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/NF;->setOrientation(I)V

    .line 44833
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NF;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Landroid/widget/TextView;

    .line 44834
    const/4 v9, -0x2

    const/4 v8, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44835
    .local v0, "titleTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Landroid/widget/TextView;

    const/high16 v7, -0x1000000

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44836
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Landroid/widget/TextView;

    const/4 v6, 0x2

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44837
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 44838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 44839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/NF;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44841
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NF;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    .line 44842
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44843
    .local v5, "subtitleTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 44844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44845
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44846
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 44847
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 44848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 44849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/NF;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44851
    return-void
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NF;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6t
        0x1at
        0x1at
        0x1et
        0x1dt
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Mfdbn5Fl8k5qESsaG0tegRjcib9VHyOt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "n0hxWP15hSbsHLgypwcG0GAEv81vEzmV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Vpnz2oFEzE2IYGPVAE8ZMW29wyhZcEwz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XXuq8LnmLUMAtFguuOE2ao"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "65dSWN68FJcVNMzXlJchEDZxxrt4hqBN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4lVNSswaDDObG8m1C4PrWCxrHhrY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bBsj4v6TxeKFgxIfhKXDpm0rApYDu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "O9LsOEgR32mEkKEZI9qaQe7VINaI1GfC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NF;->A05:[Ljava/lang/String;

    return-void
.end method

.method private getPadlockDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 44852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A00:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 44853
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NF;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0C:Lcom/facebook/ads/redexgen/X/Lr;

    .line 44854
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->A03(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A00:Landroid/graphics/drawable/Drawable;

    .line 44855
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A00:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public setSubtitle(Ljava/lang/String;)V
    .locals 6

    .line 44856
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 44857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44858
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44859
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/NF;
    :goto_0
    return-void

    .line 44860
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 44861
    .local p0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44862
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    .line 44863
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NF;->getPadlockDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44864
    :goto_1
    invoke-virtual {v4, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 44865
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 44866
    :cond_1
    move-object v0, v5

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 44867
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44868
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44869
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44870
    :goto_0
    return-void

    .line 44871
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44872
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
