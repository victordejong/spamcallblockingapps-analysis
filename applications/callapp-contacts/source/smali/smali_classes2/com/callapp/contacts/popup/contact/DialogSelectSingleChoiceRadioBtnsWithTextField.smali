.class public Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;
.super Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;


# instance fields
.field private final g:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/String;Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p3, p4, v0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;-><init>(Ljava/lang/String;[Ljava/lang/Object;ILcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    .line 16
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    invoke-direct {p1, p6, p2, p5, v0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;-><init>(Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;Ljava/lang/String;Ljava/lang/String;Landroid/text/TextWatcher;)V

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;->g:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    .line 17
    invoke-virtual {p0, p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;->setListener(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;->setDismissOnDone(Z)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;->g:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;->g:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;

    invoke-interface {v0, p0, p1}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;->a(Lcom/callapp/contacts/manager/popup/DialogPopup;I)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;->g:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;->isBottomBarCheckBoxChecked()Z

    move-result v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a(Lcom/callapp/contacts/manager/popup/DialogPopup;IZ)V

    return-void
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 23
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;->g:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    const v0, 0x7f0a03d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a(Lcom/callapp/contacts/widget/CompoundEditText;)V

    const/4 p2, 0x0

    .line 26
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;->setCancelable(Z)V

    return-object p1
.end method

.method public setInputType(I)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField;->g:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->setInputType(I)V

    return-void
.end method
