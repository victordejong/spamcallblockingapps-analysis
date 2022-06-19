.class public Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 43
    new-instance v0, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$2;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method private setupViews(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0601ec

    .line 93
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f060088

    .line 94
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const v2, 0x7f0601cc

    .line 95
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const v3, 0x7f0a0922

    .line 97
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a02a5

    .line 98
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 99
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v5, 0x7f120703

    .line 100
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f1206fa

    .line 102
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a064c

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f1204ea

    .line 107
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v1, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$3;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a062c

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 118
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f1204d2

    .line 119
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v0, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$4;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 136
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 84
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string v0, "Optimize contacts"

    const-string v1, "Optimize contacts popup shown"

    invoke-virtual {p2, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f0d00d5

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;->setupViews(Landroid/view/View;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public shouldCanceledOnTouchOutside()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
