.class public final Lcom/facebook/ads/redexgen/X/GI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GH;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public final A05:Ljava/lang/StringBuilder;

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GH;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/List;
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
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GI;->A01()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 33487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A06:Ljava/util/List;

    .line 33489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A07:Ljava/util/List;

    .line 33490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A05:Ljava/lang/StringBuilder;

    .line 33491
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/GI;->A0A(I)V

    .line 33492
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/GI;->A0B(I)V

    .line 33493
    return-void
.end method

.method private final A00()Landroid/text/SpannableString;
    .locals 16

    .line 33494
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/GI;->A05:Ljava/lang/StringBuilder;

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 33495
    .local v10, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 33496
    .local v0, "length":I
    const/4 v7, -0x1

    .line 33497
    .local v8, "underlineStartPosition":I
    const/4 v6, -0x1

    .line 33498
    .local v9, "italicStartPosition":I
    const/4 v5, 0x0

    .line 33499
    .local v7, "colorStartPosition":I
    const/4 v4, -0x1

    .line 33500
    .local v6, "color":I
    const/4 v15, 0x0

    .line 33501
    .local v5, "nextItalic":Z
    const/4 v11, -0x1

    .line 33502
    .local v4, "nextColor":I
    const/4 v3, 0x0

    .local v15, "i":I
    :goto_0
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/GI;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    .line 33503
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/GI;->A06:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/GH;

    .line 33504
    .local v11, "cueStyle":Lcom/facebook/ads/redexgen/X/GH;
    iget-boolean v12, v2, Lcom/facebook/ads/redexgen/X/GH;->A02:Z

    .line 33505
    .local v0, "underline":Z
    iget v1, v2, Lcom/facebook/ads/redexgen/X/GH;->A01:I

    sget-object v13, Lcom/facebook/ads/redexgen/X/GI;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v13, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v0, 0x19

    if-eq v13, v0, :cond_0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33506
    .local v0, "style":I
    :cond_0
    sget-object v14, Lcom/facebook/ads/redexgen/X/GI;->A08:[Ljava/lang/String;

    const-string v13, "Hon2fT9Kc9M3abMPwz7MDi9oR"

    const/4 v0, 0x0

    aput-object v13, v14, v0

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    .line 33507
    const/4 v0, 0x7

    if-ne v1, v0, :cond_b

    const/4 v15, 0x1

    .line 33508
    :goto_2
    if-ne v1, v0, :cond_a

    .line 33509
    :cond_1
    :goto_3
    iget v2, v2, Lcom/facebook/ads/redexgen/X/GH;->A00:I

    .line 33510
    .local v0, "position":I
    add-int/lit8 v1, v3, 0x1

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/GI;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v1, v10, Lcom/facebook/ads/redexgen/X/GI;->A06:Ljava/util/List;

    add-int/lit8 v0, v3, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GH;->A00:I

    .line 33511
    .local v3, "nextPosition":I
    :goto_4
    if-ne v2, v0, :cond_3

    .line 33512
    .end local v11    # "cueStyle":Lcom/facebook/ads/redexgen/X/GH;
    .end local v3    # "nextPosition":I
    .end local v0    # "position":I
    .end local v0
    .end local v0
    :cond_2
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33513
    :cond_3
    const/4 v13, -0x1

    sget-object v14, Lcom/facebook/ads/redexgen/X/GI;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v14, v0

    const/4 v0, 0x7

    aget-object v0, v14, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v14, Lcom/facebook/ads/redexgen/X/GI;->A08:[Ljava/lang/String;

    const-string v1, "hW3KO6hJYm5wtWdOiW9LMAEAAg"

    const/4 v0, 0x3

    aput-object v1, v14, v0

    const-string v1, "ufPUx491dVtulyYEbZJyDlQZnq"

    const/4 v0, 0x5

    aput-object v1, v14, v0

    if-eq v7, v13, :cond_8

    if-nez v12, :cond_8

    .line 33514
    invoke-static {v8, v7, v2}, Lcom/facebook/ads/redexgen/X/GI;->A03(Landroid/text/SpannableStringBuilder;II)V

    .line 33515
    const/4 v7, -0x1

    .line 33516
    :cond_5
    :goto_6
    const/4 v0, -0x1

    if-eq v6, v0, :cond_7

    if-nez v15, :cond_7

    .line 33517
    invoke-static {v8, v6, v2}, Lcom/facebook/ads/redexgen/X/GI;->A02(Landroid/text/SpannableStringBuilder;II)V

    .line 33518
    const/4 v6, -0x1

    .line 33519
    :cond_6
    :goto_7
    if-eq v11, v4, :cond_2

    .line 33520
    invoke-static {v8, v5, v2, v4}, Lcom/facebook/ads/redexgen/X/GI;->A04(Landroid/text/SpannableStringBuilder;III)V

    .line 33521
    move v4, v11

    .line 33522
    move v5, v2

    goto :goto_5

    .line 33523
    :cond_7
    const/4 v0, -0x1

    if-ne v6, v0, :cond_6

    if-eqz v15, :cond_6

    .line 33524
    move v6, v2

    goto :goto_7

    .line 33525
    :cond_8
    const/4 v0, -0x1

    if-ne v7, v0, :cond_5

    if-eqz v12, :cond_5

    .line 33526
    move v7, v2

    goto :goto_6

    .line 33527
    :cond_9
    move v0, v9

    goto :goto_4

    .line 33528
    :cond_a
    invoke-static {}, Lcom/facebook/ads/redexgen/X/3N;->A0K()[I

    move-result-object v0

    aget v11, v0, v1

    goto :goto_3

    .line 33529
    :cond_b
    const/4 v15, 0x0

    goto :goto_2

    .line 33530
    .end local v15    # "i":I
    :cond_c
    const/4 v0, -0x1

    if-eq v7, v0, :cond_d

    if-eq v7, v9, :cond_d

    .line 33531
    invoke-static {v8, v7, v9}, Lcom/facebook/ads/redexgen/X/GI;->A03(Landroid/text/SpannableStringBuilder;II)V

    .line 33532
    :cond_d
    if-eq v6, v0, :cond_e

    if-eq v6, v9, :cond_e

    .line 33533
    invoke-static {v8, v6, v9}, Lcom/facebook/ads/redexgen/X/GI;->A02(Landroid/text/SpannableStringBuilder;II)V

    .line 33534
    :cond_e
    if-eq v5, v9, :cond_f

    .line 33535
    invoke-static {v8, v5, v9, v4}, Lcom/facebook/ads/redexgen/X/GI;->A04(Landroid/text/SpannableStringBuilder;III)V

    .line 33536
    :cond_f
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YXYF8XTz4nvihZOAYR3rRaWnV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vDDqFEL0sQDjhIloSE5jjp4xww9YlacC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "evmK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rL4jER4xO9QgHaVk0iKuNUAgwR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KkBFNbQd3QIP7AfyTTLbMdsNLH0m2aLC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rl5mVEQAgV88OWVMJXq8ywfZJZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pcgTqTZTmXE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7uOUR9wk8Mu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GI;->A08:[Ljava/lang/String;

    return-void
.end method

.method public static A02(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 33537
    const/4 v0, 0x2

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33538
    return-void
.end method

.method public static A03(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 33539
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v0, 0x21

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33540
    return-void
.end method

.method public static A04(Landroid/text/SpannableStringBuilder;III)V
    .locals 2

    .line 33541
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 33542
    return-void

    .line 33543
    :cond_0
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 33544
    return-void
.end method


# virtual methods
.method public final A05()I
    .locals 1

    .line 33545
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A03:I

    return v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/GB;
    .locals 16

    .line 33546
    move-object/from16 v3, p0

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 33547
    .local v3, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/GI;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 33548
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/GI;->A07:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v1, Lcom/facebook/ads/redexgen/X/GI;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33549
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/GI;->A08:[Ljava/lang/String;

    const-string v1, "Un7JBlWkd6tZYgCGSVXcAm3o3HwBUxkC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "zURZ95suSBFT3E95umjNZBQKNZR3KIcC"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 33550
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 33551
    .end local v8    # "i":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/GI;->A00()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 33552
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 33553
    const/4 v0, 0x0

    return-object v0

    .line 33554
    :cond_2
    iget v7, v3, Lcom/facebook/ads/redexgen/X/GI;->A02:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/GI;->A04:I

    add-int/2addr v7, v0

    .line 33555
    .local v0, "startPadding":I
    rsub-int/lit8 v6, v7, 0x20

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v6, v0

    .line 33556
    .local v1, "endPadding":I
    sub-int v5, v7, v6

    .line 33557
    .local v0, "startEndPaddingDelta":I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GI;->A00:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v0, 0x3

    if-lt v1, v0, :cond_3

    if-gez v6, :cond_6

    .line 33558
    :cond_3
    const/high16 v13, 0x3f000000    # 0.5f

    .line 33559
    .local v8, "position":F
    const/4 v14, 0x1

    .line 33560
    .local v4, "positionAnchor":I
    .end local v0    # "startEndPaddingDelta":I
    .local v0, "position":F
    .local v2, "positionAnchor":I
    :goto_1
    iget v1, v3, Lcom/facebook/ads/redexgen/X/GI;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    iget v1, v3, Lcom/facebook/ads/redexgen/X/GI;->A03:I

    const/4 v0, 0x7

    if-le v1, v0, :cond_5

    .line 33561
    .end local v8    # "position":F
    .end local v4    # "positionAnchor":I
    :cond_4
    const/4 v12, 0x2

    .line 33562
    .restart local v8    # "position":F
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GI;->A03:I

    add-int/lit8 v0, v0, -0xf

    .line 33563
    .restart local v4    # "positionAnchor":I
    add-int/lit8 v0, v0, -0x2

    .line 33564
    .end local v8    # "position":F
    .end local v4    # "positionAnchor":I
    .local v0, "line":I
    .local v1, "lineAnchor":I
    :goto_2
    new-instance v7, Lcom/facebook/ads/redexgen/X/GB;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    int-to-float v10, v0

    const/4 v11, 0x1

    const/4 v15, 0x1

    .end local v0    # "line":I
    .local v0, "line":I
    invoke-direct/range {v7 .. v15}, Lcom/facebook/ads/redexgen/X/GB;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v7

    .line 33565
    :cond_5
    const/4 v12, 0x0

    .line 33566
    .local v8, "lineAnchor":I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GI;->A03:I

    .local v4, "line":I
    goto :goto_2

    .line 33567
    .end local v8    # "lineAnchor":I
    .end local v4    # "line":I
    :cond_6
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GI;->A00:I

    const v2, 0x3dcccccd    # 0.1f

    const v13, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x42000000    # 32.0f

    if-ne v0, v4, :cond_7

    if-lez v5, :cond_7

    .line 33568
    rsub-int/lit8 v0, v6, 0x20

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 33569
    .restart local v8    # "lineAnchor":I
    mul-float/2addr v13, v0

    add-float/2addr v13, v2

    .line 33570
    .end local v8    # "lineAnchor":I
    .local v0, "position":F
    const/4 v14, 0x2

    .local v8, "positionAnchor":I
    goto :goto_1

    .line 33571
    .end local v8    # "positionAnchor":I
    .end local v0    # "position":F
    :cond_7
    int-to-float v0, v7

    div-float/2addr v0, v1

    .line 33572
    .local v8, "position":F
    mul-float/2addr v13, v0

    add-float/2addr v13, v2

    .line 33573
    .end local v8    # "position":F
    .restart local v0    # "position":F
    const/4 v14, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/GI;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/GI;->A08:[Ljava/lang/String;

    const-string v1, "n52PNrwZTiC"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "jYtTUJrAZ2u"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    goto :goto_1

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/GI;->A08:[Ljava/lang/String;

    const-string v1, "YU4E"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    goto :goto_1
.end method

.method public final A07()V
    .locals 6

    .line 33574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 33575
    .local p0, "length":I
    if-lez v3, :cond_1

    .line 33576
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/GI;->A05:Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/GI;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/GI;->A08:[Ljava/lang/String;

    const-string v1, "6TILr3BPodqITpq4oX2mCgxPqnMghzbC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "KrYZh0IMCDynqYO4j0U7nQ8GpSV1eMTC"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v5, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 33577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 33578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A06:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/GH;

    .line 33579
    .local v3, "style":Lcom/facebook/ads/redexgen/X/GH;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/GH;->A00:I

    if-ne v0, v3, :cond_1

    .line 33580
    iget v0, v1, Lcom/facebook/ads/redexgen/X/GH;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/GH;->A00:I

    .line 33581
    .end local v3    # "style":Lcom/facebook/ads/redexgen/X/GH;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 33582
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final A08()V
    .locals 3

    .line 33583
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GI;->A07:Ljava/util/List;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/GI;->A00()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A05:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 33585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33586
    iget v1, p0, Lcom/facebook/ads/redexgen/X/GI;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A03:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 33587
    .local p0, "numRows":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 33588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A07:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 33589
    :cond_0
    return-void
.end method

.method public final A09(C)V
    .locals 1

    .line 33590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33591
    return-void
.end method

.method public final A0A(I)V
    .locals 2

    .line 33592
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GI;->A00:I

    .line 33593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A05:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 33596
    const/16 v0, 0xf

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A03:I

    .line 33597
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GI;->A02:I

    .line 33598
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GI;->A04:I

    .line 33599
    return-void
.end method

.method public final A0B(I)V
    .locals 0

    .line 33600
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GI;->A01:I

    .line 33601
    return-void
.end method

.method public final A0C(I)V
    .locals 0

    .line 33602
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GI;->A02:I

    .line 33603
    return-void
.end method

.method public final A0D(I)V
    .locals 0

    .line 33604
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GI;->A03:I

    .line 33605
    return-void
.end method

.method public final A0E(I)V
    .locals 0

    .line 33606
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GI;->A04:I

    .line 33607
    return-void
.end method

.method public final A0F(IZ)V
    .locals 3

    .line 33608
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/GI;->A06:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GH;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/GH;-><init>(IZI)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33609
    return-void
.end method

.method public final A0G()Z
    .locals 1

    .line 33610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A07:Ljava/util/List;

    .line 33611
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A05:Ljava/lang/StringBuilder;

    .line 33612
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 33613
    :goto_0
    return v0

    .line 33614
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 33615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GI;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
