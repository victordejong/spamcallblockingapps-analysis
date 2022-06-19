.class public Lcom/shehabic/droppy/views/DroppyMenuPopupView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 23
    sget v0, Lcom/shehabic/droppy/f$a;->droppyPopupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/shehabic/droppy/f$e;->default_popup_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 30
    sget-object v1, Lcom/shehabic/droppy/f$f;->DroppyMenuPopupView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 31
    sget p2, Lcom/shehabic/droppy/f$f;->DroppyMenuPopupView_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 32
    sget p3, Lcom/shehabic/droppy/f$f;->DroppyMenuPopupView_android_layout_height:I

    const/4 v1, -0x2

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    .line 33
    sget v2, Lcom/shehabic/droppy/f$f;->DroppyMenuPopupView_android_layout_width:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 34
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 38
    :cond_0
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 39
    iput p3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    :goto_0
    invoke-virtual {p0, v2}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p0, p2}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0, v0}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
