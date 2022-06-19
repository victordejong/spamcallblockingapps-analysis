.class public final Lcom/facebook/ads/redexgen/X/Ka;
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
            "Lcom/facebook/ads/redexgen/X/KR;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 41287
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ka;->A00()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41288
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rKALTBDYJCbaiFNXEtUJroCn52VpZZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JV6MiXKUyj6JCzF1u"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kCmdEzEHbLuzxIacOyabQp9NKin7bt2r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jWcGCQZMqdkAqfRZe6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nlkBBG2n0OIOkXKFHLw9fg1KFY8VWnLB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EEOdRs0yxrMLewCcdlWj6UoX1OR7WiBI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iBrckNfFoUM659sftuZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XnvO082n6pbwhWKAJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ka;->A00:[Ljava/lang/String;

    return-void
.end method

.method private final A01()V
    .locals 0

    .line 41289
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 41290
    return-void
.end method

.method private final A02()V
    .locals 0

    .line 41291
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 41292
    return-void
.end method

.method private final A03()V
    .locals 0

    .line 41293
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 41294
    return-void
.end method

.method private final A04(I)V
    .locals 0

    .line 41295
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 41296
    return-void
.end method

.method private final A05(II)V
    .locals 0

    .line 41297
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 41298
    return-void
.end method

.method private final A06(IIII)V
    .locals 0

    .line 41299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 41300
    return-void
.end method

.method private final A07(Landroid/graphics/Canvas;)V
    .locals 0

    .line 41301
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41302
    return-void
.end method

.method private A08(Ljava/lang/Throwable;)V
    .locals 2

    .line 41303
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ki;->A00()Lcom/facebook/ads/redexgen/X/Kh;

    move-result-object v1

    const/16 v0, 0xce9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Kh;->A8L(ILjava/lang/Throwable;)V

    .line 41304
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KR;

    .line 41305
    .local p0, "contextRepairHelper":Lcom/facebook/ads/redexgen/X/KR;
    if-eqz v0, :cond_0

    .line 41306
    invoke-interface {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/KR;->ADD(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 41307
    :cond_0
    return-void
.end method

.method private final A09(Z)V
    .locals 0

    .line 41308
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 41309
    return-void
.end method

.method private final A0A(ZIIII)V
    .locals 0

    .line 41310
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 41311
    return-void
.end method

.method private final A0B(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 41312
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41313
    return-void
.end method

.method public static A0C(ZLcom/facebook/ads/redexgen/X/KR;)V
    .locals 1

    .line 41314
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41315
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41316
    return-void
.end method

.method private final A0D()Z
    .locals 1

    .line 41317
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41318
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41319
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41320
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0H(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41321
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 41322
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ka;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41323
    :catchall_0
    move-exception v1

    .line 41324
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41325
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41326
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 41327
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41328
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 41329
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ka;->A02()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41330
    :catchall_0
    move-exception v1

    .line 41331
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41332
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41333
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 41334
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41335
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 41336
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ka;->A07(Landroid/graphics/Canvas;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41337
    :catchall_0
    move-exception v1

    .line 41338
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41339
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41340
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41341
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41342
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 41343
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ka;->A03()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41344
    :catchall_0
    move-exception v1

    .line 41345
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41346
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41347
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 41348
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41349
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    .line 41350
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ka;->A0B(ZILandroid/graphics/Rect;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41351
    :catchall_0
    move-exception v4

    .line 41352
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ka;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ka;->A00:[Ljava/lang/String;

    const-string v1, "cWID6xQloznFOrhLXGfxCs3XAeGgBa"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 41353
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41354
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41355
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41356
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41357
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ka;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41358
    :catchall_0
    move-exception v1

    .line 41359
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41360
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41361
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41362
    :cond_0
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41363
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ka;->A0F(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41364
    :catchall_0
    move-exception v1

    .line 41365
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41366
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41367
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41368
    :cond_0
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 41369
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ka;->A0A(ZIIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41370
    :catchall_0
    move-exception v1

    .line 41371
    .local p0, "throwable":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41372
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41373
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 41374
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41375
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 41376
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ka;->A05(II)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41377
    :catchall_0
    move-exception v1

    .line 41378
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41379
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41380
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 41381
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41382
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 41383
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Ka;->A06(IIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41384
    :catchall_0
    move-exception v1

    .line 41385
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41386
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41387
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 41388
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41389
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41390
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ka;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41391
    :catchall_0
    move-exception v1

    .line 41392
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41393
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41394
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41395
    :cond_0
    throw v1
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41396
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ka;->A0H(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41397
    :catchall_0
    move-exception v1

    .line 41398
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41399
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41400
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41401
    :cond_0
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 41402
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ka;->A09(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41403
    :catchall_0
    move-exception v1

    .line 41404
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41405
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41406
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 41407
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41408
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 41409
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ka;->A04(I)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41410
    :catchall_0
    move-exception v1

    .line 41411
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41412
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41413
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 41414
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41415
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final performClick()Z
    .locals 2

    .line 41416
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ka;->A0D()Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41417
    :catchall_0
    move-exception v1

    .line 41418
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41419
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41420
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    return v0

    .line 41421
    :cond_0
    throw v1
.end method
