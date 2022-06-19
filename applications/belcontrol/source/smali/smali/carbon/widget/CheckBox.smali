.class public Lcarbon/widget/CheckBox;
.super Lcarbon/widget/TextView;
.source ""

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/CheckBox$SavedState;,
        Lcarbon/widget/CheckBox$b;
    }
.end annotation


# static fields
.field public static final l0:[I

.field public static final m0:[I


# instance fields
.field public g0:Landroid/graphics/drawable/Drawable;

.field public h0:F

.field public i0:Lpb0;

.field public j0:Lqb0$c;

.field public k0:Lcarbon/widget/CheckBox$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcarbon/widget/CheckBox;->l0:[I

    new-array v0, v0, [I

    sget v1, Lh80;->carbon_state_indeterminate:I

    aput v1, v0, v3

    sput-object v0, Lcarbon/widget/CheckBox;->m0:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x101006c

    invoke-direct {p0, p1, v0, v1}, Lcarbon/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lqb0$c;->a:Lqb0$c;

    iput-object p1, p0, Lcarbon/widget/CheckBox;->j0:Lqb0$c;

    sget p1, Lo80;->carbon_CheckBox:I

    invoke-virtual {p0, v0, v1, p1}, Lcarbon/widget/CheckBox;->F(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lp80;->CheckBox:[I

    sget v1, Lp80;->CheckBox_carbon_theme:I

    const v2, 0x101006c

    invoke-static {p1, p2, v0, v2, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v2}, Lcarbon/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lqb0$c;->a:Lqb0$c;

    iput-object p1, p0, Lcarbon/widget/CheckBox;->j0:Lqb0$c;

    sget p1, Lo80;->carbon_CheckBox:I

    invoke-virtual {p0, p2, v2, p1}, Lcarbon/widget/CheckBox;->F(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lp80;->CheckBox:[I

    sget v1, Lp80;->CheckBox_carbon_theme:I

    invoke-static {p1, p2, v0, p3, v1}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lqb0$c;->a:Lqb0$c;

    iput-object p1, p0, Lcarbon/widget/CheckBox;->j0:Lqb0$c;

    sget p1, Lo80;->carbon_CheckBox:I

    invoke-virtual {p0, p2, p3, p1}, Lcarbon/widget/CheckBox;->F(Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public F(Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->CheckBox:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lp80;->CheckBox_android_button:I

    sget p3, Lk80;->carbon_defaultdrawable:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-ne p2, p3, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lqb0;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ln80;->carbon_checkbox_checked:I

    sget v3, Ln80;->carbon_checkbox_unchecked:I

    sget v4, Ln80;->carbon_checkbox_filled:I

    new-instance v5, Landroid/graphics/PointF;

    const p3, -0x4247ae14    # -0.09f

    const v0, 0x3de147ae    # 0.11f

    invoke-direct {v5, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lqb0;-><init>(Landroid/content/Context;IIILandroid/graphics/PointF;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1080010

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lg8;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcarbon/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    if-ge p3, v0, :cond_5

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v1, Lp80;->CheckBox_android_drawablePadding:I

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcarbon/widget/CheckBox;->h0:F

    goto :goto_2

    :cond_2
    sget v1, Lp80;->CheckBox_android_checked:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcarbon/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_3
    sget v1, Lp80;->CheckBox_carbon_buttonGravity:I

    if-ne v0, v1, :cond_4

    invoke-static {}, Lpb0;->values()[Lpb0;

    move-result-object v1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcarbon/widget/CheckBox;->i0:Lpb0;

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    sget p2, Lp80;->CheckBox_carbon_htmlText:I

    invoke-static {p0, p1, p2}, Ld80;->o(Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final G()Z
    .locals 2

    iget-object v0, p0, Lcarbon/widget/CheckBox;->i0:Lpb0;

    sget-object v1, Lpb0;->a:Lpb0;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->I()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/CheckBox;->i0:Lpb0;

    sget-object v1, Lpb0;->b:Lpb0;

    if-eq v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/CheckBox;->i0:Lpb0;

    sget-object v1, Lpb0;->d:Lpb0;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public H()Z
    .locals 2

    iget-object v0, p0, Lcarbon/widget/CheckBox;->j0:Lqb0$c;

    sget-object v1, Lqb0$c;->c:Lqb0$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final I()Z
    .locals 2

    invoke-static {p0}, Ljb;->B(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final J()V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcarbon/widget/TextView;->v:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcarbon/widget/TextView;->w:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ld80;->C(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcarbon/widget/TextView;->w:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Ld80;->E(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld80;->C(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :goto_0
    iget-object v0, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Lcarbon/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getButtonGravity()Lpb0;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/CheckBox;->i0:Lpb0;

    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcarbon/widget/CheckBox;->h0:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->G()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcarbon/widget/CheckBox;->h0:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method

.method public isChecked()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Lcarbon/widget/CheckBox;->j0:Lqb0$c;

    sget-object v1, Lqb0$c;->b:Lqb0$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Lcarbon/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcarbon/widget/CheckBox;->l0:[I

    invoke-static {p1, v0}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    :cond_0
    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcarbon/widget/CheckBox;->m0:[I

    invoke-static {p1, v0}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/16 v4, 0x10

    if-eq v1, v4, :cond_1

    const/16 v4, 0x50

    if-eq v1, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    :goto_0
    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->G()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    :goto_1
    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->G()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    :goto_2
    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v1, v1, Lhc0;

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_5
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v1

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcarbon/widget/CheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcarbon/widget/CheckBox$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lcarbon/widget/CheckBox$SavedState;->a:Lqb0$c;

    invoke-virtual {p0, p1}, Lcarbon/widget/CheckBox;->setChecked(Lqb0$c;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcarbon/widget/CheckBox$SavedState;

    invoke-direct {v1, v0}, Lcarbon/widget/CheckBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcarbon/widget/CheckBox;->j0:Lqb0$c;

    iput-object v0, v1, Lcarbon/widget/CheckBox$SavedState;->a:Lqb0$c;

    return-object v1
.end method

.method public performClick()Z
    .locals 2

    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->toggle()V

    iget-object v0, p0, Lcarbon/widget/CheckBox;->k0:Lcarbon/widget/CheckBox$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcarbon/widget/CheckBox$b;->a(Lcarbon/widget/CheckBox;Z)V

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->playSoundEffect(I)V

    :cond_1
    return v0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->J()V

    :cond_3
    return-void
.end method

.method public setButtonGravity(Lpb0;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/CheckBox;->i0:Lpb0;

    return-void
.end method

.method public setChecked(Lqb0$c;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/CheckBox;->j0:Lqb0$c;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcarbon/widget/CheckBox;->j0:Lqb0$c;

    invoke-virtual {p0}, Landroid/widget/TextView;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lqb0$c;->b:Lqb0$c;

    goto :goto_0

    :cond_0
    sget-object p1, Lqb0$c;->a:Lqb0$c;

    :goto_0
    invoke-virtual {p0, p1}, Lcarbon/widget/CheckBox;->setChecked(Lqb0$c;)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcarbon/widget/CheckBox$b;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/CheckBox;->k0:Lcarbon/widget/CheckBox$b;

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcarbon/widget/CheckBox;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTint(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcarbon/widget/TextView;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->J()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Lcarbon/widget/TextView;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->J()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-super {p0, p1}, Lcarbon/widget/TextView;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->J()V

    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Lcarbon/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcarbon/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Lcarbon/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/CheckBox;->g0:Landroid/graphics/drawable/Drawable;

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
