.class public final Lcom/facebook/ads/redexgen/X/83;
.super Lcom/facebook/ads/redexgen/X/SR;
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

.field public A03:Lcom/facebook/ads/redexgen/X/bx;

.field public A04:Lcom/facebook/ads/redexgen/X/7D;

.field public A05:Lcom/facebook/ads/redexgen/X/2m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/redexgen/X/Ni;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/RD;

.field public A08:Lcom/facebook/ads/redexgen/X/Q8;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A09:Lcom/facebook/ads/redexgen/X/Q9;

.field public A0A:Ljava/lang/String;

.field public A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Oo;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Lc;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 17053
    invoke-static {}, Lcom/facebook/ads/redexgen/X/83;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/83;->A09()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/83;->A0G:I

    .line 17054
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/83;->A0H:I

    .line 17055
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/83;->A0I:I

    .line 17056
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/83;->A0K:I

    .line 17057
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/83;->A0J:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/bx;)V
    .locals 1

    .line 17058
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/ads/redexgen/X/SR;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/bx;)V

    .line 17059
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0D:Lcom/facebook/ads/redexgen/X/Lc;

    .line 17060
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/83;->A04:Lcom/facebook/ads/redexgen/X/7D;

    .line 17061
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    .line 17062
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/bx;
    .locals 0

    .line 17063
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/bx;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/bx;
    .locals 0

    .line 17064
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 17065
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 17066
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SR;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/Lc;
    .locals 0

    .line 17067
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/83;->A0D:Lcom/facebook/ads/redexgen/X/Lc;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/Ni;
    .locals 0

    .line 17068
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/83;->A06:Lcom/facebook/ads/redexgen/X/Ni;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/Q9;
    .locals 0

    .line 17069
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/Q9;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/83;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/83;)Ljava/lang/String;
    .locals 0

    .line 17070
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
        0x42t
        0x47t
        0x7ct
        0x47t
        0x42t
        0x57t
        0x42t
        0x7ct
        0x41t
        0x56t
        0x4dt
        0x47t
        0x4ft
        0x46t
    .end array-data
.end method

.method public static A0A()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tW3Su6P8GZp1yTngpwFy2DF2GhDzXnf2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3HQabaXZCQWVf5CedpF1izNpaoU6B"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XHPkWVuaRS230ZzCiYR7qtQACoZnYKM5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gQNAwnCobdMDtnebLpL2jf4350QwOymE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dRJ3n5TbirTJDeON6upQokchUTJmTtSu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "43KhzPf8qbqk0SZtfSmXLCVXJtKHuuuO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kYCENHGiqRDWZvuV9M2TmYzxFqbu31T5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7NDfQDtGKt0HcNI2moZZTs031QkqKmSX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/83;->A0F:[Ljava/lang/String;

    return-void
.end method

.method private final A0B()V
    .locals 4

    .line 17071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 17072
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/83;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 17073
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/83;->A0F:[Ljava/lang/String;

    const-string v1, "q3JPxnaqJUhKyt95G35P4gQJAerHutmp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    .line 17074
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    if-eqz v0, :cond_2

    .line 17075
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2m;->removeAllViews()V

    .line 17076
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    .line 17077
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A06:Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v0, :cond_3

    .line 17078
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ni;->removeAllViews()V

    .line 17079
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/83;->A06:Lcom/facebook/ads/redexgen/X/Ni;

    .line 17080
    :cond_3
    return-void
.end method

.method private final A0C(ILandroid/os/Bundle;)V
    .locals 17
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17081
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/83;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    .line 17082
    const/4 v5, 0x1

    move/from16 v15, p1

    if-ne v15, v5, :cond_4

    .line 17083
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 17084
    :goto_0
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17085
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 17086
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lj;->A03:Landroid/util/DisplayMetrics;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 17087
    .local v0, "width":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lj;->A03:Landroid/util/DisplayMetrics;

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 17088
    .local v0, "height":I
    if-ne v15, v5, :cond_3

    .line 17089
    sget v0, Lcom/facebook/ads/redexgen/X/83;->A0H:I

    mul-int/lit8 v0, v0, 0x4

    sub-int v2, v3, v0

    div-int/lit8 v0, v12, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 17090
    .local v15, "childWidth":I
    sub-int/2addr v3, v12

    div-int/lit8 v13, v3, 0x8

    .line 17091
    .local v9, "childSpacing":I
    mul-int/lit8 v14, v13, 0x4

    .line 17092
    .local v15, "extraSpacing":I
    .end local v15    # "extraSpacing":I
    .end local v9    # "childSpacing":I
    .local v0, "childWidth":I
    .local v12, "childSpacing":I
    .local v0, "extraSpacing":I
    :goto_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/R4;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/R4;-><init>(Lcom/facebook/ads/redexgen/X/83;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A08:Lcom/facebook/ads/redexgen/X/Q8;

    .line 17093
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A08:Lcom/facebook/ads/redexgen/X/Q8;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Q9;

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Q9;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/Q9;

    .line 17094
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/Q9;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/83;->A00:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0X(I)V

    .line 17095
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/Q9;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/83;->A01:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0Y(I)V

    .line 17096
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2m;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/2m;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    .line 17097
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17098
    new-instance v4, Lcom/facebook/ads/redexgen/X/RD;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A0B:Ljava/util/List;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/Q9;

    move-object v4, v4

    move-object v5, v3

    move v6, v15

    move-object v7, v2

    move-object v8, v0

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/RD;-><init>(Lcom/facebook/ads/redexgen/X/2m;ILjava/util/List;Lcom/facebook/ads/redexgen/X/Q9;Landroid/os/Bundle;)V

    iput-object v4, v1, Lcom/facebook/ads/redexgen/X/83;->A07:Lcom/facebook/ads/redexgen/X/RD;

    .line 17099
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    new-instance v2, Lcom/facebook/ads/redexgen/X/R5;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/83;->A0B:Ljava/util/List;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/bx;

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/SR;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v7, v1, Lcom/facebook/ads/redexgen/X/83;->A04:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v8, v1, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v9, v1, Lcom/facebook/ads/redexgen/X/83;->A0D:Lcom/facebook/ads/redexgen/X/Lc;

    .line 17100
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/SR;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v10

    iget-object v11, v1, Lcom/facebook/ads/redexgen/X/83;->A0A:Ljava/lang/String;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/83;->A07:Lcom/facebook/ads/redexgen/X/RD;

    move-object v2, v2

    .end local v0    # "extraSpacing":I
    .local v2, "height":I
    .end local v0
    .local v0, "width":I
    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lcom/facebook/ads/redexgen/X/R5;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;Lcom/facebook/ads/redexgen/X/M7;Ljava/lang/String;IIIILcom/facebook/ads/redexgen/X/RD;)V

    .line 17101
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/El;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    .line 17102
    const/4 v0, 0x1

    if-ne v15, v0, :cond_2

    .line 17103
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/83;->A07:Lcom/facebook/ads/redexgen/X/RD;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/83;->A0E(Lcom/facebook/ads/redexgen/X/RD;)V

    .line 17104
    :goto_2
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17105
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/83;->A06:Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v1, :cond_0

    .line 17106
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17107
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1D(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 17108
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    .line 17109
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A07()Lcom/facebook/ads/redexgen/X/JO;

    .line 17110
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1, v15}, Lcom/facebook/ads/redexgen/X/SR;->A0Y(Landroid/view/View;ZI)V

    .line 17111
    return-void

    .line 17112
    :cond_2
    move-object/from16 v2, p0

    goto :goto_2

    .line 17113
    .end local v15
    .end local v9
    .end local v15
    :cond_3
    sget v2, Lcom/facebook/ads/redexgen/X/83;->A0K:I

    sget v0, Lcom/facebook/ads/redexgen/X/83;->A0G:I

    add-int/2addr v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/83;->A0H:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v2, v0

    sub-int/2addr v12, v2

    .line 17114
    .restart local v15    # "extraSpacing":I
    sget v13, Lcom/facebook/ads/redexgen/X/83;->A0H:I

    .line 17115
    .restart local v9    # "childSpacing":I
    mul-int/lit8 v14, v13, 0x2

    goto/16 :goto_1

    .line 17116
    :cond_4
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/83;->A02:Landroid/widget/LinearLayout;

    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/bx;)V
    .locals 6

    .line 17117
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/bx;

    .line 17118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0A:Ljava/lang/String;

    .line 17119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0F()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/83;->A00:I

    .line 17120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0G()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/83;->A01:I

    .line 17121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/util/List;

    move-result-object v5

    .line 17122
    .local p0, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0B:Ljava/util/List;

    .line 17123
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 17124
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/19;

    .line 17125
    .local v0, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/83;->A0B:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oo;

    invoke-direct {v0, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/Oo;-><init>(IILcom/facebook/ads/redexgen/X/19;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17126
    .end local v0    # "adInfo":Lcom/facebook/ads/redexgen/X/19;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17127
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/RD;)V
    .locals 4

    .line 17128
    new-instance v1, Lcom/facebook/ads/redexgen/X/Em;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Em;-><init>()V

    .line 17129
    .local p0, "mSnapHelper":Lcom/facebook/ads/redexgen/X/ad;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A05:Lcom/facebook/ads/redexgen/X/2m;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ad;->A0H(Lcom/facebook/ads/redexgen/X/El;)V

    .line 17130
    new-instance v0, Lcom/facebook/ads/redexgen/X/R3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/R3;-><init>(Lcom/facebook/ads/redexgen/X/83;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A0b(Lcom/facebook/ads/redexgen/X/O6;)V

    .line 17131
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A05:Lcom/facebook/ads/redexgen/X/17;

    .line 17132
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ni;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1I;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A06:Lcom/facebook/ads/redexgen/X/Ni;

    .line 17133
    sget v1, Lcom/facebook/ads/redexgen/X/83;->A0I:I

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 17134
    .local p1, "positionDotsLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/83;->A0J:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 17135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A06:Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ni;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17136
    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/83;Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 0

    .line 17137
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/SR;->setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/Lc;)V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/83;Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 0

    .line 17138
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/SR;->setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/Lc;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/83;)Z
    .locals 0

    .line 17139
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SR;->A06:Z

    return p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/83;)Z
    .locals 0

    .line 17140
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->A0c()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/83;)Z
    .locals 0

    .line 17141
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->A0d()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/83;)Z
    .locals 0

    .line 17142
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SR;->A06:Z

    return p0
.end method


# virtual methods
.method public final A0e()Z
    .locals 1

    .line 17143
    const/4 v0, 0x0

    return v0
.end method

.method public final A8L(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 3

    .line 17144
    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/83;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bx;

    .line 17145
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/bx;
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/SR;->A0Z(Lcom/facebook/ads/redexgen/X/50;)V

    .line 17146
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/83;->A0D(Lcom/facebook/ads/redexgen/X/bx;)V

    .line 17147
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17148
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/83;->A0C(ILandroid/os/Bundle;)V

    .line 17149
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qz;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/Qz;-><init>(Lcom/facebook/ads/redexgen/X/83;Lcom/facebook/ads/redexgen/X/50;)V

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/50;->A0L(Lcom/facebook/ads/redexgen/X/4y;)V

    .line 17150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v0

    .line 17151
    .local p1, "unskippableSec":I
    if-lez v0, :cond_0

    .line 17152
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SR;->A0X(I)V

    .line 17153
    :cond_0
    return-void
.end method

.method public final AB2(Z)V
    .locals 1

    .line 17154
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SR;->AB2(Z)V

    .line 17155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A07:Lcom/facebook/ads/redexgen/X/RD;

    if-eqz v0, :cond_0

    .line 17156
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RD;->A0S()V

    .line 17157
    :cond_0
    return-void
.end method

.method public final ABR(Z)V
    .locals 1

    .line 17158
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SR;->ABR(Z)V

    .line 17159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A07:Lcom/facebook/ads/redexgen/X/RD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RD;->A0T()V

    .line 17160
    return-void
.end method

.method public final ADU(Landroid/os/Bundle;)V
    .locals 1

    .line 17161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A07:Lcom/facebook/ads/redexgen/X/RD;

    if-eqz v0, :cond_0

    .line 17162
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RD;->A0Z(Landroid/os/Bundle;)V

    .line 17163
    :cond_0
    return-void
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 17164
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 17165
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17166
    .local p0, "savedInstanceState":Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/83;->ADU(Landroid/os/Bundle;)V

    .line 17167
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/83;->A0B()V

    .line 17168
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/83;->A0C(ILandroid/os/Bundle;)V

    .line 17169
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SR;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 17170
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 17171
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/SR;->onDestroy()V

    .line 17172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0C:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A07()Lcom/facebook/ads/redexgen/X/JO;

    .line 17174
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17175
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SR;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/83;->A0A:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/Q9;

    .line 17176
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0D:Lcom/facebook/ads/redexgen/X/Lc;

    .line 17177
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 17178
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v0

    .line 17179
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8U(Ljava/lang/String;Ljava/util/Map;)V

    .line 17180
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/83;->A0B()V

    .line 17181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0W()V

    .line 17182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A09:Lcom/facebook/ads/redexgen/X/Q9;

    .line 17183
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A08:Lcom/facebook/ads/redexgen/X/Q8;

    .line 17184
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0B:Ljava/util/List;

    .line 17185
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 17186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/83;->A0D:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/Lc;->A07(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 17187
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SR;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
