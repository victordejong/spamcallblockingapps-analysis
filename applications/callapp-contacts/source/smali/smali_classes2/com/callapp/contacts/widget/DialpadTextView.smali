.class public Lcom/callapp/contacts/widget/DialpadTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# static fields
.field private static c:I

.field private static e:I


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/DialpadTextView;->a:Landroid/graphics/Rect;

    .line 41
    sget p1, Lcom/callapp/contacts/widget/DialpadTextView;->c:I

    if-nez p1, :cond_0

    sget p1, Lcom/callapp/contacts/widget/DialpadTextView;->e:I

    if-nez p1, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/callapp/contacts/widget/DialpadTextView;->a()V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 12

    const-string v0, "*"

    const-string v1, "#"

    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    const-string v6, "4"

    const-string v7, "5"

    const-string v8, "6"

    const-string v9, "7"

    const-string v10, "8"

    const-string v11, "9"

    .line 49
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_2

    .line 50
    aget-object v3, v0, v2

    .line 51
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DialpadTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/callapp/contacts/widget/DialpadTextView;->a:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v1, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 53
    iget-object v3, p0, Lcom/callapp/contacts/widget/DialpadTextView;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/callapp/contacts/widget/DialpadTextView;->c:I

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/callapp/contacts/widget/DialpadTextView;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sput v3, Lcom/callapp/contacts/widget/DialpadTextView;->c:I

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/callapp/contacts/widget/DialpadTextView;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget v4, Lcom/callapp/contacts/widget/DialpadTextView;->e:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/callapp/contacts/widget/DialpadTextView;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sput v3, Lcom/callapp/contacts/widget/DialpadTextView;->e:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 63
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DialpadTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DialpadTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v1, p0, Lcom/callapp/contacts/widget/DialpadTextView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/callapp/contacts/widget/DialpadTextView;->e:I

    iget-object v3, p0, Lcom/callapp/contacts/widget/DialpadTextView;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 72
    iget-object v2, p0, Lcom/callapp/contacts/widget/DialpadTextView;->b:Ljava/lang/String;

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/callapp/contacts/widget/DialpadTextView;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 81
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 82
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DialpadTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/DialpadTextView;->b:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DialpadTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/DialpadTextView;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/widget/DialpadTextView;->a:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 85
    sget v0, Lcom/callapp/contacts/widget/DialpadTextView;->e:I

    invoke-static {v0, p1}, Lcom/callapp/contacts/widget/DialpadTextView;->resolveSize(II)I

    move-result p1

    .line 86
    sget v0, Lcom/callapp/contacts/widget/DialpadTextView;->c:I

    invoke-static {v0, p2}, Lcom/callapp/contacts/widget/DialpadTextView;->resolveSize(II)I

    move-result p2

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/widget/DialpadTextView;->setMeasuredDimension(II)V

    return-void
.end method
