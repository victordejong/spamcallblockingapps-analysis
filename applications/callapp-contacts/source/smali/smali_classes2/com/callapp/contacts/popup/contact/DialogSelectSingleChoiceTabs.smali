.class public Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;
.super Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;
.source "SourceFile"


# instance fields
.field protected g:Landroid/view/ViewGroup;

.field protected h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;IZLcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;-><init>(Ljava/lang/String;[Ljava/lang/Object;IZLcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 3

    const v0, 0x7f0a08d5

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->g:Landroid/view/ViewGroup;

    .line 50
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->b:[Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const v1, 0x7f0d012a

    .line 52
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->b:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    .line 55
    new-instance v2, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs$1;-><init>(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->c:I

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->setItemAsChecked(I)V

    .line 66
    iget p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->c:I

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->c(I)V

    return-void
.end method

.method protected getChosenIndex()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->h:I

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00e6

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 29
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0318

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const v0, 0x7f1204ea

    .line 32
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p2, 0x7f0a0315

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const v0, 0x7f1201a9

    .line 37
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const p2, 0x7f0a03d1

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/widget/CompoundEditText;

    if-eqz p2, :cond_2

    const v0, 0x7f1206e6

    .line 41
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/CompoundEditText;->setHintText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p1
.end method

.method protected setItemAsChecked(I)V
    .locals 4

    .line 75
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->h:I

    .line 77
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->c(I)V

    const/4 v0, 0x0

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    .line 83
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f060026

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 84
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f060088

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 87
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f0600f3

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 88
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f0601ec

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
