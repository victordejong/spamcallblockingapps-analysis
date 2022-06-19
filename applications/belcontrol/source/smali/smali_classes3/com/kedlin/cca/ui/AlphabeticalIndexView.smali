.class public Lcom/kedlin/cca/ui/AlphabeticalIndexView;
.super Landroid/view/View;
.source ""


# static fields
.field public static final h:I


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/graphics/Paint;

.field public d:Landroid/graphics/Paint;

.field public f:Landroid/graphics/RectF;

.field public g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Loe1;->c(I)I

    move-result v0

    sput v0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->f:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->f:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->f:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->b()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;FF)V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, p2, v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    div-float/2addr p2, v0

    iget-object p1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    mul-float p2, p2, p1

    iget-object p1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    div-float/2addr p3, p1

    mul-float p2, p2, p3

    iget-object p1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->c:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->c:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060203

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->d:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    iget-object v2, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    sget v3, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->h:I

    int-to-float v4, v3

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    int-to-float v0, v3

    :cond_1
    iget-object v3, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->f:Landroid/graphics/RectF;

    iget v4, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->b:I

    add-int/lit8 v5, v4, -0x1

    int-to-float v5, v5

    sub-float/2addr v5, v0

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v6, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->a:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->f:Landroid/graphics/RectF;

    const/4 v4, 0x4

    invoke-static {v4}, Loe1;->c(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Loe1;->c(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const-string v3, "W"

    invoke-virtual {p0, v3, v0, v0}, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->a(Ljava/lang/String;FF)V

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget-char v7, v3, v5

    iget-object v8, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->c:Landroid/graphics/Paint;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v9, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->b:I

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    sub-float/2addr v9, v0

    sub-float v8, v0, v8

    div-float/2addr v8, v1

    add-float/2addr v9, v8

    iget-object v8, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v9, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v6, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p2, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->a:I

    iput p1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->b:I

    return-void
.end method

.method public setAlphabet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/AlphabeticalIndexView;->g:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
