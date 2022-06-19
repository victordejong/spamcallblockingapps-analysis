.class public Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

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

    const v0, 0x7f0d0238

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;->getLayoutResource()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0922

    .line 1056
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f12050a

    .line 1057
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a032e

    .line 1058
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f1202b9

    .line 1059
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    new-instance v0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$1;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$1;-><init>(Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a07e4

    .line 1068
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f120509

    .line 1069
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    new-instance v0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;-><init>(Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x106000d

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method
