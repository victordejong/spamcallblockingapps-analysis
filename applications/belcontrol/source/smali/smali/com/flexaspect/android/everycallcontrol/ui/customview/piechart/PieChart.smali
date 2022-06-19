.class public Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;
.super Landroid/view/View;
.source ""


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzv0;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzv0;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Landroid/graphics/RectF;

.field public f:F

.field public g:F

.field public h:F

.field public j:I

.field public k:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->b:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->d:Landroid/graphics/RectF;

    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->f:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->g:F

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->h:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->j:I

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->a:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->b:Ljava/util/ArrayList;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->d:Landroid/graphics/RectF;

    const/high16 p2, 0x43fa0000    # 500.0f

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->f:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->g:F

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->h:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->j:I

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->a:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->b:Ljava/util/ArrayList;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->d:Landroid/graphics/RectF;

    const/high16 p2, 0x43fa0000    # 500.0f

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->f:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->g:F

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->h:F

    iput p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->j:I

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Loe1;->c(I)I

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->c:I

    const v0, 0x7f060191

    invoke-static {p1, v0}, Lg8;->d(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->j:I

    return-void
.end method

.method public final b()Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->b()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->g:F

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->h:F

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->f:F

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->c:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzv0;

    invoke-virtual {v2}, Lzv0;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzv0;

    invoke-virtual {v1}, Lzv0;->b()F

    move-result v5

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzv0;

    invoke-virtual {v1}, Lzv0;->c()F

    move-result v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->k:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->c:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->f:F

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->d:Landroid/graphics/RectF;

    int-to-float p2, p2

    const/4 v0, 0x0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->c:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->c:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->d:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->g:F

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->d:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->h:F

    return-void
.end method

.method public setPieData(Lxv0;Lwv0;)V
    .locals 3

    iget-object v0, p1, Lxv0;->b:Ljava/lang/Float;

    if-nez v0, :cond_0

    iget-object v0, p1, Lxv0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyv0;

    iget v2, v2, Lyv0;->b:F

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_1
    iget-object p1, p1, Lxv0;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lyv0;->a(Ljava/util/List;Ljava/lang/Float;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->b:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lwv0;->b(Ljava/util/List;)V

    new-instance p1, Lde;

    invoke-direct {p1}, Lde;-><init>()V

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->a:Ljava/util/ArrayList;

    :goto_1
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 2

    instance-of v0, p1, Lwv0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lwv0;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lwv0;->b(Ljava/util/List;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
