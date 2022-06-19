.class public Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$SimpleDoneDialogListener;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$SimpleDoneDialogListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$SimpleDoneDialogListener;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->a:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->b:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->c:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->d:Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$SimpleDoneDialogListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;)Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$SimpleDoneDialogListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->d:Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$SimpleDoneDialogListener;

    return-object p0
.end method


# virtual methods
.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 119
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const p2, 0x7f0d00c7

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->a:Ljava/lang/String;

    const v0, 0x7f0a0a45

    invoke-virtual {p0, p1, p2, v0}, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    const p2, 0x7f0a0133

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/widget/CompoundEditText;

    const v0, 0x7f12029a

    .line 41
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/CompoundEditText;->setHintText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/CompoundEditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0134

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/CompoundEditText;

    const v1, 0x7f12029b

    .line 45
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CompoundEditText;->setHintText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 49
    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/widget/CompoundEditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/CompoundEditText;->setEnabled(Z)V

    :cond_0
    const v3, 0x7f060088

    .line 53
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    const v4, 0x7f0a0315

    .line 55
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f1201a9

    .line 56
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    new-instance v5, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$1;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$1;-><init>(Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a0318

    .line 65
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f1204ea

    .line 66
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    new-instance v3, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;

    invoke-direct {v3, p0, p2, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;-><init>(Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;Lcom/callapp/contacts/widget/CompoundEditText;Lcom/callapp/contacts/widget/CompoundEditText;Z)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1195
    iget-object p2, p2, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->setCancelable(Z)V

    return-object p1
.end method
