.class public Lcom/callapp/contacts/widget/login/VKSocialLoginButton;
.super Lcom/callapp/contacts/widget/login/SocialLoginButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/login/SocialLoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/login/SocialLoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static synthetic b()Landroid/util/Pair;
    .locals 2

    .line 38
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fJ:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fJ:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->VK:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$MtsSMdomjxK5VyFALf8le1Blp9I()Landroid/util/Pair;
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/login/VKSocialLoginButton;->b()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getButtonBackground(I)I
    .locals 0

    const p1, 0x7f080533

    return p1
.end method

.method protected getButtonIcon(I)I
    .locals 0

    const p1, 0x7f0804df

    return p1
.end method

.method protected getButtonIconColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getButtonText(I)Ljava/lang/String;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/VKSocialLoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120414

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNetIdPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "vk."

    return-object v0
.end method

.method public getRemoteAccountHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 1

    .line 63
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v0

    return-object v0
.end method

.method public getTokenHelper()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$TokenHelper;
    .locals 1

    .line 38
    sget-object v0, Lcom/callapp/contacts/widget/login/-$$Lambda$VKSocialLoginButton$MtsSMdomjxK5VyFALf8le1Blp9I;->INSTANCE:Lcom/callapp/contacts/widget/login/-$$Lambda$VKSocialLoginButton$MtsSMdomjxK5VyFALf8le1Blp9I;

    return-object v0
.end method
