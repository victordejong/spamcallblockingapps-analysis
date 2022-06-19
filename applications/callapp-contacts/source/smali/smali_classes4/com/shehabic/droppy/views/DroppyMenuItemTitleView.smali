.class public Lcom/shehabic/droppy/views/DroppyMenuItemTitleView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/shehabic/droppy/views/DroppyMenuItemTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 23
    sget v0, Lcom/shehabic/droppy/f$a;->droppyMenuItemTitleStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/shehabic/droppy/views/DroppyMenuItemTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuItemTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/shehabic/droppy/f$d;->default_menu_item_title_minWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 31
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuItemTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shehabic/droppy/f$d;->default_menu_item_title_minHeight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 33
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuItemTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shehabic/droppy/f$c;->default_menu_item_title_textColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 37
    sget-object v3, Lcom/shehabic/droppy/f$f;->DroppyMenuItemTitleView:[I

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 38
    sget p2, Lcom/shehabic/droppy/f$f;->DroppyMenuItemTitleView_android_minWidth:I

    int-to-float p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    .line 39
    sget p3, Lcom/shehabic/droppy/f$f;->DroppyMenuItemTitleView_android_minHeight:I

    int-to-float v0, v1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    .line 40
    sget v0, Lcom/shehabic/droppy/f$f;->DroppyMenuItemTitleView_android_layout_width:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    .line 41
    sget v1, Lcom/shehabic/droppy/f$f;->DroppyMenuItemTitleView_android_layout_height:I

    const/4 v3, -0x2

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 42
    sget v3, Lcom/shehabic/droppy/f$f;->DroppyMenuItemTitleView_android_textColor:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 44
    sget v3, Lcom/shehabic/droppy/f$f;->DroppyMenuItemTitleView_android_gravity:I

    const/16 v4, 0x10

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/shehabic/droppy/views/DroppyMenuItemTitleView;->setGravity(I)V

    .line 46
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 48
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 49
    sget v0, Lcom/shehabic/droppy/f$f;->DroppyMenuItemTitleView_android_layout_weight:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50
    sget v0, Lcom/shehabic/droppy/f$f;->DroppyMenuItemTitleView_android_layout_gravity:I

    const v1, 0x800015

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52
    invoke-virtual {p0, v3}, Lcom/shehabic/droppy/views/DroppyMenuItemTitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/shehabic/droppy/views/DroppyMenuItemTitleView;->setMinHeight(I)V

    .line 54
    invoke-virtual {p0, p3}, Lcom/shehabic/droppy/views/DroppyMenuItemTitleView;->setMinHeight(I)V

    .line 56
    invoke-virtual {p0, v2}, Lcom/shehabic/droppy/views/DroppyMenuItemTitleView;->setTextColor(I)V

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
