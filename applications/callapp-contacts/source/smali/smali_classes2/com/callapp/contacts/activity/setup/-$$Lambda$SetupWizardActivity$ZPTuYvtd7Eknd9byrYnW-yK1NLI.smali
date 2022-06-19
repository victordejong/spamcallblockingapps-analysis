.class public final synthetic Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$ZPTuYvtd7Eknd9byrYnW-yK1NLI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

.field public final synthetic f$1:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

.field public final synthetic f$2:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$ZPTuYvtd7Eknd9byrYnW-yK1NLI;->f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$ZPTuYvtd7Eknd9byrYnW-yK1NLI;->f$1:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    iput-object p3, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$ZPTuYvtd7Eknd9byrYnW-yK1NLI;->f$2:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$ZPTuYvtd7Eknd9byrYnW-yK1NLI;->f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$ZPTuYvtd7Eknd9byrYnW-yK1NLI;->f$1:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$ZPTuYvtd7Eknd9byrYnW-yK1NLI;->f$2:Landroid/util/Pair;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->lambda$ZPTuYvtd7Eknd9byrYnW-yK1NLI(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Landroid/util/Pair;Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method
