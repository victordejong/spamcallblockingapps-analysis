.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 11

    const-string v0, "com.callapp.client"

    const-string v1, "com.callapp.client.CallAppApplication"

    .line 607
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    new-instance v10, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v2, 0x7f1200a5

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f1207e9

    .line 611
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f1204ea

    .line 612
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11$1;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11$1;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;)V

    const/4 v8, 0x0

    new-instance v9, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11$2;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11$2;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;)V

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 610
    invoke-virtual {v0, v1, v10}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    goto :goto_0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->f(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    .line 637
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isNativeAppInstalled()Z

    move-result v0

    const-string v1, "Registration"

    if-eqz v0, :cond_1

    .line 638
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "Has Facebook"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->isInstagramAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "Has Instagram"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isNativeAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 646
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "Has twitter"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
