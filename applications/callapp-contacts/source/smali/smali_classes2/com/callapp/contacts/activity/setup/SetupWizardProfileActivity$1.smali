.class Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 4

    .line 208
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a()Z

    move-result v0

    .line 209
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getCurrentSetupStage()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->PAY_WALL:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    const-class v2, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    const/16 v2, 0x6e

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->c(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    return-void

    .line 215
    :cond_1
    sget-object v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->CORE_PERMISSIONS:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    new-instance v1, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$1$lev-gcyL2PqHFxyQzwtwoku3rpU;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$1$lev-gcyL2PqHFxyQzwtwoku3rpU;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->b(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->d(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$lev-gcyL2PqHFxyQzwtwoku3rpU(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->b()V

    return-void
.end method

.method public static synthetic lambda$uBytZsdoQ3L4TkpA8BFZx7yhKyQ(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 180
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$1;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 195
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserProfileName()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    new-instance v2, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$2;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1$2;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->a:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    new-instance v1, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$1$uBytZsdoQ3L4TkpA8BFZx7yhKyQ;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$1$uBytZsdoQ3L4TkpA8BFZx7yhKyQ;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
