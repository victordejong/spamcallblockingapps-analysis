.class public Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$c;,
        Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->a:Z

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->a:Z

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->a:Z

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->a:Z

    return p0
.end method


# virtual methods
.method public b()V
    .locals 1

    invoke-virtual {p0, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$a;

    invoke-direct {v0, p0}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$a;-><init>(Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$b;

    invoke-direct {v0, p0}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$b;-><init>(Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v0}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    iput-object v0, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->b:Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    return-void
.end method

.method public getAddresses()[Li91;
    .locals 7

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Li91;

    return-object v0

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v2

    const-class v3, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$c;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$c;

    if-nez v0, :cond_1

    new-array v0, v1, [Li91;

    return-object v0

    :cond_1
    array-length v2, v0

    new-array v2, v2, [Li91;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v5, v0, v1

    add-int/lit8 v6, v4, 0x1

    iget-object v5, v5, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$c;->a:Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;

    iget-object v5, v5, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;->b:Li91;

    aput-object v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->setChips()V

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTextContextMenuItem(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->setChips()V

    return p1
.end method

.method public setChips()V
    .locals 13

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->a:Z

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v0

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v6, 0x0

    if-lez v2, :cond_3

    iget-object v7, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->b:Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-virtual {v7, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    iget-object v7, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->b:Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-virtual {v7, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v7

    const-class v8, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$c;

    invoke-virtual {v3, v2, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$c;

    if-eqz v8, :cond_1

    array-length v9, v8

    if-lez v9, :cond_1

    aget-object v6, v8, v6

    iget-object v6, v6, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$c;->a:Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;

    invoke-interface {v1, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;-><init>(Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;Ljava/lang/String;)V

    :goto_1
    sub-int/2addr v7, v2

    if-lez v7, :cond_2

    iget-object v7, v6, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;->b:Li91;

    invoke-virtual {v7}, Li91;->n()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v6, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;->b:Li91;

    invoke-virtual {v7}, Li91;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v6, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;->b:Li91;

    invoke-virtual {v7}, Li91;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v8, v1, v5

    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0800e3

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0601c6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x4

    invoke-static {v10}, Loe1;->c(I)I

    move-result v10

    invoke-virtual {v9, v10, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v10, 0x2

    sget-object v11, Lr71$a;->x0:Lr71$a;

    invoke-virtual {v11}, Lr71$a;->c()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v10, v8, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v2, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v9, v6, v6, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollY()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v11, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v9}, Landroid/widget/TextView;->buildDrawingCache()V

    invoke-virtual {v9}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_5

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v10, v11, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9}, Landroid/widget/TextView;->destroyDrawingCache()V

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v9, v11, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v9, v6, v6, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    new-instance v10, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$c;

    invoke-direct {v10, p0, v9, v8}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$c;-><init>(Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;Landroid/graphics/drawable/Drawable;Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;)V

    invoke-virtual {v8}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v7

    const/16 v11, 0x21

    invoke-virtual {v3, v10, v7, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    invoke-virtual {v8}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0, v3}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    iput-boolean v6, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->a:Z

    return-void
.end method
