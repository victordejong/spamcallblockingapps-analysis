.class public final Lcom/explorestack/iab/utils/CircularProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/utils/g;


# instance fields
.field a:Lcom/explorestack/iab/utils/a;

.field final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    invoke-direct {p0, p1}, Lcom/explorestack/iab/utils/CircularProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/explorestack/iab/utils/CircularProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    const/4 p3, 0x0

    .line 25
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/explorestack/iab/utils/CircularProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 44
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/CircularProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 45
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 47
    invoke-static {p1, v1}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v1

    .line 48
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/explorestack/iab/utils/CircularProgressBar;->setPadding(IIII)V

    .line 50
    new-instance v1, Lcom/explorestack/iab/utils/a;

    invoke-direct {v1, p1}, Lcom/explorestack/iab/utils/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/a;

    const/high16 p1, 0x40800000    # 4.0f

    mul-float v0, v0, p1

    .line 51
    invoke-virtual {v1, v0}, Lcom/explorestack/iab/utils/a;->a(F)V

    .line 52
    iget-object p1, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/a;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/high16 v3, -0x10000

    aput v3, v1, v2

    invoke-virtual {p1, v1}, Lcom/explorestack/iab/utils/a;->a([I)V

    .line 53
    iget-object p1, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/a;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Lcom/explorestack/iab/utils/a;->a(Landroid/graphics/Paint$Cap;)V

    .line 54
    iget-object p1, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/a;

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/CircularProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/utils/CircularProgressBar;->setIndeterminate(Z)V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/CircularProgressBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/CircularProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 77
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/CircularProgressBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/CircularProgressBar;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 78
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    .line 69
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/CircularProgressBar;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/CircularProgressBar;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/CircularProgressBar;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 70
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/CircularProgressBar;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/CircularProgressBar;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/CircularProgressBar;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 71
    iget-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/a;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/a;

    .line 1089
    iget-object p2, p2, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    iget p2, p2, Lcom/explorestack/iab/utils/a$a;->i:F

    sub-float/2addr p1, p2

    .line 1093
    iget-object p2, v0, Lcom/explorestack/iab/utils/a;->a:Lcom/explorestack/iab/utils/a$a;

    .line 1413
    iput p1, p2, Lcom/explorestack/iab/utils/a$a;->o:F

    .line 1094
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/a;->invalidateSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final varargs setColorSchemeColors([I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/a;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/a;->a([I)V

    return-void
.end method

.method public final setProgressBackgroundColor(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setStyle(Lcom/explorestack/iab/utils/h;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/a;

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/explorestack/iab/utils/h;->e(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/a;->a(F)V

    .line 61
    iget-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/a;

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/a;->a([I)V

    .line 62
    iget-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/CircularProgressBar;->postInvalidate()V

    return-void
.end method
