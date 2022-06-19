.class public Lcom/callapp/contacts/widget/ImageViewWithTopMark;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;,
        Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private c:Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;

.field private d:Z

.field private final e:Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/ImageViewWithTopMark;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/ImageViewWithTopMark;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->a:Landroid/graphics/Paint;

    .line 16
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->b:Landroid/graphics/Paint;

    .line 17
    new-instance v3, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;-><init>(Lcom/callapp/contacts/widget/ImageViewWithTopMark;Lcom/callapp/contacts/widget/ImageViewWithTopMark$1;)V

    iput-object v3, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->c:Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;

    const/4 v3, 0x0

    .line 18
    iput-boolean v3, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->d:Z

    .line 27
    new-instance v5, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;

    invoke-direct {v5, p0, v4}, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;-><init>(Lcom/callapp/contacts/widget/ImageViewWithTopMark;Lcom/callapp/contacts/widget/ImageViewWithTopMark$1;)V

    iput-object v5, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->e:Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;

    .line 39
    sget-object v4, Lcom/callapp/contacts/R$styleable;->ImageViewWithTopMark:[I

    invoke-virtual {p1, p2, v4, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    .line 40
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p2

    float-to-int p2, p2

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v5, p2}, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;->a(Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;F)F

    const/high16 p2, 0x40800000    # 4.0f

    .line 41
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p2

    float-to-int p2, p2

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v5, p2}, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;->b(Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;F)F

    .line 42
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06022c

    invoke-static {p2, p3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-static {v5, p2}, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;->a(Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;I)I

    .line 43
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f060244

    invoke-static {p2, p3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-static {v5, p2}, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;->b(Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;I)I

    .line 44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1049
    invoke-static {v5}, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;->a(Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1050
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1051
    invoke-static {v5}, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;->b(Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1052
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 70
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->d:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->c:Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;

    iget v0, v0, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;->a:F

    iget-object v1, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->c:Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;

    iget v1, v1, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;->b:F

    iget-object v2, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->e:Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;

    invoke-static {v2}, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;->c(Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;)F

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->c:Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;

    iget v0, v0, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;->a:F

    iget-object v1, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->c:Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;

    iget v1, v1, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;->b:F

    iget-object v2, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->e:Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;

    invoke-static {v2}, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;->d(Lcom/callapp/contacts/widget/ImageViewWithTopMark$Attributes;)F

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 64
    iget-object p3, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->c:Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    sub-int/2addr p1, p4

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    add-int/2addr p1, p4

    int-to-float p1, p1

    const/high16 p4, 0x40400000    # 3.0f

    invoke-static {p4}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p4

    sub-float/2addr p1, p4

    iput p1, p3, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;->a:F

    .line 65
    iget-object p1, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->c:Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    const/high16 p3, 0x40c00000    # 6.0f

    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p1, Lcom/callapp/contacts/widget/ImageViewWithTopMark$Point;->b:F

    return-void
.end method

.method public setDrawCircle(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->d:Z

    .line 57
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ImageViewWithTopMark;->requestLayout()V

    return-void
.end method
