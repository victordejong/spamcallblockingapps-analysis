.class public final Lcom/facebook/ads/redexgen/X/KZ;
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
            "Lcom/facebook/ads/redexgen/X/KR;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 41152
    invoke-static {}, Lcom/facebook/ads/redexgen/X/KZ;->A00()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JscVEJqzE5snxFf0FJHgKRbYi5fThMYN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "98Tc4ikzWj4puYv0qdZM5IaJNuj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NrxE39kCKJtZUIjvLefOnsoHZY5VCkYH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IRKWghuugEe9To8dUXYn546QiGafUd0F"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iGyvM3KMGXSFWH61pr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KZ;->A00:[Ljava/lang/String;

    return-void
.end method

.method private final A01()V
    .locals 0

    .line 41154
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 41155
    return-void
.end method

.method private final A02()V
    .locals 0

    .line 41156
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 41157
    return-void
.end method

.method private final A03()V
    .locals 0

    .line 41158
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41159
    return-void
.end method

.method private final A04(I)V
    .locals 0

    .line 41160
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 41161
    return-void
.end method

.method private final A05(II)V
    .locals 0

    .line 41162
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 41163
    return-void
.end method

.method private final A06(IIII)V
    .locals 0

    .line 41164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 41165
    return-void
.end method

.method private final A07(Landroid/graphics/Canvas;)V
    .locals 0

    .line 41166
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41167
    return-void
.end method

.method private A08(Ljava/lang/Throwable;)V
    .locals 2

    .line 41168
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ki;->A00()Lcom/facebook/ads/redexgen/X/Kh;

    move-result-object v1

    const/16 v0, 0xce9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Kh;->A8L(ILjava/lang/Throwable;)V

    .line 41169
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KR;

    .line 41170
    .local p0, "contextRepairHelper":Lcom/facebook/ads/redexgen/X/KR;
    if-eqz v0, :cond_0

    .line 41171
    invoke-interface {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/KR;->ADD(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 41172
    :cond_0
    return-void
.end method

.method private final A09(Z)V
    .locals 0

    .line 41173
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 41174
    return-void
.end method

.method private final A0A(ZIIII)V
    .locals 0

    .line 41175
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 41176
    return-void
.end method

.method private final A0B(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 41177
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41178
    return-void
.end method

.method public static A0C(ZLcom/facebook/ads/redexgen/X/KR;)V
    .locals 1

    .line 41179
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41180
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41181
    return-void
.end method

.method private final A0D()Z
    .locals 1

    .line 41182
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41183
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41184
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41185
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0H(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41186
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 3

    .line 41187
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KZ;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41188
    :catchall_0
    move-exception v1

    .line 41189
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41190
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/KZ;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    .line 41191
    sget-object v2, Lcom/facebook/ads/redexgen/X/KZ;->A00:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 41192
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41193
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 41194
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KZ;->A02()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41195
    :catchall_0
    move-exception v1

    .line 41196
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41197
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    .line 41198
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 41199
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41200
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 41201
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Landroid/graphics/Canvas;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41202
    :catchall_0
    move-exception v1

    .line 41203
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41204
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    .line 41205
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41206
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41207
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 41208
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KZ;->A03()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41209
    :catchall_0
    move-exception v1

    .line 41210
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41211
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    .line 41212
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41213
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41214
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 41215
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KZ;->A0B(ZILandroid/graphics/Rect;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41216
    :catchall_0
    move-exception v1

    .line 41217
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41218
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    .line 41219
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41220
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41221
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41222
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KZ;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41223
    :catchall_0
    move-exception v1

    .line 41224
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41225
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    .line 41226
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41227
    :cond_0
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41228
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KZ;->A0F(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41229
    :catchall_0
    move-exception v1

    .line 41230
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41231
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    .line 41232
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41233
    :cond_0
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 41234
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/KZ;->A0A(ZIIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41235
    :catchall_0
    move-exception v1

    .line 41236
    .local p0, "throwable":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41237
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    .line 41238
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 41239
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41240
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 41241
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KZ;->A05(II)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41242
    :catchall_0
    move-exception v1

    .line 41243
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41244
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    .line 41245
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 41246
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41247
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 3

    .line 41248
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/KZ;->A06(IIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41249
    :catchall_0
    move-exception v1

    .line 41250
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41251
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/KZ;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    .line 41252
    sget-object v2, Lcom/facebook/ads/redexgen/X/KZ;->A00:[Ljava/lang/String;

    const-string v1, "MH26u4dEv805dgSIeYYXQ23GOqCTLqJu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 41253
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41254
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41255
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41256
    :catchall_0
    move-exception v1

    .line 41257
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41258
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    .line 41259
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41260
    :cond_0
    throw v1
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41261
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A0H(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41262
    :catchall_0
    move-exception v1

    .line 41263
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41264
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    .line 41265
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41266
    :cond_0
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 41267
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A09(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41268
    :catchall_0
    move-exception v1

    .line 41269
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41270
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    .line 41271
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 41272
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41273
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 41274
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A04(I)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41275
    :catchall_0
    move-exception v1

    .line 41276
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41277
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    .line 41278
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 41279
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41280
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final performClick()Z
    .locals 4

    .line 41281
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KZ;->A0D()Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41282
    :catchall_0
    move-exception v1

    .line 41283
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41284
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Ljava/lang/Throwable;)V

    .line 41285
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/KZ;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/KZ;->A00:[Ljava/lang/String;

    const-string v1, "AcVK2d2xNjImmhnoUD9nKEsQb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 41286
    :cond_1
    throw v1
.end method
