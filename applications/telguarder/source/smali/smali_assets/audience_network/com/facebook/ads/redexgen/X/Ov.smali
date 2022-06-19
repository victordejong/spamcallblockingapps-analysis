.class public final Lcom/facebook/ads/redexgen/X/Ov;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Z

.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 47533
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ov;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ov;->A03()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 47535
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47536
    return-object v6

    .line 47537
    :cond_0
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 47538
    .local v6, "overlayBytes":[B
    array-length v0, v1

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 47539
    .local p1, "overlayBm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Ov;->A00:Z

    if-eqz v0, :cond_1

    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/Ov;->A06(Lcom/facebook/ads/redexgen/X/Wm;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 47540
    :cond_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 47541
    .local v0, "overlayRepeat":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 47542
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47543
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_3

    .line 47544
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 47545
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_2

    .line 47546
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    goto :goto_0

    .line 47547
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A05(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)V

    goto :goto_0

    .line 47548
    :cond_3
    const/16 v2, 0x17

    const/16 v1, 0x12

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A05(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)V

    .line 47549
    :goto_0
    return-object v3

    .line 47550
    .end local v0    # "overlayRepeat":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_4
    :goto_1
    return-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47551
    .end local p1    # "overlayBm":Landroid/graphics/Bitmap;
    .end local v6    # "overlayBytes":[B
    :catchall_0
    move-exception v0

    .line 47552
    .local p1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1d:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 47553
    const/16 v2, 0x3b

    const/4 v1, 0x3

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 47554
    return-object v6
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ow;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 47555
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47556
    return-object v7

    .line 47557
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Ov;->A00(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    .line 47558
    .local p1, "overlayRepeat":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v6, :cond_1

    .line 47559
    return-object v7

    .line 47560
    :cond_1
    new-instance v5, Lcom/facebook/ads/redexgen/X/Ow;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/Ow;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 47561
    .local v7, "overlayView":Lcom/facebook/ads/redexgen/X/Ow;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x10

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ov;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_2

    .line 47562
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 47563
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ov;->A02:[Ljava/lang/String;

    const-string v1, "s0"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kN"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-lt v4, v3, :cond_3

    goto :goto_0

    .line 47564
    :cond_3
    :try_start_1
    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/Ow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 47565
    :goto_0
    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/Ow;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47566
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Ow;->setClickable(Z)V

    .line 47567
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Ow;->setFocusable(Z)V

    .line 47568
    return-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47569
    .end local p1    # "overlayRepeat":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "overlayView":Lcom/facebook/ads/redexgen/X/Ow;
    :catchall_0
    move-exception v0

    .line 47570
    .local p1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1d:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 47571
    const/16 v2, 0x3b

    const/4 v1, 0x3

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 47572
    return-object v7
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ov;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x3e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ov;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x7ct
        0x66t
        0x65t
        0x79t
        0x74t
        0x6ct
        0x58t
        0x70t
        0x61t
        0x67t
        0x7ct
        0x76t
        0x66t
        0x35t
        0x7ct
        0x66t
        0x35t
        0x7bt
        0x60t
        0x79t
        0x79t
        0x3bt
        0x19t
        0x2et
        0x38t
        0x24t
        0x3et
        0x39t
        0x28t
        0x2et
        0x38t
        0x6bt
        0x22t
        0x38t
        0x6bt
        0x25t
        0x3et
        0x27t
        0x27t
        0x65t
        0x25t
        0x12t
        0x1ft
        0x1at
        0x17t
        0x12t
        0x7t
        0x1at
        0x1ct
        0x1dt
        0x53t
        0x15t
        0x12t
        0x1at
        0x1ft
        0x16t
        0x17t
        0x5dt
        0x6bt
        0x69t
        0x6at
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LOnHKZUk03MjG3VYzMMYiec9SpPsFOh7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Pbkw0DRwc7jrPzgwHcPKSBrc9yMoULer"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Hj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "S7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LLbZvFImhG4qXHtXSuU8lE9QXb8BQ4aR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3BEuw5zYnH62E4dXOlScK8tmPuoX0Dzi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Tjz3D17CMTsDMz51rRXrrUvPJCeC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mII8e5HllIg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ov;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)V
    .locals 5

    .line 47573
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1d:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, p1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 47574
    const/16 v2, 0x3b

    const/4 v1, 0x3

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 47575
    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Wm;Landroid/graphics/Bitmap;)Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 47576
    const/4 v3, 0x0

    .local p0, "x":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 47577
    const/4 v2, 0x0

    .local p1, "y":I
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 47578
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 47579
    .local v3, "pixel":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr v1, v0

    .line 47580
    .local v0, "alpha":F
    const v0, 0x3cf5c28f    # 0.03f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    .line 47581
    const/16 v2, 0x29

    const/16 v1, 0x12

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Ov;->A05(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)V

    .line 47582
    const/4 v0, 0x0

    return v0

    .line 47583
    .end local v3    # "pixel":I
    .end local v0    # "alpha":F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 47584
    .end local p1    # "y":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47585
    .end local p0    # "x":I
    :cond_2
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ov;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ov;->A02:[Ljava/lang/String;

    const-string v1, "LR4kTGqXNNTRbn07qZCCCo1h4xvtCqSD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "LZTU5gCJod3YylAEiVGeMzo2seGubyq7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3
.end method
