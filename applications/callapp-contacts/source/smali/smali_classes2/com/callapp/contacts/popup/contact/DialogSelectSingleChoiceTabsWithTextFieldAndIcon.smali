.class public Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;
.super Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;
.source "SourceFile"


# instance fields
.field protected i:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[IIZLcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    .line 19
    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;IZLcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V

    move-object v1, p5

    .line 20
    iput-object v1, v0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->i:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[IIZLjava/lang/String;Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 24
    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;IZLjava/lang/String;Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V

    move-object v1, p4

    .line 25
    iput-object v1, v0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->i:[I

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 5

    const v0, 0x7f0a08d5

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->g:Landroid/view/ViewGroup;

    .line 31
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->b:[Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const v1, 0x7f0d012b

    .line 34
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    const v2, 0x7f0a08d2

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a08cf

    .line 38
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 39
    iget-object v4, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->b:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->i:[I

    aget v2, v2, v0

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 42
    new-instance v2, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon$1;-><init>(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->c:I

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->setItemAsChecked(I)V

    .line 53
    iget p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->c:I

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->c(I)V

    return-void
.end method

.method protected setItemAsChecked(I)V
    .locals 6

    .line 58
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->h:I

    .line 60
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->c(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a08d2

    .line 64
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a08cf

    .line 65
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-ne v1, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 67
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    if-ne v1, p1, :cond_1

    .line 71
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const v5, 0x7f060026

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v4, 0x7f060088

    invoke-static {v2, v4}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 75
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const v5, 0x7f0600f3

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v4, 0x7f0601ec

    invoke-static {v2, v4}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
