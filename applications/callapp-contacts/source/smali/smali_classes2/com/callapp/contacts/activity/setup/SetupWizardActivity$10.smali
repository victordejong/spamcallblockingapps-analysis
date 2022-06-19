.class Lcom/callapp/contacts/activity/setup/SetupWizardActivity$10;
.super Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;)V
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

    .line 513
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$10;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 516
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$10;->a:Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->l(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
