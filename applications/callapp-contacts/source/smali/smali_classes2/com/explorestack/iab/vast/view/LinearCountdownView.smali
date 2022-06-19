.class public Lcom/explorestack/iab/vast/view/LinearCountdownView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/utils/g;


# instance fields
.field public a:F

.field private final b:Landroid/graphics/Paint;

.field private c:F

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->b:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a:F

    const/high16 p1, 0x41700000    # 15.0f

    .line 22
    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->c:F

    .line 23
    sget p1, Lcom/explorestack/iab/utils/Assets;->mainAssetsColor:I

    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->d:I

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->e:I

    .line 28
    invoke-direct {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->b:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a:F

    const/high16 p1, 0x41700000    # 15.0f

    .line 22
    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->c:F

    .line 23
    sget p1, Lcom/explorestack/iab/utils/Assets;->mainAssetsColor:I

    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->d:I

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->e:I

    .line 33
    invoke-direct {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->c:F

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 51
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 53
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 54
    iget-object v2, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->c:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v2, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->e:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->getPaddingLeft()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v6, v2

    iget-object v8, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->b:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 59
    iget-object v2, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    .line 60
    iget v2, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a:F

    mul-float v0, v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    .line 61
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->getPaddingLeft()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float v6, v2, v0

    iget-object v8, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->b:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setStyle(Lcom/explorestack/iab/utils/h;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->d:I

    .line 43
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->e:I

    .line 44
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/h;->e(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->c:F

    .line 45
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->g()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->setAlpha(F)V

    .line 46
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->postInvalidate()V

    return-void
.end method
