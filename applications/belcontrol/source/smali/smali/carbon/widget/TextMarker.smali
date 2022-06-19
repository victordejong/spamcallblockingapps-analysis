.class public Lcarbon/widget/TextMarker;
.super Landroid/view/View;
.source ""


# instance fields
.field public a:Landroid/text/TextPaint;

.field public b:Landroid/graphics/Rect;

.field public c:Landroid/graphics/Rect;

.field public d:Ljava/lang/CharSequence;

.field public f:I

.field public g:I

.field public h:Landroid/text/StaticLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextMarker;->b:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextMarker;->c:Landroid/graphics/Rect;

    const-string p1, "I"

    iput-object p1, p0, Lcarbon/widget/TextMarker;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextMarker;->b:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextMarker;->c:Landroid/graphics/Rect;

    const-string p1, "I"

    iput-object p1, p0, Lcarbon/widget/TextMarker;->d:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcarbon/widget/TextMarker;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextMarker;->b:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcarbon/widget/TextMarker;->c:Landroid/graphics/Rect;

    const-string p1, "I"

    iput-object p1, p0, Lcarbon/widget/TextMarker;->d:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2, p3}, Lcarbon/widget/TextMarker;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp80;->TextMarker:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v1, Lp80;->TextMarker_carbon_text:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcarbon/widget/TextMarker;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget v1, Lp80;->TextMarker_carbon_textView:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcarbon/widget/TextMarker;->f:I

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public getBaseline()I
    .locals 2

    iget v0, p0, Lcarbon/widget/TextMarker;->g:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextMarker;->a:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TextMarker;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget p1, p0, Lcarbon/widget/TextMarker;->f:I

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget p2, p0, Lcarbon/widget/TextMarker;->f:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcarbon/widget/TextMarker;->d:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcarbon/widget/TextMarker;->d:Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcarbon/widget/TextMarker;->a:Landroid/text/TextPaint;

    iget-object p1, p0, Lcarbon/widget/TextMarker;->h:Landroid/text/StaticLayout;

    if-nez p1, :cond_1

    new-instance p1, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcarbon/widget/TextMarker;->d:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcarbon/widget/TextMarker;->a:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lcarbon/widget/TextMarker;->h:Landroid/text/StaticLayout;

    :cond_1
    iget-object p1, p0, Lcarbon/widget/TextMarker;->d:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcarbon/widget/TextMarker;->h:Landroid/text/StaticLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result p2

    invoke-interface {p1, v0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcarbon/widget/TextMarker;->a:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcarbon/widget/TextMarker;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcarbon/widget/TextMarker;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcarbon/widget/TextMarker;->g:I

    iget-object p1, p0, Lcarbon/widget/TextMarker;->b:Landroid/graphics/Rect;

    iget-object p2, p0, Lcarbon/widget/TextMarker;->h:Landroid/text/StaticLayout;

    invoke-virtual {p2, v0}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result p2

    neg-int p2, p2

    iget-object v1, p0, Lcarbon/widget/TextMarker;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcarbon/widget/TextMarker;->d:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcarbon/widget/TextMarker;->h:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result p2

    iget-object v1, p0, Lcarbon/widget/TextMarker;->h:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcarbon/widget/TextMarker;->a:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcarbon/widget/TextMarker;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcarbon/widget/TextMarker;->b:Landroid/graphics/Rect;

    iget-object p2, p0, Lcarbon/widget/TextMarker;->h:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    iget-object v0, p0, Lcarbon/widget/TextMarker;->h:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcarbon/widget/TextMarker;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcarbon/widget/TextMarker;->b:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_2
    return-void
.end method

.method public setPaint(Landroid/text/TextPaint;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/TextMarker;->a:Landroid/text/TextPaint;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/TextMarker;->d:Ljava/lang/CharSequence;

    return-void
.end method
