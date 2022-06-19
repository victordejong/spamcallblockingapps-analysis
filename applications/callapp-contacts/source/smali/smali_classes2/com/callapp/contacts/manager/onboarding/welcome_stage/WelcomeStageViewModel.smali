.class public Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;
.implements Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;


# instance fields
.field public a:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;",
            "[",
            "Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/login/LoginButton;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/login/LoginButton;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->a:Landroidx/lifecycle/t;

    .line 37
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->b:Landroidx/lifecycle/t;

    .line 38
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->c:Landroidx/lifecycle/t;

    .line 39
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->d:Landroidx/lifecycle/t;

    .line 40
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->e:Landroidx/lifecycle/t;

    .line 41
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->f:Landroidx/lifecycle/t;

    .line 42
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->g:Landroidx/lifecycle/t;

    .line 43
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->h:Landroidx/lifecycle/t;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->j:Z

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->i:Ljava/util/List;

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/login/LoginButton;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/widget/login/LoginButton;->setManager(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/Runnable;
    .locals 1

    .line 184
    new-instance v0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/-$$Lambda$WelcomeStageViewModel$qMLhP9uYnjtmhM8yY-0F2dOgO_U;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/-$$Lambda$WelcomeStageViewModel$qMLhP9uYnjtmhM8yY-0F2dOgO_U;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private static synthetic b(Landroid/app/Activity;)V
    .locals 1

    .line 184
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static synthetic lambda$qMLhP9uYnjtmhM8yY-0F2dOgO_U(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->b(Landroid/app/Activity;)V

    return-void
.end method

.method private setButtonsClickable(Z)V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/login/LoginButton;

    .line 137
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$4;-><init>(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Lcom/callapp/contacts/widget/login/LoginButton;Z)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 57
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->getGroupDimension()I

    move-result v0

    .line 58
    const-class v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GroupId: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->setButtonsClickable(Z)V

    .line 61
    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$1;-><init>(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V

    .line 73
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 76
    :cond_0
    new-instance v0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewDataManager;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewDataManager;-><init>()V

    .line 78
    new-instance v1, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$2;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$2;-><init>(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewDataManager;)V

    .line 89
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 91
    new-instance v0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$3;-><init>(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V

    .line 120
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final a(I)V
    .locals 1

    const/16 v0, 0x1d1d

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 217
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->setButtonsClickable(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/widget/login/SocialLoginButton;Ljava/lang/Runnable;)V
    .locals 3

    .line 191
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Saw registration reminder in Setup"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->j:Z

    .line 194
    sget-object v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->WELCOME:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    if-eq p1, v1, :cond_0

    .line 195
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    .line 197
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bz:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rem-int/lit8 p1, p1, 0x4

    .line 198
    sget-object p4, Lcom/callapp/contacts/manager/preferences/Prefs;->bz:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 2039
    invoke-virtual {p4, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    if-eqz p1, :cond_3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 204
    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 205
    invoke-virtual {p3}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->callOnClick()Z

    return-void

    .line 210
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const p2, 0x7f120226

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 2111
    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 201
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->callOnClick()Z

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$TokenHelper;)V
    .locals 4

    .line 167
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->j:Z

    const-string v1, "Registration"

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "Registration success from login reminder"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-interface {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$TokenHelper;->getTokenAndSource()Landroid/util/Pair;

    move-result-object p1

    .line 172
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    iget-object v2, v2, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name:Ljava/lang/String;

    const-string v3, "ConnectLoginSuccess"

    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->h:Landroidx/lifecycle/t;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs a(Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->g:Landroidx/lifecycle/t;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1132
    iget-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/login/LoginButton;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/login/LoginButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->setButtonsClickable(Z)V

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->b:Landroidx/lifecycle/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->e:Landroidx/lifecycle/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 151
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->setButtonsClickable(Z)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->c:Landroidx/lifecycle/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 157
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->setButtonsClickable(Z)V

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x1

    .line 178
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->setButtonsClickable(Z)V

    .line 179
    iget-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->d:Landroidx/lifecycle/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->a(Ljava/lang/Object;)V

    return-void
.end method
