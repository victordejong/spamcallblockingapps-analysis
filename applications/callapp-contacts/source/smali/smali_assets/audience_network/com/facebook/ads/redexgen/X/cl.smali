.class public final Lcom/facebook/ads/redexgen/X/cl;
.super Lcom/facebook/ads/redexgen/X/MW;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:I

.field public static final A03:I

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 73204
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cl;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cl;->A01()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cl;->A02:I

    .line 73205
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cl;->A05:I

    .line 73206
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cl;->A03:I

    .line 73207
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cl;->A06:I

    .line 73208
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cl;->A04:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;I)V
    .locals 10

    .line 73209
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/MW;-><init>(Lcom/facebook/ads/redexgen/X/XJ;I)V

    .line 73210
    sget v0, Lcom/facebook/ads/redexgen/X/cl;->A02:I

    const/4 v6, 0x0

    invoke-super {p0, v0, v6, v0, v6}, Lcom/facebook/ads/redexgen/X/MW;->setPadding(IIII)V

    .line 73211
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/LinearLayout;

    sget v2, Lcom/facebook/ads/redexgen/X/cl;->A02:I

    div-int/lit8 v1, v2, 0x3

    div-int/lit8 v0, v2, 0x3

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 73212
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73213
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/cl;->A02:I

    div-int/lit8 v3, v0, 0x4

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v1, v0, 0x4

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    const/4 v9, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73215
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73216
    .local p0, "genericParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x10

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73217
    sget v0, Lcom/facebook/ads/redexgen/X/cl;->A06:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73218
    .local v6, "progressSpinnerParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73219
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/Nl;

    sget v0, Lcom/facebook/ads/redexgen/X/cl;->A02:I

    div-int/lit8 v5, v0, 0x3

    div-int/lit8 v2, v0, 0x3

    div-int/lit8 v1, v0, 0x3

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {v8, v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nl;->setPadding(IIII)V

    .line 73220
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/Nl;

    const/16 v0, 0x4d

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    invoke-virtual {v1, v0, v9}, Lcom/facebook/ads/redexgen/X/Nl;->A02(II)V

    .line 73221
    sget v0, Lcom/facebook/ads/redexgen/X/cl;->A05:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73222
    .local p2, "skipIconParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73223
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 73225
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/MW;->removeAllViews()V

    .line 73226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/LinearLayout;

    invoke-super {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/MW;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 73228
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/Nl;

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73229
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73230
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73231
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/cl;->setToolbarActionMode(I)V

    .line 73232
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cl;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x31

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cl;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x12t
        0x6t
        0x4t
        0xbt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eX0NjQS6Cv0cdupm07HV5hzKAxMqH0d"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wx0dbtAc6pD49FoTqFpKctGdSqsA8n1n"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9JOMWIFuCKG1ze3B51PWtKtXX7g1EywZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gAmwb49m1jF7v3L1lyLoTXmCcSr8lTwL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cJX3oWeWBOAhIZgSwLbGNRfmWHdVGE1s"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ih2ASPIbB6Mipq7FMEYWa4gJohMeYNDI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rzdVRvGtIJZPIPQmsJTUAvMIxIP5Lc8q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0g5ABkfLP1KnY0Lvl5QhU96hc6mXXT01"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cl;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setBackgroundColor(I)V
    .locals 2

    .line 73233
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 73234
    .local p0, "backgroundStyle":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 73235
    sget v0, Lcom/facebook/ads/redexgen/X/cl;->A04:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 73236
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 73237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 73238
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 7

    .line 73239
    iput p1, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:I

    .line 73240
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/Nl;

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v3, 0x8

    if-ne p1, v6, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nl;->setVisibility(I)V

    .line 73241
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/ImageView;

    if-ne p1, v6, :cond_0

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73242
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/cl;->setVisibility(I)V

    .line 73243
    if-eqz p1, :cond_6

    const/4 v4, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/cl;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 73244
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 73245
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/cl;->A01:[Ljava/lang/String;

    const-string v1, "gbryvxzxWbgdISpi68yKK"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq p1, v4, :cond_5

    .line 73246
    if-eq p1, v6, :cond_4

    .line 73247
    sget-object v6, Lcom/facebook/ads/redexgen/X/Lp;->A0G:Lcom/facebook/ads/redexgen/X/Lp;

    sget-object v2, Lcom/facebook/ads/redexgen/X/cl;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    .line 73248
    .local p0, "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lp;
    sget-object v2, Lcom/facebook/ads/redexgen/X/cl;->A01:[Ljava/lang/String;

    const-string v1, "UrnokoQiBoDCm04uktVsKTex7gx9vt3n"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "egtCMqV5BxdQcc2mWmQaAJ5IHSQPeiLw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/cl;->setVisibility(I)V

    goto :goto_2

    .local p0, "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lp;
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/cl;->A01:[Ljava/lang/String;

    const-string v1, "dtJQOcGhcOIZshHIUvOU7iXJcRU71ekd"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/cl;->setVisibility(I)V

    goto :goto_2

    .line 73249
    .end local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lp;
    :cond_4
    sget-object v6, Lcom/facebook/ads/redexgen/X/Lp;->A0G:Lcom/facebook/ads/redexgen/X/Lp;

    .line 73250
    .restart local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lp;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73252
    goto :goto_2

    .line 73253
    .end local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lp;
    :cond_5
    sget-object v6, Lcom/facebook/ads/redexgen/X/Lp;->A0U:Lcom/facebook/ads/redexgen/X/Lp;

    .line 73254
    .restart local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lp;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73255
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cl;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->setToolbarMessage(Ljava/lang/String;)V

    .line 73256
    goto :goto_2

    .line 73257
    .end local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lp;
    :cond_6
    sget-object v6, Lcom/facebook/ads/redexgen/X/Lp;->A0G:Lcom/facebook/ads/redexgen/X/Lp;

    .line 73258
    .restart local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/Lp;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/cl;->A02:I

    div-int/lit8 v4, v0, 0x3

    div-int/lit8 v2, v0, 0x3

    div-int/lit8 v1, v0, 0x3

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {v5, v4, v2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 73259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 73260
    .local p1, "closeIconParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_7

    .line 73261
    sget v0, Lcom/facebook/ads/redexgen/X/cl;->A03:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73262
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73264
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73265
    .end local p1    # "closeIconParams":Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73266
    const/16 v1, 0x3ea

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0J(ILandroid/view/View;)V

    .line 73267
    return-void
.end method
