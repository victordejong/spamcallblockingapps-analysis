.class public Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;
.super Lcom/callapp/contacts/util/BaseTransparentActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 2

    .line 1098
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 32
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Login Reminder"

    const-string v1, "Reminder Viewed"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getCurrentSetupStage()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "RegistrationAlmostFinish_notification_open"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;->finish()V

    return-void

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;->b:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;->a:Landroid/view/View;

    if-nez p1, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00d4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;->a:Landroid/view/View;

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;->a:Landroid/view/View;

    const v0, 0x7f0a074d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120623

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity$1;-><init>(Lcom/callapp/contacts/activity/setup/FinishSetupReminderActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
