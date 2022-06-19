.class public final Lcom/facebook/ads/redexgen/X/KY;
.super Landroid/widget/FrameLayout;
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
            "Lcom/facebook/ads/redexgen/X/KR;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 41016
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KY;->A00()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41017
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KY;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8uiZfgsmrD5w7H2sVgAC3n2gJlRDmu8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AcResxUzczeVQ6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "S"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DeJxumnd3y1WcfHk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FMZxMK7lmQCPA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "J"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wc3PTdtI7w7wp63NJxsDpEHsC40vb1e2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jaoFPfR2hwKJJkyxUt0jn5KhPySOFpSP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KY;->A00:[Ljava/lang/String;

    return-void
.end method

.method private final A01()V
    .locals 0

    .line 41018
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 41019
    return-void
.end method

.method private final A02()V
    .locals 0

    .line 41020
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 41021
    return-void
.end method

.method private final A03()V
    .locals 0

    .line 41022
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41023
    return-void
.end method

.method private final A04(I)V
    .locals 0

    .line 41024
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 41025
    return-void
.end method

.method private final A05(II)V
    .locals 0

    .line 41026
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 41027
    return-void
.end method

.method private final A06(IIII)V
    .locals 0

    .line 41028
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 41029
    return-void
.end method

.method private final A07(Landroid/graphics/Canvas;)V
    .locals 0

    .line 41030
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41031
    return-void
.end method

.method private A08(Ljava/lang/Throwable;)V
    .locals 2

    .line 41032
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ki;->A00()Lcom/facebook/ads/redexgen/X/Kh;

    move-result-object v1

    const/16 v0, 0xce9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Kh;->A8L(ILjava/lang/Throwable;)V

    .line 41033
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KR;

    .line 41034
    .local p0, "contextRepairHelper":Lcom/facebook/ads/redexgen/X/KR;
    if-eqz v0, :cond_0

    .line 41035
    invoke-interface {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/KR;->ADD(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 41036
    :cond_0
    return-void
.end method

.method private final A09(Z)V
    .locals 0

    .line 41037
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 41038
    return-void
.end method

.method private final A0A(ZIIII)V
    .locals 0

    .line 41039
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 41040
    return-void
.end method

.method private final A0B(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 41041
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41042
    return-void
.end method

.method public static A0C(ZLcom/facebook/ads/redexgen/X/KR;)V
    .locals 1

    .line 41043
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41044
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41045
    return-void
.end method

.method private final A0D()Z
    .locals 1

    .line 41046
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41047
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41048
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41049
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0H(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41050
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 41051
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KY;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41052
    :catchall_0
    move-exception v1

    .line 41053
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41054
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41055
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 41056
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41057
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 41058
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KY;->A02()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41059
    :catchall_0
    move-exception v1

    .line 41060
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41061
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41062
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 41063
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41064
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 41065
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KY;->A07(Landroid/graphics/Canvas;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41066
    :catchall_0
    move-exception v1

    .line 41067
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41068
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41069
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41070
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41071
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 41072
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KY;->A03()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41073
    :catchall_0
    move-exception v1

    .line 41074
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41075
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41076
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41077
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41078
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 41079
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KY;->A0B(ZILandroid/graphics/Rect;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41080
    :catchall_0
    move-exception v1

    .line 41081
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41082
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41083
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41084
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41085
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41086
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KY;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41087
    :catchall_0
    move-exception v1

    .line 41088
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41089
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41090
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41091
    :cond_0
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41092
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KY;->A0F(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41093
    :catchall_0
    move-exception v1

    .line 41094
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41095
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41096
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41097
    :cond_0
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 41098
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/KY;->A0A(ZIIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41099
    :catchall_0
    move-exception v1

    .line 41100
    .local p0, "throwable":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41101
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41102
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 41103
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41104
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 41105
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KY;->A05(II)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41106
    :catchall_0
    move-exception v3

    .line 41107
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v4, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/facebook/ads/redexgen/X/KY;->A00:[Ljava/lang/String;

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/KY;->A00:[Ljava/lang/String;

    const-string v1, "Z"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "w"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41108
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/KY;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 41109
    sget-object v2, Lcom/facebook/ads/redexgen/X/KY;->A00:[Ljava/lang/String;

    const-string v1, "i"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "g"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 41110
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41111
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/KY;->A00:[Ljava/lang/String;

    const-string v1, "vkL4fX6PzwoldXVPCJAguywdSt35bgjD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "pKAP23q7ywaPjJvUhcEhiH7V9bs9jrQJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 41112
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_2
    throw v3
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 41113
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/KY;->A06(IIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41114
    :catchall_0
    move-exception v1

    .line 41115
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41116
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 41118
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41119
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41120
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KY;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41121
    :catchall_0
    move-exception v1

    .line 41122
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41123
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41124
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41125
    :cond_0
    throw v1
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41126
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KY;->A0H(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41127
    :catchall_0
    move-exception v1

    .line 41128
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41129
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41130
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41131
    :cond_0
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 41132
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KY;->A09(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41133
    :catchall_0
    move-exception v1

    .line 41134
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41135
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41136
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 41137
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41138
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 41139
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KY;->A04(I)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41140
    :catchall_0
    move-exception v1

    .line 41141
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41142
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41143
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 41144
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41145
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final performClick()Z
    .locals 2

    .line 41146
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KY;->A0D()Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41147
    :catchall_0
    move-exception v1

    .line 41148
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KY;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41149
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KY;->A08(Ljava/lang/Throwable;)V

    .line 41150
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0

    .line 41151
    :cond_0
    throw v1
.end method
