.class public final Lcom/facebook/ads/redexgen/X/NV;
.super Landroid/graphics/drawable/Drawable;
.source ""


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Q9;",
            ">;"
        }
    .end annotation
.end field

.field public A08:Z

.field public final A09:Landroid/graphics/Paint;

.field public final A0A:Landroid/graphics/Paint;

.field public final A0B:Landroid/graphics/Paint;

.field public final A0C:Landroid/graphics/Path;

.field public final A0D:Landroid/os/Handler;

.field public final A0E:Landroid/text/TextPaint;

.field public final A0F:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NV;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NV;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 45355
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 45356
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A09:Landroid/graphics/Paint;

    .line 45357
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A0A:Landroid/graphics/Paint;

    .line 45358
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A0C:Landroid/graphics/Path;

    .line 45359
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A0E:Landroid/text/TextPaint;

    .line 45360
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A0B:Landroid/graphics/Paint;

    .line 45361
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A0D:Landroid/os/Handler;

    .line 45362
    new-instance v0, Lcom/facebook/ads/redexgen/X/S0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/S0;-><init>(Lcom/facebook/ads/redexgen/X/NV;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A0F:Ljava/lang/Runnable;

    .line 45363
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NV;->A09:Landroid/graphics/Paint;

    const/16 v1, 0x24

    const/16 v0, 0x7f

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 45364
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NV;->A09:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A0A:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45366
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NV;->A0A:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/16 v1, 0xbf

    const/16 v0, 0xff

    invoke-static {v1, v2, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 45367
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NV;->A0A:Landroid/graphics/Paint;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45368
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NV;->A0A:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A0E:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 45370
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NV;->A0E:Landroid/text/TextPaint;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 45371
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NV;->A0E:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45372
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NV;->A0E:Landroid/text/TextPaint;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 45373
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NV;->A0B:Landroid/graphics/Paint;

    const/16 v0, 0xd4

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 45374
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NV;->A0B:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45375
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NV;->A08()V

    .line 45376
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/NV;)Landroid/os/Handler;
    .locals 0

    .line 45377
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NV;->A0D:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/NV;)Ljava/lang/Runnable;
    .locals 0

    .line 45378
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NV;->A0F:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NV;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 12

    .line 45379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45380
    .local p0, "sb":Ljava/lang/StringBuilder;
    iget v5, p0, Lcom/facebook/ads/redexgen/X/NV;->A00:I

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A02(III)Ljava/lang/String;

    move-result-object v3

    if-gtz v5, :cond_8

    .line 45381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A06:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A06:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45383
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45384
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A04:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A04:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45386
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45387
    :cond_1
    const/16 v2, 0x2e

    const/4 v1, 0x4

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45388
    const/16 v2, 0x15

    const/4 v1, 0x5

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45389
    const/16 v2, 0xc

    const/16 v1, 0x9

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45390
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/NV;->A03:J

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_7

    .line 45391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/NV;->A03:J

    sub-long/2addr v0, v7

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 45392
    .local v2, "rawMs":J
    const-wide/32 v10, 0x36ee80

    div-long v0, v6, v10

    long-to-int v9, v0

    .line 45393
    .local v4, "hours":I
    rem-long/2addr v6, v10

    .line 45394
    const-wide/32 v10, 0xea60

    div-long v0, v6, v10

    long-to-int v8, v0

    .line 45395
    .local v0, "minutes":I
    rem-long/2addr v6, v10

    .line 45396
    const-wide/16 v0, 0x3e8

    div-long/2addr v6, v0

    long-to-int v5, v6

    .line 45397
    .local v3, "seconds":I
    if-lez v9, :cond_2

    .line 45398
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45399
    const/16 v2, 0x54

    const/4 v1, 0x2

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45400
    :cond_2
    if-gtz v9, :cond_3

    if-lez v8, :cond_4

    .line 45401
    :cond_3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45402
    const/16 v2, 0x56

    const/4 v1, 0x2

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45403
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45404
    const/16 v2, 0x58

    const/4 v1, 0x5

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45405
    .end local v4    # "hours":I
    .end local v2    # "rawMs":J
    .end local v3    # "seconds":I
    .end local v0    # "minutes":I
    :goto_0
    const/4 v2, 0x1

    const/4 v1, 0x7

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A07:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 45407
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/NV;->A0H:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/NV;->A0H:[Ljava/lang/String;

    const-string v1, "t16PZDnglzGPDeedrgHm7ot6ei2FxW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "RyhXyehySpXKvAoo"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v5, :cond_6

    .line 45408
    .end local v4
    :cond_5
    const/16 v2, 0x39

    const/16 v1, 0x1b

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45409
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A05:Ljava/lang/String;

    .line 45410
    const/high16 v7, -0x31000000

    .line 45411
    .local v4, "maxWidth":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A05:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v5, v6

    const/4 v4, 0x0

    const/4 v3, 0x0

    .end local v4    # "maxWidth":F
    .local v0, "maxWidth":F
    :goto_2
    if-ge v3, v5, :cond_9

    aget-object v2, v6, v3

    .line 45412
    .local v3, "line":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NV;->A0E:Landroid/text/TextPaint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v4, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 45413
    .end local v3    # "line":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 45414
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Q9;

    .line 45415
    .local v4, "vc":Lcom/facebook/ads/redexgen/X/Q9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0S()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 45416
    :cond_7
    const/16 v2, 0x32

    const/4 v1, 0x7

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 45417
    :cond_8
    const/16 v2, 0x1a

    const/4 v1, 0x5

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45418
    iget v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A01:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45419
    const/16 v2, 0x8

    const/4 v1, 0x4

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45420
    iget v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A00:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 45421
    :cond_9
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A02:I

    .line 45422
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NV;->invalidateSelf()V

    .line 45423
    return-void

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x5d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NV;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0xct
        0x1at
        0x46t
        0x79t
        0x75t
        0x67t
        0x2at
        0x30t
        0x65t
        0x2at
        0x23t
        0x65t
        0x3ct
        0x30t
        0x5ct
        0x7ft
        0x71t
        0x74t
        0x75t
        0x74t
        0x30t
        0x0t
        0x18t
        0x5t
        0x18t
        0x6t
        0x1dt
        0x3ft
        0x2ct
        0x3at
        0x7et
        0x7t
        0x20t
        0x27t
        0x3at
        0x27t
        0x2ft
        0x22t
        0x27t
        0x34t
        0x27t
        0x20t
        0x29t
        0x60t
        0x60t
        0x60t
        0x6et
        0x59t
        0x56t
        0x1dt
        0x53t
        0x68t
        0x6dt
        0x68t
        0x69t
        0x71t
        0x68t
        0x6bt
        0x54t
        0x58t
        0x4at
        0x5ct
        0x5ft
        0x54t
        0x51t
        0x54t
        0x49t
        0x44t
        0x1dt
        0x7et
        0x55t
        0x58t
        0x5et
        0x56t
        0x58t
        0x4ft
        0x1dt
        0x53t
        0x52t
        0x49t
        0x1dt
        0x4et
        0x58t
        0x49t
        0x3ct
        0x74t
        0x7at
        0x37t
        0x59t
        0xat
        0x4bt
        0x4dt
        0x45t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uAADS07vuTt2bWOOIRXTK9bzUqfZPQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cn6RXotf6zZwAeB3lSiWP6IveEHpbDAc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fqHIMQcIn36ckD7HtV78"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rZKbd1qqPOm2jxQd70eAyB6uz1tOgPbY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sxaVjDfKgR8b2unSnmAv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1UAN8XI5lzImEv5q"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fr57qg0eWkx6ppTTUiLmxnyxz7CpPvLf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EJnXX6RVHz5b530rZ3EkT3HbTheO6nDW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NV;->A0H:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/NV;)V
    .locals 0

    .line 45424
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NV;->A03()V

    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/NV;)Z
    .locals 0

    .line 45425
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/NV;->A08:Z

    return p0
.end method


# virtual methods
.method public final A08()V
    .locals 4

    .line 45426
    const/4 v3, 0x0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/NV;->A00:I

    .line 45427
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A01:I

    .line 45428
    const/16 v2, 0x1f

    const/16 v1, 0xf

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NV;->A02(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A05:Ljava/lang/String;

    .line 45429
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A02:I

    .line 45430
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/NV;->A06:Ljava/lang/String;

    .line 45431
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A03:J

    .line 45432
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/NV;->A07:Ljava/lang/ref/WeakReference;

    .line 45433
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/NV;->A0E(Z)V

    .line 45434
    return-void
.end method

.method public final A09(II)V
    .locals 0

    .line 45435
    iput p1, p0, Lcom/facebook/ads/redexgen/X/NV;->A00:I

    .line 45436
    iput p2, p0, Lcom/facebook/ads/redexgen/X/NV;->A01:I

    .line 45437
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NV;->A03()V

    .line 45438
    return-void
.end method

.method public final A0A(J)V
    .locals 0

    .line 45439
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NV;->A03:J

    .line 45440
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NV;->A03()V

    .line 45441
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/Q9;)V
    .locals 1

    .line 45442
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A07:Ljava/lang/ref/WeakReference;

    .line 45443
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NV;->A03()V

    .line 45444
    return-void
.end method

.method public final A0C(Ljava/lang/String;)V
    .locals 0

    .line 45445
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NV;->A04:Ljava/lang/String;

    .line 45446
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NV;->A03()V

    .line 45447
    return-void
.end method

.method public final A0D(Ljava/lang/String;)V
    .locals 0

    .line 45448
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NV;->A06:Ljava/lang/String;

    .line 45449
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NV;->A03()V

    .line 45450
    return-void
.end method

.method public final A0E(Z)V
    .locals 2

    .line 45451
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/NV;->A08:Z

    .line 45452
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A08:Z

    if-eqz v0, :cond_0

    .line 45453
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NV;->A0D:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A0F:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45454
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NV;->invalidateSelf()V

    .line 45455
    return-void

    .line 45456
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NV;->A0D:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A0F:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final A0F()Z
    .locals 1

    .line 45457
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A08:Z

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 45458
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/NV;->A08:Z

    if-nez v1, :cond_0

    .line 45459
    return-void

    .line 45460
    :cond_0
    move-object/from16 v3, p1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 45461
    .local v5, "canvasWidth":I
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 45462
    .local v6, "canvasHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v2

    int-to-float v7, v1

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/NV;->A09:Landroid/graphics/Paint;

    move-object v3, v3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 45463
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/NV;->A05:Ljava/lang/String;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/NV;->A0E:Landroid/text/TextPaint;

    iget v13, v0, Lcom/facebook/ads/redexgen/X/NV;->A02:I

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 45464
    .local v7, "textLayout":Landroid/text/StaticLayout;
    int-to-float v8, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 45465
    .local v8, "canvasMiddleX":F
    int-to-float v7, v1

    div-float/2addr v7, v9

    .line 45466
    .local v3, "canvasMiddleY":F
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v6, v4

    div-float/2addr v6, v9

    .line 45467
    .local v10, "textMiddleX":F
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v5, v4

    div-float/2addr v5, v9

    .line 45468
    .local v11, "textMiddleY":F
    sub-float v12, v8, v6

    const/high16 v4, 0x42200000    # 40.0f

    sub-float/2addr v12, v4

    sub-float v13, v7, v5

    sub-float/2addr v13, v4

    add-float v14, v8, v6

    add-float/2addr v14, v4

    add-float v15, v7, v5

    add-float/2addr v15, v4

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/NV;->A0B:Landroid/graphics/Paint;

    move-object v11, v3

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 45469
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 45470
    sub-float/2addr v8, v6

    sub-float/2addr v7, v5

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45471
    invoke-virtual {v10, v3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 45472
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 45473
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/NV;->A0C:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 45474
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/NV;->A0C:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 45475
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/NV;->A0C:Landroid/graphics/Path;

    int-to-float v4, v2

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45476
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/NV;->A0C:Landroid/graphics/Path;

    int-to-float v4, v2

    int-to-float v2, v1

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45477
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/NV;->A0C:Landroid/graphics/Path;

    int-to-float v1, v1

    invoke-virtual {v2, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45478
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/NV;->A0C:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45479
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/NV;->A0C:Landroid/graphics/Path;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/NV;->A0A:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 45480
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .line 45481
    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 45482
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45483
    return-void
.end method
