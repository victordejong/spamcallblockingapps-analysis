.class public Lcarbon/widget/ProgressBar;
.super Lcarbon/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/ProgressBar$a;
    }
.end annotation


# instance fields
.field public O:Lvb0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcarbon/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const v0, 0x1010077

    invoke-virtual {p0, p1, v0}, Lcarbon/widget/ProgressBar;->r(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lp80;->ProgressBar:[I

    sget v1, Lp80;->ProgressBar_carbon_theme:I

    const v2, 0x1010077

    invoke-static {p1, p2, v0, v2, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v2}, Lcarbon/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p2, v2}, Lcarbon/widget/ProgressBar;->r(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lp80;->ProgressBar:[I

    sget v1, Lp80;->ProgressBar_carbon_theme:I

    invoke-static {p1, p2, v0, p3, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcarbon/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/ProgressBar;->r(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcarbon/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getBarPadding()F
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    invoke-virtual {v0}, Lvb0;->d()F

    move-result v0

    return v0
.end method

.method public getBarWidth()F
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    invoke-virtual {v0}, Lvb0;->e()F

    move-result v0

    return v0
.end method

.method public getDrawable()Lvb0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    invoke-virtual {v0}, Lvb0;->f()F

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcarbon/view/View;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lcarbon/view/View;->t:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcarbon/view/View;->u:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcarbon/view/View;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lvb0;->setTint(I)V

    iget-object v0, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    iget-object v1, p0, Lcarbon/view/View;->u:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lvb0;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvb0;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final r(Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->ProgressBar:[I

    sget v2, Lo80;->carbon_ProgressBar:I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {}, Lcarbon/widget/ProgressBar$a;->values()[Lcarbon/widget/ProgressBar$a;

    move-result-object p2

    sget v0, Lp80;->ProgressBar_carbon_progressStyle:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object p2, p2, v0

    sget-object v0, Lcarbon/widget/ProgressBar$a;->a:Lcarbon/widget/ProgressBar$a;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcarbon/widget/ProgressBar$a;->b:Lcarbon/widget/ProgressBar$a;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcarbon/widget/ProgressBar$a;->c:Lcarbon/widget/ProgressBar$a;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lrb0;

    invoke-direct {v0}, Lrb0;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lub0;

    invoke-direct {v0}, Lub0;-><init>()V

    :goto_1
    invoke-virtual {p0, v0}, Lcarbon/widget/ProgressBar;->setDrawable(Lvb0;)V

    invoke-virtual {p0}, Lcarbon/widget/ProgressBar;->q()V

    iget-object v0, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    invoke-virtual {v0, p2}, Lvb0;->j(Lcarbon/widget/ProgressBar$a;)V

    iget-object p2, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    sget v0, Lp80;->ProgressBar_carbon_barWidth:I

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p2, v0}, Lvb0;->h(F)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcarbon/widget/ProgressBar;->getBarWidth()F

    move-result p1

    invoke-virtual {p0}, Lcarbon/widget/ProgressBar;->getBarPadding()F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcarbon/widget/ProgressBar;->setBarWidth(F)V

    invoke-virtual {p0, p2}, Lcarbon/widget/ProgressBar;->setBarPadding(F)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcarbon/widget/ProgressBar;->getBarWidth()F

    move-result p1

    invoke-virtual {p0}, Lcarbon/widget/ProgressBar;->getBarPadding()F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcarbon/widget/ProgressBar;->setBarPadding(F)V

    invoke-virtual {p0, p2}, Lcarbon/widget/ProgressBar;->setBarWidth(F)V

    :goto_2
    return-void
.end method

.method public setBarPadding(F)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    invoke-virtual {v0, p1}, Lvb0;->g(F)V

    return-void
.end method

.method public setBarWidth(F)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    invoke-virtual {v0, p1}, Lvb0;->h(F)V

    return-void
.end method

.method public setDrawable(Lvb0;)V
    .locals 1

    iput-object p1, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    invoke-virtual {v0, p1}, Lvb0;->i(F)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Lcarbon/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/ProgressBar;->O:Lvb0;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
