.class public abstract Lcom/facebook/ads/redexgen/X/4K;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$LayoutManager$Properties;,
        Lcom/facebook/ads/redexgen/X/4I;
    }
.end annotation


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/3i;

.field public A02:Lcom/facebook/ads/redexgen/X/4X;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Eq;

.field public A04:Lcom/facebook/ads/redexgen/X/4h;

.field public A05:Lcom/facebook/ads/redexgen/X/4h;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:Z

.field public A0F:Z

.field public final A0G:Lcom/facebook/ads/redexgen/X/4f;

.field public final A0H:Lcom/facebook/ads/redexgen/X/4f;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4K;->A09()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4K;->A08()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10427
    new-instance v0, Lcom/facebook/ads/redexgen/X/TJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TJ;-><init>(Lcom/facebook/ads/redexgen/X/4K;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0G:Lcom/facebook/ads/redexgen/X/4f;

    .line 10428
    new-instance v0, Lcom/facebook/ads/redexgen/X/TK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TK;-><init>(Lcom/facebook/ads/redexgen/X/4K;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0H:Lcom/facebook/ads/redexgen/X/4f;

    .line 10429
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A0G:Lcom/facebook/ads/redexgen/X/4f;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4h;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4h;-><init>(Lcom/facebook/ads/redexgen/X/4f;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A04:Lcom/facebook/ads/redexgen/X/4h;

    .line 10430
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A0H:Lcom/facebook/ads/redexgen/X/4f;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4h;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4h;-><init>(Lcom/facebook/ads/redexgen/X/4f;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A05:Lcom/facebook/ads/redexgen/X/4h;

    .line 10431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A09:Z

    .line 10432
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A07:Z

    .line 10433
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A06:Z

    .line 10434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0F:Z

    .line 10435
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0E:Z

    return-void
.end method

.method public static A00(III)I
    .locals 3

    .line 10436
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 10437
    .local p0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 10438
    .local p1, "size":I
    const/high16 v0, -0x80000000

    if-eq v2, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    .line 10439
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 10440
    :cond_0
    return v1

    .line 10441
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A01(IIIIZ)I
    .locals 6

    .line 10442
    sub-int/2addr p0, p2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 10443
    .local p0, "size":I
    const/4 v3, 0x0

    .line 10444
    .local p1, "resultSize":I
    const/4 v2, 0x0

    .line 10445
    .local p2, "resultMode":I
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const/4 v1, -0x2

    const/4 v0, -0x1

    if-eqz p4, :cond_1

    .line 10446
    if-ltz p3, :cond_5

    .line 10447
    move v3, p3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10448
    :cond_1
    if-ltz p3, :cond_2

    .line 10449
    move v3, p3

    .line 10450
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 10451
    :cond_2
    if-ne p3, v0, :cond_3

    .line 10452
    move v3, p0

    .line 10453
    move v2, p1

    goto :goto_0

    .line 10454
    :cond_3
    if-ne p3, v1, :cond_c

    .line 10455
    move v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_0

    .line 10456
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "mbdH64CAyADsqDHKi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "uvhJn14mL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_a

    .line 10457
    :cond_4
    const/high16 v2, -0x80000000

    goto :goto_0

    .line 10458
    :cond_5
    if-ne p3, v0, :cond_8

    .line 10459
    if-eq p1, v4, :cond_7

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_7

    goto :goto_0

    .line 10460
    :cond_6
    const/4 v3, 0x0

    .line 10461
    const/4 v2, 0x0

    goto :goto_0

    .line 10462
    :cond_7
    move v3, p0

    .line 10463
    move v2, p1

    .line 10464
    goto :goto_0

    .line 10465
    :cond_8
    if-ne p3, v1, :cond_c

    .line 10466
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_9

    .line 10467
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "MUtJOOU4WeR0TtYG1JH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v2, 0x0

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    goto :goto_0

    .line 10468
    :cond_a
    const/4 v2, 0x0

    goto :goto_0

    .line 10469
    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "ru0BYCJI67FO4KgBABZqajada"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    .line 10470
    :cond_c
    :goto_0
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private final A02(Landroid/view/View;)I
    .locals 1

    .line 10471
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method private final A03(Landroid/view/View;)I
    .locals 1

    .line 10472
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private final A04(Landroid/view/View;)I
    .locals 1

    .line 10473
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method private final A05(Landroid/view/View;)I
    .locals 1

    .line 10474
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 10475
    const/4 v0, 0x0

    return v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 4

    const/16 v0, 0x114

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "kyP20liVKsmkdJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/4K;->A0I:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x2t
        0x21t
        0x21t
        0x22t
        0x21t
        -0x23t
        0x13t
        0x26t
        0x22t
        0x34t
        -0x23t
        0x25t
        0x1et
        0x30t
        -0x23t
        0xft
        0x22t
        0x20t
        0x36t
        0x20t
        0x29t
        0x22t
        0x2ft
        0x13t
        0x26t
        0x22t
        0x34t
        -0x23t
        0x1et
        0x30t
        -0x23t
        0x2dt
        0x1et
        0x2ft
        0x22t
        0x2bt
        0x31t
        -0x23t
        0x1ft
        0x32t
        0x31t
        -0x23t
        0x33t
        0x26t
        0x22t
        0x34t
        -0x23t
        0x26t
        0x30t
        -0x23t
        0x2bt
        0x2ct
        0x31t
        -0x23t
        0x1et
        -0x23t
        0x2ft
        0x22t
        0x1et
        0x29t
        -0x23t
        0x20t
        0x25t
        0x26t
        0x29t
        0x21t
        -0x15t
        -0x23t
        0x12t
        0x2bt
        0x23t
        0x26t
        0x29t
        0x31t
        0x22t
        0x2ft
        0x22t
        0x21t
        -0x23t
        0x26t
        0x2bt
        0x21t
        0x22t
        0x35t
        -0x9t
        -0x23t
        -0x5t
        0x8t
        0x8t
        0x9t
        0xet
        -0x46t
        0x7t
        0x9t
        0x10t
        -0x1t
        -0x46t
        -0x5t
        -0x46t
        -0x3t
        0x2t
        0x3t
        0x6t
        -0x2t
        -0x46t
        0x0t
        0xct
        0x9t
        0x7t
        -0x46t
        0x8t
        0x9t
        0x8t
        -0x39t
        -0x1t
        0x12t
        0x3t
        0xdt
        0xet
        0x3t
        0x8t
        0x1t
        -0x46t
        0x3t
        0x8t
        -0x2t
        -0x1t
        0x12t
        -0x2ct
        -0x50t
        -0x3dt
        -0x3ft
        -0x29t
        -0x3ft
        -0x36t
        -0x3dt
        -0x30t
        -0x4ct
        -0x39t
        -0x3dt
        -0x2bt
        0x9t
        0x1ft
        0x25t
        -0x30t
        0x1dt
        0x25t
        0x23t
        0x24t
        -0x30t
        0x1ft
        0x26t
        0x15t
        0x22t
        0x22t
        0x19t
        0x14t
        0x15t
        -0x30t
        0x1ft
        0x1et
        -0x4t
        0x11t
        0x29t
        0x1ft
        0x25t
        0x24t
        -0xdt
        0x18t
        0x19t
        0x1ct
        0x14t
        0x22t
        0x15t
        0x1et
        -0x28t
        0x2t
        0x15t
        0x13t
        0x29t
        0x13t
        0x1ct
        0x15t
        0x22t
        -0x30t
        0x22t
        0x15t
        0x13t
        0x29t
        0x13t
        0x1ct
        0x15t
        0x22t
        -0x24t
        -0x30t
        0x3t
        0x24t
        0x11t
        0x24t
        0x15t
        -0x30t
        0x23t
        0x24t
        0x11t
        0x24t
        0x15t
        -0x27t
        -0x30t
        -0x4et
        -0x38t
        -0x32t
        0x79t
        -0x3at
        -0x32t
        -0x34t
        -0x33t
        0x79t
        -0x38t
        -0x31t
        -0x42t
        -0x35t
        -0x35t
        -0x3et
        -0x43t
        -0x42t
        0x79t
        -0x34t
        -0x3at
        -0x38t
        -0x38t
        -0x33t
        -0x3ft
        -0x54t
        -0x44t
        -0x35t
        -0x38t
        -0x3bt
        -0x3bt
        -0x53t
        -0x38t
        -0x57t
        -0x38t
        -0x34t
        -0x3et
        -0x33t
        -0x3et
        -0x38t
        -0x39t
        0x79t
        -0x33t
        -0x38t
        0x79t
        -0x34t
        -0x32t
        -0x37t
        -0x37t
        -0x38t
        -0x35t
        -0x33t
        0x79t
        -0x34t
        -0x3at
        -0x38t
        -0x38t
        -0x33t
        -0x3ft
        0x79t
        -0x34t
        -0x44t
        -0x35t
        -0x38t
        -0x3bt
        -0x3bt
        -0x3et
        -0x39t
        -0x40t
    .end array-data
.end method

.method public static A09()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NGwI4w5wjKKwr8vIXUEBgcadgt82Mvhc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UEWVJJvMFTFlt7hH7ERCIJOXwkHPD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VrTEPZjwbsMyuvHOm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2WwBzOWctlsBfaK16SO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SN9IkStz5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kDHla2kaeJhueA2usdy0jZceB2KGO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Oz8ehwpCKAgd43CqPtwSSE9zN5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pRsAYaXPUkY6EiG3qKZOmbtQ8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    return-void
.end method

.method private final A0A(I)V
    .locals 1

    .line 10476
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0D(ILandroid/view/View;)V

    .line 10477
    return-void
.end method

.method private final A0B(I)V
    .locals 1

    .line 10478
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    .line 10479
    .local p0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 10480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A0E(I)V

    .line 10481
    :cond_0
    return-void
.end method

.method private final A0C(II)V
    .locals 4

    .line 10482
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    .line 10483
    .local p0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 10484
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0A(I)V

    .line 10485
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0F(Landroid/view/View;I)V

    .line 10486
    return-void

    .line 10487
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x55

    const/16 v1, 0x2c

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 10488
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0D(ILandroid/view/View;)V
    .locals 1

    .line 10489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A0D(I)V

    .line 10490
    return-void
.end method

.method private final A0E(Landroid/view/View;)V
    .locals 1

    .line 10491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A0G(Landroid/view/View;)V

    .line 10492
    return-void
.end method

.method private final A0F(Landroid/view/View;I)V
    .locals 1

    .line 10493
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0G(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4L;)V

    .line 10494
    return-void
.end method

.method private final A0G(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4L;)V
    .locals 5

    .line 10495
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v4

    .line 10496
    .local p0, "vh":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4k;->A0A(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 10498
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/3i;->A0I(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 10499
    return-void

    .line 10500
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "mtQ3Ck4zhf6OC1ISSa3eadAcnNcPftbe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/4k;->A0B(Lcom/facebook/ads/redexgen/X/4c;)V

    goto :goto_0
.end method

.method private A0H(Landroid/view/View;IZ)V
    .locals 8

    .line 10501
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v2

    .line 10502
    .local p0, "holder":Lcom/facebook/ads/redexgen/X/4c;
    if-nez p3, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10503
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4k;->A0A(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 10504
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/4L;

    .line 10505
    .local p1, "lp":Lcom/facebook/ads/redexgen/X/4L;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0j()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10506
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10507
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0T()V

    .line 10508
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0, v4}, Lcom/facebook/ads/redexgen/X/3i;->A0I(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 10509
    :cond_2
    :goto_2
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    if-eqz v0, :cond_3

    .line 10510
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 10511
    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 10512
    :cond_3
    return-void

    .line 10513
    :cond_4
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0P()V

    goto :goto_1

    .line 10514
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    sget-object v3, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v3, v0

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v3, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "5ABI9jSeQ"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    if-ne v7, v6, :cond_8

    .line 10515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A08(Landroid/view/View;)I

    move-result v3

    .line 10516
    .local p2, "currentIndex":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    .line 10517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3i;->A06()I

    move-result p2

    .line 10518
    :cond_7
    if-eq v3, v1, :cond_a

    .line 10519
    if-eq v3, p2, :cond_2

    .line 10520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {v0, v3, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0C(II)V

    goto :goto_2

    .line 10521
    .end local p2    # "currentIndex":I
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1, p2, v4}, Lcom/facebook/ads/redexgen/X/3i;->A0J(Landroid/view/View;IZ)V

    .line 10522
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 10523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4X;->A0G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4X;->A0D(Landroid/view/View;)V

    goto :goto_2

    .line 10525
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4k;->A0B(Lcom/facebook/ads/redexgen/X/4c;)V

    goto/16 :goto_0

    .line 10526
    .restart local p2    # "currentIndex":I
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x55

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 10527
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0I(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 10528
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;->A0q(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10529
    return-void
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/4X;)V
    .locals 0

    .line 10530
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0N(Lcom/facebook/ads/redexgen/X/4X;)V

    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/4S;ILandroid/view/View;)V
    .locals 2

    .line 10531
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 10532
    .local p0, "viewHolder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10533
    return-void

    .line 10534
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    .line 10535
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0C()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10536
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0B(I)V

    .line 10537
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4S;->A0c(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 10538
    :goto_0
    return-void

    .line 10539
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0A(I)V

    .line 10540
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/4S;->A0X(Landroid/view/View;)V

    .line 10541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0t:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4k;->A0D(Lcom/facebook/ads/redexgen/X/4c;)V

    goto :goto_0
.end method

.method private final A0L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .line 10542
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v4, :cond_0

    if-nez p3, :cond_1

    .line 10543
    :cond_0
    return-void

    .line 10544
    :cond_1
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "A1LbQwkKC8kdEmdjm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mpAFCzQjd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 10545
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 10546
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 10547
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10548
    :cond_2
    :goto_0
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_4

    .line 10549
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "LKoEdNrfwYhRE769hHSL4lsoF7TmWWKx"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-eqz v0, :cond_3

    .line 10550
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 10551
    :cond_3
    return-void

    .line 10552
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 10553
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0M(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 4

    .line 10554
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollVertically(I)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10555
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0O(I)V

    .line 10556
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/3O;->A0S(Z)V

    .line 10557
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10558
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0O(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10559
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "WKK7ZU1nOyoZ4isR3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "S1xUaVTVF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/3O;->A0S(Z)V

    .line 10560
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0s(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v3

    .line 10561
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0r(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v2

    .line 10562
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0Q(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Z

    move-result v1

    .line 10563
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A06(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    .line 10564
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3L;->A00(IIZI)Lcom/facebook/ads/redexgen/X/3L;

    move-result-object v0

    .line 10565
    .local p0, "collectionInfo":Lcom/facebook/ads/redexgen/X/3L;
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0Q(Ljava/lang/Object;)V

    .line 10566
    return-void
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/4X;)V
    .locals 1

    .line 10567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    if-ne v0, p1, :cond_0

    .line 10568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    .line 10569
    :cond_0
    return-void
.end method

.method private final A0O()Z
    .locals 1

    .line 10570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4X;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0P(III)Z
    .locals 5

    .line 10571
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 10572
    .local p0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 10573
    .local p1, "specSize":I
    const/4 v2, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    .line 10574
    return v2

    .line 10575
    :cond_0
    const/high16 v1, -0x80000000

    const/4 v0, 0x1

    if-eq v4, v1, :cond_4

    if-eqz v4, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v4, v0, :cond_1

    .line 10576
    return v2

    .line 10577
    :cond_1
    if-ne v3, p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 10578
    :cond_3
    return v0

    .line 10579
    :cond_4
    if-lt v3, p0, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method private final A0Q(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Z
    .locals 1

    .line 10580
    const/4 v0, 0x0

    return v0
.end method

.method private final A0R(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;ILandroid/os/Bundle;)Z
    .locals 8

    .line 10581
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 10582
    return v7

    .line 10583
    :cond_0
    const/4 v5, 0x0

    .local p2, "vScroll":I
    const/4 v4, 0x0

    .line 10584
    .local p3, "hScroll":I
    const/16 v0, 0x1000

    const/4 v6, 0x1

    if-eq p3, v0, :cond_4

    const/16 v0, 0x2000

    if-eq p3, v0, :cond_2

    .line 10585
    :cond_1
    :goto_0
    if-nez v5, :cond_6

    if-nez v4, :cond_6

    .line 10586
    return v7

    .line 10587
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10588
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v5, v1

    .line 10589
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10590
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v4, v1

    goto :goto_0

    .line 10591
    :cond_4
    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10592
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v0

    sub-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    sub-int/2addr v5, v0

    .line 10593
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Eq;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10594
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "6TTpYbQ6a4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v4, v0

    goto :goto_0

    .line 10595
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/Eq;->scrollBy(II)V

    .line 10596
    return v6

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0S(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 10597
    const/4 v0, 0x0

    return v0
.end method

.method private A0T(Lcom/facebook/ads/redexgen/X/Eq;II)Z
    .locals 8

    .line 10598
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 10599
    .local p0, "focusedChild":Landroid/view/View;
    const/4 v6, 0x0

    if-nez v7, :cond_0

    .line 10600
    return v6

    .line 10601
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v5

    .line 10602
    .local p2, "parentLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v4

    .line 10603
    .local p3, "parentTop":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v3, v0

    .line 10604
    .local v7, "parentRight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    sub-int/2addr v2, v0

    .line 10605
    .local v6, "parentBottom":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0p:Landroid/graphics/Rect;

    .line 10606
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v7, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0I(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10607
    iget v0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    if-ge v0, v3, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    if-le v0, v5, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-ge v0, v2, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p3

    if-gt v0, v4, :cond_2

    .line 10608
    :cond_1
    return v6

    .line 10609
    :cond_2
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "D1nd79aIos3YYe4Hq7EzCaafqnQh2NEe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0U(Lcom/facebook/ads/redexgen/X/Eq;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10610
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0O()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0V(Lcom/facebook/ads/redexgen/X/Eq;Landroid/view/View;Landroid/graphics/Rect;Z)[I
    .locals 14

    .line 10611
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 10612
    .local p1, "out":[I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v13

    .line 10613
    .local p2, "parentLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v12

    .line 10614
    .local v1, "parentTop":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v11

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v11, v0

    .line 10615
    .local p4, "parentRight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    sub-int/2addr v10, v0

    .line 10616
    .local v1, "parentBottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v9

    move-object/from16 v1, p3

    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr v9, v0

    .line 10617
    .local v0, "childLeft":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr v8, v0

    .line 10618
    .local v7, "childTop":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v9

    .line 10619
    .local v13, "childRight":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v8

    .line 10620
    .local v12, "childBottom":I
    sub-int v0, v9, v13

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 10621
    .local v11, "offScreenLeft":I
    sub-int v0, v8, v12

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 10622
    .local v11, "offScreenTop":I
    sub-int v0, v6, v11

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 10623
    .local v10, "offScreenRight":I
    sub-int/2addr v2, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 10624
    .local v0, "offScreenBottom":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0b()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 10625
    if-eqz v3, :cond_1

    .line 10626
    .restart local v10    # "offScreenRight":I
    :goto_0
    if-eqz v4, :cond_0

    .line 10627
    .local v0, "dy":I
    :goto_1
    const/4 v0, 0x0

    aput v3, v7, v0

    .line 10628
    const/4 v0, 0x1

    aput v4, v7, v0

    .line 10629
    return-object v7

    .line 10630
    :cond_0
    sub-int/2addr v8, v12

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    .line 10631
    :cond_1
    sub-int/2addr v6, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 10632
    .end local v10    # "offScreenRight":I
    :cond_2
    if-eqz v5, :cond_3

    move v3, v5

    goto :goto_0

    .line 10633
    :cond_3
    sub-int/2addr v9, v13

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public final A0W()I
    .locals 1

    .line 10634
    const/4 v0, -0x1

    return v0
.end method

.method public final A0X()I
    .locals 1

    .line 10635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3i;->A06()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Y()I
    .locals 1

    .line 10636
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0A:I

    return v0
.end method

.method public final A0Z()I
    .locals 1

    .line 10637
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0B:I

    return v0
.end method

.method public final A0a()I
    .locals 1

    .line 10638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getAdapter()Lcom/facebook/ads/redexgen/X/48;

    move-result-object v0

    .line 10639
    .local p0, "a":Lcom/facebook/ads/redexgen/X/48;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 10640
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0b()I
    .locals 1

    .line 10641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2z;->A01(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0c()I
    .locals 1

    .line 10642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2z;->A02(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0d()I
    .locals 1

    .line 10643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2z;->A03(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0e()I
    .locals 1

    .line 10644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0f()I
    .locals 1

    .line 10645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0g()I
    .locals 1

    .line 10646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0h()I
    .locals 1

    .line 10647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0i()I
    .locals 1

    .line 10648
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0C:I

    return v0
.end method

.method public final A0j()I
    .locals 1

    .line 10649
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0D:I

    return v0
.end method

.method public final A0k(Landroid/view/View;)I
    .locals 2

    .line 10650
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A02(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0l(Landroid/view/View;)I
    .locals 2

    .line 10651
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A03(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0m(Landroid/view/View;)I
    .locals 3

    .line 10652
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 10653
    .local p0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0n(Landroid/view/View;)I
    .locals 3

    .line 10654
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 10655
    .local p0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0o(Landroid/view/View;)I
    .locals 2

    .line 10656
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A04(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0p(Landroid/view/View;)I
    .locals 2

    .line 10657
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A05(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0q(Landroid/view/View;)I
    .locals 1

    .line 10658
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4L;->A00()I

    move-result v0

    return v0
.end method

.method public A0r(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 2

    .line 10659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-nez v0, :cond_1

    .line 10660
    :cond_0
    return v1

    .line 10661
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v1

    :cond_2
    return v1
.end method

.method public A0s(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 2

    .line 10662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-nez v0, :cond_1

    .line 10663
    :cond_0
    return v1

    .line 10664
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v1

    :cond_2
    return v1
.end method

.method public final A0t()Landroid/view/View;
    .locals 6

    .line 10665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 10666
    return-object v5

    .line 10667
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10668
    .local p0, "focused":Landroid/view/View;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "iiKud1wfkCloFGZ1U"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "7ET4ZuKdeEmot2qkcvXky1gJdqYIXUUX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/3i;->A0L(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10669
    :cond_2
    :goto_0
    return-object v5

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "xPYIlKgRfeB9qWlMIQGlIgoODb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/3i;->A0L(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 10670
    :cond_4
    return-object v3
.end method

.method public final A0u(I)Landroid/view/View;
    .locals 1

    .line 10671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A0A(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0v(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 10672
    const/4 v0, 0x0

    return-object v0
.end method

.method public A0w(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/ads/redexgen/X/4L;
    .locals 1

    .line 10673
    new-instance v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public A0x(Landroid/view/ViewGroup$LayoutParams;)Lcom/facebook/ads/redexgen/X/4L;
    .locals 1

    .line 10674
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4L;

    if-eqz v0, :cond_0

    .line 10675
    check-cast p1, Lcom/facebook/ads/redexgen/X/4L;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Lcom/facebook/ads/redexgen/X/4L;)V

    return-object v0

    .line 10676
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 10677
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 10678
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final A0y()V
    .locals 1

    .line 10679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    if-eqz v0, :cond_0

    .line 10680
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4X;->A0A()V

    .line 10681
    :cond_0
    return-void
.end method

.method public final A0z()V
    .locals 1

    .line 10682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    .line 10683
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->requestLayout()V

    .line 10684
    :cond_0
    return-void
.end method

.method public final A10(I)V
    .locals 1

    .line 10685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    .line 10686
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1U(I)V

    .line 10687
    :cond_0
    return-void
.end method

.method public final A11(I)V
    .locals 1

    .line 10688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    .line 10689
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1V(I)V

    .line 10690
    :cond_0
    return-void
.end method

.method public final A12(II)V
    .locals 2

    .line 10691
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0C:I

    .line 10692
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0D:I

    .line 10693
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0D:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Eq;->A1B:Z

    if-nez v0, :cond_0

    .line 10694
    iput v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A0C:I

    .line 10695
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0A:I

    .line 10696
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0B:I

    .line 10697
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0B:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Eq;->A1B:Z

    if-nez v0, :cond_1

    .line 10698
    iput v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A0A:I

    .line 10699
    :cond_1
    return-void
.end method

.method public final A13(II)V
    .locals 9

    .line 10700
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v8

    .line 10701
    .local p0, "count":I
    if-nez v8, :cond_0

    .line 10702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;->A1b(II)V

    .line 10703
    return-void

    .line 10704
    :cond_0
    const v6, 0x7fffffff

    .line 10705
    .local p1, "minX":I
    const v5, 0x7fffffff

    .line 10706
    .local p2, "minY":I
    const/high16 v4, -0x80000000

    .line 10707
    .local v8, "maxX":I
    const/high16 v3, -0x80000000

    .line 10708
    .local v0, "maxY":I
    const/4 v7, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v7, v8, :cond_5

    .line 10709
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v2

    .line 10710
    .local v5, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0p:Landroid/graphics/Rect;

    .line 10711
    .local v4, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0I(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10712
    iget v0, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v6, :cond_1

    .line 10713
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 10714
    :cond_1
    iget v0, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v4, :cond_2

    .line 10715
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 10716
    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v5, :cond_3

    .line 10717
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 10718
    :cond_3
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_4

    .line 10719
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 10720
    .end local v5    # "child":Landroid/view/View;
    .end local v4    # "bounds":Landroid/graphics/Rect;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 10721
    .end local v6    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0p:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v5, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 10722
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "hT857kPIBtMq0qM94"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "qfhhOTku3"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0p:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A16(Landroid/graphics/Rect;II)V

    .line 10723
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A14(II)V
    .locals 1

    .line 10724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;->A0x(Lcom/facebook/ads/redexgen/X/Eq;II)V

    .line 10725
    return-void
.end method

.method public final A15(ILcom/facebook/ads/redexgen/X/4S;)V
    .locals 1

    .line 10726
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    .line 10727
    .local p0, "view":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0B(I)V

    .line 10728
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/4S;->A0Y(Landroid/view/View;)V

    .line 10729
    return-void
.end method

.method public A16(Landroid/graphics/Rect;II)V
    .locals 3

    .line 10730
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    add-int/2addr v1, v0

    .line 10731
    .local p0, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    add-int/2addr v2, v0

    .line 10732
    .local p1, "usedHeight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0d()I

    move-result v0

    invoke-static {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A00(III)I

    move-result v1

    .line 10733
    .local p2, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0c()I

    move-result v0

    invoke-static {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A00(III)I

    move-result v0

    .line 10734
    .local p3, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A14(II)V

    .line 10735
    return-void
.end method

.method public final A17(Landroid/view/View;)V
    .locals 1

    .line 10736
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A19(Landroid/view/View;I)V

    .line 10737
    return-void
.end method

.method public final A18(Landroid/view/View;)V
    .locals 1

    .line 10738
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1A(Landroid/view/View;I)V

    .line 10739
    return-void
.end method

.method public final A19(Landroid/view/View;I)V
    .locals 1

    .line 10740
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0H(Landroid/view/View;IZ)V

    .line 10741
    return-void
.end method

.method public final A1A(Landroid/view/View;I)V
    .locals 1

    .line 10742
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0H(Landroid/view/View;IZ)V

    .line 10743
    return-void
.end method

.method public final A1B(Landroid/view/View;II)V
    .locals 7

    .line 10744
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/4L;

    .line 10745
    .local p0, "lp":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1F(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 10746
    .local p1, "insets":Landroid/graphics/Rect;
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 10747
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    add-int/2addr p3, v1

    .line 10748
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0j()I

    move-result v3

    .line 10749
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4L;->leftMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4L;->rightMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    iget v1, v6, Lcom/facebook/ads/redexgen/X/4L;->width:I

    .line 10750
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    .line 10751
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A01(IIIIZ)I

    move-result v5

    .line 10752
    .local p2, "widthSpec":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Z()I

    move-result v3

    .line 10753
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4L;->topMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4L;->bottomMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p3

    iget v1, v6, Lcom/facebook/ads/redexgen/X/4L;->height:I

    .line 10754
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v0

    .line 10755
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A01(IIIIZ)I

    move-result v1

    .line 10756
    .local p3, "heightSpec":I
    invoke-virtual {p0, p1, v5, v1, v6}, Lcom/facebook/ads/redexgen/X/4K;->A1b(Landroid/view/View;IILcom/facebook/ads/redexgen/X/4L;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10757
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 10758
    :cond_0
    return-void
.end method

.method public final A1C(Landroid/view/View;IIII)V
    .locals 5

    .line 10759
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4L;

    .line 10760
    .local p0, "lp":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 10761
    .local p1, "insets":Landroid/graphics/Rect;
    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4L;->leftMargin:I

    add-int/2addr v2, v0

    iget v1, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4L;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4L;->rightMargin:I

    sub-int/2addr p4, v0

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4L;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, v2, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 10762
    return-void
.end method

.method public final A1D(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 3

    .line 10763
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v2

    .line 10764
    .local p0, "vh":Lcom/facebook/ads/redexgen/X/4c;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3i;->A0L(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A1L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V

    .line 10766
    :cond_0
    return-void
.end method

.method public final A1E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 0

    .line 10767
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0E(Landroid/view/View;)V

    .line 10768
    invoke-virtual {p2, p1}, Lcom/facebook/ads/redexgen/X/4S;->A0Y(Landroid/view/View;)V

    .line 10769
    return-void
.end method

.method public final A1F(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 7

    .line 10770
    if-eqz p2, :cond_0

    .line 10771
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 10772
    .local p0, "insets":Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/Rect;->left:I

    neg-int v4, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    neg-int v3, v0

    .line 10773
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v0, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    .line 10774
    invoke-virtual {p3, v4, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 10775
    .end local p0    # "insets":Landroid/graphics/Rect;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_2

    .line 10776
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 10777
    .local p0, "childMatrix":Landroid/graphics/Matrix;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0q:Landroid/graphics/RectF;

    .line 10779
    .local p1, "tempRectF":Landroid/graphics/RectF;
    invoke-virtual {v6, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 10780
    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 10781
    iget v0, v6, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    .line 10782
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v5, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    .line 10783
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v4, v0

    iget v3, v6, Landroid/graphics/RectF;->right:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10784
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "WbBFuKAltYM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    float-to-double v0, v3

    .line 10785
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    .line 10786
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 10787
    invoke-virtual {p3, v5, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 10788
    .end local p0    # "childMatrix":Landroid/graphics/Matrix;
    .end local p1    # "tempRectF":Landroid/graphics/RectF;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 10789
    return-void
.end method

.method public final A1G(Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 2

    .line 10790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0M(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3O;)V

    .line 10791
    return-void
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 6

    .line 10792
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4S;->A0F()I

    move-result v5

    .line 10793
    .local p0, "scrapCount":I
    add-int/lit8 v4, v5, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 10794
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4S;->A0G(I)Landroid/view/View;

    move-result-object v3

    .line 10795
    .local v5, "scrap":Landroid/view/View;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v2

    .line 10796
    .local v4, "vh":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10797
    .end local v5    # "scrap":Landroid/view/View;
    .end local v4    # "vh":Lcom/facebook/ads/redexgen/X/4c;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 10798
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0a(Z)V

    .line 10799
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Eq;->removeDetachedView(Landroid/view/View;Z)V

    .line 10801
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A05:Lcom/facebook/ads/redexgen/X/4G;

    if-eqz v0, :cond_2

    .line 10802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A05:Lcom/facebook/ads/redexgen/X/4G;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4G;->A0E(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 10803
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0a(Z)V

    .line 10804
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4S;->A0W(Landroid/view/View;)V

    goto :goto_1

    .line 10805
    .end local p1    # "i":I
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4S;->A0M()V

    .line 10806
    if-lez v5, :cond_4

    .line 10807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->invalidate()V

    .line 10808
    :cond_4
    return-void
.end method

.method public final A1I(Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 2

    .line 10809
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    .line 10810
    .local p0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 10811
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    .line 10812
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0K(Lcom/facebook/ads/redexgen/X/4S;ILandroid/view/View;)V

    .line 10813
    .end local v0    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 10814
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method public final A1J(Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 2

    .line 10815
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p0, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 10816
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    .line 10817
    .local p1, "view":Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10818
    invoke-virtual {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/4K;->A15(ILcom/facebook/ads/redexgen/X/4S;)V

    .line 10819
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 10820
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method public A1K(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;II)V
    .locals 1

    .line 10821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/Eq;->A1b(II)V

    .line 10822
    return-void
.end method

.method public A1L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 9

    .line 10823
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v3

    .line 10824
    .local p2, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v5

    .line 10825
    .local p4, "columnIndexGuess":I
    :goto_1
    const/4 v4, 0x1

    const/4 v6, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10826
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 10827
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/4K;->A0J:[Ljava/lang/String;

    const-string v1, "h476R5jl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 10828
    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/3M;->A00(IIIIZZ)Lcom/facebook/ads/redexgen/X/3M;

    move-result-object v0

    .line 10829
    .local p0, "itemInfo":Lcom/facebook/ads/redexgen/X/3M;
    invoke-virtual {p4, v0}, Lcom/facebook/ads/redexgen/X/3O;->A0R(Ljava/lang/Object;)V

    .line 10830
    return-void
.end method

.method public final A1M(Lcom/facebook/ads/redexgen/X/4X;)V
    .locals 2

    .line 10831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 10832
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4X;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4X;->A0A()V

    .line 10834
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    .line 10835
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/4X;->A0E(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4K;)V

    .line 10836
    return-void
.end method

.method public A1N(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 0

    .line 10837
    return-void
.end method

.method public final A1O(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 1

    .line 10838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A07:Z

    .line 10839
    return-void
.end method

.method public final A1P(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 3

    .line 10840
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10841
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getHeight()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10842
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A12(II)V

    .line 10843
    return-void
.end method

.method public final A1Q(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 1

    .line 10844
    if-nez p1, :cond_0

    .line 10845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 10846
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    .line 10847
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0C:I

    .line 10848
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0A:I

    .line 10849
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0D:I

    .line 10850
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0B:I

    .line 10851
    return-void

    .line 10852
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    .line 10853
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Eq;->A01:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A01:Lcom/facebook/ads/redexgen/X/3i;

    .line 10854
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0C:I

    .line 10855
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0A:I

    goto :goto_0
.end method

.method public A1R(Lcom/facebook/ads/redexgen/X/Eq;II)V
    .locals 0

    .line 10856
    return-void
.end method

.method public A1S(Lcom/facebook/ads/redexgen/X/Eq;II)V
    .locals 0

    .line 10857
    return-void
.end method

.method public A1T(Lcom/facebook/ads/redexgen/X/Eq;III)V
    .locals 0

    .line 10858
    return-void
.end method

.method public A1U(Lcom/facebook/ads/redexgen/X/Eq;IILjava/lang/Object;)V
    .locals 0

    .line 10859
    return-void
.end method

.method public final A1V(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 1

    .line 10860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A07:Z

    .line 10861
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A21(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4S;)V

    .line 10862
    return-void
.end method

.method public final A1W(Z)V
    .locals 0

    .line 10863
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4K;->A06:Z

    .line 10864
    return-void
.end method

.method public final A1X()Z
    .locals 4

    .line 10865
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v3

    .line 10866
    .local p0, "childCount":I
    const/4 v2, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 10867
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    .line 10868
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 10869
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v0, :cond_0

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v0, :cond_0

    .line 10870
    const/4 v0, 0x1

    return v0

    .line 10871
    .end local v2    # "child":Landroid/view/View;
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10872
    .end local v3    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A1Y()Z
    .locals 1

    .line 10873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1Z()Z
    .locals 1

    .line 10874
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0E:Z

    return v0
.end method

.method public final A1a(ILandroid/os/Bundle;)Z
    .locals 2

    .line 10875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0R(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final A1b(Landroid/view/View;IILcom/facebook/ads/redexgen/X/4L;)Z
    .locals 2

    .line 10876
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A0F:Z

    if-eqz v0, :cond_0

    .line 10877
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/4L;->width:I

    invoke-static {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0P(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10878
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/4L;->height:I

    invoke-static {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0P(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 10879
    :goto_0
    return v0

    .line 10880
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1c(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .line 10881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4K;->A0S(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public A1d(Lcom/facebook/ads/redexgen/X/4L;)Z
    .locals 1

    .line 10882
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1e(Lcom/facebook/ads/redexgen/X/Eq;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 10883
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move v4, p4

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4K;->A1f(Lcom/facebook/ads/redexgen/X/Eq;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public final A1f(Lcom/facebook/ads/redexgen/X/Eq;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 5

    .line 10884
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/4K;->A0V(Lcom/facebook/ads/redexgen/X/Eq;Landroid/view/View;Landroid/graphics/Rect;Z)[I

    move-result-object v0

    .line 10885
    .local p0, "scrollAmount":[I
    const/4 v4, 0x0

    aget v3, v0, v4

    .line 10886
    .local p2, "dx":I
    const/4 v2, 0x1

    aget v1, v0, v2

    .line 10887
    .local p4, "dy":I
    if-eqz p5, :cond_0

    invoke-direct {p0, p1, v3, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0T(Lcom/facebook/ads/redexgen/X/Eq;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10888
    :cond_0
    if-nez v3, :cond_1

    if-eqz v1, :cond_3

    .line 10889
    :cond_1
    if-eqz p4, :cond_2

    .line 10890
    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/Eq;->scrollBy(II)V

    .line 10891
    :goto_0
    return v2

    .line 10892
    :cond_2
    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/Eq;->A1f(II)V

    goto :goto_0

    .line 10893
    :cond_3
    return v4
.end method

.method public final A1g(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 10894
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/4K;->A0U(Lcom/facebook/ads/redexgen/X/Eq;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final A1h(Lcom/facebook/ads/redexgen/X/Eq;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Eq;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 10895
    .local p3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public A1i(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 10896
    const/4 v0, 0x0

    return v0
.end method

.method public A1j(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 10897
    const/4 v0, 0x0

    return v0
.end method

.method public A1k(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 10898
    const/4 v0, 0x0

    return v0
.end method

.method public A1l(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 10899
    const/4 v0, 0x0

    return v0
.end method

.method public A1m(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 10900
    const/4 v0, 0x0

    return v0
.end method

.method public A1n(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 10901
    const/4 v0, 0x0

    return v0
.end method

.method public A1o(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 10902
    const/4 v0, 0x0

    return v0
.end method

.method public A1p(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 10903
    const/4 v0, 0x0

    return v0
.end method

.method public A1q()Landroid/os/Parcelable;
    .locals 1

    .line 10904
    const/4 v0, 0x0

    return-object v0
.end method

.method public A1r(I)Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 10905
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v4

    .line 10906
    .local p0, "childCount":I
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 10907
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v2

    .line 10908
    .local v4, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 10909
    .local v3, "vh":Lcom/facebook/ads/redexgen/X/4c;
    if-nez v1, :cond_1

    .line 10910
    .end local v4    # "child":Landroid/view/View;
    .end local v3    # "vh":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10911
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    .line 10912
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10913
    :cond_2
    return-object v2

    .line 10914
    .end local p1    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public A1s(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 10915
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract A1t()Lcom/facebook/ads/redexgen/X/4L;
.end method

.method public A1u(I)V
    .locals 0

    .line 10916
    return-void
.end method

.method public A1v(IILcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4I;)V
    .locals 0

    .line 10917
    return-void
.end method

.method public A1w(ILcom/facebook/ads/redexgen/X/4I;)V
    .locals 0

    .line 10918
    return-void
.end method

.method public A1x(Landroid/os/Parcelable;)V
    .locals 0

    .line 10919
    return-void
.end method

.method public A1y(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 10920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10921
    return-void
.end method

.method public A1z(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 4

    .line 10922
    const/16 v2, 0x81

    const/16 v1, 0xc

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/16 v1, 0x43

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10923
    return-void
.end method

.method public A20(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 0

    .line 10924
    return-void
.end method

.method public A21(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 10925
    return-void
.end method

.method public A22(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4Z;I)V
    .locals 4

    .line 10926
    const/16 v2, 0x81

    const/16 v1, 0xc

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd0

    const/16 v1, 0x44

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10927
    return-void
.end method

.method public A23(Ljava/lang/String;)V
    .locals 1

    .line 10928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A03:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v0, :cond_0

    .line 10929
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->A1q(Ljava/lang/String;)V

    .line 10930
    :cond_0
    return-void
.end method

.method public A24()Z
    .locals 1

    .line 10931
    const/4 v0, 0x0

    return v0
.end method

.method public A25()Z
    .locals 1

    .line 10932
    const/4 v0, 0x0

    return v0
.end method

.method public A26()Z
    .locals 1

    .line 10933
    const/4 v0, 0x0

    return v0
.end method

.method public A27()Z
    .locals 1

    .line 10934
    const/4 v0, 0x0

    return v0
.end method
