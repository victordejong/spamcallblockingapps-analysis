.class public final synthetic Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$bGx1x2-THmK_vM0tcUSjEoUHzsc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

.field public final synthetic f$1:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$bGx1x2-THmK_vM0tcUSjEoUHzsc;->f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$bGx1x2-THmK_vM0tcUSjEoUHzsc;->f$1:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$bGx1x2-THmK_vM0tcUSjEoUHzsc;->f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$bGx1x2-THmK_vM0tcUSjEoUHzsc;->f$1:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->lambda$bGx1x2-THmK_vM0tcUSjEoUHzsc(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V

    return-void
.end method
