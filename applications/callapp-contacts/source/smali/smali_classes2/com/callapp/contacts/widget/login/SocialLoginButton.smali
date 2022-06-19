.class public abstract Lcom/callapp/contacts/widget/login/SocialLoginButton;
.super Lcom/callapp/contacts/widget/login/LoginButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/widget/login/LoginButton<",
        "Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/login/LoginButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/login/LoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/login/LoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/login/SocialLoginButton;)Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;

    return-object p0
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;)V
    .locals 3

    .line 67
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    const-string v0, "Registration"

    if-nez p1, :cond_0

    .line 68
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Clicked login button, no internet"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;->c()V

    return-void

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;->b()V

    .line 72
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Clicked login button: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->getRemoteAccountHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->getRemoteAccountHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->getNetIdPrefix()Ljava/lang/String;

    move-result-object v0

    .line 1078
    new-instance v1, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;-><init>(Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/common/LoginListener;)V

    .line 1150
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1151
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public abstract getNetIdPrefix()Ljava/lang/String;
.end method

.method public abstract getRemoteAccountHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
.end method

.method public abstract getTokenHelper()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$TokenHelper;
.end method

.method protected setButtonData(I)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/login/LoginButton;->setButtonData(I)V

    .line 56
    new-instance p1, Lcom/callapp/contacts/widget/login/SocialLoginButton$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/login/SocialLoginButton$1;-><init>(Lcom/callapp/contacts/widget/login/SocialLoginButton;)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setManager(Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;

    return-void
.end method

.method public bridge synthetic setManager(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->setManager(Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;)V

    return-void
.end method
