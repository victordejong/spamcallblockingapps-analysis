.class public Lcom/callapp/contacts/widget/CircularTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:I

.field c:I

.field e:Landroid/text/TextPaint;

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/CircularTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/CircularTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/CircularTextView;->h:Landroid/graphics/Paint;

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/CircularTextView;->i:Landroid/graphics/Paint;

    .line 30
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/CircularTextView;->e:Landroid/text/TextPaint;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)I
    .locals 2

    .line 1118
    invoke-static {}, Lcom/callapp/contacts/util/ImageUtils;->getInitialsColors()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1119
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    rem-int/2addr p0, v1

    const v1, -0x777778

    invoke-virtual {v0, p0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/CircularTextView;)Landroid/graphics/Paint;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/callapp/contacts/widget/CircularTextView;->h:Landroid/graphics/Paint;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/widget/CircularTextView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/CircularTextView;Landroid/graphics/Canvas;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/CircularTextView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/callapp/contacts/widget/CircularTextView;->c:I

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/CircularTextView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/callapp/contacts/widget/CircularTextView;->b:I

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/CircularTextView;)Landroid/graphics/Paint;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/callapp/contacts/widget/CircularTextView;->i:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/widget/CircularTextView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/callapp/contacts/widget/CircularTextView;->f:I

    return p0
.end method

.method static synthetic f(Lcom/callapp/contacts/widget/CircularTextView;)Landroid/text/TextPaint;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/callapp/contacts/widget/CircularTextView;->e:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/widget/CircularTextView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/callapp/contacts/widget/CircularTextView;->g:I

    return p0
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/widget/CircularTextView;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setBorder(II)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/callapp/contacts/widget/CircularTextView;->f:I

    .line 124
    iput p2, p0, Lcom/callapp/contacts/widget/CircularTextView;->g:I

    .line 125
    invoke-direct {p0}, Lcom/callapp/contacts/widget/CircularTextView;->a()V

    return-void
.end method

.method public setLetterText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/CircularTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-direct {p0}, Lcom/callapp/contacts/widget/CircularTextView;->a()V

    return-void
.end method
