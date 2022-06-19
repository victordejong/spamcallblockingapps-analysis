.class public final Lcom/facebook/ads/redexgen/X/Kb;
.super Landroid/widget/LinearLayout;
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

    .line 41229
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kb;->A00()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41230
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "np"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BzMWm7XatJxrBHLrDTIx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EJxRqAUVFKACysEwZnpx2dkwih8hojPi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gQuXy9BnVHLwDMwkjoQkFwXhNFO2j3GN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Gl2gdCfejm2ynydtcYoc7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qFmQLUMIjisX4BQrrYvfkkNYo2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Kb;->A00:[Ljava/lang/String;

    return-void
.end method

.method private final A01()V
    .locals 0

    .line 41231
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 41232
    return-void
.end method

.method private final A02()V
    .locals 0

    .line 41233
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 41234
    return-void
.end method

.method private final A03()V
    .locals 0

    .line 41235
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41236
    return-void
.end method

.method private final A04(I)V
    .locals 0

    .line 41237
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 41238
    return-void
.end method

.method private final A05(II)V
    .locals 0

    .line 41239
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 41240
    return-void
.end method

.method private final A06(IIII)V
    .locals 0

    .line 41241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 41242
    return-void
.end method

.method private final A07(Landroid/graphics/Canvas;)V
    .locals 0

    .line 41243
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41244
    return-void
.end method

.method private A08(Ljava/lang/Throwable;)V
    .locals 2

    .line 41245
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kk;->A00()Lcom/facebook/ads/redexgen/X/Kj;

    move-result-object v1

    const/16 v0, 0xce9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Kj;->A8N(ILjava/lang/Throwable;)V

    .line 41246
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KT;

    .line 41247
    .local p0, "contextRepairHelper":Lcom/facebook/ads/redexgen/X/KT;
    if-eqz v0, :cond_0

    .line 41248
    invoke-interface {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/KT;->ADD(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 41249
    :cond_0
    return-void
.end method

.method private final A09(Z)V
    .locals 0

    .line 41250
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 41251
    return-void
.end method

.method private final A0A(ZIIII)V
    .locals 0

    .line 41252
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 41253
    return-void
.end method

.method private final A0B(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 41254
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41255
    return-void
.end method

.method public static A0C(ZLcom/facebook/ads/redexgen/X/KT;)V
    .locals 1

    .line 41256
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41257
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41258
    return-void
.end method

.method private final A0D()Z
    .locals 1

    .line 41259
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41260
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41261
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41262
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0H(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41263
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 41264
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41265
    :catchall_0
    move-exception v1

    .line 41266
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41267
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41268
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 41269
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41270
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    .line 41271
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;->A02()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41272
    :catchall_0
    move-exception v4

    .line 41273
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kb;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kb;->A00:[Ljava/lang/String;

    const-string v1, "LK2AuONBZLXfheahk0mYJH9UUc8svEVK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "xXiTKJo1VLoZiUNDDe7YTTS9zdtJLhnw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41274
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41275
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 41276
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41277
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 41278
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kb;->A07(Landroid/graphics/Canvas;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41279
    :catchall_0
    move-exception v1

    .line 41280
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41281
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kb;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41282
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kb;->A00:[Ljava/lang/String;

    const-string v1, "01jdZS6LVB1GwaVd4Rhb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41283
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41284
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 41285
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;->A03()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41286
    :catchall_0
    move-exception v1

    .line 41287
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41288
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41289
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41290
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41291
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4

    .line 41292
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Kb;->A0B(ZILandroid/graphics/Rect;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41293
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kb;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    .line 41294
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kb;->A00:[Ljava/lang/String;

    const-string v1, "Yi0ZRQojkbt1xPKJlZfaO31QpOiaUgT3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "BON3LVfX3nTaOPqNip1kKkH37o9VOpA0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41295
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41296
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41297
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41298
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41299
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kb;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41300
    :catchall_0
    move-exception v1

    .line 41301
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41302
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41303
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41304
    :cond_0
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41305
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kb;->A0F(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41306
    :catchall_0
    move-exception v1

    .line 41307
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41308
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41309
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41310
    :cond_0
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 41311
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Kb;->A0A(ZIIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41312
    :catchall_0
    move-exception v1

    .line 41313
    .local p0, "throwable":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41314
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41315
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 41316
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41317
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 41318
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kb;->A05(II)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41319
    :catchall_0
    move-exception v1

    .line 41320
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41321
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41322
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 41323
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41324
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 41325
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Kb;->A06(IIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41326
    :catchall_0
    move-exception v1

    .line 41327
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41328
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41329
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 41330
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41331
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41332
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kb;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41333
    :catchall_0
    move-exception v1

    .line 41334
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41335
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41336
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41337
    :cond_0
    throw v1
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 41338
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kb;->A0H(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41339
    :catchall_0
    move-exception v4

    .line 41340
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kb;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kb;->A00:[Ljava/lang/String;

    const-string v1, "C6kEWtwHsSx7IW1U9F6o7lHqQczUACtf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "H0oTOhj7syV8QPfuGpUkhVyTzDBzxBoc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41341
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41342
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41343
    :cond_0
    throw v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 41344
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kb;->A09(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41345
    :catchall_0
    move-exception v1

    .line 41346
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41347
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41348
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 41349
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41350
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 41351
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kb;->A04(I)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41352
    :catchall_0
    move-exception v1

    .line 41353
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41354
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41355
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 41356
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41357
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final performClick()Z
    .locals 2

    .line 41358
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;->A0D()Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41359
    :catchall_0
    move-exception v1

    .line 41360
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41361
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kb;->A08(Ljava/lang/Throwable;)V

    .line 41362
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    .line 41363
    :cond_0
    throw v1
.end method
