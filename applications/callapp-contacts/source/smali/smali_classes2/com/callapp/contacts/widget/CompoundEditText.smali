.class public Lcom/callapp/contacts/widget/CompoundEditText;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/CompoundEditText$Attributes;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/EditText;

.field public b:Landroid/text/TextWatcher;

.field c:Lcom/callapp/contacts/widget/CompoundEditText$Attributes;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/CompoundEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;-><init>(Lcom/callapp/contacts/widget/CompoundEditText;Lcom/callapp/contacts/widget/CompoundEditText$1;)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText;->c:Lcom/callapp/contacts/widget/CompoundEditText$Attributes;

    .line 41
    invoke-direct {p0, p2, v0}, Lcom/callapp/contacts/widget/CompoundEditText;->a(Landroid/util/AttributeSet;Lcom/callapp/contacts/widget/CompoundEditText$Attributes;)Lcom/callapp/contacts/widget/CompoundEditText$Attributes;

    .line 42
    iget-object p2, p0, Lcom/callapp/contacts/widget/CompoundEditText;->c:Lcom/callapp/contacts/widget/CompoundEditText$Attributes;

    const-string v0, "layout_inflater"

    .line 1074
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0d0125

    const/4 v1, 0x1

    .line 1075
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a016b

    .line 1077
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/CompoundEditText;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText;->e:Landroid/widget/ImageView;

    const p1, 0x7f0a0112

    .line 1078
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/CompoundEditText;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText;->d:Landroid/view/View;

    const p1, 0x7f0a0372

    .line 1079
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/CompoundEditText;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    .line 1081
    invoke-static {}, Lcom/callapp/contacts/util/ViewUtils;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setId(I)V

    .line 1082
    iget-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    const v0, 0x7f0601ec

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1083
    iget-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    const v0, 0x7f06011a

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1084
    iget-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    invoke-static {p2}, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;->a(Lcom/callapp/contacts/widget/CompoundEditText$Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1085
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    .line 1086
    iget-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1088
    :cond_0
    invoke-static {p2}, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;->b(Lcom/callapp/contacts/widget/CompoundEditText$Attributes;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1089
    iget-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    invoke-static {p2}, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;->b(Lcom/callapp/contacts/widget/CompoundEditText$Attributes;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1092
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    new-instance p2, Lcom/callapp/contacts/widget/CompoundEditText$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/CompoundEditText$1;-><init>(Lcom/callapp/contacts/widget/CompoundEditText;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1125
    iget-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText;->e:Landroid/widget/ImageView;

    new-instance p2, Lcom/callapp/contacts/widget/CompoundEditText$2;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/CompoundEditText$2;-><init>(Lcom/callapp/contacts/widget/CompoundEditText;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/text/TextWatcher;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/widget/CompoundEditText;->b:Landroid/text/TextWatcher;

    return-object p0
.end method

.method private a(Landroid/util/AttributeSet;Lcom/callapp/contacts/widget/CompoundEditText$Attributes;)Lcom/callapp/contacts/widget/CompoundEditText$Attributes;
    .locals 6

    .line 46
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CompoundEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CompoundEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/R$styleable;->compoundEditText:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 53
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown attribute for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "TAG"

    invoke-static {v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;->a(Lcom/callapp/contacts/widget/CompoundEditText$Attributes;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/callapp/contacts/widget/CompoundEditText$Attributes;->a(Lcom/callapp/contacts/widget/CompoundEditText$Attributes;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    :goto_2
    return-object p2
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/view/View;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/widget/CompoundEditText;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/widget/EditText;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/CompoundEditText;)Landroid/widget/ImageView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/widget/CompoundEditText;->e:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 139
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText;->e:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 160
    iget-object v1, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
