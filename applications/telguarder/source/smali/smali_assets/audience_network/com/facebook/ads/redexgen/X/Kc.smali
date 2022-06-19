.class public final Lcom/facebook/ads/redexgen/X/Kc;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "EmptyCatchBlock",
        "CatchGeneralException",
        "WrongCall"
    }
.end annotation

.annotation build Lcom/facebook/ads/internal/shield/NoAutoExceptionHandling;
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A02:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/KT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 41364
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kc;->A00()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41365
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "C7Eim7klKiTSfNEfyi99qm7kQg7Q8Z8x"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YpeI2yRFCmnwx3a3PhhXhIrsLcg2M7Uv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vSur6u9K2PmafHtX1aIbIXfjcWJAssE7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mcTHlReg9Te"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2WiXG4mhE7QCW9MUuVTux3T4Q2fngrE6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vsekdnhDO9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LtQLBj2x7K33P285N77bRmlJd5m5OwBs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5S0LAGr64WPqiPeD8c"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    return-void
.end method

.method private final A01()V
    .locals 0

    .line 41366
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 41367
    return-void
.end method

.method private final A02()V
    .locals 0

    .line 41368
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 41369
    return-void
.end method

.method private final A03()V
    .locals 0

    .line 41370
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 41371
    return-void
.end method

.method private final A04(I)V
    .locals 0

    .line 41372
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 41373
    return-void
.end method

.method private final A05(II)V
    .locals 0

    .line 41374
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 41375
    return-void
.end method

.method private final A06(IIII)V
    .locals 0

    .line 41376
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 41377
    return-void
.end method

.method private final A07(Landroid/graphics/Canvas;)V
    .locals 0

    .line 41378
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41379
    return-void
.end method

.method private A08(Ljava/lang/Throwable;)V
    .locals 2

    .line 41380
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kk;->A00()Lcom/facebook/ads/redexgen/X/Kj;

    move-result-object v1

    const/16 v0, 0xce9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Kj;->A8N(ILjava/lang/Throwable;)V

    .line 41381
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KT;

    .line 41382
    .local p0, "contextRepairHelper":Lcom/facebook/ads/redexgen/X/KT;
    if-eqz v0, :cond_0

    .line 41383
    invoke-interface {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/KT;->ADD(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 41384
    :cond_0
    return-void
.end method

.method private final A09(Z)V
    .locals 0

    .line 41385
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 41386
    return-void
.end method

.method private final A0A(ZIIII)V
    .locals 0

    .line 41387
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 41388
    return-void
.end method

.method private final A0B(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 41389
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41390
    return-void
.end method

.method public static A0C(ZLcom/facebook/ads/redexgen/X/KT;)V
    .locals 1

    .line 41391
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41392
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41393
    return-void
.end method

.method private final A0D()Z
    .locals 1

    .line 41394
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41395
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41396
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41397
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0H(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41398
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 41399
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41400
    :catchall_0
    move-exception v1

    .line 41401
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41402
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41403
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 41404
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41405
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 41406
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A02()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41407
    :catchall_0
    move-exception v1

    .line 41408
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41409
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41410
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 41411
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41412
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 41413
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kc;->A07(Landroid/graphics/Canvas;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41414
    :catchall_0
    move-exception v1

    .line 41415
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41416
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41417
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41418
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41419
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 41420
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A03()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41421
    :catchall_0
    move-exception v1

    .line 41422
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41423
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41424
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 41425
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41426
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 41427
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Kc;->A0B(ZILandroid/graphics/Rect;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41428
    :catchall_0
    move-exception v1

    .line 41429
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41430
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41431
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41432
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41433
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41434
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kc;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41435
    :catchall_0
    move-exception v1

    .line 41436
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41437
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41438
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41439
    :cond_0
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41440
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kc;->A0F(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41441
    :catchall_0
    move-exception v1

    .line 41442
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41443
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41444
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41445
    :cond_0
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 41446
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Kc;->A0A(ZIIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41447
    :catchall_0
    move-exception v1

    .line 41448
    .local p0, "throwable":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41449
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41450
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 41451
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41452
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 41453
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kc;->A05(II)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41454
    :catchall_0
    move-exception v1

    .line 41455
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41456
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41457
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 41458
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41459
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 3

    .line 41460
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Kc;->A06(IIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41461
    :catchall_0
    move-exception v1

    .line 41462
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41463
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x37

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41464
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const-string v1, "7BJE2w7x8WnCHGAJw78xZI7LWeG5wJco"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 41465
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41466
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41467
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kc;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41468
    :catchall_0
    move-exception v1

    .line 41469
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41470
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41471
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41472
    :cond_0
    throw v1
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41473
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kc;->A0H(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41474
    :catchall_0
    move-exception v1

    .line 41475
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41476
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41477
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41478
    :cond_0
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 41479
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kc;->A09(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41480
    :catchall_0
    move-exception v1

    .line 41481
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41482
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41483
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 41484
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41485
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 3

    .line 41486
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kc;->A04(I)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41487
    :catchall_0
    move-exception v1

    .line 41488
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41489
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    .line 41490
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const-string v1, "Pcy"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 41491
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41492
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method public final performClick()Z
    .locals 2

    .line 41493
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A0D()Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41494
    :catchall_0
    move-exception v1

    .line 41495
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41496
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41497
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    return v0

    .line 41498
    :cond_0
    throw v1
.end method
