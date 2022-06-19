.class public Lcom/callapp/contacts/popup/contact/DialogEditText;
.super Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;-><init>()V

    .line 26
    iput p1, p0, Lcom/callapp/contacts/popup/contact/DialogEditText;->c:I

    .line 27
    iput p4, p0, Lcom/callapp/contacts/popup/contact/DialogEditText;->d:I

    .line 28
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    new-instance p4, Lcom/callapp/contacts/popup/contact/DialogEditText$1;

    invoke-direct {p4, p0, p2}, Lcom/callapp/contacts/popup/contact/DialogEditText$1;-><init>(Lcom/callapp/contacts/popup/contact/DialogEditText;Ljava/lang/String;)V

    invoke-direct {p1, p5, p3, p2, p4}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;-><init>(Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;Ljava/lang/String;Ljava/lang/String;Landroid/text/TextWatcher;)V

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogEditText;->a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/DialogEditText;)Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogEditText;->a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    return-object p0
.end method


# virtual methods
.method public dismissOnBtnClicked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getContentResId()I
    .locals 1

    const v0, 0x7f0d009e

    return v0
.end method

.method protected getNegativeBtnText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1201e3

    .line 80
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNegativeListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    .line 85
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogEditText$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/DialogEditText$3;-><init>(Lcom/callapp/contacts/popup/contact/DialogEditText;)V

    return-object v0
.end method

.method protected getNeutralBtnText()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogEditText;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogEditText;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    const v0, 0x7f12068d

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNeutralListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    .line 61
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogEditText$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/DialogEditText$2;-><init>(Lcom/callapp/contacts/popup/contact/DialogEditText;)V

    return-object v0
.end method

.method protected getTitleResId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogEditText;->c:I

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 51
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a025b

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/widget/CompoundEditText;

    const v0, 0x7f12029a

    .line 53
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/CompoundEditText;->setHintText(Ljava/lang/CharSequence;)V

    .line 54
    iget v0, p0, Lcom/callapp/contacts/popup/contact/DialogEditText;->d:I

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/CompoundEditText;->setInputType(I)V

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogEditText;->a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a(Lcom/callapp/contacts/widget/CompoundEditText;)V

    return-object p1
.end method

.method public setNeutralBtnText(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogEditText;->e:Ljava/lang/String;

    return-void
.end method
