.class public Lnet/pubnative/lite/sdk/views/CloseableContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/views/CloseableContainer$UnsetPressedState;,
        Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;,
        Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;
    }
.end annotation


# static fields
.field static final CLOSE_BUTTON_PADDING_DP:F = 8.0f

.field static final CLOSE_BUTTON_SIZE_DP:F = 30.0f

.field static final CLOSE_REGION_SIZE_DP:F = 50.0f


# instance fields
.field private final mClosableLayoutRect:Landroid/graphics/Rect;

.field private mCloseAlwaysInteractable:Z

.field private mCloseBoundChanged:Z

.field private final mCloseButtonBounds:Landroid/graphics/Rect;

.field private final mCloseButtonPadding:I

.field private final mCloseButtonSize:I

.field private final mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mClosePosition:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

.field private final mCloseRegionBounds:Landroid/graphics/Rect;

.field private final mCloseRegionSize:I

.field private final mInsetCloseRegionBounds:Landroid/graphics/Rect;

.field private mOnCloseListener:Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;

.field private final mTouchSlop:I

.field private mUnsetPressedState:Lnet/pubnative/lite/sdk/views/CloseableContainer$UnsetPressedState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, v0, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mClosableLayoutRect:Landroid/graphics/Rect;

    .line 72
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseRegionBounds:Landroid/graphics/Rect;

    .line 73
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseButtonBounds:Landroid/graphics/Rect;

    .line 74
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mInsetCloseRegionBounds:Landroid/graphics/Rect;

    .line 90
    new-instance p2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object p2, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 91
    sget-object p3, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->TOP_RIGHT:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    iput-object p3, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mClosePosition:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    .line 93
    sget-object p3, Lnet/pubnative/lite/sdk/views/CloseableContainer;->SELECTED_STATE_SET:[I

    sget-object v0, Lnet/pubnative/lite/sdk/utils/DrawableResources;->INTERSTITIAL_CLOSE_BUTTON_PRESSED:Lnet/pubnative/lite/sdk/utils/DrawableResources;

    .line 94
    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/utils/DrawableResources;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 95
    sget-object p3, Lnet/pubnative/lite/sdk/views/CloseableContainer;->EMPTY_STATE_SET:[I

    sget-object v0, Lnet/pubnative/lite/sdk/utils/DrawableResources;->INTERSTITIAL_CLOSE_BUTTON_NORMAL:Lnet/pubnative/lite/sdk/utils/DrawableResources;

    .line 96
    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/utils/DrawableResources;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 98
    sget-object p3, Lnet/pubnative/lite/sdk/views/CloseableContainer;->EMPTY_STATE_SET:[I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 99
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 101
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mTouchSlop:I

    const/high16 p2, 0x42480000    # 50.0f

    .line 103
    invoke-static {p2, p1}, Lnet/pubnative/lite/sdk/utils/ViewUtils;->asIntPixels(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseRegionSize:I

    const/high16 p2, 0x41f00000    # 30.0f

    .line 104
    invoke-static {p2, p1}, Lnet/pubnative/lite/sdk/utils/ViewUtils;->asIntPixels(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseButtonSize:I

    const/high16 p2, 0x41000000    # 8.0f

    .line 105
    invoke-static {p2, p1}, Lnet/pubnative/lite/sdk/utils/ViewUtils;->asIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseButtonPadding:I

    const/4 p1, 0x0

    .line 107
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setWillNotDraw(Z)V

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseAlwaysInteractable:Z

    return-void
.end method

.method static synthetic access$100(Lnet/pubnative/lite/sdk/views/CloseableContainer;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setClosePressed(Z)V

    return-void
.end method

.method private applyCloseBoundsWithSize(Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 177
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->getGravity()I

    move-result p1

    invoke-static {p1, p2, p2, p3, p4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private applyCloseButtonBounds(Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 173
    iget v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseButtonSize:I

    invoke-direct {p0, p1, v0, p2, p3}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->applyCloseBoundsWithSize(Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private performClose()V
    .locals 1

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->playSoundEffect(I)V

    .line 259
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mOnCloseListener:Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0}, Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;->onClose()V

    :cond_0
    return-void
.end method

.method private setClosePressed(Z)V
    .locals 1

    .line 238
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->isClosePressed()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    if-eqz p1, :cond_1

    sget-object p1, Lnet/pubnative/lite/sdk/views/CloseableContainer;->SELECTED_STATE_SET:[I

    goto :goto_0

    :cond_1
    sget-object p1, Lnet/pubnative/lite/sdk/views/CloseableContainer;->EMPTY_STATE_SET:[I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 243
    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public applyCloseRegionBounds(Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 169
    iget v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseRegionSize:I

    invoke-direct {p0, p1, v0, p2, p3}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->applyCloseBoundsWithSize(Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 142
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 145
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseBoundChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseBoundChanged:Z

    .line 148
    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mClosableLayoutRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 150
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mClosePosition:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mClosableLayoutRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->applyCloseRegionBounds(Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 153
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mInsetCloseRegionBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 154
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mInsetCloseRegionBounds:Landroid/graphics/Rect;

    iget v1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseButtonPadding:I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 157
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mClosePosition:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mInsetCloseRegionBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->applyCloseButtonBounds(Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 158
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method getCloseBounds()Landroid/graphics/Rect;
    .locals 1

    .line 280
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseRegionBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method isClosePressed()Z
    .locals 2

    .line 247
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    sget-object v1, Lnet/pubnative/lite/sdk/views/CloseableContainer;->SELECTED_STATE_SET:[I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCloseVisible()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 191
    invoke-virtual {p0, v0, p1, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->pointInCloseBounds(III)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseBoundChanged:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 200
    iget v2, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mTouchSlop:I

    invoke-virtual {p0, v0, v1, v2}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->pointInCloseBounds(III)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->shouldAllowPress()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    invoke-direct {p0, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setClosePressed(Z)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->isClosePressed()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 218
    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mUnsetPressedState:Lnet/pubnative/lite/sdk/views/CloseableContainer$UnsetPressedState;

    if-nez p1, :cond_3

    .line 219
    new-instance p1, Lnet/pubnative/lite/sdk/views/CloseableContainer$UnsetPressedState;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer$UnsetPressedState;-><init>(Lnet/pubnative/lite/sdk/views/CloseableContainer;Lnet/pubnative/lite/sdk/views/CloseableContainer$1;)V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mUnsetPressedState:Lnet/pubnative/lite/sdk/views/CloseableContainer$UnsetPressedState;

    .line 221
    :cond_3
    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mUnsetPressedState:Lnet/pubnative/lite/sdk/views/CloseableContainer$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->performClose()V

    goto :goto_0

    .line 208
    :cond_4
    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setClosePressed(Z)V

    :cond_5
    :goto_0
    return v0

    .line 201
    :cond_6
    :goto_1
    invoke-direct {p0, v1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->setClosePressed(Z)V

    .line 202
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method pointInCloseBounds(III)Z
    .locals 1

    .line 251
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseRegionBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p3

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseRegionBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseRegionBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p3

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseRegionBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p3

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCloseAlwaysInteractable(Z)V
    .locals 0

    .line 230
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseAlwaysInteractable:Z

    return-void
.end method

.method setCloseBoundChanged(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseBoundChanged:Z

    return-void
.end method

.method setCloseBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setClosePosition(Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 118
    sget-object v0, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->RANDOM:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    if-ne p1, v0, :cond_0

    .line 119
    invoke-static {}, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->getRandomPosition()Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mClosePosition:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    goto :goto_0

    .line 121
    :cond_0
    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mClosePosition:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    :goto_0
    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseBoundChanged:Z

    .line 124
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->invalidate()V

    :cond_1
    return-void
.end method

.method public setCloseVisible(Z)V
    .locals 2

    .line 129
    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/views/CloseableContainer;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setOnCloseListener(Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mOnCloseListener:Lnet/pubnative/lite/sdk/views/CloseableContainer$OnCloseListener;

    return-void
.end method

.method shouldAllowPress()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseAlwaysInteractable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer;->mCloseDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
