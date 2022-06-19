.class Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewDataManager;

.field final synthetic b:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewDataManager;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$2;->b:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    iput-object p2, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$2;->a:Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewDataManager;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$2;->a:Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewDataManager;

    .line 1008
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewDataManager;->getDefaultOnboardingViewData()Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login Page "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;->getScreenPrefixName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "Registration"

    const-string v4, "Saw welcome screen"

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->e(Ljava/lang/String;)Z

    .line 87
    iget-object v1, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$2;->b:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    iget-object v1, v1, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->a:Landroidx/lifecycle/t;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/t;->a(Ljava/lang/Object;)V

    return-void
.end method
