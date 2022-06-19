.class public Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$IUserConfirmNumberBeforeFlash;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$IUserConfirmNumberBeforeFlash;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$IUserConfirmNumberBeforeFlash;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;->a:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;->b:Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$IUserConfirmNumberBeforeFlash;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;)Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$IUserConfirmNumberBeforeFlash;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;->b:Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$IUserConfirmNumberBeforeFlash;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismiss()V

    return-void
.end method

.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0d00e7

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;->getLayoutResource()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0922

    .line 1057
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1058
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f120808

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a08ab

    .line 1060
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f120807

    .line 1061
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a064b

    .line 1064
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f1204ea

    .line 1065
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060088

    .line 1066
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1067
    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$1;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$1;-><init>(Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;Landroid/widget/TextView;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0370

    .line 1079
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f1202d5

    .line 1080
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1083
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$2;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$2;-><init>(Lcom/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 1

    const/4 v0, -0x2

    .line 45
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x106000d

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method
