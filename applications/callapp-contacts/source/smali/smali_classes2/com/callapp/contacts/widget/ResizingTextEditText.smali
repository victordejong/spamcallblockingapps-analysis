.class public Lcom/callapp/contacts/widget/ResizingTextEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# static fields
.field private static final f:Landroid/graphics/Typeface;

.field private static final g:Landroid/graphics/Typeface;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sans-serif-regular"

    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/widget/ResizingTextEditText;->f:Landroid/graphics/Typeface;

    const-string v0, "sans-serif-light"

    .line 38
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/widget/ResizingTextEditText;->g:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ResizingTextEditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->a:I

    .line 43
    sget-object v1, Lcom/callapp/contacts/R$styleable;->ResizingText:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    int-to-float p2, v0

    const/4 v1, 0x2

    .line 44
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->b:I

    int-to-float p2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p2, p2, v0

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->c:I

    int-to-float p2, p2

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->d:I

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ResizingTextEditText;->getTextSize()F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->a:I

    .line 57
    sget-object v0, Lcom/callapp/contacts/R$styleable;->ResizingText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    int-to-float p2, p3

    const/4 v0, 0x2

    .line 58
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->b:I

    int-to-float p2, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p2, p2, p3

    const/4 p3, 0x0

    .line 60
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->c:I

    int-to-float p2, p2

    const/4 p3, 0x1

    .line 62
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->d:I

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    iput-boolean p3, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->e:Z

    return-void
.end method

.method private setTextParams(I)V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 85
    sget-object p1, Lcom/callapp/contacts/widget/ResizingTextEditText;->f:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/widget/ResizingTextEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 86
    iget p1, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->c:I

    iget v0, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->d:I

    invoke-static {p0, p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/widget/TextView;II)V

    return-void

    .line 88
    :cond_1
    sget-object p1, Lcom/callapp/contacts/widget/ResizingTextEditText;->g:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/widget/ResizingTextEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 89
    iget p1, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->a:I

    iget v0, p0, Lcom/callapp/contacts/widget/ResizingTextEditText;->b:I

    invoke-static {p0, p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;II)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 77
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ResizingTextEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/ResizingTextEditText;->setTextParams(I)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 71
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/ResizingTextEditText;->setTextParams(I)V

    return-void
.end method
