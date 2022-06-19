.class public Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 31
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "ViewDrawOverAfterOnboardingDialog"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;->a:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    .line 74
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Permissions"

    const-string v1, "ClickDrawOverAfterOnboardingDialogLater"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;->dismiss()V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 2

    .line 64
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Permissions"

    const-string v1, "ClickDrawOverAfterOnboardingDialogAllow"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;->a:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;->onClickListener(Landroid/app/Activity;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$AwXd6Uwc_XQQKStsoRYNnxxeGL8(Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$k4U43RccCXEJ0Ikey5Y21EMzhlA(Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0d00d3

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 44
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;->getLayoutResource()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0779

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f08009c

    .line 46
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    const v1, 0x7f060026

    .line 47
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const p2, 0x7f0a0922

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f1202bd

    .line 50
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0601ec

    .line 51
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a08be

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f1202bc

    .line 54
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/callapp/contacts/util/HtmlUtils;->c(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0601cc

    .line 56
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a06d1

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f060088

    .line 60
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v2, 0x7f08009a

    const/4 v3, 0x0

    invoke-static {p2, v2, v1, v0, v3}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    const v0, 0x7f120355

    .line 62
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v0, Lcom/callapp/contacts/popup/contact/-$$Lambda$DrawOverAppsRequestDialog$k4U43RccCXEJ0Ikey5Y21EMzhlA;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/-$$Lambda$DrawOverAppsRequestDialog$k4U43RccCXEJ0Ikey5Y21EMzhlA;-><init>(Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0624

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f120400

    .line 71
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0600f2

    .line 72
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    new-instance v0, Lcom/callapp/contacts/popup/contact/-$$Lambda$DrawOverAppsRequestDialog$AwXd6Uwc_XQQKStsoRYNnxxeGL8;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/-$$Lambda$DrawOverAppsRequestDialog$AwXd6Uwc_XQQKStsoRYNnxxeGL8;-><init>(Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 1

    const v0, 0x106000d

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 39
    sget-object v0, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;->DARK:Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS;->getValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    return-void
.end method

.method public shouldCanceledOnTouchOutside()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
