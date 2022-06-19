.class public Lcom/shehabic/droppy/views/DroppyMenuSeparatorView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/shehabic/droppy/views/DroppyMenuSeparatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21
    sget v0, Lcom/shehabic/droppy/f$a;->droppyMenuSeparatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/shehabic/droppy/views/DroppyMenuSeparatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    sget-object v0, Lcom/shehabic/droppy/f$f;->DroppyMenuSeparatorView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuSeparatorView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/shehabic/droppy/f$e;->droppy_separator_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 30
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuSeparatorView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/shehabic/droppy/f$d;->default_menu_separator_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 31
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuSeparatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 32
    sget v2, Lcom/shehabic/droppy/f$f;->DroppyMenuSeparatorView_android_layout_width:I

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    .line 33
    sget v3, Lcom/shehabic/droppy/f$f;->DroppyMenuSeparatorView_android_layout_height:I

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 37
    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 38
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    :goto_0
    invoke-virtual {p0, v1}, Lcom/shehabic/droppy/views/DroppyMenuSeparatorView;->setOrientation(I)V

    .line 42
    sget p3, Lcom/shehabic/droppy/f$f;->DroppyMenuSeparatorView_android_background:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 44
    invoke-virtual {p0, p3}, Lcom/shehabic/droppy/views/DroppyMenuSeparatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0, p2}, Lcom/shehabic/droppy/views/DroppyMenuSeparatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :goto_1
    invoke-virtual {p0, v0}, Lcom/shehabic/droppy/views/DroppyMenuSeparatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
