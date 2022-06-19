.class public Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$ActionClick;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$ActionClick;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$ActionClick;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;->a:Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$ActionClick;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;)Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$ActionClick;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;->a:Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$ActionClick;

    return-object p0
.end method


# virtual methods
.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const p2, 0x7f0d019e

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0922

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f12018a

    .line 38
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060088

    .line 39
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a08ad

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f120185

    .line 41
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0086

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f1201d6

    .line 43
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f080588

    .line 44
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 45
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 46
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$1;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0adb

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0805aa

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x106000d

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method
