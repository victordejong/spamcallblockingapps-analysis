.class public final Lcom/facebook/ads/redexgen/X/GJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation


# static fields
.field public static A0M:[B

.field public static A0N:[Ljava/lang/String;

.field public static final A0O:I

.field public static final A0P:I

.field public static final A0Q:I

.field public static final A0R:[I

.field public static final A0S:[I

.field public static final A0T:[I

.field public static final A0U:[I

.field public static final A0V:[I

.field public static final A0W:[I

.field public static final A0X:[I

.field public static final A0Y:[Z


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public final A0K:Landroid/text/SpannableStringBuilder;

.field public final A0L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 33616
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GJ;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GJ;->A04()V

    const/4 v9, 0x2

    const/4 v8, 0x0

    invoke-static {v9, v9, v9, v8}, Lcom/facebook/ads/redexgen/X/GJ;->A01(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/GJ;->A0P:I

    .line 33617
    invoke-static {v8, v8, v8, v8}, Lcom/facebook/ads/redexgen/X/GJ;->A01(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/GJ;->A0O:I

    .line 33618
    const/4 v7, 0x3

    invoke-static {v8, v8, v8, v7}, Lcom/facebook/ads/redexgen/X/GJ;->A01(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/GJ;->A0Q:I

    .line 33619
    const/4 v10, 0x7

    new-array v0, v10, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GJ;->A0V:[I

    .line 33620
    new-array v0, v10, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/GJ;->A0W:[I

    .line 33621
    new-array v0, v10, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/GJ;->A0X:[I

    .line 33622
    new-array v0, v10, [Z

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/ads/redexgen/X/GJ;->A0Y:[Z

    .line 33623
    new-array v0, v10, [I

    sget v6, Lcom/facebook/ads/redexgen/X/GJ;->A0O:I

    aput v6, v0, v8

    sget v5, Lcom/facebook/ads/redexgen/X/GJ;->A0Q:I

    const/4 v4, 0x1

    aput v5, v0, v4

    aput v6, v0, v9

    aput v6, v0, v7

    const/4 v3, 0x4

    aput v5, v0, v3

    const/4 v2, 0x5

    aput v6, v0, v2

    const/4 v1, 0x6

    aput v6, v0, v1

    sput-object v0, Lcom/facebook/ads/redexgen/X/GJ;->A0U:[I

    .line 33624
    new-array v0, v10, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/facebook/ads/redexgen/X/GJ;->A0T:[I

    .line 33625
    new-array v0, v10, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/facebook/ads/redexgen/X/GJ;->A0S:[I

    .line 33626
    new-array v0, v10, [I

    aput v6, v0, v8

    aput v6, v0, v4

    aput v6, v0, v9

    aput v6, v0, v7

    aput v6, v0, v3

    aput v5, v0, v2

    aput v5, v0, v1

    sput-object v0, Lcom/facebook/ads/redexgen/X/GJ;->A0R:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 33627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0L:Ljava/util/List;

    .line 33629
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    .line 33630
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/GJ;->A09()V

    .line 33631
    return-void
.end method

.method public static A00(III)I
    .locals 1

    .line 33632
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A01(IIII)I

    move-result v0

    return v0
.end method

.method public static A01(IIII)I
    .locals 5

    .line 33633
    const/4 v0, 0x4

    const/4 v4, 0x0

    invoke-static {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A00(III)I

    .line 33634
    invoke-static {p1, v4, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A00(III)I

    .line 33635
    invoke-static {p2, v4, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A00(III)I

    .line 33636
    invoke-static {p3, v4, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A00(III)I

    .line 33637
    const/4 v3, 0x1

    if-eqz p3, :cond_5

    if-eq p3, v3, :cond_5

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    .line 33638
    const/16 v2, 0xff

    .line 33639
    .local p2, "alpha":I
    :goto_0
    if-le p0, v3, :cond_2

    const/16 v1, 0xff

    :goto_1
    if-le p1, v3, :cond_1

    const/16 v0, 0xff

    :goto_2
    if-le p2, v3, :cond_0

    const/16 v4, 0xff

    :cond_0
    invoke-static {v2, v1, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 33640
    .end local p2    # "alpha":I
    :cond_3
    const/4 v2, 0x0

    .line 33641
    .restart local p2    # "alpha":I
    goto :goto_0

    .line 33642
    .end local p2    # "alpha":I
    :cond_4
    const/16 v2, 0x7f

    .line 33643
    .restart local p2    # "alpha":I
    goto :goto_0

    .line 33644
    .end local p2    # "alpha":I
    :cond_5
    const/16 v2, 0xff

    .line 33645
    .restart local p2    # "alpha":I
    goto :goto_0
.end method

.method private final A02()Landroid/text/SpannableString;
    .locals 6

    .line 33646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 33647
    .local p0, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 33648
    .local v0, "length":I
    if-lez v4, :cond_3

    .line 33649
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A06:I

    const/16 v2, 0x21

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 33650
    const/4 v0, 0x2

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A06:I

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33651
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0C:I

    if-eq v0, v5, :cond_1

    .line 33652
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0C:I

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33653
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A04:I

    if-eq v0, v5, :cond_2

    .line 33654
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A03:I

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A04:I

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33655
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A02:I

    if-eq v0, v5, :cond_3

    .line 33656
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A01:I

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A02:I

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33657
    :cond_3
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GJ;->A0M:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xe

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GJ;->A0M:[B

    return-void

    :array_0
    .array-data 1
        0x5bt
        0x60t
        0x6bt
        0x76t
        0x7et
        0x6bt
        0x6dt
        0x7at
        0x6bt
        0x6at
        0x2et
        0x64t
        0x7bt
        0x7dt
        0x7at
        0x67t
        0x68t
        0x67t
        0x6dt
        0x6ft
        0x7at
        0x67t
        0x61t
        0x60t
        0x2et
        0x78t
        0x6ft
        0x62t
        0x7bt
        0x6bt
        0x34t
        0x2et
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7kL0h2rBKPaIE3Wm9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "q3TwG0DgYo9xsAkGu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jxoMqAGuVySIYu21UdgTksHQFCq2wTg7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "X3dSsZI37aH0Fi3Oab2FM9ykRMHHCAXA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mZhH02xXCka2tXLQUTpID4T2fegAaR2i"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "d8wXTy81Wu8IHPLoANCjIa0rDiF6mmpB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZXPAoCeby8cOgmrzlE0pQHxvSRHICHaI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RwBHuSydkaxeiB2fzozSHRWmApQpcys2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GJ;->A0N:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/redexgen/X/UH;
    .locals 17

    .line 33658
    move-object/from16 v3, p0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/GJ;->A0I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33659
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/GJ;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/GJ;->A0N:[Ljava/lang/String;

    const-string v1, "Rh18v7mxq6BE1fSP3o3jp1Eu05MsqAWa"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Sj1flsP9y4JxjLXrNXNnSsEKifrkjLio"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    .line 33660
    :cond_0
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 33661
    .local v3, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/GJ;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/GJ;->A0N:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_3

    if-ge v4, v5, :cond_4

    .line 33662
    :goto_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/GJ;->A0L:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/GJ;->A0N:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/GJ;->A0N:[Ljava/lang/String;

    const-string v1, "ZBs0g66ajJqJniX1Q1sPZALDf7sQwpqc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 33663
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 33664
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/GJ;->A0N:[Ljava/lang/String;

    const-string v1, "yjC8dKAyWjmMNGpvw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "G7PwtrEN7ZmetAgvO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v4, v5, :cond_4

    goto :goto_1

    .line 33665
    .end local v0    # "i":I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/GJ;->A02()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 33666
    iget v1, v3, Lcom/facebook/ads/redexgen/X/GJ;->A07:I

    const/4 v4, 0x3

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_d

    const/4 v0, 0x2

    if-eq v1, v0, :cond_c

    if-ne v1, v4, :cond_e

    .line 33667
    .end local v0
    :cond_5
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 33668
    .restart local v0    # "i":I
    .end local v0    # "i":I
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_2
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/GJ;->A0H:Z

    if-eqz v0, :cond_b

    .line 33669
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GJ;->A05:I

    int-to-float v11, v0

    const/high16 v5, 0x42c60000    # 99.0f

    div-float/2addr v11, v5

    .line 33670
    .local v0, "position":F
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GJ;->A0D:I

    int-to-float v1, v0

    div-float/2addr v1, v5

    .line 33671
    .local v1, "line":F
    .restart local v1    # "line":F
    :goto_3
    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v11, v8

    const v0, 0x3d4ccccd    # 0.05f

    add-float/2addr v11, v0

    .line 33672
    .end local v0    # "position":F
    .local v1, "position":F
    mul-float/2addr v8, v1

    add-float/2addr v8, v0

    .line 33673
    .end local v1    # "position":F
    .local v0, "line":F
    iget v1, v3, Lcom/facebook/ads/redexgen/X/GJ;->A00:I

    rem-int/lit8 v0, v1, 0x3

    if-nez v0, :cond_9

    .line 33674
    const/4 v10, 0x0

    .line 33675
    .local v0, "verticalAnchorType":I
    .local v6, "verticalAnchorType":I
    :goto_4
    iget v1, v3, Lcom/facebook/ads/redexgen/X/GJ;->A00:I

    div-int/lit8 v0, v1, 0x3

    if-nez v0, :cond_7

    .line 33676
    const/4 v12, 0x0

    .line 33677
    .local v0, "horizontalAnchorType":I
    .local v4, "horizontalAnchorType":I
    :goto_5
    iget v1, v3, Lcom/facebook/ads/redexgen/X/GJ;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/GJ;->A0O:I

    if-eq v1, v0, :cond_6

    const/4 v14, 0x1

    .line 33678
    .local v0, "windowColorSet":Z
    :goto_6
    new-instance v5, Lcom/facebook/ads/redexgen/X/UH;

    const/4 v9, 0x0

    const/4 v13, 0x1

    iget v15, v3, Lcom/facebook/ads/redexgen/X/GJ;->A0E:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/GJ;->A09:I

    move/from16 v16, v0

    invoke-direct/range {v5 .. v16}, Lcom/facebook/ads/redexgen/X/UH;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v5

    .line 33679
    :cond_6
    const/4 v14, 0x0

    goto :goto_6

    .line 33680
    .end local v0    # "windowColorSet":Z
    :cond_7
    div-int/2addr v1, v4

    if-ne v1, v2, :cond_8

    .line 33681
    const/4 v12, 0x1

    .restart local v0    # "windowColorSet":Z
    goto :goto_5

    .line 33682
    .end local v0    # "windowColorSet":Z
    :cond_8
    const/4 v12, 0x2

    goto :goto_5

    .line 33683
    .end local v0
    :cond_9
    rem-int/2addr v1, v4

    if-ne v1, v2, :cond_a

    .line 33684
    const/4 v10, 0x1

    .restart local v0    # "windowColorSet":Z
    goto :goto_4

    .line 33685
    .end local v0    # "windowColorSet":Z
    :cond_a
    const/4 v10, 0x2

    goto :goto_4

    .line 33686
    .end local v0
    .end local v1
    :cond_b
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GJ;->A05:I

    int-to-float v11, v0

    const/high16 v0, 0x43510000    # 209.0f

    div-float/2addr v11, v0

    .line 33687
    .restart local v0    # "windowColorSet":Z
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GJ;->A0D:I

    int-to-float v1, v0

    const/high16 v0, 0x42940000    # 74.0f

    div-float/2addr v1, v0

    goto :goto_3

    .line 33688
    :cond_c
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 33689
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 33690
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_d
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 33691
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 33692
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x20

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/GJ;->A07:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A07()V
    .locals 5

    .line 33693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 33694
    .local p0, "length":I
    if-lez v4, :cond_0

    .line 33695
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/facebook/ads/redexgen/X/GJ;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/GJ;->A0N:[Ljava/lang/String;

    const-string v1, "jJsuKyJVjGk1cGDcvecvImLAZWYAQ1aQ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 33696
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A08()V
    .locals 1

    .line 33697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 33699
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A06:I

    .line 33700
    iput v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0C:I

    .line 33701
    iput v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A04:I

    .line 33702
    iput v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A02:I

    .line 33703
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0A:I

    .line 33704
    return-void
.end method

.method public final A09()V
    .locals 2

    .line 33705
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/GJ;->A08()V

    .line 33706
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0G:Z

    .line 33707
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0J:Z

    .line 33708
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A09:I

    .line 33709
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0H:Z

    .line 33710
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0D:I

    .line 33711
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A05:I

    .line 33712
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A00:I

    .line 33713
    const/16 v0, 0xf

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0B:I

    .line 33714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0I:Z

    .line 33715
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A07:I

    .line 33716
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0F:I

    .line 33717
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A08:I

    .line 33718
    sget v1, Lcom/facebook/ads/redexgen/X/GJ;->A0O:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0E:I

    .line 33719
    sget v0, Lcom/facebook/ads/redexgen/X/GJ;->A0P:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A03:I

    .line 33720
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A01:I

    .line 33721
    return-void
.end method

.method public final A0A(C)V
    .locals 3

    .line 33722
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 33723
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0L:Ljava/util/List;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/GJ;->A02()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 33725
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A06:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 33726
    iput v2, p0, Lcom/facebook/ads/redexgen/X/GJ;->A06:I

    .line 33727
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0C:I

    if-eq v0, v1, :cond_1

    .line 33728
    iput v2, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0C:I

    .line 33729
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A04:I

    if-eq v0, v1, :cond_2

    .line 33730
    iput v2, p0, Lcom/facebook/ads/redexgen/X/GJ;->A04:I

    .line 33731
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A02:I

    if-eq v0, v1, :cond_3

    .line 33732
    iput v2, p0, Lcom/facebook/ads/redexgen/X/GJ;->A02:I

    .line 33733
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0I:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0B:I

    if-ge v1, v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0L:Ljava/util/List;

    .line 33734
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v0, 0xf

    if-lt v1, v0, :cond_7

    .line 33735
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0L:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 33736
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 33737
    :cond_7
    return-void
.end method

.method public final A0B(II)V
    .locals 1

    .line 33738
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0A:I

    if-eq v0, p1, :cond_0

    .line 33739
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 33740
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0A:I

    .line 33741
    return-void
.end method

.method public final A0C(III)V
    .locals 7

    .line 33742
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A04:I

    const/16 v4, 0x21

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 33743
    iget v6, p0, Lcom/facebook/ads/redexgen/X/GJ;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/GJ;->A0N:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/GJ;->A0N:[Ljava/lang/String;

    const-string v1, "EpX3BD3lCizLmToNF8JgIy949SWYBi68"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v6, p1, :cond_1

    .line 33744
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    .line 33745
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 33746
    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33747
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/GJ;->A0P:I

    if-eq p1, v0, :cond_2

    .line 33748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A04:I

    .line 33749
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A03:I

    .line 33750
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A02:I

    if-eq v0, v5, :cond_3

    .line 33751
    iget v5, p0, Lcom/facebook/ads/redexgen/X/GJ;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/GJ;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/GJ;->A0N:[Ljava/lang/String;

    const-string v1, "98vLpyxX6FCK5mwzzlUJrHuKPxLzGBIT"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "fslVpDkOT9K3QX4NYWQySTH0wmNU7tIc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v5, p2, :cond_3

    .line 33752
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v2, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    .line 33753
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 33754
    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33755
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/GJ;->A0O:I

    if-eq p2, v0, :cond_4

    .line 33756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A02:I

    .line 33757
    iput p2, p0, Lcom/facebook/ads/redexgen/X/GJ;->A01:I

    .line 33758
    :cond_4
    return-void

    :cond_5
    if-eq v5, p2, :cond_3

    goto :goto_0
.end method

.method public final A0D(IIIZZII)V
    .locals 6

    .line 33759
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A06:I

    const/16 v5, 0x21

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 33760
    if-nez p4, :cond_0

    .line 33761
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x2

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    .line 33762
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 33763
    invoke-virtual {v3, v2, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33764
    iput v4, p0, Lcom/facebook/ads/redexgen/X/GJ;->A06:I

    .line 33765
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0C:I

    if-eq v0, v4, :cond_2

    .line 33766
    if-nez p5, :cond_1

    .line 33767
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0C:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    .line 33768
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 33769
    invoke-virtual {v3, v2, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33770
    iput v4, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0C:I

    .line 33771
    :cond_1
    :goto_1
    return-void

    .line 33772
    :cond_2
    if-eqz p5, :cond_1

    .line 33773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0C:I

    goto :goto_1

    .line 33774
    :cond_3
    if-eqz p4, :cond_0

    .line 33775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A06:I

    goto :goto_0
.end method

.method public final A0E(IIZIIII)V
    .locals 0

    .line 33776
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0E:I

    .line 33777
    iput p7, p0, Lcom/facebook/ads/redexgen/X/GJ;->A07:I

    .line 33778
    return-void
.end method

.method public final A0F(Z)V
    .locals 0

    .line 33779
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0J:Z

    .line 33780
    return-void
.end method

.method public final A0G(ZZZIZIIIIIII)V
    .locals 11

    .line 33781
    move-object v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/GJ;->A0G:Z

    .line 33782
    iput-boolean p1, v0, Lcom/facebook/ads/redexgen/X/GJ;->A0J:Z

    .line 33783
    iput-boolean p2, v0, Lcom/facebook/ads/redexgen/X/GJ;->A0I:Z

    .line 33784
    iput p4, v0, Lcom/facebook/ads/redexgen/X/GJ;->A09:I

    .line 33785
    move/from16 v1, p5

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/GJ;->A0H:Z

    .line 33786
    move/from16 v1, p6

    iput v1, v0, Lcom/facebook/ads/redexgen/X/GJ;->A0D:I

    .line 33787
    move/from16 v1, p7

    iput v1, v0, Lcom/facebook/ads/redexgen/X/GJ;->A05:I

    .line 33788
    move/from16 v1, p10

    iput v1, v0, Lcom/facebook/ads/redexgen/X/GJ;->A00:I

    .line 33789
    iget v2, v0, Lcom/facebook/ads/redexgen/X/GJ;->A0B:I

    add-int/lit8 v1, p8, 0x1

    if-eq v2, v1, :cond_2

    .line 33790
    add-int/lit8 v1, p8, 0x1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/GJ;->A0B:I

    .line 33791
    :goto_0
    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GJ;->A0L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v1, v0, Lcom/facebook/ads/redexgen/X/GJ;->A0B:I

    if-ge v2, v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GJ;->A0L:Ljava/util/List;

    .line 33792
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v1, 0xf

    if-lt v2, v1, :cond_2

    .line 33793
    :cond_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/GJ;->A0L:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 33794
    :cond_2
    move/from16 v2, p11

    if-eqz v2, :cond_3

    iget v1, v0, Lcom/facebook/ads/redexgen/X/GJ;->A0F:I

    if-eq v1, v2, :cond_3

    .line 33795
    iput v2, v0, Lcom/facebook/ads/redexgen/X/GJ;->A0F:I

    .line 33796
    add-int/lit8 v2, v2, -0x1

    .line 33797
    .local v2, "windowStyleIdIndex":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/GJ;->A0U:[I

    aget v3, v1, v2

    sget v4, Lcom/facebook/ads/redexgen/X/GJ;->A0Q:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/GJ;->A0Y:[Z

    aget-boolean v5, v1, v2

    const/4 v6, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/GJ;->A0W:[I

    aget v7, v1, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GJ;->A0X:[I

    aget v8, v1, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GJ;->A0V:[I

    aget v9, v1, v2

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/GJ;->A0E(IIZIIII)V

    .line 33798
    .end local v2    # "windowStyleIdIndex":I
    :cond_3
    move/from16 v2, p12

    if-eqz v2, :cond_4

    iget v1, v0, Lcom/facebook/ads/redexgen/X/GJ;->A08:I

    if-eq v1, v2, :cond_4

    .line 33799
    iput v2, v0, Lcom/facebook/ads/redexgen/X/GJ;->A08:I

    .line 33800
    add-int/lit8 v2, v2, -0x1

    .line 33801
    .local v2, "penStyleIdIndex":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/GJ;->A0S:[I

    aget v9, v1, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GJ;->A0T:[I

    aget v10, v1, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/GJ;->A0D(IIIZZII)V

    .line 33802
    sget v3, Lcom/facebook/ads/redexgen/X/GJ;->A0P:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/GJ;->A0R:[I

    aget v2, v1, v2

    sget v1, Lcom/facebook/ads/redexgen/X/GJ;->A0O:I

    invoke-virtual {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/GJ;->A0C(III)V

    .line 33803
    .end local v2    # "penStyleIdIndex":I
    :cond_4
    return-void
.end method

.method public final A0H()Z
    .locals 1

    .line 33804
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0G:Z

    return v0
.end method

.method public final A0I()Z
    .locals 1

    .line 33805
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/GJ;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0J()Z
    .locals 1

    .line 33806
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/GJ;->A0J:Z

    return v0
.end method
