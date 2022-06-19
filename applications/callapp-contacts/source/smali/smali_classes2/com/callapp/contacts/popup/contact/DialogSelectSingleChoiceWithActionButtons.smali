.class public abstract Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;
.super Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;IZLcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;-><init>(Ljava/lang/String;[Ljava/lang/Object;IZLcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    return-void
.end method


# virtual methods
.method protected getCheckedChangeListener()Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .locals 1

    .line 48
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons$3;-><init>(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;)V

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 21
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f060088

    .line 22
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    const v0, 0x7f0a0315

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1201a9

    .line 24
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons$1;-><init>(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0318

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1204ea

    .line 34
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    new-instance p2, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons$2;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons$2;-><init>(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
