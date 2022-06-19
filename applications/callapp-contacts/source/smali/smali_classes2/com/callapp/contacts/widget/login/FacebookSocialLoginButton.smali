.class public Lcom/callapp/contacts/widget/login/FacebookSocialLoginButton;
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

    .line 46
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->FACEBOOK:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$9G-lQ7k5FAD6Ih0KN-mTJW8VOKI()Landroid/util/Pair;
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/login/FacebookSocialLoginButton;->b()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getButtonBackground(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 40
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->getButtonBackground(I)I

    move-result p1

    return p1

    :cond_0
    const p1, 0x7f08052b

    return p1

    :cond_1
    const p1, 0x7f080530

    return p1
.end method

.method protected getButtonIcon(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f0803b8

    return p1

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f0803bc

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected getButtonIconColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 69
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x7f060244

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getButtonText(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/FacebookSocialLoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12040e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/FacebookSocialLoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120410

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNetIdPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "fb."

    return-object v0
.end method

.method public getRemoteAccountHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 1

    .line 84
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    return-object v0
.end method

.method public getTokenHelper()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$TokenHelper;
    .locals 1

    .line 46
    sget-object v0, Lcom/callapp/contacts/widget/login/-$$Lambda$FacebookSocialLoginButton$9G-lQ7k5FAD6Ih0KN-mTJW8VOKI;->INSTANCE:Lcom/callapp/contacts/widget/login/-$$Lambda$FacebookSocialLoginButton$9G-lQ7k5FAD6Ih0KN-mTJW8VOKI;

    return-object v0
.end method
