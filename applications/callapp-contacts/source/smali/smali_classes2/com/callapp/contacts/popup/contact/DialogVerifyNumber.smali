.class public Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/String;

.field private c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

.field private d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->a:Ljava/lang/CharSequence;

    .line 15
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->b:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 17
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 18
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->e:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->f:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->a:Ljava/lang/CharSequence;

    .line 23
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->e:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->f:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 26
    iput-object p5, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    const v0, 0x7f0d00e8

    return v0
.end method

.method protected getMessage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected getNegativeBtnText()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected getNegativeListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-object v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 53
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method protected getPositiveBtnText()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-object v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->getLayoutResId()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->setupViews(Landroid/view/View;)V

    return-object p1
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 14

    .line 42
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0a0a45

    invoke-virtual {p0, p1, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0a48

    invoke-virtual {p0, p1, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    .line 46
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    move-result-object v4

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->getPositiveBtnText()Ljava/lang/String;

    move-result-object v6

    const v5, 0x7f0a0318

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;Z)Landroid/view/View;

    .line 48
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->getNegativeListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    move-result-object v10

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->getNegativeBtnText()Ljava/lang/String;

    move-result-object v12

    const v11, 0x7f0a0315

    const/4 v13, 0x0

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumber;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;I)Landroid/view/View;

    return-void
.end method
