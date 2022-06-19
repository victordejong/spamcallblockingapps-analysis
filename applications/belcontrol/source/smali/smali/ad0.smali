.class public Lad0;
.super Landroid/widget/PopupWindow;
.source ""


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/View;

.field public c:Lcarbon/widget/FrameLayout;

.field public d:Lcarbon/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lm80;->carbon_seekbar_bubble:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lad0;->b:Landroid/view/View;

    sget v1, Ll80;->carbon_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcarbon/widget/TextView;

    iput-object v1, p0, Lad0;->d:Lcarbon/widget/TextView;

    sget v1, Ll80;->carbon_bubble:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/FrameLayout;

    iput-object v0, p0, Lad0;->c:Lcarbon/widget/FrameLayout;

    iput-object p1, p0, Lad0;->a:Landroid/content/Context;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x106000d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void
.end method

.method public static synthetic a(Lad0;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, Lad0;->c:Lcarbon/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lad0;->d:Lcarbon/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Landroid/view/View;)Z
    .locals 4

    const v0, 0x800033

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p1, p0, Lad0;->a:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object v0, p0, Lad0;->b:Landroid/view/View;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    iget-object v0, p0, Lad0;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/PopupWindow;->update(II)V

    iget-object p1, p0, Lad0;->c:Lcarbon/widget/FrameLayout;

    invoke-virtual {p1, v1}, Lcarbon/widget/FrameLayout;->e(I)Landroid/animation/Animator;

    const/4 p1, 0x1

    return p1
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lad0;->c:Lcarbon/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcarbon/widget/FrameLayout;->e(I)Landroid/animation/Animator;

    iget-object v0, p0, Lad0;->c:Lcarbon/widget/FrameLayout;

    invoke-virtual {v0}, Lcarbon/widget/FrameLayout;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lad0$a;

    invoke-direct {v1, p0}, Lad0$a;-><init>(Lad0;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public update(II)V
    .locals 3

    iget-object v0, p0, Lad0;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v1, p0, Lad0;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-super {p0, v2, p2, v0, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object p2, p0, Lad0;->c:Lcarbon/widget/FrameLayout;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcarbon/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method
