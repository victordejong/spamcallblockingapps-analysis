.class public final synthetic Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$0Zvi7CGE-HIgVrtfgARwSWpzzoU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$0Zvi7CGE-HIgVrtfgARwSWpzzoU;->f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$0Zvi7CGE-HIgVrtfgARwSWpzzoU;->f$0:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    check-cast p1, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->lambda$0Zvi7CGE-HIgVrtfgARwSWpzzoU(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;)V

    return-void
.end method
