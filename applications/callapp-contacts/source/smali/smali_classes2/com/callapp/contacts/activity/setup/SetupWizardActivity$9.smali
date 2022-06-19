.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Landroid/util/Pair;Landroid/app/Activity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

.field final synthetic b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$9;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$9;->a:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 499
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getCurrentSetupStage()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->WELCOME:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    if-ne v0, v1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$9;->b:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-static {v0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->a(Landroid/app/Activity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
