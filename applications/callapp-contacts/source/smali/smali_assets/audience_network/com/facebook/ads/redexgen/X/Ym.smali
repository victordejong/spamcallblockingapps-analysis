.class public abstract Lcom/facebook/ads/redexgen/X/Ym;
.super Lcom/facebook/ads/redexgen/X/Nx;
.source ""


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Jj;

.field public A01:Lcom/facebook/ads/redexgen/X/Hv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Hi;

.field public final A03:Lcom/facebook/ads/redexgen/X/16;

.field public final A04:Lcom/facebook/ads/redexgen/X/19;

.field public final A05:Lcom/facebook/ads/redexgen/X/Nf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 61448
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ym;->A0L()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ym;->A0K()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ym;->A0B:I

    .line 61449
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ym;->A0F:I

    .line 61450
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ym;->A08:I

    .line 61451
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ym;->A0E:I

    .line 61452
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ym;->A0C:I

    .line 61453
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ym;->A0D:I

    .line 61454
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ym;->A0H:I

    .line 61455
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41d00000    # 26.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ym;->A0G:I

    .line 61456
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ym;->A09:I

    .line 61457
    sget v1, Lcom/facebook/ads/redexgen/X/Ym;->A09:I

    .line 61458
    const/16 v0, 0x5a

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ym;->A0A:I

    .line 61459
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/O1;Z)V
    .locals 4

    .line 61460
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Nx;-><init>(Lcom/facebook/ads/redexgen/X/O1;Z)V

    .line 61461
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 61462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A04:Lcom/facebook/ads/redexgen/X/19;

    .line 61463
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ym;->A0I(Lcom/facebook/ads/redexgen/X/O1;)Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A05:Lcom/facebook/ads/redexgen/X/Nf;

    .line 61464
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A08()Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v3

    .line 61465
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/M4;
    if-eqz v3, :cond_0

    .line 61466
    const/4 v2, -0x1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/M4;->getToolbarHeight()I

    move-result v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/M4;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61467
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/M4;->setPageDetailsVisible(Z)V

    .line 61468
    :cond_0
    return-void
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/O1;)Lcom/facebook/ads/redexgen/X/Nf;
    .locals 16

    .line 61469
    move-object/from16 v2, p0

    const/4 v3, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61470
    .local p1, "adDetailsParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61471
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0X()Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x25

    const/16 v3, 0xe

    const/16 v1, 0x38

    invoke-static {v4, v3, v1}, Lcom/facebook/ads/redexgen/X/Ym;->A0J(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61472
    sget-object v1, Lcom/facebook/ads/redexgen/X/PR;->A04:Lcom/facebook/ads/redexgen/X/PR;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/PR;->A02()Ljava/lang/String;

    move-result-object v11

    .line 61473
    .local v1, "clickEvent":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/J4;->A1U(Landroid/content/Context;)Z

    move-result v3

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    .line 61474
    new-instance v6, Lcom/facebook/ads/redexgen/X/cj;

    .line 61475
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v8

    sget v9, Lcom/facebook/ads/redexgen/X/Ym;->A0B:I

    .line 61476
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Nx;->getColors()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v10

    .line 61477
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/O1;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v12

    .line 61478
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/O1;->A09()Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v13

    .line 61479
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/O1;->A0B()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v14

    .line 61480
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/O1;->A07()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v15

    move-object v7, v6

    move-object v11, v11

    invoke-direct/range {v7 .. v15}, Lcom/facebook/ads/redexgen/X/cj;-><init>(Lcom/facebook/ads/redexgen/X/XJ;ILcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    .line 61481
    .local v2, "detailsView":Lcom/facebook/ads/redexgen/X/Nf;
    sget v5, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    sget v4, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    sget v3, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    invoke-virtual {v0, v5, v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 61482
    :goto_1
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 61483
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/O1;->A00()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/facebook/ads/redexgen/X/Nf;->A0E(I)V

    .line 61484
    invoke-virtual {v2, v6, v0}, Lcom/facebook/ads/redexgen/X/Ym;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61485
    return-object v6

    .line 61486
    .end local v2    # "detailsView":Lcom/facebook/ads/redexgen/X/Nf;
    :cond_0
    new-instance v6, Lcom/facebook/ads/redexgen/X/Yn;

    .line 61487
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v7

    sget v8, Lcom/facebook/ads/redexgen/X/Ym;->A0B:I

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Ym;->A04:Lcom/facebook/ads/redexgen/X/19;

    .line 61488
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1G;->A00()Lcom/facebook/ads/redexgen/X/1E;

    move-result-object v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/1E;->A05:Lcom/facebook/ads/redexgen/X/1E;

    if-ne v4, v3, :cond_1

    const/4 v9, 0x1

    .line 61489
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Nx;->getColors()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v10

    .line 61490
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/O1;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v12

    .line 61491
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/O1;->A09()Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v13

    .line 61492
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/O1;->A0B()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v14

    .line 61493
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/O1;->A07()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v15

    invoke-direct/range {v6 .. v15}, Lcom/facebook/ads/redexgen/X/Yn;-><init>(Lcom/facebook/ads/redexgen/X/XJ;IZLcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    .line 61494
    .restart local v2    # "detailsView":Lcom/facebook/ads/redexgen/X/Nf;
    const/16 v5, 0x190

    const/16 v4, 0x64

    new-instance v3, Lcom/facebook/ads/redexgen/X/Hi;

    invoke-direct {v3, v6, v5, v4, v1}, Lcom/facebook/ads/redexgen/X/Hi;-><init>(Landroid/view/View;III)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Ym;->A02:Lcom/facebook/ads/redexgen/X/Hi;

    goto :goto_1

    .line 61495
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 61496
    :cond_2
    const/4 v7, 0x0

    const/16 v6, 0x25

    const/16 v5, 0x7c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ym;->A07:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v3, v3, v1

    const/16 v1, 0xe

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v1, 0x32

    if-eq v3, v1, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ym;->A07:[Ljava/lang/String;

    const-string v3, "WUaGuSp4tuIpD6iTfwLrbbBI"

    const/4 v1, 0x5

    aput-object v3, v4, v1

    invoke-static {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/Ym;->A0J(III)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0
.end method

.method public static A0J(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ym;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x16

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0K()V
    .locals 1

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ym;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x9t
        0x5t
        0x7t
        0x44t
        0xct
        0xbt
        0x9t
        0xft
        0x8t
        0x5t
        0x5t
        0x1t
        0x44t
        0xbt
        0xet
        0x19t
        0x44t
        0x3t
        0x4t
        0x1et
        0xft
        0x18t
        0x19t
        0x1et
        0x3t
        0x1et
        0x3t
        0xbt
        0x6t
        0x44t
        0x9t
        0x6t
        0x3t
        0x9t
        0x1t
        0xft
        0xet
        0x5ct
        0x4bt
        0x59t
        0x4ft
        0x5ct
        0x4at
        0x4bt
        0x4at
        0x71t
        0x58t
        0x47t
        0x4at
        0x4bt
        0x41t
    .end array-data
.end method

.method public static A0L()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1qM0UqBuKeNFs4931PZdKXfB5ZchECK5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3ZSmcCEAG5Dz0dWrJNlp2MNszP7YT25A"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Vrvau7r1HMpQKQXhvyVkTfJZAsfHOW4A"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oVRoE2FdK0le1s2SfNIozg00Kc9sH4MP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "npYoVlwUwM4clRwIxvjz9nauDkw8jySV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7Yuh663Y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kkRlGGIMUj7iwn7pYEfT9Vq54HRzcbQk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UynwTjbvMY6JmtelA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ym;->A07:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 7
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61497
    move-object v4, p2

    move-object p2, v4

    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Nx;->A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 61498
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ym;->A05:Lcom/facebook/ads/redexgen/X/Nf;

    .line 61499
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    .line 61500
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 61501
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v5

    .line 61502
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Nf;->setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 61503
    return-void
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/M4;)I
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/M4;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61504
    if-nez p1, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/M4;->A00:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/M4;->getToolbarHeight()I

    move-result v0

    goto :goto_0
.end method

.method public A0d()V
    .locals 9

    .line 61505
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nf;->getExpandableLayout()Landroid/view/View;

    move-result-object v5

    .line 61506
    .local p0, "expandableLayout":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 61507
    const/4 v8, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, v8}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    .line 61508
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ym;->A01:Lcom/facebook/ads/redexgen/X/Hv;

    if-eqz v4, :cond_0

    .line 61509
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ym;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ym;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ym;->A07:[Ljava/lang/String;

    const-string v1, "KTvg88bTO6HmKn15GgbH1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Jj;->A0J(Lcom/facebook/ads/redexgen/X/Pl;)V

    .line 61510
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v7

    .line 61511
    .local v0, "colors":Lcom/facebook/ads/redexgen/X/1I;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ym;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    .line 61512
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nf;->getCTAButton()Lcom/facebook/ads/redexgen/X/a7;

    move-result-object v3

    const/4 v2, -0x1

    .line 61513
    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/1I;->A09(Z)I

    move-result v1

    const/16 v6, 0x12c

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hk;

    invoke-direct {v0, v3, v6, v2, v1}, Lcom/facebook/ads/redexgen/X/Hk;-><init>(Landroid/view/View;III)V

    .line 61514
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0J(Lcom/facebook/ads/redexgen/X/Pl;)V

    .line 61515
    sget v2, Lcom/facebook/ads/redexgen/X/Ym;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ym;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ym;->A08:I

    .line 61516
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A09(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 61517
    .local v8, "startDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/1I;->A08(Z)I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Ym;->A08:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A06(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 61518
    .local v5, "endDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ym;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    .line 61519
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nf;->getCTAButton()Lcom/facebook/ads/redexgen/X/a7;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hw;

    invoke-direct {v0, v1, v6, v4, v3}, Lcom/facebook/ads/redexgen/X/Hw;-><init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 61520
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0J(Lcom/facebook/ads/redexgen/X/Pl;)V

    .line 61521
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ym;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    const/16 v2, 0x96

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hq;

    invoke-direct {v0, v5, v2, v1}, Lcom/facebook/ads/redexgen/X/Hq;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0J(Lcom/facebook/ads/redexgen/X/Pl;)V

    .line 61522
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ym;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    const/16 v0, 0x8fc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0I(I)V

    .line 61523
    .end local v0    # "colors":Lcom/facebook/ads/redexgen/X/1I;
    .end local v5    # "endDrawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "startDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;
    .locals 1

    .line 61524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A03:Lcom/facebook/ads/redexgen/X/16;

    return-object v0
.end method

.method public getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/Hi;
    .locals 1

    .line 61525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A02:Lcom/facebook/ads/redexgen/X/Hi;

    return-object v0
.end method

.method public getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;
    .locals 1

    .line 61526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A05:Lcom/facebook/ads/redexgen/X/Nf;

    return-object v0
.end method

.method public getAdInfo()Lcom/facebook/ads/redexgen/X/19;
    .locals 1

    .line 61527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A04:Lcom/facebook/ads/redexgen/X/19;

    return-object v0
.end method

.method public getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jj;
    .locals 1

    .line 61528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 61529
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Nx;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61530
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A0E(I)V

    .line 61531
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 61532
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Nx;->onLayout(ZIIII)V

    .line 61533
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nf;->getExpandableLayout()Landroid/view/View;

    move-result-object v4

    .line 61534
    .local p0, "expandableLayout":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 61535
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ym;->A01:Lcom/facebook/ads/redexgen/X/Hv;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ym;->A07:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ym;->A07:[Ljava/lang/String;

    const-string v1, "AO2Vor543jhYYkt1oYijcT7buZTkR3eI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 61536
    const/16 v3, 0x12c

    .line 61537
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hv;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Hv;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A01:Lcom/facebook/ads/redexgen/X/Hv;

    .line 61538
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ym;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A01:Lcom/facebook/ads/redexgen/X/Hv;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0J(Lcom/facebook/ads/redexgen/X/Pl;)V

    .line 61539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A00:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0H()V

    .line 61540
    :cond_1
    return-void
.end method
