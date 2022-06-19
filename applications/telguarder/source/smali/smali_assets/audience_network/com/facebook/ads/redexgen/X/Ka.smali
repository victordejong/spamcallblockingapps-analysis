.class public final Lcom/facebook/ads/redexgen/X/Ka;
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
            "Lcom/facebook/ads/redexgen/X/KT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 41094
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ka;->A00()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41095
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

    const-string v0, "TPqIyxvjMwL0zYPCDynKar79YSqDcefg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2ooKlEkQO4MuTsm7vYLRRLrB56RR8Bsn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6rFsGAXXqT5xoLe75Ppl5ys55WThBd9h"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MLdsXj6c9FEpB7I3SrWjC8UIGdL5Eqwq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pUez"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "e5FLFzSEhqwr257wehaZ9yceedP67Soj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qlmkrdvf9Epb8IkwFqIOZPikhdn4eFES"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lRzgfAkwUL82hsL8BPsX33575djj7auz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ka;->A00:[Ljava/lang/String;

    return-void
.end method

.method private final A01()V
    .locals 0

    .line 41096
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 41097
    return-void
.end method

.method private final A02()V
    .locals 0

    .line 41098
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 41099
    return-void
.end method

.method private final A03()V
    .locals 0

    .line 41100
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41101
    return-void
.end method

.method private final A04(I)V
    .locals 0

    .line 41102
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 41103
    return-void
.end method

.method private final A05(II)V
    .locals 0

    .line 41104
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 41105
    return-void
.end method

.method private final A06(IIII)V
    .locals 0

    .line 41106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 41107
    return-void
.end method

.method private final A07(Landroid/graphics/Canvas;)V
    .locals 0

    .line 41108
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41109
    return-void
.end method

.method private A08(Ljava/lang/Throwable;)V
    .locals 2

    .line 41110
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kk;->A00()Lcom/facebook/ads/redexgen/X/Kj;

    move-result-object v1

    const/16 v0, 0xce9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Kj;->A8N(ILjava/lang/Throwable;)V

    .line 41111
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KT;

    .line 41112
    .local p0, "contextRepairHelper":Lcom/facebook/ads/redexgen/X/KT;
    if-eqz v0, :cond_0

    .line 41113
    invoke-interface {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/KT;->ADD(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 41114
    :cond_0
    return-void
.end method

.method private final A09(Z)V
    .locals 0

    .line 41115
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 41116
    return-void
.end method

.method private final A0A(ZIIII)V
    .locals 0

    .line 41117
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 41118
    return-void
.end method

.method private final A0B(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 41119
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41120
    return-void
.end method

.method public static A0C(ZLcom/facebook/ads/redexgen/X/KT;)V
    .locals 1

    .line 41121
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41122
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41123
    return-void
.end method

.method private final A0D()Z
    .locals 1

    .line 41124
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41125
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41126
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41127
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0H(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41128
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 41129
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ka;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41130
    :catchall_0
    move-exception v1

    .line 41131
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41132
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41133
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 41134
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41135
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    .line 41136
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ka;->A02()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41137
    :catchall_0
    move-exception v3

    .line 41138
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ka;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ka;->A00:[Ljava/lang/String;

    const-string v1, "cvKesfpSdxdfcjG5b8H8eM2YusBRbPxA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "8IeZhQ0GJyWgvFG4QvhjF4xMgrn5kqYd"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41139
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41140
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 41141
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41142
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    throw v3
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 41143
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ka;->A07(Landroid/graphics/Canvas;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41144
    :catchall_0
    move-exception v1

    .line 41145
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41146
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41147
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41148
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41149
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 41150
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ka;->A03()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41151
    :catchall_0
    move-exception v1

    .line 41152
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41153
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41154
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41155
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41156
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 41157
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ka;->A0B(ZILandroid/graphics/Rect;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41158
    :catchall_0
    move-exception v1

    .line 41159
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41160
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41161
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41162
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41163
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41164
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ka;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41165
    :catchall_0
    move-exception v1

    .line 41166
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41167
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41168
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41169
    :cond_0
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41170
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ka;->A0F(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41171
    :catchall_0
    move-exception v1

    .line 41172
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41173
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41174
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41175
    :cond_0
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 41176
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ka;->A0A(ZIIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41177
    :catchall_0
    move-exception v1

    .line 41178
    .local p0, "throwable":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41179
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41180
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 41181
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41182
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 41183
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ka;->A05(II)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41184
    :catchall_0
    move-exception v1

    .line 41185
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41186
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41187
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 41188
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41189
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 41190
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Ka;->A06(IIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41191
    :catchall_0
    move-exception v1

    .line 41192
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41193
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 41195
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41196
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41197
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ka;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41198
    :catchall_0
    move-exception v1

    .line 41199
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41200
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41201
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41202
    :cond_0
    throw v1
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41203
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ka;->A0H(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41204
    :catchall_0
    move-exception v1

    .line 41205
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41206
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41207
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 41208
    :cond_0
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 41209
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ka;->A09(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41210
    :catchall_0
    move-exception v1

    .line 41211
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41212
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41213
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 41214
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41215
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 41216
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ka;->A04(I)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41217
    :catchall_0
    move-exception v1

    .line 41218
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41219
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41220
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 41221
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41222
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final performClick()Z
    .locals 2

    .line 41223
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ka;->A0D()Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41224
    :catchall_0
    move-exception v1

    .line 41225
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41226
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A08(Ljava/lang/Throwable;)V

    .line 41227
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0

    .line 41228
    :cond_0
    throw v1
.end method
