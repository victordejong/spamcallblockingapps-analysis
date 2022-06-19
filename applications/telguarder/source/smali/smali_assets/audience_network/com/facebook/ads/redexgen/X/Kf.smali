.class public final Lcom/facebook/ads/redexgen/X/Kf;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "EmptyCatchBlock",
        "CatchGeneralException",
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

    .line 41659
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kf;->A00()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PF0OX9LaOpOlBonda93HbKvksFAWDS7a"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SOsKJbd8VhyvYOFaPmxH2GbIc8gYf9gc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yuwOwwCVOXbC5TwGN6rqDhC42KAhvxnB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KhHVrnmWKr7VxfZah"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ms2dq1u4CU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qcaYARo3LZuR2HQEe3SSVUwMib92XctT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5BxFOFNRKYqqRg3uu3P7Rq0I7uo3yPqz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FuguQoqSu3KHn4j7XGBAZI68xEogxVFD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Kf;->A00:[Ljava/lang/String;

    return-void
.end method

.method private final A01()V
    .locals 0

    .line 41660
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 41661
    return-void
.end method

.method private final A02()V
    .locals 0

    .line 41662
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 41663
    return-void
.end method

.method private final A03()V
    .locals 0

    .line 41664
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 41665
    return-void
.end method

.method private final A04(I)V
    .locals 0

    .line 41666
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 41667
    return-void
.end method

.method private final A05(II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 41668
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 41669
    return-void
.end method

.method private final A06(IIII)V
    .locals 0

    .line 41670
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 41671
    return-void
.end method

.method private final A07(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 41672
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 41673
    return-void
.end method

.method private A08(Ljava/lang/Throwable;)V
    .locals 2

    .line 41674
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kk;->A00()Lcom/facebook/ads/redexgen/X/Kj;

    move-result-object v1

    const/16 v0, 0xce8

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Kj;->A8N(ILjava/lang/Throwable;)V

    .line 41675
    return-void
.end method

.method public static A09(Z)V
    .locals 1

    .line 41676
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41677
    return-void
.end method

.method private final A0A(Z)V
    .locals 0

    .line 41678
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 41679
    return-void
.end method

.method private final A0B(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 41680
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41681
    return-void
.end method

.method private final A0C()Z
    .locals 1

    .line 41682
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0D(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41683
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41684
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41685
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41686
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 41687
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kf;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41688
    :catchall_0
    move-exception v1

    .line 41689
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41690
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41691
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 41692
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41693
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 41694
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kf;->A02()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41695
    :catchall_0
    move-exception v1

    .line 41696
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41697
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41698
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 41699
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41700
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 41701
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kf;->A07(Landroid/graphics/Canvas;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41702
    :catchall_0
    move-exception v1

    .line 41703
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41704
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41705
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 41706
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41707
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 41708
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kf;->A03()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41709
    :catchall_0
    move-exception v1

    .line 41710
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41711
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41712
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 41713
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41714
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 41715
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Kf;->A0B(ZILandroid/graphics/Rect;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41716
    :catchall_0
    move-exception v1

    .line 41717
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41718
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41719
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41720
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41721
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41722
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kf;->A0D(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41723
    :catchall_0
    move-exception v1

    .line 41724
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41725
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41726
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41727
    :cond_0
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41728
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kf;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41729
    :catchall_0
    move-exception v1

    .line 41730
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41731
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41732
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41733
    :cond_0
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 41734
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Kf;
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 41735
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kf;->A05(II)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41736
    :catchall_0
    move-exception v1

    .line 41737
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41738
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41739
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 41740
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41741
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 41742
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Kf;->A06(IIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41743
    :catchall_0
    move-exception v1

    .line 41744
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41745
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41746
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 41747
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41748
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 41749
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kf;->A0F(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41750
    :catchall_0
    move-exception v4

    .line 41751
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kf;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kf;->A00:[Ljava/lang/String;

    const-string v1, "vluwzIpRXuoqtVUQNi2zJuEIttp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41752
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41753
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41754
    :cond_1
    throw v4
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41755
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kf;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41756
    :catchall_0
    move-exception v1

    .line 41757
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41758
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41759
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41760
    :cond_0
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 5

    .line 41761
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kf;->A0A(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41762
    :catchall_0
    move-exception v4

    .line 41763
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kf;->A00:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kf;->A00:[Ljava/lang/String;

    const-string v1, "DAonscP7qaGpKcfNDC0V"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41764
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41765
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 41766
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41767
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 5

    .line 41768
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kf;->A04(I)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41769
    :catchall_0
    move-exception v4

    .line 41770
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kf;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kf;->A00:[Ljava/lang/String;

    const-string v1, "E06Pja4t"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 41771
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41772
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 41773
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41774
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final performClick()Z
    .locals 2

    .line 41775
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kf;->A0C()Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41776
    :catchall_0
    move-exception v1

    .line 41777
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kf;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41778
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kf;->A08(Ljava/lang/Throwable;)V

    .line 41779
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v0

    return v0

    .line 41780
    :cond_0
    throw v1
.end method
