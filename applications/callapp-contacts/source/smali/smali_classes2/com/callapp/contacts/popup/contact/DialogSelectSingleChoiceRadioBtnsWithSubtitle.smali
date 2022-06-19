.class public Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithSubtitle;
.super Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;
.source "SourceFile"


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;ILcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;-><init>(Ljava/lang/String;[Ljava/lang/Object;ILcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    .line 16
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithSubtitle;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00e5

    return v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->roundedCenter:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 21
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a08be

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithSubtitle;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0601cc

    .line 24
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method
