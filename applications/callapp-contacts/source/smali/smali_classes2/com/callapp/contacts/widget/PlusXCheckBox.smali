.class public Lcom/callapp/contacts/widget/PlusXCheckBox;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Rect;

.field private e:F

.field private f:F

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->a:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->a:Landroid/graphics/Paint;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/PlusXCheckBox;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->a:Landroid/graphics/Paint;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/PlusXCheckBox;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 46
    sget-object v0, Lcom/callapp/contacts/R$styleable;->PlusXCheckBox:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const p2, 0x7f060088

    .line 47
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->g:I

    const/4 v0, 0x2

    .line 48
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->e:F

    .line 49
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->h:I

    const/4 p2, 0x3

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->f:F

    .line 51
    iget-object p1, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->a:Landroid/graphics/Paint;

    iget p2, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->e:F

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object p1, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->a:Landroid/graphics/Paint;

    iget p2, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->h:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/PlusXCheckBox;->setClickable(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 84
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1090
    iget-object v0, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->c:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->c:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->a:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1093
    iget v0, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->b:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->b:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 70
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 73
    div-int/lit8 p1, p4, 0x2

    iput p1, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->b:I

    .line 74
    div-int/lit8 p1, p5, 0x2

    iput p1, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->c:I

    .line 75
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/PlusXCheckBox;->getPaddingLeft()I

    move-result p1

    .line 76
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/PlusXCheckBox;->getPaddingTop()I

    move-result p2

    .line 77
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/PlusXCheckBox;->getPaddingRight()I

    move-result p3

    sub-int/2addr p4, p3

    .line 78
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/PlusXCheckBox;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 79
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p1, p2, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->d:Landroid/graphics/Rect;

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/PlusXCheckBox;->getRotation()F

    move-result v0

    float-to-int v0, v0

    if-eqz p1, :cond_0

    const/16 v1, 0x2d

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;II)V

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 63
    iget v1, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->g:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->h:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->a:Landroid/graphics/Paint;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->e:F

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/callapp/contacts/widget/PlusXCheckBox;->f:F

    :goto_2
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_3
    return-void
.end method
