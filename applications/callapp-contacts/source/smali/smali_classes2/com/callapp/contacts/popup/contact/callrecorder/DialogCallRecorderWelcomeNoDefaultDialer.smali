.class public Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;
.super Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

.field private final d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    const v0, 0x7f120826

    .line 34
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;->a:Ljava/lang/CharSequence;

    const v0, 0x7f12081f

    .line 35
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;->b:Ljava/lang/CharSequence;

    .line 37
    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderWelcomeNoDefaultDialer$Z0K4AB-QnBc8FPrBwYUq4XyXG3c;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderWelcomeNoDefaultDialer$Z0K4AB-QnBc8FPrBwYUq4XyXG3c;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;->c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    .line 44
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;->d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Landroid/app/Activity;)V
    .locals 2

    .line 38
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->setDefaults()V

    .line 41
    invoke-interface {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;->onClickListener(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$Z0K4AB-QnBc8FPrBwYUq4XyXG3c(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;->a(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0d00cb

    return v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 103
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->legacyDialogs:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 55
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 57
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

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 50
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f080117

    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f0a0a4d

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0601ec

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0a48

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f060088

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;->c:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    const v0, 0x7f120822

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v3, 0x7f0a0318

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;Z)Landroid/view/View;

    .line 76
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;->d:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    const v0, 0x7f120820

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v3, 0x7f0a0315

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;I)Landroid/view/View;

    const v0, 0x7f0a0318

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0635

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v0, 0x7f0a0639

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120821

    .line 82
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "%X"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<body>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v5, 0x7f120823

    .line 88
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<font color=\"#%s\"><a href=\"callapp-callback://privacypolicy\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f120547

    .line 89
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<a></font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f120824

    .line 90
    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<font color=\"#%s\"><a href=\"callapp-callback://termsosservice\">"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f120030

    .line 91
    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f120825

    .line 92
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</body>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object v0, v2, v1

    .line 87
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    const v1, 0x7f0a005f

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v0, Lcom/callapp/contacts/widget/CustomLinkMovementMethod;

    invoke-direct {v0}, Lcom/callapp/contacts/widget/CustomLinkMovementMethod;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
