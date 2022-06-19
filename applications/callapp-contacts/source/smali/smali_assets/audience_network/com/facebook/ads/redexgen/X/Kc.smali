.class public final Lcom/facebook/ads/redexgen/X/Kc;
.super Landroid/view/View;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "EmptyCatchBlock",
        "CatchGeneralException",
        "WrongCall",
        "RethrownThrowableArgument"
    }
.end annotation

.annotation build Lcom/facebook/ads/internal/shield/NoAutoExceptionHandling;
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 41452
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kc;->A00()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kAVfBRgsuHAPyLthoP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "t17O26GbxI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AAEx162laq7qeqX9thcQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HAXhrl7a7PCZ9u3oTFWkwwhVB4A5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GFzV2eDHhD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HOPUDh1leN9OTkJ3x1a"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    return-void
.end method

.method private final A01()V
    .locals 0

    .line 41453
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 41454
    return-void
.end method

.method private final A02()V
    .locals 0

    .line 41455
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 41456
    return-void
.end method

.method private final A03()V
    .locals 0

    .line 41457
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 41458
    return-void
.end method

.method private final A04(I)V
    .locals 0

    .line 41459
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 41460
    return-void
.end method

.method private final A05(II)V
    .locals 0

    .line 41461
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 41462
    return-void
.end method

.method private final A06(IIII)V
    .locals 0

    .line 41463
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 41464
    return-void
.end method

.method private final A07(Landroid/graphics/Canvas;)V
    .locals 0

    .line 41465
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 41466
    return-void
.end method

.method private A08(Ljava/lang/Throwable;)V
    .locals 2

    .line 41467
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ki;->A00()Lcom/facebook/ads/redexgen/X/Kh;

    move-result-object v1

    const/16 v0, 0xce7

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Kh;->A8L(ILjava/lang/Throwable;)V

    .line 41468
    return-void
.end method

.method public static A09(Z)V
    .locals 1

    .line 41469
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41470
    return-void
.end method

.method private final A0A(Z)V
    .locals 0

    .line 41471
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 41472
    return-void
.end method

.method private final A0B(ZIIII)V
    .locals 0

    .line 41473
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 41474
    return-void
.end method

.method private final A0C(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 41475
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41476
    return-void
.end method

.method private final A0D()Z
    .locals 1

    .line 41477
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41478
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41479
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41480
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0H(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41481
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    .line 41482
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41483
    :catchall_0
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 41484
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const-string v1, "rnq1MXg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41485
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41486
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 41487
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41488
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 41489
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A02()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41490
    :catchall_0
    move-exception v1

    .line 41491
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41492
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41493
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 41494
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41495
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 41496
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kc;->A07(Landroid/graphics/Canvas;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41497
    :catchall_0
    move-exception v1

    .line 41498
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41499
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41500
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 41501
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41502
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 41503
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A03()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41504
    :catchall_0
    move-exception v1

    .line 41505
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41506
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41507
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 41508
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41509
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 41510
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Kc;->A0C(ZILandroid/graphics/Rect;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41511
    :catchall_0
    move-exception v1

    .line 41512
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41513
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41514
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41515
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41516
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 41517
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kc;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41518
    :catchall_0
    move-exception v1

    .line 41519
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41520
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41521
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const-string v1, "5DVI70tdQk"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41522
    :cond_1
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41523
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kc;->A0F(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41524
    :catchall_0
    move-exception v1

    .line 41525
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41526
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41527
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41528
    :cond_0
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 41529
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Kc;->A0B(ZIIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41530
    :catchall_0
    move-exception v1

    .line 41531
    .local p0, "throwable":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41532
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41533
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 41534
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41535
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 41536
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kc;->A05(II)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41537
    :catchall_0
    move-exception v1

    .line 41538
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41539
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41540
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 41541
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41542
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 41543
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Kc;->A06(IIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41544
    :catchall_0
    move-exception v1

    .line 41545
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41546
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41547
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 41548
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41549
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41550
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kc;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41551
    :catchall_0
    move-exception v1

    .line 41552
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41553
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41554
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41555
    :cond_0
    throw v1
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41556
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kc;->A0H(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41557
    :catchall_0
    move-exception v1

    .line 41558
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41559
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41560
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41561
    :cond_0
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 3

    .line 41562
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kc;->A0A(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41563
    :catchall_0
    move-exception v1

    .line 41564
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41565
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    .line 41566
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const-string v1, "0jBFwaBL8FA97JJQoE8VdUJeS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 41567
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41568
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 3

    .line 41569
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kc;->A04(I)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41570
    :catchall_0
    move-exception v1

    .line 41571
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41572
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    .line 41573
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const-string v1, "8Ha1wZjMuo1MUnpr2KcgLPpAJB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 41574
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41575
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method public final performClick()Z
    .locals 5

    .line 41576
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A0D()Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41577
    :catchall_0
    move-exception v4

    .line 41578
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/facebook/ads/redexgen/X/Kc;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A00:[Ljava/lang/String;

    const-string v1, "LfZZ0wz91OrvOK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41579
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Kc;->A08(Ljava/lang/Throwable;)V

    .line 41580
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0

    .line 41581
    :cond_0
    throw v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
