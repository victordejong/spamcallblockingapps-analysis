.class public abstract Lcom/callapp/contacts/popup/contact/DialogSimple;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/callapp/contacts/popup/contact/DialogSimple;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSimple;->setDialogCustomListener(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    return-void
.end method


# virtual methods
.method protected abstract getDialogLayoutResId()I
.end method

.method protected getNegativeBtnText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getNegativeListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNeutralBtnText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getNeutralListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 47
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method protected getPositiveBtnText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitleResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimple;->getDialogLayoutResId()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSimple;->setupViews(Landroid/view/View;)V

    return-object p1
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 3

    .line 36
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimple;->getTitleResId()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0a45

    invoke-virtual {p0, p1, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogSimple;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    .line 38
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimple;->getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimple;->getPositiveBtnText()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0318

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/callapp/contacts/popup/contact/DialogSimple;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;)Landroid/view/View;

    .line 40
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimple;->getNegativeListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimple;->getNegativeBtnText()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0315

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/callapp/contacts/popup/contact/DialogSimple;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;)Landroid/view/View;

    .line 42
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimple;->getNeutralListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSimple;->getNeutralBtnText()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0317

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/callapp/contacts/popup/contact/DialogSimple;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSimple;->b:Landroid/view/View;

    return-void
.end method
