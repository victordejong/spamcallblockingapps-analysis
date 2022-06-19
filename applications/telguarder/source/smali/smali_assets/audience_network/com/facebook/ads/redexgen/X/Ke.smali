.class public final Lcom/facebook/ads/redexgen/X/Ke;
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

    .line 41529
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ke;->A00()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3ONr7QWjpNXSZeAUNkb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ClcOmfBHrzO3WAJSrym"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Qexj3RcoxvBXrXvDKCG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "odax50RzzvVBaI8MKdw4eIEQz93y3mQr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "stilmeN5nCGbRx1kYVKZCdTc7uvqSxSP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pgkshQ9pNz7VNoUqLul"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mAdjyATa01f3bOvj5pXKZUXB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ke;->A00:[Ljava/lang/String;

    return-void
.end method

.method private final A01()V
    .locals 0

    .line 41530
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 41531
    return-void
.end method

.method private final A02()V
    .locals 0

    .line 41532
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 41533
    return-void
.end method

.method private final A03()V
    .locals 0

    .line 41534
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 41535
    return-void
.end method

.method private final A04(I)V
    .locals 0

    .line 41536
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 41537
    return-void
.end method

.method private final A05(II)V
    .locals 0

    .line 41538
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 41539
    return-void
.end method

.method private final A06(IIII)V
    .locals 0

    .line 41540
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 41541
    return-void
.end method

.method private final A07(Landroid/graphics/Canvas;)V
    .locals 0

    .line 41542
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 41543
    return-void
.end method

.method private A08(Ljava/lang/Throwable;)V
    .locals 2

    .line 41544
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kk;->A00()Lcom/facebook/ads/redexgen/X/Kj;

    move-result-object v1

    const/16 v0, 0xce7

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Kj;->A8N(ILjava/lang/Throwable;)V

    .line 41545
    return-void
.end method

.method public static A09(Z)V
    .locals 1

    .line 41546
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41547
    return-void
.end method

.method private final A0A(Z)V
    .locals 0

    .line 41548
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 41549
    return-void
.end method

.method private final A0B(ZIIII)V
    .locals 0

    .line 41550
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 41551
    return-void
.end method

.method private final A0C(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 41552
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41553
    return-void
.end method

.method private final A0D()Z
    .locals 1

    .line 41554
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41555
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41556
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41557
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0H(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41558
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 41559
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ke;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41560
    :catchall_0
    move-exception v1

    .line 41561
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41562
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    .line 41563
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 41564
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41565
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 41566
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ke;->A02()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41567
    :catchall_0
    move-exception v1

    .line 41568
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41569
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    .line 41570
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 41571
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41572
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 41573
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ke;->A07(Landroid/graphics/Canvas;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41574
    :catchall_0
    move-exception v1

    .line 41575
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41576
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    .line 41577
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 41578
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41579
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 41580
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ke;->A03()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41581
    :catchall_0
    move-exception v1

    .line 41582
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41583
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    .line 41584
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 41585
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41586
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4

    .line 41587
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ke;->A0C(ZILandroid/graphics/Rect;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41588
    :catchall_0
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ke;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41589
    .local p0, "t":Ljava/lang/Throwable;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ke;->A00:[Ljava/lang/String;

    const-string v1, "1iudiRBObbbUiIyB9UNlYSF1TyjKB8Vr"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "1XrYpQybiivoLnVUqYFDlBf3UhJcHnu8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41590
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ke;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 41591
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ke;->A00:[Ljava/lang/String;

    const-string v1, "EcjBCFCenrRwrnvrsHg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "BQ3E1KWeqxKjsuMo5ey"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41592
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41593
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_2
    throw v3
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41594
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ke;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41595
    :catchall_0
    move-exception v1

    .line 41596
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41597
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    .line 41598
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41599
    :cond_0
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41600
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ke;->A0F(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41601
    :catchall_0
    move-exception v1

    .line 41602
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41603
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    .line 41604
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41605
    :cond_0
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 41606
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ke;->A0B(ZIIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41607
    :catchall_0
    move-exception v4

    .line 41608
    .local p0, "throwable":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ke;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ke;->A00:[Ljava/lang/String;

    const-string v1, "6dhaXfygExbNRNfdFPh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "wjuz0NH9hNqLBOVMJiL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 41609
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    .line 41610
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 41611
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41612
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    throw v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 41613
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ke;->A05(II)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41614
    :catchall_0
    move-exception v1

    .line 41615
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41616
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ke;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

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

    .line 41617
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ke;->A00:[Ljava/lang/String;

    const-string v1, "XfWZipRoqSKr9eZfvIS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "uK33SLqaIijNSXDVgY6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 41618
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41619
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 41620
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Ke;->A06(IIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41621
    :catchall_0
    move-exception v1

    .line 41622
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41623
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    .line 41624
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 41625
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41626
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 41627
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ke;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41628
    :catchall_0
    move-exception v3

    .line 41629
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ke;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ke;->A00:[Ljava/lang/String;

    const-string v1, "3ND6Ghnob7kRwnTcMj0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "mVcXuZYMLA9cxRTzV7w"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41630
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    .line 41631
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41632
    :cond_1
    throw v3
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41633
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ke;->A0H(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41634
    :catchall_0
    move-exception v1

    .line 41635
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41636
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    .line 41637
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41638
    :cond_0
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 41639
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ke;->A0A(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41640
    :catchall_0
    move-exception v1

    .line 41641
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41642
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    .line 41643
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 41644
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41645
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 41646
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ke;->A04(I)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41647
    :catchall_0
    move-exception v1

    .line 41648
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41649
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    .line 41650
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 41651
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41652
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final performClick()Z
    .locals 2

    .line 41653
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ke;->A0D()Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41654
    :catchall_0
    move-exception v1

    .line 41655
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ke;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41656
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ke;->A08(Ljava/lang/Throwable;)V

    .line 41657
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0

    .line 41658
    :cond_0
    throw v1
.end method
