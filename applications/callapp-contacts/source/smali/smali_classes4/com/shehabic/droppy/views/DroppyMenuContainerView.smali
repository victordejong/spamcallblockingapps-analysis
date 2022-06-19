.class public Lcom/shehabic/droppy/views/DroppyMenuContainerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/shehabic/droppy/views/DroppyMenuContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 20
    sget v0, Lcom/shehabic/droppy/f$a;->droppyMenuStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/shehabic/droppy/views/DroppyMenuContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/shehabic/droppy/views/DroppyMenuContainerView;->setOrientation(I)V

    .line 26
    sget-object v0, Lcom/shehabic/droppy/f$f;->DroppyMenuPopupView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lcom/shehabic/droppy/views/DroppyMenuContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 28
    sget p3, Lcom/shehabic/droppy/f$f;->DroppyMenuContainerView_android_layout_height:I

    const/4 v0, -0x2

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    .line 29
    sget v1, Lcom/shehabic/droppy/f$f;->DroppyMenuContainerView_android_layout_width:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    if-nez p2, :cond_0

    .line 32
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v0, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 34
    :cond_0
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    :goto_0
    invoke-virtual {p0, p2}, Lcom/shehabic/droppy/views/DroppyMenuContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
