.class public final Lcom/facebook/ads/redexgen/X/1W;
.super Lcom/facebook/ads/redexgen/X/2F;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Oq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ME;
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/ME;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Ax;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1W;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 3

    .line 3271
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2F;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 3272
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:I

    .line 3273
    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:I

    .line 3274
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A01:I

    .line 3275
    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:I

    .line 3276
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A05:Z

    .line 3277
    new-instance v2, Lcom/facebook/ads/redexgen/X/On;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/On;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Om;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Om;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ax;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Ax;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/Om;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A06:Lcom/facebook/ads/redexgen/X/Ax;

    .line 3278
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A01()V

    .line 3279
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V
    .locals 3

    .line 3280
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2F;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V

    .line 3281
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:I

    .line 3282
    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:I

    .line 3283
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A01:I

    .line 3284
    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:I

    .line 3285
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A05:Z

    .line 3286
    new-instance v2, Lcom/facebook/ads/redexgen/X/On;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/On;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Om;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Om;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ax;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Ax;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/Om;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A06:Lcom/facebook/ads/redexgen/X/Ax;

    .line 3287
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A01()V

    .line 3288
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3289
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2F;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V

    .line 3290
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:I

    .line 3291
    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:I

    .line 3292
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A01:I

    .line 3293
    iput v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:I

    .line 3294
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A05:Z

    .line 3295
    new-instance v2, Lcom/facebook/ads/redexgen/X/On;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/On;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Om;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Om;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ax;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Ax;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/Om;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A06:Lcom/facebook/ads/redexgen/X/Ax;

    .line 3296
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1W;->A01()V

    .line 3297
    return-void
.end method

.method private A00(I)I
    .locals 7

    .line 3298
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:I

    mul-int/lit8 v6, v0, 0x2

    .line 3299
    .local p0, "spacing":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1W;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1W;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    .line 3300
    .local p1, "availableWidth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eq;->getAdapter()Lcom/facebook/ads/redexgen/X/48;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v4

    .line 3301
    .local v0, "numItems":I
    const/4 v3, 0x0

    .line 3302
    .local v6, "numFullItems":I
    const v0, 0x7fffffff

    .line 3303
    .local v5, "itemSize":I
    :goto_0
    if-le v0, p1, :cond_1

    .line 3304
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v4, :cond_0

    .line 3305
    return p1

    .line 3306
    :cond_0
    mul-int v0, v3, v6

    sub-int v0, v5, v0

    int-to-float v2, v0

    int-to-float v1, v3

    const v0, 0x3eaa7efa    # 0.333f

    add-float/2addr v1, v0

    div-float/2addr v2, v1

    float-to-int v0, v2

    goto :goto_0

    .line 3307
    :cond_1
    return v0
.end method

.method private A01()V
    .locals 2

    .line 3308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A06:Lcom/facebook/ads/redexgen/X/Ax;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/TB;->A2F(I)V

    .line 3309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A06:Lcom/facebook/ads/redexgen/X/Ax;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2F;->setLayoutManager(Lcom/facebook/ads/redexgen/X/4K;)V

    .line 3310
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/1W;->setSaveEnabled(Z)V

    .line 3311
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/2F;->setSnapDelegate(Lcom/facebook/ads/redexgen/X/Oq;)V

    .line 3312
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 3313
    return-void
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "T7MK6mm4Fzbg8PTMnM4kcHpb21LLpIaw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PTQtUxKdjysMmbj8hCZsGKEwd1IRWqqZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Zw8mt4VncD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "79VYCrnrWW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2MnAMBnkkiKtyd2cP7mHhabJycDYuMiE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jaMauIT7sdi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OgIH7ZaBRtH9hoDgrnw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xZmsCngT77DU5lblEiekqTVKPqNdsast"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1W;->A07:[Ljava/lang/String;

    return-void
.end method

.method private A03(II)V
    .locals 3

    .line 3314
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:I

    if-ne p2, v0, :cond_0

    .line 3315
    return-void

    .line 3316
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1W;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/1W;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_2

    .line 3317
    sget-object v2, Lcom/facebook/ads/redexgen/X/1W;->A07:[Ljava/lang/String;

    const-string v1, "hNBaptvkpj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput p2, p0, Lcom/facebook/ads/redexgen/X/1W;->A02:I

    .line 3318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:Lcom/facebook/ads/redexgen/X/ME;

    if-eqz v0, :cond_1

    .line 3319
    const/4 v0, 0x0

    throw v0

    .line 3320
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A23(IZ)V
    .locals 1

    .line 3321
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2F;->A23(IZ)V

    .line 3322
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A03(II)V

    .line 3323
    return-void
.end method

.method public final A72(I)I
    .locals 3

    .line 3324
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3325
    .local p0, "scrollXAbs":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2F;->A06:I

    if-gt v2, v0, :cond_0

    .line 3326
    const/4 v0, 0x0

    return v0

    .line 3327
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A01:I

    const/4 v0, 0x1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    div-int/2addr v2, v1

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public getChildSpacing()I
    .locals 1

    .line 3328
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:I

    return v0
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 3329
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;->onMeasure(II)V

    .line 3330
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1W;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1W;->getPaddingBottom()I

    move-result v0

    add-int/2addr v3, v0

    .line 3331
    .local p0, "verticalPadding":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A05:Z

    if-eqz v0, :cond_4

    .line 3332
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    float-to-int v2, v0

    .line 3333
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1W;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0C(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v2, v0

    add-int/2addr v2, v3

    .line 3334
    .local p1, "height":I
    .restart local p1    # "height":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v1, v0, :cond_2

    .line 3335
    :goto_1
    sub-int/2addr v2, v3

    .line 3336
    .local p2, "itemSize":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A05:Z

    if-eqz v0, :cond_1

    .line 3337
    sget v0, Lcom/facebook/ads/redexgen/X/MB;->A09:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3338
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1W;->getMeasuredWidth()I

    move-result v1

    add-int v0, v2, v3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/1W;->setMeasuredDimension(II)V

    .line 3339
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A05:Z

    if-nez v0, :cond_0

    .line 3340
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/1W;->setChildWidth(I)V

    .line 3341
    :cond_0
    return-void

    .line 3342
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/1W;->A00(I)I

    move-result v2

    goto :goto_2

    .line 3343
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 3344
    goto :goto_1

    .line 3345
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 3346
    .end local p1    # "height":I
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1W;->getMeasuredWidth()I

    move-result v0

    int-to-float v1, v0

    const v0, 0x3ff47ae1    # 1.91f

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0
.end method

.method public setAdapter(Lcom/facebook/ads/redexgen/X/48;)V
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/48;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3347
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A06:Lcom/facebook/ads/redexgen/X/Ax;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A2M(I)V

    .line 3348
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    .line 3349
    return-void

    .line 3350
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setChildSpacing(I)V
    .locals 0

    .line 3351
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1W;->A00:I

    .line 3352
    return-void
.end method

.method public setChildWidth(I)V
    .locals 6

    .line 3353
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1W;->A01:I

    .line 3354
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1W;->getMeasuredWidth()I

    move-result v5

    .line 3355
    .local p0, "pageWidth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1W;->getPaddingLeft()I

    move-result v0

    sub-int v2, v5, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1W;->getPaddingRight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 3356
    .local p1, "innerWidth":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1W;->A06:Lcom/facebook/ads/redexgen/X/Ax;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A01:I

    sub-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A2N(I)V

    .line 3357
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1W;->A06:Lcom/facebook/ads/redexgen/X/Ax;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1W;->A01:I

    int-to-double v2, v0

    int-to-double v0, v5

    div-double/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/Ax;->A2L(D)V

    .line 3358
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1

    .line 3359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/1W;->A23(IZ)V

    .line 3360
    return-void
.end method

.method public setOnPageChangedListener(Lcom/facebook/ads/redexgen/X/ME;)V
    .locals 0

    .line 3361
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1W;->A04:Lcom/facebook/ads/redexgen/X/ME;

    .line 3362
    return-void
.end method

.method public setShowTextInCarousel(Z)V
    .locals 0

    .line 3363
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/1W;->A05:Z

    .line 3364
    return-void
.end method
