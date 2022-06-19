.class public Lcom/callapp/contacts/activity/setup/SetupWizardActivity;
.super Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/setup/SetupWizardActivity$TokenHelper;,
        Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field private b:Ljava/lang/Boolean;

.field private c:Landroid/view/View;

.field private d:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

.field private e:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

.field private f:Lcom/callapp/contacts/widget/login/SocialLoginButton;

.field private g:Lcom/callapp/contacts/widget/login/SocialLoginButton;

.field private h:Lcom/callapp/contacts/widget/login/SocialLoginButton;

.field private j:Landroid/view/View;

.field private k:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Lcom/callapp/contacts/widget/login/LoginButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->b:Ljava/lang/Boolean;

    .line 128
    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->m:Z

    .line 139
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    .line 1060
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Registration"

    const-string v2, "Successfuly completed social network screen"

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    new-instance p1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$19;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$19;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    .line 1071
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$19;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1073
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->g()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "CAME_FROM_SETUP_REMINDER_KEY"

    const/4 v1, 0x0

    .line 592
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 593
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->k:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getCurrentSetupStage()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->f:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->g:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    new-instance v3, Lcom/callapp/contacts/activity/setup/-$$Lambda$I4IVNbvvfNUWaY3Y6LcrXGXp6AA;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$I4IVNbvvfNUWaY3Y6LcrXGXp6AA;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/widget/login/SocialLoginButton;Ljava/lang/Runnable;)V

    return-void

    .line 596
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bq:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 597
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/NotificationManager;->a()V

    :cond_1
    return-void
.end method

.method private synthetic a(Landroid/util/Pair;)V
    .locals 4

    .line 523
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h()V

    .line 524
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fK:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 525
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {v1}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->getNumRep()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 526
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 528
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "skipSocialNetwork"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 532
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    .line 3554
    sget-object v1, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->FACEBOOK:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->VK:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->USER_GOOGLE:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 534
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    const-string v0, "onlyNativeSocialLogin"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p1

    .line 3560
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isNativeAppInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->isNativeAppInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isNativeAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    .line 539
    :cond_3
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->g()V

    return-void

    .line 537
    :cond_4
    :goto_1
    sget-object p1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->LINK_SOCIAL_NETWORKS:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-direct {p0, p1, v3}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;Z)V

    return-void

    .line 542
    :cond_5
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->USER_GOOGLE:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    if-ne p1, v0, :cond_6

    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->isLoggedIn()Z

    move-result p1

    if-nez p1, :cond_6

    .line 543
    sget-object p1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->LINK_SOCIAL_NETWORKS:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-direct {p0, p1, v3}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;Z)V

    return-void

    .line 545
    :cond_6
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->g()V

    :cond_7
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 761
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->o:Lcom/callapp/contacts/widget/login/LoginButton;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/login/LoginButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 762
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->o:Lcom/callapp/contacts/widget/login/LoginButton;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/login/LoginButton;->callOnClick()Z

    :cond_0
    return-void
.end method

.method private a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;Z)V
    .locals 3

    .line 672
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    .line 673
    sget-object v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$20;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    .line 686
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e()V

    .line 687
    sget-object p2, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->WELCOME:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    .line 688
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Illegal view in SetupWizardActivity"

    invoke-virtual {p2, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Illegal viewId ord: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "initView"

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->finish()V

    return-void

    .line 678
    :cond_1
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->d()V

    .line 679
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Z)V

    return-void

    .line 675
    :cond_2
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;I)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;ILcom/callapp/contacts/manager/popup/PopupDoneListener;)V
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 4960
    invoke-interface {p2, p0}, Lcom/callapp/contacts/manager/popup/PopupDoneListener;->popupDone(Z)V

    :cond_0
    return-void

    .line 4956
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/callapp/contacts/popup/FollowCallAppPopup;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 4953
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/callapp/contacts/popup/FollowCallAppPopup;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Landroid/content/Intent;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;)V
    .locals 2

    if-eqz p1, :cond_1

    const v0, 0x7f060244

    .line 508
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setWelcomeScreenTexts(I)V

    const v0, 0x7f0a07ee

    .line 509
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 3799
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;->getScreenBackground()I

    move-result p1

    goto :goto_0

    .line 3801
    :cond_0
    new-instance p1, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewDataManager;

    invoke-direct {p1}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewDataManager;-><init>()V

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewDataManager;->getDefaultOnboardingViewData()Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;->getScreenBackground()I

    move-result p1

    .line 509
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x2ee

    .line 512
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 513
    new-instance v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$10;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$10;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 519
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V
    .locals 1

    .line 488
    new-instance v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$8;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/PowerUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Landroid/util/Pair;)V
    .locals 1

    .line 483
    new-instance v0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$ZPTuYvtd7Eknd9byrYnW-yK1NLI;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$ZPTuYvtd7Eknd9byrYnW-yK1NLI;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Landroid/util/Pair;)V

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Landroid/util/Pair;Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 6

    .line 484
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result p3

    const-string p4, "true"

    const-string p5, "false"

    if-eqz p3, :cond_0

    move-object v3, p4

    goto :goto_0

    :cond_0
    move-object v3, p5

    :goto_0
    const-wide/16 v4, 0x0

    const-string v1, "Permissions"

    const-string v2, "Default dailer from setup phone auth"

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 486
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p6

    invoke-virtual {p6}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result p6

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move-object p4, p5

    :goto_1
    const-string p5, "Permissions"

    const-string p6, "Default dialer"

    invoke-virtual {p3, p5, p6, p4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->g()V

    .line 488
    new-instance p3, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$bGx1x2-THmK_vM0tcUSjEoUHzsc;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$bGx1x2-THmK_vM0tcUSjEoUHzsc;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V

    .line 496
    new-instance p4, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$9;

    invoke-direct {p4, p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$9;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V

    .line 504
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getPermissionManager()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object p1

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    invoke-virtual {p1, p0, p3, p4, p2}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Void;)V
    .locals 2

    .line 480
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h()V

    .line 481
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f120530

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4111
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .line 806
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Saw Social Networks screen"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "Social_Networks_Screen_N"

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->e(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 808
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->showActionBar(Z)V

    .line 810
    sget-object v3, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->LINK_SOCIAL_NETWORKS:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v3}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    .line 812
    iget-object v3, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->d:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->setIsFromSetup(Z)V

    .line 813
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->fL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->fromNumRep(I)Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    move-result-object v3

    .line 814
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    iget-object v3, v3, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name:Ljava/lang/String;

    invoke-virtual {v4, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->d:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getDialogTheme()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->setDialogTheme(I)V

    .line 817
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->d:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->b()V

    .line 819
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "onlyNativeSocialLogin"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->d:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->c()V

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->d:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a()V

    .line 826
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->d:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    new-instance v2, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$15;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->setNetworkConnectionActionListener(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$NetworkConnectionActionListener;)V

    const v1, 0x7f0a07eb

    .line 871
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f12000f

    .line 872
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f060088

    .line 873
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a07ea

    .line 875
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f12007e

    .line 876
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0601ec

    .line 877
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a084f

    .line 880
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f1202c0

    .line 881
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 884
    new-instance v2, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$16;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$16;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 893
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->j:Landroid/view/View;

    if-nez v1, :cond_1

    const v1, 0x7f0a0ac5

    .line 894
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->j:Landroid/view/View;

    :cond_1
    const v1, 0x7f0a0acb

    .line 897
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0acc

    .line 898
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 900
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0aca

    .line 902
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 904
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const v4, 0x7f060026

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v3, 0x8

    if-eqz p1, :cond_2

    .line 906
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v4, 0x1f4

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v4, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$17;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$17;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v4, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->j:Landroid/view/View;

    .line 924
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x64

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    const p1, 0x7f01002e

    .line 926
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 927
    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 928
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 930
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->j:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 931
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a087b

    .line 932
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getStatusBarHeight()I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 933
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 934
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :goto_0
    const p1, 0x7f0a0ac8

    .line 937
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 938
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 940
    new-instance p1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$18;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$18;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    .line 947
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$18;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 1136
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getCurrentSetupStage()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v0

    sget-object v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->CORE_PERMISSIONS:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->m:Z

    return p0
.end method

.method private b()V
    .locals 9

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->m:Z

    const-string v1, "privacyDefault"

    .line 228
    iput-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->l:Ljava/lang/String;

    .line 229
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    const v1, 0x7f0a0ac6

    .line 231
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 232
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d013c

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0819

    .line 233
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const v4, 0x7f12064c

    .line 235
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const v2, 0x7f0a0abe

    .line 239
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/login/SocialLoginButton;

    iput-object v2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    const v2, 0x7f0a03d9

    .line 240
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/login/SocialLoginButton;

    iput-object v2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->f:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    const v2, 0x7f0a045c

    .line 241
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/login/SocialLoginButton;

    iput-object v2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->g:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    const v2, 0x7f0a07ec

    .line 242
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/login/LoginButton;

    iput-object v2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->o:Lcom/callapp/contacts/widget/login/LoginButton;

    .line 243
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-static {}, Lcom/callapp/contacts/util/LocaleUtils;->isRussianUser()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v2, v4}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setVisibility(I)V

    .line 246
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->l:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setLoginType(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setButtonLayoutType(I)V

    const v2, 0x7f0a065f

    .line 249
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120505

    .line 250
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    new-instance v1, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/callapp/contacts/widget/login/LoginButton;

    iget-object v4, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->f:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    aput-object v4, v2, v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->g:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    aput-object v4, v2, v0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->o:Lcom/callapp/contacts/widget/login/LoginButton;

    aput-object v5, v2, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    aput-object v5, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->k:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    .line 1460
    iget-object v2, v1, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->c:Landroidx/lifecycle/t;

    new-instance v4, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$uayWgTrulOaPSqcAu9TrUyt3Yj4;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$uayWgTrulOaPSqcAu9TrUyt3Yj4;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {v2, p0, v4}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    .line 1471
    iget-object v2, v1, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->d:Landroidx/lifecycle/t;

    new-instance v4, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$UpTOtj0Ek5cFA3IkQurBRSv9L30;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$UpTOtj0Ek5cFA3IkQurBRSv9L30;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {v2, p0, v4}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    .line 1472
    iget-object v2, v1, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->b:Landroidx/lifecycle/t;

    new-instance v4, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$MKxtKayZ_SGz4O6-JHhv4iwm4R4;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$MKxtKayZ_SGz4O6-JHhv4iwm4R4;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {v2, p0, v4}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    .line 1475
    iget-object v2, v1, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->e:Landroidx/lifecycle/t;

    new-instance v4, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$FAe1oYGbETJz24oNA4G8J9UZ7zo;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$FAe1oYGbETJz24oNA4G8J9UZ7zo;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {v2, p0, v4}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    .line 1479
    iget-object v2, v1, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->f:Landroidx/lifecycle/t;

    new-instance v4, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$yIS1WDfXHnWtNlgYoiaWWm1Z728;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$yIS1WDfXHnWtNlgYoiaWWm1Z728;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {v2, p0, v4}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    .line 1483
    iget-object v2, v1, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->g:Landroidx/lifecycle/t;

    new-instance v4, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$mfIc1-pGEafhaq0p4MfBAGxSD4s;

    invoke-direct {v4, p0, v1}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$mfIc1-pGEafhaq0p4MfBAGxSD4s;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V

    invoke-virtual {v2, p0, v4}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    .line 1506
    iget-object v2, v1, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->a:Landroidx/lifecycle/t;

    new-instance v4, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$0Zvi7CGE-HIgVrtfgARwSWpzzoU;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$0Zvi7CGE-HIgVrtfgARwSWpzzoU;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {v2, p0, v4}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    .line 1522
    iget-object v1, v1, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->h:Landroidx/lifecycle/t;

    new-instance v2, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$40HW28a5JclDDNm2W-rIGePCPLM;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$40HW28a5JclDDNm2W-rIGePCPLM;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    .line 254
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    sget-object v2, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->SETUP_COMPLETED_STAGE:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    if-ne v1, v2, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->finish()V

    goto :goto_1

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v1

    sget-object v2, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->CORE_PERMISSIONS:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v1

    sget-object v2, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->SETUP_COMPLETED_STAGE:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 258
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->g()V

    .line 259
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->finish()V

    .line 1603
    :cond_3
    :goto_1
    new-instance v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    .line 1650
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$11;->execute()Lcom/callapp/contacts/manager/task/Task;

    const v1, 0x7f0a07ef

    .line 264
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->c:Landroid/view/View;

    const v2, 0x7f0a0a8f

    .line 2362
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2363
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v2, 0x7f120800

    .line 2365
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2366
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2368
    new-instance v2, Landroid/text/SpannableString;

    const v5, 0x7f120802

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2369
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v0

    const-string v6, " "

    .line 2370
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2371
    new-instance v7, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$5;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$5;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    .line 2385
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    add-int/2addr v2, v5

    const/16 v8, 0x21

    .line 2371
    invoke-virtual {v4, v7, v5, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f1207fe

    .line 2387
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2388
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v2, 0x7f120801

    .line 2390
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2391
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v0

    .line 2392
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2393
    new-instance v7, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$6;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$6;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    .line 2407
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v5

    .line 2393
    invoke-virtual {v4, v7, v5, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f1207ff

    .line 2410
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2411
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->f(Ljava/lang/String;)I

    move-result v5

    if-le v5, v0, :cond_4

    .line 2412
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2415
    :cond_4
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2416
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 268
    new-instance v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$2;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    .line 276
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 278
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-direct {p0, v0, v3}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;Z)V

    const v0, 0x7f0a087b

    .line 280
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getStatusBarHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 281
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 282
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 285
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$3;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-static {v0, v1}, Lcom/facebook/applinks/a;->a(Landroid/content/Context;Lcom/facebook/applinks/a$a;)V

    .line 304
    new-instance v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$4;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    .line 358
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$4;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->b()V

    return-void
.end method

.method private synthetic b(Ljava/lang/Void;)V
    .locals 3

    .line 476
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h()V

    .line 477
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f1201af

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 440
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$7;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$7;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Void;)V
    .locals 0

    .line 473
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->n:Z

    return p0
.end method

.method private d()V
    .locals 3

    const v0, 0x7f0a087c

    .line 696
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 697
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getStatusBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x7f060088

    .line 698
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setStatusBarColor(I)V

    return-void
.end method

.method private synthetic d(Ljava/lang/Void;)V
    .locals 0

    .line 471
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h()V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->n:Z

    return v0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->k:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->a()V

    const/4 v0, 0x0

    .line 756
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->showActionBar(Z)V

    const v0, 0x7f0a0ac9

    .line 758
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 760
    new-instance v1, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$odTjiQPIXuaN68JNPJi0eT0iRp0;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$odTjiQPIXuaN68JNPJi0eT0iRp0;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0922

    .line 766
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120620

    .line 767
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic e(Ljava/lang/Void;)V
    .locals 8

    .line 461
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h()V

    .line 462
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    new-instance v7, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v0, 0x7f1204fb

    .line 464
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f1205c5

    .line 465
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1201e3

    .line 466
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$Myx1Yb0BCuIQoI9wSq2mvKZ4J9o;->INSTANCE:Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardActivity$Myx1Yb0BCuIQoI9wSq2mvKZ4J9o;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 462
    invoke-virtual {p1, p0, v7}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private f()V
    .locals 5

    .line 967
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    const-string v1, "Registration"

    if-nez v0, :cond_0

    .line 968
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "Clicked next in social networks: No internet"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f12052f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->d:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->getNumConnected()I

    move-result v0

    .line 974
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Clicked next in social networks. num connected: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(I)V

    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V
    .locals 3

    .line 4654
    new-instance v0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;

    new-instance v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$12;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V

    const-string v2, "Registration"

    invoke-direct {v0, v1, p0, v2}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;-><init>(Lcom/callapp/contacts/util/servermessage/ValidateClientTask$OnResultListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 4668
    invoke-virtual {v0}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method private g()V
    .locals 4

    .line 1077
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 1078
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1079
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CAME_FROM_SETUP_REMINDER_KEY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1080
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V
    .locals 0

    .line 118
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onBackPressed()V

    return-void
.end method

.method public static getCurrentSetupStage()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;
    .locals 4

    .line 162
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aU:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 163
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->values()[Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    move-result-object v1

    .line 164
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_0

    .line 165
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 166
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->aU:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 169
    :cond_0
    aget-object v0, v1, v0

    return-object v0
.end method

.method public static getDialogTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private getMaximumPossibleConnected()I
    .locals 3

    .line 985
    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 989
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "onlyNativeSocialLogin"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 992
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isNativeAppInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 995
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isNativeAppInstalled()Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 998
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->isNativeAppInstalled()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    return v0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->d:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    return-object p0
.end method

.method private h()V
    .locals 1

    .line 1084
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    const/4 v0, 0x0

    .line 1085
    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-void
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)I
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getMaximumPossibleConnected()I

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->f()V

    return-void
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)Landroid/view/View;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->j:Landroid/view/View;

    return-object p0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;)Landroid/view/View;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->c:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic lambda$0Zvi7CGE-HIgVrtfgARwSWpzzoU(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;)V

    return-void
.end method

.method public static synthetic lambda$40HW28a5JclDDNm2W-rIGePCPLM(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic lambda$FAe1oYGbETJz24oNA4G8J9UZ7zo(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->b(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic lambda$MKxtKayZ_SGz4O6-JHhv4iwm4R4(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->c(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic lambda$Myx1Yb0BCuIQoI9wSq2mvKZ4J9o(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$UpTOtj0Ek5cFA3IkQurBRSv9L30(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->d(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic lambda$ZPTuYvtd7Eknd9byrYnW-yK1NLI(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Landroid/util/Pair;Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Landroid/util/Pair;Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$bGx1x2-THmK_vM0tcUSjEoUHzsc(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V

    return-void
.end method

.method public static synthetic lambda$mfIc1-pGEafhaq0p4MfBAGxSD4s(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic lambda$odTjiQPIXuaN68JNPJi0eT0iRp0(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$uayWgTrulOaPSqcAu9TrUyt3Yj4(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic lambda$yIS1WDfXHnWtNlgYoiaWWm1Z728(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Ljava/lang/Void;)V

    return-void
.end method

.method private setButtonLayoutType(I)V
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->f:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setButtonLayoutType(I)V

    .line 773
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->g:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setButtonLayoutType(I)V

    .line 774
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->o:Lcom/callapp/contacts/widget/login/LoginButton;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/login/LoginButton;->setButtonLayoutType(I)V

    .line 775
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setButtonLayoutType(I)V

    return-void
.end method

.method public static setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V
    .locals 1

    .line 173
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aU:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private setLoginType(Ljava/lang/String;)V
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->f:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setLoginType(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->g:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setLoginType(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->o:Lcom/callapp/contacts/widget/login/LoginButton;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/login/LoginButton;->setLoginType(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setLoginType(Ljava/lang/String;)V

    return-void
.end method

.method private setWelcomeScreenTexts(I)V
    .locals 2

    const v0, 0x7f0a0922

    .line 786
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 787
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f120620

    .line 788
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a08be

    .line 790
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1202e9

    .line 791
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 792
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0037

    return v0
.end method

.method public getStatusBarColor()I
    .locals 2

    .line 1145
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->WELCOME:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1149
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->getStatusBarColor()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1007
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1009
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1013
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->m:Z

    if-nez v0, :cond_1

    .line 1014
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->b()V

    :cond_1
    const/16 v0, 0x1d1d

    if-eq p1, v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 1020
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h()V

    .line 1021
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->k:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->a(I)V

    const-string p1, "EXTRA_NETWORK_TYPE"

    .line 1022
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1023
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_6

    .line 1024
    sget-object p1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$20;->b:[I

    invoke-static {p2}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->fromNumRep(I)Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    return-void

    .line 1032
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->callOnClick()Z

    return-void

    .line 1029
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->g:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->callOnClick()Z

    return-void

    .line 1026
    :cond_5
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->f:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->callOnClick()Z

    return-void

    .line 1038
    :cond_6
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->c()V

    const-string p1, "RESULT_USER_PHONE_NUMBER"

    .line 1039
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RESULT_USER_CALLAPP_TOKEN"

    .line 1040
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "RESULT_USER_CALLAPP_TOKEN_TYPE"

    .line 1041
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 1043
    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->SINCH:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {v0}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1044
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object p3

    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->SINCH:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {p3, p1, p2, v0}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V

    return-void

    .line 1045
    :cond_7
    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->CALLAPP:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {v0}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1046
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object p3

    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->CALLAPP:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {p3, p1, p2, v0}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V

    :cond_8
    return-void

    .line 1051
    :cond_9
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h()V

    .line 1052
    iget-object p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->k:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->a(I)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 10

    .line 703
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getCurrentSetupStage()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    move-result-object v0

    .line 704
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Back pressed stage "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Registration"

    invoke-virtual {v1, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    sget-object v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$20;->a:[I

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 714
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "back-press in social, No internet"

    invoke-virtual {v1, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    new-instance v9, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v2, 0x7f1206f6

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f120226

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f120874

    .line 2730
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f120875

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$13;

    invoke-direct {v7, p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$13;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    new-instance v8, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$14;

    invoke-direct {v8, p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$14;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 2729
    invoke-virtual {v1, p0, v9}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->d:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->getNumConnected()I

    move-result v0

    .line 719
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "completed social screen using back button"

    invoke-virtual {v1, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(I)V

    goto :goto_0

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->o:Lcom/callapp/contacts/widget/login/LoginButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/login/LoginButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->o:Lcom/callapp/contacts/widget/login/LoginButton;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/login/LoginButton;->callOnClick()Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 178
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getCurrentSetupStage()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    .line 182
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a090a

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->c(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->d:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    .line 184
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$1;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardActivity;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->setDefaultsIfNeeded(Lcom/callapp/contacts/manager/task/Task$DoneListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1094
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    .line 1095
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a00ac

    .line 1096
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f1204c4

    .line 1098
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1100
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 4

    .line 421
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onDestroy()V

    .line 423
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->l:Ljava/lang/String;

    const-string v2, "Screen"

    const-string v3, "ScreenClose"

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->o:Lcom/callapp/contacts/widget/login/LoginButton;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/login/LoginButton;->a()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->f:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a()V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->g:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    if-eqz v0, :cond_2

    .line 431
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a()V

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->h:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    if-eqz v0, :cond_3

    .line 435
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a()V

    :cond_3
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 580
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 582
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setIntent(Landroid/content/Intent;)V

    .line 584
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->m:Z

    if-eqz v0, :cond_0

    .line 585
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->a(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 587
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->n:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1105
    invoke-static {p0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 1107
    sget-object v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$20;->a:[I

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1115
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1109
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->f()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1121
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1122
    sget-object v2, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$20;->a:[I

    iget-object v3, p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->e:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1128
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const v0, 0x7f120657

    .line 1124
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x1

    .line 1125
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1132
    :goto_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 747
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onResume()V

    .line 749
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getCurrentSetupStage()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->SETUP_COMPLETED_STAGE:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    if-ne v0, v1, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onTextNextToSwitchClicked(Landroid/view/View;)V
    .locals 0

    .line 1140
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public shouldAssertPermissions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
