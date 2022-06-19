.class public Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$b;
    }
.end annotation


# static fields
.field public static final l:I


# instance fields
.field public a:Landroid/view/accessibility/AccessibilityManager;

.field public b:Landroid/graphics/RectF;

.field public c:Z

.field public d:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Z

.field public h:Z

.field public j:Ljava/lang/Runnable;

.field public k:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->d(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->setLongHovered(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private setLongHovered(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->c:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->f:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->d:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->f:Ljava/lang/CharSequence;

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->setLongHovered(Z)V

    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->a:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->setPressed(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->setPressed(Z)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performLongClick()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->e()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->c()V

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->g:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->h:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->g:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLongClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->j:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$a;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->j:Ljava/lang/Runnable;

    :cond_4
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->j:Ljava/lang/Runnable;

    sget v1, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->l:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    :cond_6
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p4

    int-to-float p4, p4

    iput p4, p3, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    iput p1, p3, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    int-to-float p3, p3

    iput p3, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->e()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->c:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->f:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setLongHoverContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->d:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->c:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnPressedListener(Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$b;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->k:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$b;

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->k:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$b;->e(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
