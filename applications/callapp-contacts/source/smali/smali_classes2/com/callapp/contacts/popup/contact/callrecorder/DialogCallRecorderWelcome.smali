.class public Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

.field private final d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    const v0, 0x7f120826

    .line 36
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->a:Ljava/lang/CharSequence;

    const v0, 0x7f12081e

    .line 37
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->b:Ljava/lang/CharSequence;

    .line 39
    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderWelcome$b-uUorCtxEl--4ueFpEGkjo94sE;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderWelcome$b-uUorCtxEl--4ueFpEGkjo94sE;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 58
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 3

    .line 50
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "Call Recording from Consent Dialog - Permission Denied"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;->onClickListener(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Landroid/app/Activity;)V
    .locals 5

    .line 40
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->setDefaults()V

    .line 43
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderWelcome$eB01Mgz926x_roTnVwAnw-2okKY;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderWelcome$eB01Mgz926x_roTnVwAnw-2okKY;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    new-instance v2, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderWelcome$qbtA3Rc_FdpjTk3mpZn0cj9WNVQ;

    invoke-direct {v2, p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderWelcome$qbtA3Rc_FdpjTk3mpZn0cj9WNVQ;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/4 v3, 0x0

    sget-object v4, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->MICROPHONE:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v4, p1, v3

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void

    .line 54
    :cond_0
    invoke-interface {p1, p2}, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;->onClickListener(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic b(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 3

    .line 46
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "Call Recording from Consent Dialog - Permission Granted"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;->onClickListener(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$b-uUorCtxEl--4ueFpEGkjo94sE(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->a(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$eB01Mgz926x_roTnVwAnw-2okKY(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->b(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$qbtA3Rc_FdpjTk3mpZn0cj9WNVQ(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->a(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0d00ca

    return v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 104
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->getLayoutResource()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->setupViews(Landroid/view/View;)V

    .line 71
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string v0, "Call recorders list"

    const-string v1, "Get permission popup show"

    invoke-virtual {p2, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 14

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->a:Ljava/lang/CharSequence;

    const v1, 0x7f0a0a4d

    invoke-virtual {p0, p1, v0, v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->b:Ljava/lang/CharSequence;

    const v1, 0x7f0a0a48

    invoke-virtual {p0, p1, v0, v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    .line 82
    iget-object v4, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    const v0, 0x7f120822

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v5, 0x7f0a0318

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;Z)Landroid/view/View;

    .line 83
    iget-object v10, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    const v0, 0x7f120820

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v0, 0x7f0601cc

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v13

    const v11, 0x7f0a0315

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;I)Landroid/view/View;

    const v0, 0x7f0a0635

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f060088

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v0, 0x7f0a0639

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120821

    .line 86
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601ec

    .line 87
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "%X"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<body>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v6, 0x7f120823

    .line 91
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<font color=\"#%s\"><a href=\"callapp-callback://privacypolicy\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f120547

    .line 92
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<a></font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f120824

    .line 93
    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<font color=\"#%s\"><a href=\"callapp-callback://termsosservice\">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f120030

    .line 94
    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f120825

    .line 95
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</body>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object v0, v3, v2

    .line 90
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    const v2, 0x7f0a005f

    .line 96
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 97
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v0, Lcom/callapp/contacts/widget/CustomLinkMovementMethod;

    invoke-direct {v0}, Lcom/callapp/contacts/widget/CustomLinkMovementMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
