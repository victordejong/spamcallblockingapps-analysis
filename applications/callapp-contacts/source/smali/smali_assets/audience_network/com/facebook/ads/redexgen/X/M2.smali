.class public final Lcom/facebook/ads/redexgen/X/M2;
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

.field public final A02:Lcom/facebook/ads/redexgen/X/XJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 43466
    invoke-static {}, Lcom/facebook/ads/redexgen/X/M2;->A02()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M2;->A07:I

    .line 43467
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M2;->A04:I

    .line 43468
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M2;->A05:I

    .line 43469
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M2;->A08:I

    .line 43470
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M2;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;I)V
    .locals 1

    .line 43471
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43472
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M2;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    .line 43473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M2;->setOrientation(I)V

    .line 43474
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A00:Landroid/widget/ImageView;

    .line 43475
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:Landroid/widget/ImageView;

    .line 43476
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/M2;->A03(I)V

    .line 43477
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/M2;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 43478
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M2;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/M2;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5b

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/M2;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x76t
        0x53t
    .end array-data
.end method

.method private A03(I)V
    .locals 7

    .line 43479
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M2;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A07:Lcom/facebook/ads/redexgen/X/Lp;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M2;->A04(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 43480
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    .line 43481
    sget v2, Lcom/facebook/ads/redexgen/X/M2;->A04:I

    div-int/lit8 v1, v2, 0x3

    div-int/lit8 v0, v2, 0x3

    invoke-virtual {p0, v2, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/M2;->setPadding(IIII)V

    .line 43482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43483
    .local v0, "adTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M2;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43484
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43485
    sget v2, Lcom/facebook/ads/redexgen/X/M2;->A04:I

    div-int/lit8 v1, v2, 0x2

    div-int/lit8 v0, v2, 0x2

    div-int/2addr v2, v6

    invoke-virtual {v4, v3, v1, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43486
    const/16 v0, 0xd

    invoke-static {v4, v5, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 43487
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43488
    .local p0, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43489
    invoke-virtual {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/M2;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43490
    sget v0, Lcom/facebook/ads/redexgen/X/M2;->A06:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43491
    .local v1, "adChoicesIconParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/M2;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43493
    .end local p0    # "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "adChoicesIconParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v0    # "adTextView":Landroid/widget/TextView;
    .end local p0
    .end local v1
    .end local v5
    :goto_0
    return-void

    .line 43494
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/M2;->A04:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/M2;->setPadding(IIII)V

    .line 43495
    if-ne p1, v5, :cond_1

    .line 43496
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lp;->A08:Lcom/facebook/ads/redexgen/X/Lp;

    .line 43497
    .local p0, "infoIconImage":Lcom/facebook/ads/redexgen/X/Lp;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/M2;->A04(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 43498
    sget v0, Lcom/facebook/ads/redexgen/X/M2;->A05:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43499
    .local v1, "infoButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/M2;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43501
    sget v0, Lcom/facebook/ads/redexgen/X/M2;->A05:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43502
    .local v5, "adChoicesParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/M2;->A08:I

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 43503
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/M2;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 43505
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lp;->A0H:Lcom/facebook/ads/redexgen/X/Lp;

    goto :goto_1
.end method

.method public static A04(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Lp;)V
    .locals 1

    .line 43506
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43507
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43508
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 43509
    return-void
.end method


# virtual methods
.method public setAdDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JJ;Lcom/facebook/ads/redexgen/X/M9;)V
    .locals 6

    .line 43510
    new-instance v0, Lcom/facebook/ads/redexgen/X/M1;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    move-object v3, p4

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/M1;-><init>(Lcom/facebook/ads/redexgen/X/M2;Lcom/facebook/ads/redexgen/X/JJ;Lcom/facebook/ads/redexgen/X/M9;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43511
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 43512
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43513
    .local p0, "backgroundStyle":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 43514
    sget v0, Lcom/facebook/ads/redexgen/X/M2;->A07:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43515
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43516
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43517
    return-void
.end method

.method public setIconColors(I)V
    .locals 1

    .line 43518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 43519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 43520
    return-void
.end method
