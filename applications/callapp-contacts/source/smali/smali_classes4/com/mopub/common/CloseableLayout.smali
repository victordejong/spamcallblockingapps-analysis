.class public Lcom/mopub/common/CloseableLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/CloseableLayout$a;,
        Lcom/mopub/common/CloseableLayout$ClosePosition;,
        Lcom/mopub/common/CloseableLayout$OnCloseListener;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/mopub/common/CloseableLayout$OnCloseListener;

.field private final c:Landroid/graphics/drawable/Drawable;

.field private d:Lcom/mopub/common/CloseableLayout$ClosePosition;

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Z

.field private final i:Landroid/graphics/Rect;

.field private final j:Landroid/graphics/Rect;

.field private final k:Landroid/graphics/Rect;

.field private final l:Landroid/graphics/Rect;

.field private m:Z

.field private n:Z

.field private o:Lcom/mopub/common/CloseableLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, v0, v1}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/mopub/common/CloseableLayout;->i:Landroid/graphics/Rect;

    .line 97
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/mopub/common/CloseableLayout;->j:Landroid/graphics/Rect;

    .line 98
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/mopub/common/CloseableLayout;->k:Landroid/graphics/Rect;

    .line 99
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/mopub/common/CloseableLayout;->l:Landroid/graphics/Rect;

    .line 116
    sget p2, Lcom/mopub/mobileads/base/R$drawable;->ic_mopub_close_button:I

    invoke-static {p1, p2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/common/CloseableLayout;->c:Landroid/graphics/drawable/Drawable;

    .line 117
    sget-object p2, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    iput-object p2, p0, Lcom/mopub/common/CloseableLayout;->d:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 119
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/mopub/common/CloseableLayout;->a:I

    const/high16 p2, 0x42480000    # 50.0f

    .line 121
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/mopub/common/CloseableLayout;->e:I

    const/high16 p2, 0x42080000    # 34.0f

    .line 122
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/mopub/common/CloseableLayout;->f:I

    const/high16 p2, 0x41000000    # 8.0f

    .line 123
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/mopub/common/CloseableLayout;->g:I

    const/4 p1, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lcom/mopub/common/CloseableLayout;->setWillNotDraw(Z)V

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/mopub/common/CloseableLayout;->m:Z

    .line 127
    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x106000c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 128
    invoke-virtual {p0, p1}, Lcom/mopub/common/CloseableLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private static a(Lcom/mopub/common/CloseableLayout$ClosePosition;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 195
    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout$ClosePosition;->getGravity()I

    move-result p0

    invoke-static {p0, p1, p1, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/common/CloseableLayout;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lcom/mopub/common/CloseableLayout;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 2275
    iget-boolean v0, p0, Lcom/mopub/common/CloseableLayout;->n:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 269
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/common/CloseableLayout;->n:Z

    .line 270
    iget-object p1, p0, Lcom/mopub/common/CloseableLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/mopub/common/CloseableLayout;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method private a(III)Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p3

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p3

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/mopub/common/CloseableLayout;->j:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p3

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 187
    iget v0, p0, Lcom/mopub/common/CloseableLayout;->e:I

    invoke-static {p1, v0, p2, p3}, Lcom/mopub/common/CloseableLayout;->a(Lcom/mopub/common/CloseableLayout$ClosePosition;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 158
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 161
    iget-boolean v0, p0, Lcom/mopub/common/CloseableLayout;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/mopub/common/CloseableLayout;->h:Z

    .line 164
    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 166
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->d:Lcom/mopub/common/CloseableLayout$ClosePosition;

    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->i:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mopub/common/CloseableLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mopub/common/CloseableLayout;->applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 169
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->l:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 170
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->l:Landroid/graphics/Rect;

    iget v1, p0, Lcom/mopub/common/CloseableLayout;->g:I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 173
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->d:Lcom/mopub/common/CloseableLayout$ClosePosition;

    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->l:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mopub/common/CloseableLayout;->k:Landroid/graphics/Rect;

    .line 1191
    iget v3, p0, Lcom/mopub/common/CloseableLayout;->f:I

    invoke-static {v0, v3, v1, v2}, Lcom/mopub/common/CloseableLayout;->a(Lcom/mopub/common/CloseableLayout$ClosePosition;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 174
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/mopub/common/CloseableLayout;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public isCloseVisible()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 212
    invoke-direct {p0, v0, p1, v1}, Lcom/mopub/common/CloseableLayout;->a(III)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lcom/mopub/common/CloseableLayout;->h:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 221
    iget v2, p0, Lcom/mopub/common/CloseableLayout;->a:I

    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/common/CloseableLayout;->a(III)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1261
    iget-boolean v0, p0, Lcom/mopub/common/CloseableLayout;->m:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_3

    .line 227
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto :goto_2

    .line 233
    :cond_3
    invoke-direct {p0, v1}, Lcom/mopub/common/CloseableLayout;->a(Z)V

    goto :goto_2

    .line 1275
    :cond_4
    iget-boolean p1, p0, Lcom/mopub/common/CloseableLayout;->n:Z

    if-eqz p1, :cond_7

    .line 239
    iget-object p1, p0, Lcom/mopub/common/CloseableLayout;->o:Lcom/mopub/common/CloseableLayout$a;

    if-nez p1, :cond_5

    .line 240
    new-instance p1, Lcom/mopub/common/CloseableLayout$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/mopub/common/CloseableLayout$a;-><init>(Lcom/mopub/common/CloseableLayout;Lcom/mopub/common/CloseableLayout$1;)V

    iput-object p1, p0, Lcom/mopub/common/CloseableLayout;->o:Lcom/mopub/common/CloseableLayout$a;

    .line 242
    :cond_5
    iget-object p1, p0, Lcom/mopub/common/CloseableLayout;->o:Lcom/mopub/common/CloseableLayout$a;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p0, p1, v3, v4}, Lcom/mopub/common/CloseableLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1287
    invoke-virtual {p0, v1}, Lcom/mopub/common/CloseableLayout;->playSoundEffect(I)V

    .line 1288
    iget-object p1, p0, Lcom/mopub/common/CloseableLayout;->b:Lcom/mopub/common/CloseableLayout$OnCloseListener;

    if-eqz p1, :cond_7

    .line 1289
    invoke-interface {p1}, Lcom/mopub/common/CloseableLayout$OnCloseListener;->onClose()V

    goto :goto_2

    .line 229
    :cond_6
    invoke-direct {p0, v2}, Lcom/mopub/common/CloseableLayout;->a(Z)V

    :cond_7
    :goto_2
    return v2

    .line 222
    :cond_8
    :goto_3
    invoke-direct {p0, v1}, Lcom/mopub/common/CloseableLayout;->a(Z)V

    .line 223
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method public setCloseAlwaysInteractable(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/mopub/common/CloseableLayout;->m:Z

    return-void
.end method

.method public setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V
    .locals 0

    .line 137
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 139
    iput-object p1, p0, Lcom/mopub/common/CloseableLayout;->d:Lcom/mopub/common/CloseableLayout$ClosePosition;

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/mopub/common/CloseableLayout;->h:Z

    .line 141
    invoke-virtual {p0}, Lcom/mopub/common/CloseableLayout;->invalidate()V

    return-void
.end method

.method public setCloseVisible(Z)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/mopub/common/CloseableLayout;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/mopub/common/CloseableLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/mopub/common/CloseableLayout;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/mopub/common/CloseableLayout;->b:Lcom/mopub/common/CloseableLayout$OnCloseListener;

    return-void
.end method
