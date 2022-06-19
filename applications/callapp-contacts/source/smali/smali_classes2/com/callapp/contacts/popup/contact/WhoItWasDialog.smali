.class public Lcom/callapp/contacts/popup/contact/WhoItWasDialog;
.super Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[IIZLcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p8}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[IIZLcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/WhoItWasDialog;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/WhoItWasDialog;->c()V

    return-void
.end method

.method private c()V
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/WhoItWasDialog;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a08cf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 50
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/WhoItWasDialog;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a08d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/WhoItWasDialog;->f:Lcom/callapp/contacts/widget/CallAppCheckBox;

    invoke-virtual {v3}, Lcom/callapp/contacts/widget/CallAppCheckBox;->isChecked()Z

    move-result v3

    .line 52
    iget v4, p0, Lcom/callapp/contacts/popup/contact/WhoItWasDialog;->h:I

    const v5, 0x7f08030d

    if-ne v4, v1, :cond_1

    if-eqz v3, :cond_0

    const v1, 0x7f08030c

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f06001c

    .line 56
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 58
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 60
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 64
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 66
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0601ec

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->a(Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/WhoItWasDialog;->c()V

    return-void
.end method

.method public getCheckBoxText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1202ad

    .line 72
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 25
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/WhoItWasDialog;->f:Lcom/callapp/contacts/widget/CallAppCheckBox;

    new-instance v0, Lcom/callapp/contacts/popup/contact/WhoItWasDialog$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/WhoItWasDialog$1;-><init>(Lcom/callapp/contacts/popup/contact/WhoItWasDialog;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method protected setItemAsChecked(I)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon;->setItemAsChecked(I)V

    .line 45
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/WhoItWasDialog;->c()V

    return-void
.end method
