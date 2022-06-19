.class public Lcom/callapp/contacts/widget/login/GoogleSocialLoginButton;
.super Lcom/callapp/contacts/widget/login/SocialLoginButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/login/SocialLoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/login/SocialLoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static synthetic b()Landroid/util/Pair;
    .locals 2

    .line 42
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->USER_GOOGLE:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$O1eikaFG9VtDc-0CrOs5lcm1BtU()Landroid/util/Pair;
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/login/GoogleSocialLoginButton;->b()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getButtonBackground(I)I
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x7f080531

    return p1

    .line 37
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->getButtonBackground(I)I

    move-result p1

    return p1
.end method

.method protected getButtonIcon(I)I
    .locals 0

    const p1, 0x7f0803c9

    return p1
.end method

.method protected getButtonIconColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getButtonText(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/GoogleSocialLoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12040e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/GoogleSocialLoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120412

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getButtonTextColor()I
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/GoogleSocialLoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06002c

    invoke-static {v0, v1}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getNetIdPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "gp."

    return-object v0
.end method

.method public getRemoteAccountHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 1

    .line 85
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v0

    return-object v0
.end method

.method public getTokenHelper()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$TokenHelper;
    .locals 1

    .line 42
    sget-object v0, Lcom/callapp/contacts/widget/login/-$$Lambda$GoogleSocialLoginButton$O1eikaFG9VtDc-0CrOs5lcm1BtU;->INSTANCE:Lcom/callapp/contacts/widget/login/-$$Lambda$GoogleSocialLoginButton$O1eikaFG9VtDc-0CrOs5lcm1BtU;

    return-object v0
.end method

.method protected setButtonData(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setButtonData(I)V

    .line 48
    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 49
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/login/GoogleSocialLoginButton;->setVisibility(I)V

    :cond_0
    return-void
.end method
