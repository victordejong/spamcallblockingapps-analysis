.class public final synthetic Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$mfIc1-pGEafhaq0p4MfBAGxSD4s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

.field public final synthetic f$1:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$mfIc1-pGEafhaq0p4MfBAGxSD4s;->f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$mfIc1-pGEafhaq0p4MfBAGxSD4s;->f$1:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$mfIc1-pGEafhaq0p4MfBAGxSD4s;->f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$mfIc1-pGEafhaq0p4MfBAGxSD4s;->f$1:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->lambda$mfIc1-pGEafhaq0p4MfBAGxSD4s(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Landroid/util/Pair;)V

    return-void
.end method
