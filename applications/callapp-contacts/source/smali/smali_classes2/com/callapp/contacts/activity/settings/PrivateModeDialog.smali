.class public Lcom/callapp/contacts/activity/settings/PrivateModeDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/PrivateModeDialog;->a:Lcom/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode;

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/settings/PrivateModeDialog;->setCancelable(Z)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/PrivateModeDialog;)Lcom/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/PrivateModeDialog;->a:Lcom/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode;

    return-object p0
.end method


# virtual methods
.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const p2, 0x7f0d00dd

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f060244

    .line 39
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;I)V

    const p2, 0x7f0a0922

    .line 1045
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0a02f9

    .line 1046
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0318

    .line 1047
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0316

    .line 1048
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f12054c

    .line 1050
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f12054a

    .line 1051
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f1204ea

    .line 1052
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f1201e3

    .line 1053
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f06010e

    .line 1055
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1056
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f060231

    .line 1057
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f06010f

    .line 1058
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1059
    new-instance p2, Lcom/callapp/contacts/activity/settings/PrivateModeDialog$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/settings/PrivateModeDialog$1;-><init>(Lcom/callapp/contacts/activity/settings/PrivateModeDialog;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1070
    new-instance p2, Lcom/callapp/contacts/activity/settings/PrivateModeDialog$2;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/settings/PrivateModeDialog$2;-><init>(Lcom/callapp/contacts/activity/settings/PrivateModeDialog;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
