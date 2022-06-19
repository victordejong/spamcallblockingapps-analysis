.class public final Lcom/facebook/ads/redexgen/X/83;
.super Lcom/facebook/ads/redexgen/X/bb;
.source ""


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:I

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I

.field public static final A0K:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/S1;

.field public A04:Lcom/facebook/ads/redexgen/X/7D;

.field public A05:Lcom/facebook/ads/redexgen/X/2m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/redexgen/X/Nn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/RH;

.field public A08:Lcom/facebook/ads/redexgen/X/QD;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A09:Lcom/facebook/ads/redexgen/X/QE;

.field public A0A:Ljava/lang/String;

.field public A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ot;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A0D:Lcom/facebook/ads/redexgen/X/La;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 16950
    invoke-static {}, Lcom/facebook/ads/redexgen/X/83;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/83;->A09()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/83;->A0G:I

    .line 16951
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/83;->A0H:I

    .line 16952
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/83;->A0I:I

    .line 16953
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/83;->A0K:I

    .line 16954
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/83;->A0J:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/S1;)V
    .locals 1

    .line 16955
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/ads/redexgen/X/bb;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/S1;)V

    .line 16956
    new-instance v0, Lcom/facebook/ads/redexgen/X/La;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/La;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0D:Lcom/facebook/ads/redexgen/X/La;

    .line 16957
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/83;->A04:Lcom/facebook/ads/redexgen/X/7D;

    .line 16958
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 16959
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/S1;
    .locals 0

    .line 16960
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/S1;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/S1;
    .locals 0

    .line 16961
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 16962
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 16963
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/La;
    .locals 0

    .line 16964
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/83;->A0D:Lcom/facebook/ads/redexgen/X/La;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/Nn;
    .locals 0

    .line 16965
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/83;->A06:Lcom/facebook/ads/redexgen/X/Nn;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 0

    .line 16966
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/QE;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/83;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/83;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/83;->A0F:[Ljava/lang/String;

    const-string v1, "I427OJiZERIl1pgFYs7VIJxgJMuHqTWY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "m1VK8a3APoHjuOOKlTc7gi9yCeUy6Tbh"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/83;)Ljava/lang/String;
    .locals 0

    .line 16967
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/83;->A0A:Ljava/lang/String;

    return-object p0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/83;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x76t
        0x73t
        0x48t
        0x73t
        0x76t
        0x63t
        0x76t
        0x48t
        0x75t
        0x62t
        0x79t
        0x73t
        0x7bt
        0x72t
    .end array-data
.end method

.method public static A0A()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hEO5MspmmQwWZDjfO9hYkGtE8t8ljCUN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "895GOd6GqHS2SDNwtQvAqIE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zBXblOu1CdgXx49mdyV8flA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GxqIbNjcrUQMSJiuMkyJv1mwkudVYaGP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "be3ZgXhlaup3yXbKLr41yKjcTusIQNjx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HLi8FTj59ZkYUe8FmXrpO0CEflvtIm0o"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7bereGXxKpIS6kk2UNHV0kt11i4QSfeP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LRvrjmvhZNKPrr4qRukG9JYrfPQqD7wd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/83;->A0F:[Ljava/lang/String;

    return-void
.end method

.method private final A0B()V
    .locals 2

    .line 16968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 16969
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 16970
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    .line 16971
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    if-eqz v0, :cond_1

    .line 16972
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2m;->removeAllViews()V

    .line 16973
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    .line 16974
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A06:Lcom/facebook/ads/redexgen/X/Nn;

    if-eqz v0, :cond_2

    .line 16975
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nn;->removeAllViews()V

    .line 16976
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/83;->A06:Lcom/facebook/ads/redexgen/X/Nn;

    .line 16977
    :cond_2
    return-void
.end method

.method private final A0C(ILandroid/os/Bundle;)V
    .locals 17
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16978
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/83;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    .line 16979
    const/4 v5, 0x1

    move/from16 v15, p1

    if-ne v15, v5, :cond_3

    .line 16980
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 16981
    :goto_0
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16982
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16983
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lh;->A02:Landroid/util/DisplayMetrics;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16984
    .local v0, "width":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lh;->A02:Landroid/util/DisplayMetrics;

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 16985
    .local v0, "height":I
    if-ne v15, v5, :cond_2

    .line 16986
    sget v0, Lcom/facebook/ads/redexgen/X/83;->A0H:I

    mul-int/lit8 v0, v0, 0x4

    sub-int v2, v3, v0

    div-int/lit8 v0, v12, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 16987
    .local v15, "childWidth":I
    sub-int/2addr v3, v12

    div-int/lit8 v13, v3, 0x8

    .line 16988
    .local v9, "childSpacing":I
    mul-int/lit8 v14, v13, 0x4

    .line 16989
    .local v15, "extraSpacing":I
    .end local v15    # "extraSpacing":I
    .end local v9    # "childSpacing":I
    .local v0, "childWidth":I
    .local v12, "childSpacing":I
    .local v0, "extraSpacing":I
    :goto_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/R8;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/R8;-><init>(Lcom/facebook/ads/redexgen/X/83;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A08:Lcom/facebook/ads/redexgen/X/QD;

    .line 16990
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A08:Lcom/facebook/ads/redexgen/X/QD;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QE;

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/facebook/ads/redexgen/X/QE;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/QE;

    .line 16991
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/QE;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/83;->A00:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QE;->A0X(I)V

    .line 16992
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/QE;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/83;->A01:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QE;->A0Y(I)V

    .line 16993
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2m;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/2m;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    .line 16994
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16995
    new-instance v4, Lcom/facebook/ads/redexgen/X/RH;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A0B:Ljava/util/List;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/QE;

    move-object v4, v4

    move-object v5, v3

    move v6, v15

    move-object v7, v2

    move-object v8, v0

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/RH;-><init>(Lcom/facebook/ads/redexgen/X/2m;ILjava/util/List;Lcom/facebook/ads/redexgen/X/QE;Landroid/os/Bundle;)V

    iput-object v4, v1, Lcom/facebook/ads/redexgen/X/83;->A07:Lcom/facebook/ads/redexgen/X/RH;

    .line 16996
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    new-instance v2, Lcom/facebook/ads/redexgen/X/R9;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/83;->A0B:Ljava/util/List;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/S1;

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/bb;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v7, v1, Lcom/facebook/ads/redexgen/X/83;->A04:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v8, v1, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/QE;

    iget-object v9, v1, Lcom/facebook/ads/redexgen/X/83;->A0D:Lcom/facebook/ads/redexgen/X/La;

    .line 16997
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/bb;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v10

    iget-object v11, v1, Lcom/facebook/ads/redexgen/X/83;->A0A:Ljava/lang/String;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/83;->A07:Lcom/facebook/ads/redexgen/X/RH;

    move-object v2, v2

    .end local v0    # "extraSpacing":I
    .local v2, "height":I
    .end local v0
    .local v0, "width":I
    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lcom/facebook/ads/redexgen/X/R9;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;Lcom/facebook/ads/redexgen/X/M9;Ljava/lang/String;IIIILcom/facebook/ads/redexgen/X/RH;)V

    .line 16998
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    .line 16999
    const/4 v0, 0x1

    if-ne v15, v0, :cond_1

    .line 17000
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/83;->A07:Lcom/facebook/ads/redexgen/X/RH;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/83;->A0E(Lcom/facebook/ads/redexgen/X/RH;)V

    .line 17001
    :goto_2
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    sget-object v1, Lcom/facebook/ads/redexgen/X/83;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/83;->A0F:[Ljava/lang/String;

    const-string v1, "pS0yYjaDPNGuTrfnUmeGhxtdEtLadoEJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "mwC7eMAbLdHre0yQkkMBVztsNAF33a9m"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17002
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/83;->A06:Lcom/facebook/ads/redexgen/X/Nn;

    if-eqz v5, :cond_0

    .line 17003
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/83;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/83;->A0F:[Ljava/lang/String;

    const-string v1, "7ZjVpxQcOo2BFfYt51qxyVC8jdlns0bj"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17004
    :cond_0
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v4, v1, v0, v15}, Lcom/facebook/ads/redexgen/X/bb;->A0Z(Landroid/view/View;ZI)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/83;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    .line 17005
    return-void

    .line 17006
    :cond_1
    move-object/from16 v4, p0

    goto :goto_2

    .line 17007
    .end local v15
    .end local v9
    .end local v15
    :cond_2
    sget v2, Lcom/facebook/ads/redexgen/X/83;->A0K:I

    sget v0, Lcom/facebook/ads/redexgen/X/83;->A0G:I

    add-int/2addr v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/83;->A0H:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v2, v0

    sub-int/2addr v12, v2

    .line 17008
    .restart local v15    # "extraSpacing":I
    sget v13, Lcom/facebook/ads/redexgen/X/83;->A0H:I

    .line 17009
    .restart local v9    # "childSpacing":I
    mul-int/lit8 v14, v13, 0x2

    goto/16 :goto_1

    .line 17010
    :cond_3
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_0

    .line 17011
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/83;->A0F:[Ljava/lang/String;

    const-string v1, "nKvQ299cRrmi8SltfoUYXILZ1CbfqCSq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/S1;)V
    .locals 6

    .line 17012
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/S1;

    .line 17013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0A:Ljava/lang/String;

    .line 17014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0H()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/83;->A00:I

    .line 17015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/83;->A01:I

    .line 17016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0a()Ljava/util/List;

    move-result-object v5

    .line 17017
    .local p0, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0B:Ljava/util/List;

    .line 17018
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 17019
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/19;

    .line 17020
    .local v0, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/83;->A0B:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ot;

    invoke-direct {v0, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/Ot;-><init>(IILcom/facebook/ads/redexgen/X/19;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17021
    .end local v0    # "adInfo":Lcom/facebook/ads/redexgen/X/19;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17022
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/RH;)V
    .locals 4

    .line 17023
    new-instance v1, Lcom/facebook/ads/redexgen/X/Er;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Er;-><init>()V

    .line 17024
    .local p0, "mSnapHelper":Lcom/facebook/ads/redexgen/X/TS;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/TS;->A0I(Lcom/facebook/ads/redexgen/X/Eq;)V

    .line 17025
    new-instance v0, Lcom/facebook/ads/redexgen/X/R7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/R7;-><init>(Lcom/facebook/ads/redexgen/X/83;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A0b(Lcom/facebook/ads/redexgen/X/OB;)V

    .line 17026
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A05:Lcom/facebook/ads/redexgen/X/17;

    .line 17027
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nn;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Nn;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1I;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A06:Lcom/facebook/ads/redexgen/X/Nn;

    .line 17028
    sget v1, Lcom/facebook/ads/redexgen/X/83;->A0I:I

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 17029
    .local p1, "positionDotsLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/83;->A0J:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 17030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A06:Lcom/facebook/ads/redexgen/X/Nn;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Nn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17031
    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/83;Lcom/facebook/ads/redexgen/X/La;)V
    .locals 0

    .line 17032
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/bb;->setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/La;)V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/83;Lcom/facebook/ads/redexgen/X/La;)V
    .locals 0

    .line 17033
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/bb;->setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/La;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/83;)Z
    .locals 0

    .line 17034
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/bb;->A06:Z

    return p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/83;)Z
    .locals 0

    .line 17035
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bb;->A0d()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/83;)Z
    .locals 0

    .line 17036
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bb;->A0e()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/83;)Z
    .locals 0

    .line 17037
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/bb;->A06:Z

    return p0
.end method


# virtual methods
.method public final A0f()Z
    .locals 1

    .line 17038
    const/4 v0, 0x0

    return v0
.end method

.method public final A8J(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 3

    .line 17039
    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/83;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S1;

    .line 17040
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/S1;
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/bb;->A0a(Lcom/facebook/ads/redexgen/X/50;)V

    .line 17041
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/83;->A0D(Lcom/facebook/ads/redexgen/X/S1;)V

    .line 17042
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17043
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/83;->A0C(ILandroid/os/Bundle;)V

    .line 17044
    new-instance v0, Lcom/facebook/ads/redexgen/X/R6;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/R6;-><init>(Lcom/facebook/ads/redexgen/X/83;Lcom/facebook/ads/redexgen/X/50;)V

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/50;->A0L(Lcom/facebook/ads/redexgen/X/4y;)V

    .line 17045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v0

    .line 17046
    .local p1, "unskippableSec":I
    if-lez v0, :cond_0

    .line 17047
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bb;->A0Y(I)V

    .line 17048
    :cond_0
    return-void
.end method

.method public final AB2(Z)V
    .locals 1

    .line 17049
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/bb;->AB2(Z)V

    .line 17050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A07:Lcom/facebook/ads/redexgen/X/RH;

    if-eqz v0, :cond_0

    .line 17051
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A0S()V

    .line 17052
    :cond_0
    return-void
.end method

.method public final ABR(Z)V
    .locals 1

    .line 17053
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/bb;->ABR(Z)V

    .line 17054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A07:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A0T()V

    .line 17055
    return-void
.end method

.method public final ADT(Landroid/os/Bundle;)V
    .locals 1

    .line 17056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A07:Lcom/facebook/ads/redexgen/X/RH;

    if-eqz v0, :cond_0

    .line 17057
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RH;->A0Z(Landroid/os/Bundle;)V

    .line 17058
    :cond_0
    return-void
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 17059
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 17060
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17061
    .local p0, "savedInstanceState":Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/83;->ADT(Landroid/os/Bundle;)V

    .line 17062
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/83;->A0B()V

    .line 17063
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/83;->A0C(ILandroid/os/Bundle;)V

    .line 17064
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/bb;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 17065
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 17066
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/bb;->onDestroy()V

    .line 17067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17068
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bb;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/83;->A0A:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/QE;

    .line 17069
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0D:Lcom/facebook/ads/redexgen/X/La;

    .line 17070
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A03(Lcom/facebook/ads/redexgen/X/La;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    .line 17071
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v0

    .line 17072
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8S(Ljava/lang/String;Ljava/util/Map;)V

    .line 17073
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/83;->A0B()V

    .line 17074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0W()V

    .line 17075
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/QE;

    .line 17076
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A08:Lcom/facebook/ads/redexgen/X/QD;

    .line 17077
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0B:Ljava/util/List;

    .line 17078
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 17079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0D:Lcom/facebook/ads/redexgen/X/La;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/La;->A07(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 17080
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/bb;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
