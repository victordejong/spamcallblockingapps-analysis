.class public Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;
.super Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;ILcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;-><init>(Ljava/lang/String;[Ljava/lang/Object;IZLcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    return-void
.end method


# virtual methods
.method protected getChosenIndex()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00e4

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 19
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0318

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const v0, 0x7f1204ea

    .line 22
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p2, 0x7f0a0315

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const v0, 0x7f1201a9

    .line 27
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p1
.end method
