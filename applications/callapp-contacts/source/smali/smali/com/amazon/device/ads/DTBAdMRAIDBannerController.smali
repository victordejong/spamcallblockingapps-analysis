.class Lcom/amazon/device/ads/DTBAdMRAIDBannerController;
.super Lcom/amazon/device/ads/DTBAdMRAIDController;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/DTBMRAIDCloseButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DTBAdMRAIDBannerController$BackgroundView;,
        Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;
    }
.end annotation


# static fields
.field private static j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/device/ads/DTBAdMRAIDBannerController;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/amazon/device/ads/DTBAdBannerListener;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/animation/ObjectAnimator;

.field private o:F

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/view/ViewGroup$LayoutParams;

.field private v:I

.field private w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

.field private x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->k:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/DTBAdView;Lcom/amazon/device/ads/DTBAdBannerListener;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    .line 98
    sget-object p1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->v:I

    .line 100
    iput-object p2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a:Lcom/amazon/device/ads/DTBAdBannerListener;

    .line 101
    iput-object p0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->f:Lcom/amazon/device/ads/DTBMRAIDCloseButtonListener;

    return-void
.end method

.method private synthetic A()V
    .locals 2

    .line 50118
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    const-string v1, "about:blank"

    .line 208
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "unload"

    .line 209
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;)V

    return-void
.end method

.method static a(I)Lcom/amazon/device/ads/DTBAdMRAIDBannerController;
    .locals 3

    .line 639
    sget-object v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 640
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    if-eqz v1, :cond_0

    .line 641
    iget v2, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->v:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic a(IIIILandroid/animation/ValueAnimator;)V
    .locals 5

    .line 433
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    .line 41094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 434
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 42094
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 435
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/DTBAdView;->setX(F)V

    .line 43094
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 436
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/DTBAdView;->setY(F)V

    .line 437
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 438
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44094
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 439
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/DTBAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 440
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->invalidate()V

    .line 442
    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p5, p5, v0

    if-nez p5, :cond_0

    .line 443
    invoke-static {p1}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p5

    .line 444
    invoke-static {p2}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p2

    .line 443
    invoke-virtual {p0, p5, p2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(II)V

    add-int/2addr p3, p1

    .line 445
    invoke-virtual {p0, p3, p4}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->b(II)V

    const-string p1, "resize"

    .line 446
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;)V

    .line 447
    sget-object p1, Lcom/amazon/device/ads/MraidStateType;->RESIZED:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Lcom/amazon/device/ads/MraidStateType;)V

    const/4 p1, 0x0

    .line 448
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    .line 46094
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    const/4 p2, 0x1

    .line 449
    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/DTBAdView;->a(Z)V

    :cond_0
    return-void
.end method

.method private synthetic a(IIZII)V
    .locals 15

    move-object v6, p0

    .line 344
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->r()V

    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 26094
    iget-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 348
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/DTBAdView;->getLocationInWindow([I)V

    new-array v1, v7, [I

    .line 27094
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 351
    invoke-static {v2}, Lcom/amazon/device/ads/DTBAdUtil;->b(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v8

    .line 352
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 354
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->l:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-nez v2, :cond_0

    .line 28094
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 355
    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdView;->getX()F

    move-result v2

    iput v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->o:F

    .line 29094
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 356
    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdView;->getY()F

    move-result v2

    iput v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->p:F

    .line 30094
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 357
    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v2

    iput v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->s:I

    .line 31094
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 358
    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v2

    iput v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->t:I

    .line 359
    aget v2, v0, v9

    aget v4, v1, v9

    sub-int/2addr v2, v4

    iput v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->q:I

    .line 360
    aget v2, v0, v3

    aget v4, v1, v3

    sub-int/2addr v2, v4

    iput v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->r:I

    .line 32094
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 362
    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->l:Landroid/view/ViewGroup;

    .line 33094
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 33150
    iput-boolean v3, v2, Lcom/amazon/device/ads/DTBAdView;->c:Z

    .line 364
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->l:Landroid/view/ViewGroup;

    .line 34094
    iget-object v4, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 364
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 369
    :cond_0
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    .line 370
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    .line 371
    iget v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->q:I

    invoke-static/range {p1 .. p1}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 372
    iget v4, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->r:I

    invoke-static/range {p2 .. p2}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v5

    add-int/2addr v4, v5

    if-nez p3, :cond_4

    add-int/lit8 v5, v11, -0x14

    if-le v2, v5, :cond_1

    move v2, v5

    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    add-int/lit8 v5, v10, -0x14

    if-le v4, v5, :cond_3

    move v4, v5

    :cond_3
    if-gez v4, :cond_4

    move v12, v2

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    move v12, v2

    move v13, v4

    .line 392
    :goto_0
    new-instance v14, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    aget v2, v0, v9

    aget v4, v1, v9

    sub-int/2addr v2, v4

    aget v0, v0, v3

    aget v1, v1, v3

    sub-int v3, v0, v1

    .line 35094
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 392
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v4

    .line 36094
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 392
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v5

    move-object v0, v14

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIII)V

    iput-object v14, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 396
    invoke-static/range {p4 .. p4}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v0

    .line 397
    invoke-static/range {p5 .. p5}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v1

    if-nez p3, :cond_8

    add-int v2, v12, v0

    if-ge v2, v11, :cond_5

    goto :goto_1

    :cond_5
    sub-int v0, v11, v12

    :goto_1
    if-gez v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    add-int v2, v13, v1

    if-ge v2, v10, :cond_7

    goto :goto_2

    :cond_7
    sub-int v1, v10, v13

    :goto_2
    if-gez v1, :cond_8

    move v9, v0

    const/4 v10, 0x0

    goto :goto_3

    :cond_8
    move v9, v0

    move v10, v1

    .line 37094
    :goto_3
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 419
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, v8, :cond_9

    .line 421
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 38094
    iget-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 421
    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v1

    .line 39094
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 421
    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 422
    iget-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 423
    iget-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 40094
    iget-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 424
    invoke-virtual {v8, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    :cond_9
    new-instance v8, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    move-object v0, v8

    move-object v1, p0

    move v2, v12

    move v3, v13

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIII)V

    iput-object v8, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 428
    invoke-static {v9}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v10}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(FF)V

    new-array v0, v7, [F

    .line 431
    fill-array-data v0, :array_0

    const-string v1, "animationProgress"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    .line 432
    new-instance v8, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$T5C07i1dkr3ffDwLMqNpSHY3EMw;

    move-object v0, v8

    move-object v1, p0

    move v2, v9

    move v3, v10

    move v4, v12

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$T5C07i1dkr3ffDwLMqNpSHY3EMw;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIII)V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 454
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 455
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(IZ)V
    .locals 2

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$mOWIVG_lNkdDUT3A1aD8DLMLQwA;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$mOWIVG_lNkdDUT3A1aD8DLMLQwA;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic a(IZLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 587
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    .line 4094
    iget-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 588
    invoke-virtual {p3}, Lcom/amazon/device/ads/DTBAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 5094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 589
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdView;->setX(F)V

    .line 6094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 590
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdView;->setY(F)V

    .line 591
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v0, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 592
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v0, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 593
    invoke-virtual {v0, p3}, Lcom/amazon/device/ads/DTBAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8094
    iget-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 594
    invoke-virtual {p3}, Lcom/amazon/device/ads/DTBAdView;->invalidate()V

    .line 596
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p3

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 598
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->c(II)V

    .line 600
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget p1, p1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    invoke-static {p1}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p1

    iget-object p2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget p2, p2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    invoke-static {p2}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(II)V

    .line 601
    sget-object p1, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Lcom/amazon/device/ads/MraidStateType;)V

    const-string p1, "expand"

    .line 602
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 603
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    .line 9094
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    const/4 p2, 0x1

    .line 604
    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/DTBAdView;->a(Z)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic a(Landroid/view/ViewGroup;ZLandroid/animation/ValueAnimator;)V
    .locals 5

    .line 246
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    .line 49094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 247
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 50094
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 248
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/DTBAdView;->setX(F)V

    .line 50095
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 249
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/DTBAdView;->setY(F)V

    .line 250
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 251
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50096
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 252
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/DTBAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50097
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 253
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->invalidate()V

    .line 255
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_2

    .line 50098
    iget-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    const/4 v0, 0x1

    .line 50099
    iput-boolean v0, p3, Lcom/amazon/device/ads/DTBAdView;->c:Z

    .line 50101
    iget-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 258
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 259
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 260
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->m:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 262
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->m:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 263
    iput-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->m:Landroid/view/ViewGroup;

    .line 264
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget p1, p1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    invoke-static {p1}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p1

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v0, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(II)V

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->l:Landroid/view/ViewGroup;

    .line 50102
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 268
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->u:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->l:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 272
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->q()V

    .line 273
    sget-object p1, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Lcom/amazon/device/ads/MraidStateType;)V

    const-string p1, "close"

    .line 274
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;)V

    .line 275
    iput-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->l:Landroid/view/ViewGroup;

    .line 276
    iput-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_1

    .line 278
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$jOPGZD0cboPRqIRkjaSGrm_Esic;

    invoke-direct {p2, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$jOPGZD0cboPRqIRkjaSGrm_Esic;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$VRVxWzm72QrSskWgk6O0p1BkqQQ;

    invoke-direct {p2, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$VRVxWzm72QrSskWgk6O0p1BkqQQ;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private synthetic a(ZI)V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 233
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 234
    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 48094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 235
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 236
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->d:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 239
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 240
    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->d:Landroid/widget/LinearLayout;

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 243
    fill-array-data v1, :array_0

    const-string v2, "animationProgress"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    .line 244
    new-instance v2, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$yp0swwtiM49ljml3I5lkmTrPTH0;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$yp0swwtiM49ljml3I5lkmTrPTH0;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Landroid/view/ViewGroup;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 290
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 291
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private b(IZ)V
    .locals 2

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$OOJFLO8IOrvHzvKaeoGkh26GX-A;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$OOJFLO8IOrvHzvKaeoGkh26GX-A;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic b(Landroid/view/ViewGroup;ZLandroid/animation/ValueAnimator;)V
    .locals 5

    .line 177
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    .line 50106
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 178
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 50107
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 179
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/DTBAdView;->setX(F)V

    .line 50108
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 180
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    iget-object v4, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v4, v4, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/DTBAdView;->setY(F)V

    .line 181
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 182
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v3, v3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50109
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 184
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/DTBAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50110
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 185
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->invalidate()V

    .line 187
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_1

    .line 50111
    iget-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    const/4 v0, 0x1

    .line 50112
    iput-boolean v0, p3, Lcom/amazon/device/ads/DTBAdView;->c:Z

    .line 50114
    iget-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 190
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 191
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 193
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->l:Landroid/view/ViewGroup;

    .line 50115
    iget-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 193
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->u:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->l:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 50116
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 196
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdView;->invalidate()V

    .line 197
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->q()V

    const/4 p1, 0x0

    .line 198
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->l:Landroid/view/ViewGroup;

    .line 199
    iget-object p3, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget p3, p3, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    invoke-static {p3}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result p3

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v0, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    .line 200
    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result v0

    .line 199
    invoke-virtual {p0, p3, v0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(II)V

    .line 201
    sget-object p3, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, p3}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Lcom/amazon/device/ads/MraidStateType;)V

    .line 202
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    const-string p1, "close"

    .line 203
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 206
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$2VgsQ1x-Q7rLa4UG8wmXanz5qHU;

    invoke-direct {p2, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$2VgsQ1x-Q7rLa4UG8wmXanz5qHU;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$wXQkhxHtqWxI2xTH42Y-UZ2-iVU;

    invoke-direct {p2, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$wXQkhxHtqWxI2xTH42Y-UZ2-iVU;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private synthetic b(ZI)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 162
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 163
    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 164
    iget v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->t:I

    iput v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->c:I

    .line 165
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->s:I

    iput v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->d:I

    .line 166
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->q:I

    iput v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    .line 167
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->r:I

    iput v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    .line 50105
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 169
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 170
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->d:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 172
    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->d:Landroid/widget/LinearLayout;

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 174
    fill-array-data v1, :array_0

    const-string v2, "animationProgress"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    .line 175
    new-instance v2, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$DdM8da3Xb1ODXGeCsL-71WOYCJw;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$DdM8da3Xb1ODXGeCsL-71WOYCJw;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Landroid/view/ViewGroup;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 220
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic c(Ljava/util/Map;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    const-string v0, "url"

    .line 474
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 9487
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10094
    iget-object v3, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 9488
    invoke-static {v3}, Lcom/amazon/device/ads/DTBAdUtil;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    .line 9489
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/amazon/device/ads/DTBAdActivity;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v1, :cond_0

    .line 9491
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v0, "ad_state"

    const-string v1, "expanded"

    .line 9493
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9494
    iget v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->v:I

    const-string v1, "cntrl_index"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "two_part_expand"

    .line 9495
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "orientation"

    .line 9497
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9498
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 9500
    :cond_1
    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "expand"

    .line 9501
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;)V

    .line 9502
    sget-object v0, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Lcom/amazon/device/ads/MraidStateType;)V

    .line 9503
    sget-object v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->k:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 11094
    :cond_2
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10511
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getX()F

    move-result v0

    iput v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->o:F

    .line 12094
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10512
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getY()F

    move-result v0

    iput v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->p:F

    .line 13094
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10515
    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->b(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x2

    new-array v0, v9, [I

    .line 14094
    iget-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10519
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/DTBAdView;->getLocationInWindow([I)V

    .line 15094
    iget-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10521
    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->l:Landroid/view/ViewGroup;

    .line 16094
    iget-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 16150
    iput-boolean v2, v1, Lcom/amazon/device/ads/DTBAdView;->c:Z

    .line 10523
    iget-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->l:Landroid/view/ViewGroup;

    .line 17094
    iget-object v3, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10523
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-array v1, v9, [I

    .line 10527
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 10528
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    .line 10529
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    .line 10533
    new-instance v12, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    const/4 v13, 0x0

    aget v3, v0, v13

    aget v4, v1, v13

    sub-int/2addr v3, v4

    aget v0, v0, v2

    aget v1, v1, v2

    sub-int v4, v0, v1

    .line 18094
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10533
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v5

    .line 19094
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10533
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v14

    move-object v0, v12

    move-object v1, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIII)V

    iput-object v12, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    const-string v0, "position"

    .line 10542
    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 10543
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "width"

    .line 10545
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10546
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    .line 10548
    invoke-static {v1}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v11

    :goto_0
    const-string v2, "height"

    .line 10552
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10553
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4

    .line 10555
    invoke-static {v2}, Lcom/amazon/device/ads/DTBAdUtil;->a(I)I

    move-result v2

    move v10, v2

    :cond_4
    const-string v2, "useCustomClose"

    .line 10558
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10559
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v7, v0

    move v12, v10

    goto :goto_1

    :cond_5
    move v12, v10

    const/4 v7, 0x0

    :goto_1
    move v10, v1

    goto :goto_2

    :cond_6
    move v12, v10

    move v10, v11

    const/4 v7, 0x0

    .line 10567
    :goto_2
    new-instance v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$BackgroundView;

    .line 20094
    iget-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10567
    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$BackgroundView;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Landroid/content/Context;)V

    .line 10569
    iput-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->m:Landroid/view/ViewGroup;

    .line 10571
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v1, -0x1

    .line 10572
    invoke-virtual {v8, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 10574
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 21094
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10574
    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v2

    .line 22094
    iget-object v3, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10574
    invoke-virtual {v3}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 10575
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 10576
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v2, v2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 10578
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 23094
    iget-object v2, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10579
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24094
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10580
    iget-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdView;->setX(F)V

    .line 25094
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 10581
    iget-object v1, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    iget v1, v1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdView;->setY(F)V

    .line 10582
    new-instance v8, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move v4, v10

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIII)V

    iput-object v8, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x:Lcom/amazon/device/ads/DTBAdMRAIDBannerController$AnimationPoint;

    .line 10583
    invoke-static {v10}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v12}, Lcom/amazon/device/ads/DTBAdUtil;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(FF)V

    new-array v0, v9, [F

    .line 10585
    fill-array-data v0, :array_0

    const-string v1, "animationProgress"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    .line 10586
    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$ywrY92UlvsJY1PD2STOokF-jzag;

    invoke-direct {v1, p0, v11, v7}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$ywrY92UlvsJY1PD2STOokF-jzag;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10608
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 10609
    iget-object v0, v6, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic lambda$2VgsQ1x-Q7rLa4UG8wmXanz5qHU(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->A()V

    return-void
.end method

.method public static synthetic lambda$3hAoKoosx6a_ELot18ftnhbvHz0(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->v()V

    return-void
.end method

.method public static synthetic lambda$8oS9tYv0Mh77tENBO5eKlfg44Jc(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->w()V

    return-void
.end method

.method public static synthetic lambda$DdM8da3Xb1ODXGeCsL-71WOYCJw(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Landroid/view/ViewGroup;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->b(Landroid/view/ViewGroup;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$HKxfA8lQ6pfOTwDoueZFTvHSuzs(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->c(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic lambda$OOJFLO8IOrvHzvKaeoGkh26GX-A(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(ZI)V

    return-void
.end method

.method public static synthetic lambda$T5C07i1dkr3ffDwLMqNpSHY3EMw(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$VRVxWzm72QrSskWgk6O0p1BkqQQ(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->x()V

    return-void
.end method

.method public static synthetic lambda$hgbHDJhnItvslQgZJnZK6tfHLS0(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$jOPGZD0cboPRqIRkjaSGrm_Esic(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->y()V

    return-void
.end method

.method public static synthetic lambda$kNgQrjtFuWoXYh4ikOfsaq5Wwys(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIZII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(IIZII)V

    return-void
.end method

.method public static synthetic lambda$mOWIVG_lNkdDUT3A1aD8DLMLQwA(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->b(ZI)V

    return-void
.end method

.method public static synthetic lambda$wXQkhxHtqWxI2xTH42Y-UZ2-iVU(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->z()V

    return-void
.end method

.method public static synthetic lambda$yp0swwtiM49ljml3I5lkmTrPTH0(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Landroid/view/ViewGroup;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Landroid/view/ViewGroup;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$ywrY92UlvsJY1PD2STOokF-jzag(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(IZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$zhSchKIUIClyWMHFxbTwe3vFAjc(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->u()V

    return-void
.end method

.method private synthetic u()V
    .locals 0

    return-void
.end method

.method private synthetic v()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->d:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic w()V
    .locals 2

    .line 47094
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    const-string v1, "about:blank"

    .line 310
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "unload"

    .line 311
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic x()V
    .locals 2

    .line 50103
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    const/4 v1, 0x1

    .line 284
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdView;->a(Z)V

    return-void
.end method

.method private synthetic y()V
    .locals 2

    .line 50104
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    const-string v1, "about:blank"

    .line 279
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "unload"

    .line 280
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic z()V
    .locals 2

    .line 50117
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    const/4 v1, 0x1

    .line 213
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdView;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method protected final a(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "offsetY"

    const-string v1, "offsetX"

    .line 321
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->g:Lcom/amazon/device/ads/MraidStateType;

    sget-object v3, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    const-string v4, "resize"

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->g:Lcom/amazon/device/ads/MraidStateType;

    sget-object v3, Lcom/amazon/device/ads/MraidStateType;->RESIZED:Lcom/amazon/device/ads/MraidStateType;

    if-eq v2, v3, :cond_0

    const-string p1, "invalid current state"

    .line 322
    invoke-virtual {p0, v4, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0, v4}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;)V

    return-void

    .line 328
    :cond_0
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 329
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v7, v1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 334
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v8, v3

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    const-string v0, "width"

    .line 338
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v0, "height"

    .line 339
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v0, "allowOffscreen"

    .line 340
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 342
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$kNgQrjtFuWoXYh4ikOfsaq5Wwys;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$kNgQrjtFuWoXYh4ikOfsaq5Wwys;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIZII)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "invalid input parameters"

    .line 460
    invoke-virtual {p0, v4, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0, v4}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 700
    invoke-static {}, Lcom/amazon/device/ads/ActivityMonitor;->a()Lcom/amazon/device/ads/ActivityMonitor;

    move-result-object v0

    const/4 v1, 0x0

    .line 4042
    iput-object v1, v0, Lcom/amazon/device/ads/ActivityMonitor;->b:Lcom/amazon/device/ads/DTBActivityListener;

    return-void
.end method

.method protected final b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->g:Lcom/amazon/device/ads/MraidStateType;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MraidStateType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "expand"

    const-string v0, "current state does not allow transition to expand"

    .line 469
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;)V

    return-void

    .line 473
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$HKxfA8lQ6pfOTwDoueZFTvHSuzs;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$HKxfA8lQ6pfOTwDoueZFTvHSuzs;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final c()V
    .locals 3

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->c:Z

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->o()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    .line 2094
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 118
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->u:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "inline"

    return-object v0
.end method

.method protected final e()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->g:Lcom/amazon/device/ads/MraidStateType;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->RESIZED:Lcom/amazon/device/ads/MraidStateType;

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    if-ne v0, v1, :cond_0

    .line 2154
    invoke-direct {p0, v3, v2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(IZ)V

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->g:Lcom/amazon/device/ads/MraidStateType;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    if-ne v0, v1, :cond_1

    .line 2226
    invoke-direct {p0, v3, v2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->b(IZ)V

    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->g:Lcom/amazon/device/ads/MraidStateType;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    const-string v2, "close"

    if-ne v0, v1, :cond_2

    .line 140
    sget-object v0, Lcom/amazon/device/ads/MraidStateType;->HIDDEN:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Lcom/amazon/device/ads/MraidStateType;)V

    .line 141
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;)V

    return-void

    .line 147
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Command is not allowed in a given ad state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->g:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MraidStateType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final f()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->g:Lcom/amazon/device/ads/MraidStateType;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->RESIZED:Lcom/amazon/device/ads/MraidStateType;

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-ne v0, v1, :cond_0

    .line 300
    invoke-direct {p0, v3, v2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(IZ)V

    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->g:Lcom/amazon/device/ads/MraidStateType;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    if-ne v0, v1, :cond_1

    .line 304
    invoke-direct {p0, v3, v2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->b(IZ)V

    return-void

    .line 309
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$8oS9tYv0Mh77tENBO5eKlfg44Jc;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$8oS9tYv0Mh77tENBO5eKlfg44Jc;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final g()V
    .locals 1

    .line 651
    sget-object v0, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(Lcom/amazon/device/ads/MraidStateType;)V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->g:Lcom/amazon/device/ads/MraidStateType;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    if-ne v0, v1, :cond_0

    .line 657
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 658
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$3hAoKoosx6a_ELot18ftnhbvHz0;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$3hAoKoosx6a_ELot18ftnhbvHz0;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected final i()V
    .locals 3

    .line 666
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->i:Lcom/amazon/device/ads/DTBAdView;

    .line 667
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a:Lcom/amazon/device/ads/DTBAdBannerListener;

    if-eqz v1, :cond_0

    .line 668
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$hgbHDJhnItvslQgZJnZK6tfHLS0;

    invoke-direct {v2, p0, v0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$hgbHDJhnItvslQgZJnZK6tfHLS0;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected final j()V
    .locals 2

    .line 685
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$zhSchKIUIClyWMHFxbTwe3vFAjc;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$zhSchKIUIClyWMHFxbTwe3vFAjc;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 690
    invoke-static {}, Lcom/amazon/device/ads/ActivityMonitor;->a()Lcom/amazon/device/ads/ActivityMonitor;

    move-result-object v0

    .line 3042
    iput-object p0, v0, Lcom/amazon/device/ads/ActivityMonitor;->b:Lcom/amazon/device/ads/DTBActivityListener;

    return-void
.end method

.method protected final k()V
    .locals 0

    .line 735
    invoke-super {p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->k()V

    return-void
.end method
