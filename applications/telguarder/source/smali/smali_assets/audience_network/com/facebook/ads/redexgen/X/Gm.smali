.class public final Lcom/facebook/ads/redexgen/X/Gm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/U8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static A0A:[B


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:Landroid/text/Layout$Alignment;

.field public A09:Landroid/text/SpannableStringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gm;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35347
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gm;->A0E()V

    .line 35348
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/Gm;
    .locals 5

    .line 35349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gm;->A08:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_0

    .line 35350
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gm;->A05:I

    .line 35351
    :goto_0
    return-object p0

    .line 35352
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gl;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gm;->A08:Landroid/text/Layout$Alignment;

    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v0

    aget v2, v1, v0

    const/4 v4, 0x0

    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1

    .line 35353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gm;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gm;->A08:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x18

    const/16 v1, 0x10

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gm;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35354
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Gm;->A05:I

    goto :goto_0

    .line 35355
    :cond_1
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A05:I

    .line 35356
    goto :goto_0

    .line 35357
    :cond_2
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gm;->A05:I

    .line 35358
    goto :goto_0

    .line 35359
    :cond_3
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Gm;->A05:I

    .line 35360
    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gm;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1f

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

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gm;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0xft
        0xat
        0xet
        0x1t
        -0x1t
        0xbt
        0x3t
        0xat
        0x5t
        0x16t
        0x1t
        0x0t
        -0x44t
        -0x3t
        0x8t
        0x5t
        0x3t
        0xat
        0x9t
        0x1t
        0xat
        0x10t
        -0x2at
        -0x44t
        -0x2bt
        -0x1dt
        -0x20t
        -0xct
        -0xet
        -0xet
        -0x3ft
        -0xdt
        -0x1dt
        -0x40t
        -0xdt
        -0x19t
        -0x16t
        -0x1et
        -0x1dt
        -0x10t
    .end array-data
.end method


# virtual methods
.method public final A03(F)Lcom/facebook/ads/redexgen/X/Gm;
    .locals 0

    .line 35361
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A00:F

    .line 35362
    return-object p0
.end method

.method public final A04(F)Lcom/facebook/ads/redexgen/X/Gm;
    .locals 0

    .line 35363
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A01:F

    .line 35364
    return-object p0
.end method

.method public final A05(F)Lcom/facebook/ads/redexgen/X/Gm;
    .locals 0

    .line 35365
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A02:F

    .line 35366
    return-object p0
.end method

.method public final A06(I)Lcom/facebook/ads/redexgen/X/Gm;
    .locals 0

    .line 35367
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A03:I

    .line 35368
    return-object p0
.end method

.method public final A07(I)Lcom/facebook/ads/redexgen/X/Gm;
    .locals 0

    .line 35369
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A04:I

    .line 35370
    return-object p0
.end method

.method public final A08(I)Lcom/facebook/ads/redexgen/X/Gm;
    .locals 0

    .line 35371
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A05:I

    .line 35372
    return-object p0
.end method

.method public final A09(J)Lcom/facebook/ads/redexgen/X/Gm;
    .locals 0

    .line 35373
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A06:J

    .line 35374
    return-object p0
.end method

.method public final A0A(J)Lcom/facebook/ads/redexgen/X/Gm;
    .locals 0

    .line 35375
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A07:J

    .line 35376
    return-object p0
.end method

.method public final A0B(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Gm;
    .locals 0

    .line 35377
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A08:Landroid/text/Layout$Alignment;

    .line 35378
    return-object p0
.end method

.method public final A0C(Landroid/text/SpannableStringBuilder;)Lcom/facebook/ads/redexgen/X/Gm;
    .locals 0

    .line 35379
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A09:Landroid/text/SpannableStringBuilder;

    .line 35380
    return-object p0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/U8;
    .locals 13

    .line 35381
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A01:F

    const/4 v0, 0x1

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A05:I

    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_0

    .line 35382
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Gm;->A00()Lcom/facebook/ads/redexgen/X/Gm;

    .line 35383
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/U8;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A07:J

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Gm;->A06:J

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Gm;->A09:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Gm;->A08:Landroid/text/Layout$Alignment;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/Gm;->A00:F

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Gm;->A04:I

    iget v9, p0, Lcom/facebook/ads/redexgen/X/Gm;->A03:I

    iget v10, p0, Lcom/facebook/ads/redexgen/X/Gm;->A01:F

    iget v11, p0, Lcom/facebook/ads/redexgen/X/Gm;->A05:I

    iget v12, p0, Lcom/facebook/ads/redexgen/X/Gm;->A02:F

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ads/redexgen/X/U8;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v0
.end method

.method public final A0E()V
    .locals 2

    .line 35384
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Gm;->A07:J

    .line 35385
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Gm;->A06:J

    .line 35386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gm;->A09:Landroid/text/SpannableStringBuilder;

    .line 35387
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gm;->A08:Landroid/text/Layout$Alignment;

    .line 35388
    const/4 v1, 0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A00:F

    .line 35389
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gm;->A04:I

    .line 35390
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gm;->A03:I

    .line 35391
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A01:F

    .line 35392
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gm;->A05:I

    .line 35393
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Gm;->A02:F

    .line 35394
    return-void
.end method
