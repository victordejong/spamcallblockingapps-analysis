.class final Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 0

    .line 1513
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    .line 1514
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private c(Landroid/view/View;)Z
    .locals 1

    .line 1562
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c(Landroid/view/View;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/a/c;)V
    .locals 5

    .line 1518
    invoke-static {p2}, Landroidx/core/view/a/c;->a(Landroidx/core/view/a/c;)Landroidx/core/view/a/c;

    move-result-object v0

    .line 1519
    invoke-super {p0, p1, v0}, Landroidx/core/view/a;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    .line 3572
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->c:Landroid/graphics/Rect;

    .line 3574
    invoke-virtual {v0, v1}, Landroidx/core/view/a/c;->a(Landroid/graphics/Rect;)V

    .line 3575
    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->b(Landroid/graphics/Rect;)V

    .line 3577
    invoke-virtual {v0, v1}, Landroidx/core/view/a/c;->c(Landroid/graphics/Rect;)V

    .line 3578
    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->d(Landroid/graphics/Rect;)V

    .line 3580
    invoke-virtual {v0}, Landroidx/core/view/a/c;->b()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->d(Z)V

    .line 4555
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3581
    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->a(Ljava/lang/CharSequence;)V

    .line 4579
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3582
    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->b(Ljava/lang/CharSequence;)V

    .line 4739
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3583
    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->e(Ljava/lang/CharSequence;)V

    .line 5450
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    .line 3585
    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->i(Z)V

    .line 6402
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    .line 3586
    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->g(Z)V

    .line 7268
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    .line 3587
    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->b(Z)V

    .line 7292
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v1

    .line 3588
    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->c(Z)V

    .line 3589
    invoke-virtual {v0}, Landroidx/core/view/a/c;->c()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->e(Z)V

    .line 7378
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v1

    .line 3590
    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->f(Z)V

    .line 7426
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v1

    .line 3591
    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->h(Z)V

    .line 7919
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v1

    .line 3593
    invoke-virtual {p2, v1}, Landroidx/core/view/a/c;->a(I)V

    .line 8060
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    .line 8061
    iget-object v1, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9049
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_1

    .line 9050
    iget-object v3, p2, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 9765
    :cond_1
    iget-object v0, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 1523
    const-class v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/a/c;->b(Ljava/lang/CharSequence;)V

    .line 1524
    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->b(Landroid/view/View;)V

    .line 1526
    invoke-static {p1}, Landroidx/core/view/v;->g(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p1

    .line 1527
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1528
    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->d(Landroid/view/View;)V

    .line 1533
    :cond_2
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_4

    .line 1535
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->b:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1536
    invoke-direct {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->c(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 1538
    invoke-static {v0, v1}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    .line 1540
    invoke-virtual {p2, v0}, Landroidx/core/view/a/c;->c(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1555
    invoke-direct {p0, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1556
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1547
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1549
    const-class p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method
