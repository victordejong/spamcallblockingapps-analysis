.class public Lcarbon/widget/AutoCompleteEditText;
.super Lcarbon/widget/EditText;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/AutoCompleteEditText$d;,
        Lcarbon/widget/AutoCompleteEditText$e;,
        Lcarbon/widget/AutoCompleteEditText$b;,
        Lcarbon/widget/AutoCompleteEditText$c;,
        Lcarbon/widget/AutoCompleteEditText$HintSpan;
    }
.end annotation


# instance fields
.field public A0:Lcarbon/widget/AutoCompleteEditText$d;

.field public B0:Ljava/lang/String;

.field public C0:Landroid/text/TextWatcher;

.field public D0:Lcarbon/widget/AutoCompleteEditText$b;

.field public E0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcarbon/widget/AutoCompleteEditText$c;",
            ">;"
        }
    .end annotation
.end field

.field public y0:Z

.field public z0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/AutoCompleteEditText;->y0:Z

    const-string p1, ""

    iput-object p1, p0, Lcarbon/widget/AutoCompleteEditText;->B0:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/AutoCompleteEditText;->E0:Ljava/util/List;

    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteEditText;->S()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcarbon/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/AutoCompleteEditText;->y0:Z

    const-string p1, ""

    iput-object p1, p0, Lcarbon/widget/AutoCompleteEditText;->B0:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/AutoCompleteEditText;->E0:Ljava/util/List;

    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteEditText;->S()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/widget/AutoCompleteEditText;->y0:Z

    const-string p1, ""

    iput-object p1, p0, Lcarbon/widget/AutoCompleteEditText;->B0:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/AutoCompleteEditText;->E0:Ljava/util/List;

    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteEditText;->S()V

    return-void
.end method

.method public static synthetic K(Lcarbon/widget/AutoCompleteEditText;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/AutoCompleteEditText;->B0:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic L(Lcarbon/widget/AutoCompleteEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcarbon/widget/AutoCompleteEditText;->B0:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic M(Lcarbon/widget/AutoCompleteEditText;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteEditText;->P()V

    return-void
.end method

.method public static synthetic N(Lcarbon/widget/AutoCompleteEditText;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void
.end method

.method public static synthetic O(Lcarbon/widget/AutoCompleteEditText;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void
.end method

.method private synthetic T(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_3

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcarbon/widget/AutoCompleteEditText;->y0:Z

    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v0

    const-class v1, Lcarbon/widget/AutoCompleteEditText$HintSpan;

    invoke-interface {p3, p1, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcarbon/widget/AutoCompleteEditText$HintSpan;

    array-length v1, v0

    if-gt v1, p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {p3, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ne p2, v4, :cond_0

    invoke-interface {p3, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setSelection(I)V

    iget p2, p0, Lcarbon/widget/AutoCompleteEditText;->z0:I

    invoke-static {p0, p2}, Lcarbon/widget/AutoCompleteEditText;->O(Lcarbon/widget/AutoCompleteEditText;I)V

    iput-boolean p1, p0, Lcarbon/widget/AutoCompleteEditText;->y0:Z

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "more than one HintSpan"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return p1
.end method

.method private getCurrentWord()Lcarbon/widget/AutoCompleteEditText$e;
    .locals 8

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    new-instance v3, Lcarbon/widget/AutoCompleteEditText$e;

    invoke-direct {v3}, Lcarbon/widget/AutoCompleteEditText$e;-><init>()V

    add-int/lit8 v4, v0, -0x1

    :goto_0
    if-ltz v4, :cond_2

    invoke-interface {v1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    invoke-interface {v1, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcarbon/widget/AutoCompleteEditText$e;->a:Ljava/lang/String;

    move v4, v0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v5

    const-class v6, Lcarbon/widget/AutoCompleteEditText$HintSpan;

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcarbon/widget/AutoCompleteEditText$HintSpan;

    array-length v6, v5

    if-lez v6, :cond_5

    aget-object v0, v5, v7

    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    :cond_5
    invoke-interface {v1, v0, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcarbon/widget/AutoCompleteEditText$e;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lcarbon/widget/AutoCompleteEditText$e;->a()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-interface {v1, v0, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-object v2

    :cond_6
    return-object v3
.end method


# virtual methods
.method public final P()V
    .locals 9

    iget-object v0, p0, Lcarbon/widget/AutoCompleteEditText;->D0:Lcarbon/widget/AutoCompleteEditText$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-boolean v1, p0, Lcarbon/widget/AutoCompleteEditText;->y0:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v1

    const-class v2, Lcarbon/widget/AutoCompleteEditText$HintSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcarbon/widget/AutoCompleteEditText$HintSpan;

    array-length v2, v1

    const/4 v4, 0x1

    if-gt v2, v4, :cond_7

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v5

    if-eq v2, v5, :cond_2

    return-void

    :cond_2
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v1, v6

    invoke-interface {v0, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v0, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v8, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcarbon/widget/AutoCompleteEditText;->getCurrentWord()Lcarbon/widget/AutoCompleteEditText$e;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcarbon/widget/AutoCompleteEditText$e;->a()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v4, p0, Lcarbon/widget/AutoCompleteEditText;->y0:Z

    invoke-virtual {p0, v1}, Lcarbon/widget/AutoCompleteEditText;->Q(Lcarbon/widget/AutoCompleteEditText$e;)V

    iget-object v4, p0, Lcarbon/widget/AutoCompleteEditText;->E0:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcarbon/widget/AutoCompleteEditText;->R(Ljava/util/List;)V

    iget-object v4, p0, Lcarbon/widget/AutoCompleteEditText;->E0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcarbon/widget/AutoCompleteEditText;->E0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcarbon/widget/AutoCompleteEditText$c;

    iget v4, v4, Lcarbon/widget/AutoCompleteEditText$c;->a:I

    if-nez v4, :cond_5

    iget-object v4, p0, Lcarbon/widget/AutoCompleteEditText;->E0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcarbon/widget/AutoCompleteEditText$c;

    iget-object v4, v4, Lcarbon/widget/AutoCompleteEditText$c;->b:Landroid/text/Spannable;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lcarbon/widget/AutoCompleteEditText$e;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    new-instance v4, Lcarbon/widget/AutoCompleteEditText$HintSpan;

    invoke-virtual {p0}, Landroid/widget/EditText;->getCurrentHintTextColor()I

    move-result v5

    invoke-direct {v4, v5}, Lcarbon/widget/AutoCompleteEditText$HintSpan;-><init>(I)V

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    const/16 v5, 0x21

    invoke-interface {v0, v4, v2, v1, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcarbon/widget/AutoCompleteEditText;->N(Lcarbon/widget/AutoCompleteEditText;I)V

    :cond_5
    iput-boolean v3, p0, Lcarbon/widget/AutoCompleteEditText;->y0:Z

    return-void

    :cond_6
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcarbon/widget/AutoCompleteEditText;->R(Ljava/util/List;)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "more than one HintSpan"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Q(Lcarbon/widget/AutoCompleteEditText$e;)V
    .locals 3

    iget-object v0, p0, Lcarbon/widget/AutoCompleteEditText;->E0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcarbon/widget/AutoCompleteEditText$e;->a()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcarbon/widget/AutoCompleteEditText$e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcarbon/widget/AutoCompleteEditText;->D0:Lcarbon/widget/AutoCompleteEditText$b;

    invoke-interface {v2}, Lcarbon/widget/AutoCompleteEditText$b;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcarbon/widget/AutoCompleteEditText;->D0:Lcarbon/widget/AutoCompleteEditText$b;

    invoke-interface {v2, v1}, Lcarbon/widget/AutoCompleteEditText$b;->a(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcarbon/widget/AutoCompleteEditText;->V(Lcarbon/widget/AutoCompleteEditText$e;Ljava/lang/String;I[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcarbon/widget/AutoCompleteEditText;->E0:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public final R(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcarbon/widget/AutoCompleteEditText$c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcarbon/widget/AutoCompleteEditText;->A0:Lcarbon/widget/AutoCompleteEditText$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcarbon/widget/AutoCompleteEditText$d;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final S()V
    .locals 1

    new-instance v0, Lcarbon/widget/AutoCompleteEditText$a;

    invoke-direct {v0, p0}, Lcarbon/widget/AutoCompleteEditText$a;-><init>(Lcarbon/widget/AutoCompleteEditText;)V

    iput-object v0, p0, Lcarbon/widget/AutoCompleteEditText;->C0:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lne0;

    invoke-direct {v0, p0}, Lne0;-><init>(Lcarbon/widget/AutoCompleteEditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public synthetic U(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/AutoCompleteEditText;->T(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final V(Lcarbon/widget/AutoCompleteEditText$e;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_3

    aget-object v2, p4, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Lcarbon/widget/AutoCompleteEditText$e;->a()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcarbon/widget/AutoCompleteEditText$e;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance p4, Lcarbon/widget/AutoCompleteEditText$HintSpan;

    invoke-virtual {p0}, Landroid/widget/EditText;->getCurrentHintTextColor()I

    move-result v1

    invoke-direct {p4, v1}, Lcarbon/widget/AutoCompleteEditText$HintSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-interface {p1, p4, p2, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object p2, p0, Lcarbon/widget/AutoCompleteEditText;->E0:Ljava/util/List;

    new-instance p4, Lcarbon/widget/AutoCompleteEditText$c;

    iget-object v1, p0, Lcarbon/widget/AutoCompleteEditText;->D0:Lcarbon/widget/AutoCompleteEditText$b;

    invoke-interface {v1, p3}, Lcarbon/widget/AutoCompleteEditText$b;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p4, v0, p1, p3}, Lcarbon/widget/AutoCompleteEditText$c;-><init>(ILandroid/text/Spannable;Ljava/lang/Object;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {p0, v2, p1}, Lcarbon/widget/AutoCompleteEditText;->W(Ljava/lang/String;Lcarbon/widget/AutoCompleteEditText$e;)Landroid/text/Spannable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcarbon/widget/AutoCompleteEditText;->E0:Ljava/util/List;

    new-instance p2, Lcarbon/widget/AutoCompleteEditText$c;

    iget-object p4, p0, Lcarbon/widget/AutoCompleteEditText;->D0:Lcarbon/widget/AutoCompleteEditText$b;

    invoke-interface {p4, p3}, Lcarbon/widget/AutoCompleteEditText$b;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p2, p4, v2, p3}, Lcarbon/widget/AutoCompleteEditText$c;-><init>(ILandroid/text/Spannable;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final W(Ljava/lang/String;Lcarbon/widget/AutoCompleteEditText$e;)Landroid/text/Spannable;
    .locals 6

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcarbon/widget/AutoCompleteEditText$e;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    if-ge v1, v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v3, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    new-instance v3, Lcarbon/widget/AutoCompleteEditText$HintSpan;

    invoke-virtual {p0}, Landroid/widget/EditText;->getCurrentHintTextColor()I

    move-result v5

    invoke-direct {v3, v5}, Lcarbon/widget/AutoCompleteEditText$HintSpan;-><init>(I)V

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v0, v3, v1, v5, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lcarbon/widget/AutoCompleteEditText$HintSpan;

    invoke-virtual {p0}, Landroid/widget/EditText;->getCurrentHintTextColor()I

    move-result v5

    invoke-direct {v3, v5}, Lcarbon/widget/AutoCompleteEditText$HintSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-interface {v0, v3, v1, p1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v2, p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public X(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v2

    const-class v3, Lcarbon/widget/AutoCompleteEditText$HintSpan;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcarbon/widget/AutoCompleteEditText$HintSpan;

    array-length v2, v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    invoke-direct {p0}, Lcarbon/widget/AutoCompleteEditText;->getCurrentWord()Lcarbon/widget/AutoCompleteEditText$e;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcarbon/widget/AutoCompleteEditText;->y0:Z

    iget-object v3, v2, Lcarbon/widget/AutoCompleteEditText$e;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v1, v0, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object v3, v2, Lcarbon/widget/AutoCompleteEditText$e;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v0, v3

    invoke-interface {v1, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget-object v3, v2, Lcarbon/widget/AutoCompleteEditText$e;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v0, v3

    invoke-interface {v1, v3, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v1, v2, Lcarbon/widget/AutoCompleteEditText$e;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcarbon/widget/AutoCompleteEditText;->R(Ljava/util/List;)V

    iget p1, p0, Lcarbon/widget/AutoCompleteEditText;->z0:I

    invoke-super {p0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    iput-boolean v4, p0, Lcarbon/widget/AutoCompleteEditText;->y0:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no word to complete"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "more than one HintSpan"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFilteredItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcarbon/widget/AutoCompleteEditText$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcarbon/widget/AutoCompleteEditText;->E0:Ljava/util/List;

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public onSelectionChanged(II)V
    .locals 5

    iget-boolean v0, p0, Lcarbon/widget/AutoCompleteEditText;->y0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v2

    const-class v3, Lcarbon/widget/AutoCompleteEditText$HintSpan;

    invoke-interface {v1, v0, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcarbon/widget/AutoCompleteEditText$HintSpan;

    array-length v3, v2

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    iput-boolean v4, p0, Lcarbon/widget/AutoCompleteEditText;->y0:Z

    array-length v3, v2

    if-ne v3, v4, :cond_3

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-lt p1, v3, :cond_1

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ge p1, v3, :cond_1

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ne p1, v3, :cond_3

    invoke-interface {v1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    iget v1, p0, Lcarbon/widget/AutoCompleteEditText;->z0:I

    invoke-super {p0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "more than one HintSpan"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteEditText;->P()V

    iput-boolean v0, p0, Lcarbon/widget/AutoCompleteEditText;->y0:Z

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    return-void
.end method

.method public setDataProvider(Lcarbon/widget/AutoCompleteEditText$b;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/AutoCompleteEditText;->D0:Lcarbon/widget/AutoCompleteEditText$b;

    return-void
.end method

.method public setImeOptions(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    iput p1, p0, Lcarbon/widget/AutoCompleteEditText;->z0:I

    return-void
.end method

.method public setOnFilterListener(Lcarbon/widget/AutoCompleteEditText$d;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/AutoCompleteEditText;->A0:Lcarbon/widget/AutoCompleteEditText$d;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcarbon/widget/AutoCompleteEditText;->B0:Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lcarbon/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
