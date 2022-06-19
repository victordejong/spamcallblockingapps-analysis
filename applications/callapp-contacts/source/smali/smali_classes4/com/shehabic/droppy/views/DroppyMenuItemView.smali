.class public Lcom/shehabic/droppy/views/DroppyMenuItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/shehabic/droppy/views/DroppyMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 23
    sget v0, Lcom/shehabic/droppy/f$a;->droppyMenuItemStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/shehabic/droppy/views/DroppyMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    sget-object v0, Lcom/shehabic/droppy/f$f;->DroppyMenuItemView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/shehabic/droppy/f$e;->default_menu_item_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 32
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/shehabic/droppy/f$d;->default_menu_item_minWidth:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 33
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/shehabic/droppy/f$d;->default_menu_item_minHeight:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 34
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shehabic/droppy/f$b;->default_menu_item_clickable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 36
    sget v3, Lcom/shehabic/droppy/f$f;->DroppyMenuItemView_android_minWidth:I

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 37
    sget v3, Lcom/shehabic/droppy/f$f;->DroppyMenuItemView_android_minHeight:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 39
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    float-to-int p3, p3

    .line 40
    invoke-virtual {p0, p3}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->setMinimumWidth(I)V

    float-to-int p3, v0

    .line 41
    invoke-virtual {p0, p3}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->setMinimumHeight(I)V

    .line 42
    sget p3, Lcom/shehabic/droppy/f$f;->DroppyMenuItemView_android_layout_width:I

    const/4 v0, -0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    .line 43
    sget v0, Lcom/shehabic/droppy/f$f;->DroppyMenuItemView_android_layout_height:I

    const/4 v4, -0x2

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    if-nez v3, :cond_0

    .line 45
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, p3, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 47
    :cond_0
    iput p3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    :goto_0
    sget p3, Lcom/shehabic/droppy/f$f;->DroppyMenuItemView_android_clickable:I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->setClickable(Z)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->setOrientation(I)V

    .line 52
    sget p3, Lcom/shehabic/droppy/f$f;->DroppyMenuItemView_android_gravity:I

    const/16 v0, 0x10

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->setGravity(I)V

    .line 53
    sget p3, Lcom/shehabic/droppy/f$f;->DroppyMenuItemView_android_paddingTop:I

    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/shehabic/droppy/f$d;->default_menu_item_paddingTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    .line 54
    sget v0, Lcom/shehabic/droppy/f$f;->DroppyMenuItemView_android_paddingBottom:I

    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shehabic/droppy/f$d;->default_menu_item_paddingBottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 55
    sget v1, Lcom/shehabic/droppy/f$f;->DroppyMenuItemView_android_paddingLeft:I

    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/shehabic/droppy/f$d;->default_menu_item_paddingLeft:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 56
    sget v2, Lcom/shehabic/droppy/f$f;->DroppyMenuItemView_android_paddingRight:I

    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/shehabic/droppy/f$d;->default_menu_item_paddingRight:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .line 57
    invoke-virtual {p0, v1, p3, v2, v0}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->setPadding(IIII)V

    .line 59
    sget p3, Lcom/shehabic/droppy/f$f;->DroppyMenuItemView_android_background:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 61
    invoke-virtual {p0, p3}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p0, p2}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :goto_1
    invoke-virtual {p0, v3}, Lcom/shehabic/droppy/views/DroppyMenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
