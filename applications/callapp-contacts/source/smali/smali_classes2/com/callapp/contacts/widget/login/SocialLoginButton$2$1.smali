.class Lcom/callapp/contacts/widget/login/SocialLoginButton$2$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/login/SocialLoginButton$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/login/SocialLoginButton$2;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2$1;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton$2;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    const-string v0, "Error after successful login"

    const-string v1, "Registration"

    .line 87
    iget-object v2, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2$1;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton$2;

    iget-object v2, v2, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->b:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->getRemoteAccountHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    .line 90
    :try_start_0
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t get id, 1st try - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v3, 0x7d0

    .line 95
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :catch_0
    :try_start_2
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    .line 102
    :cond_0
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t get id, 2nd try - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2$1;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton$2;

    iget-object v5, v5, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->b:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-virtual {v5}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->getRemoteAccountHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    const-string v4, "Could not get user ID"

    invoke-virtual {v3, v1, v0, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->e()V

    .line 106
    iget-object v3, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2$1;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton$2;

    iget-object v3, v3, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->b:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-static {v3}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a(Lcom/callapp/contacts/widget/login/SocialLoginButton;)Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;

    move-result-object v3

    invoke-interface {v3}, Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;->c()V

    return-void

    .line 109
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2$1;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton$2;

    iget-object v5, v5, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b()V

    .line 115
    iget-object v3, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2$1;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton$2;

    iget-object v3, v3, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->b:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-static {v3}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a(Lcom/callapp/contacts/widget/login/SocialLoginButton;)Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2$1;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton$2;

    iget-object v4, v4, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->b:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-virtual {v4}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->getTokenHelper()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$TokenHelper;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;->a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$TokenHelper;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v3

    .line 119
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v0, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->e()V

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2$1;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton$2;

    iget-object v0, v0, Lcom/callapp/contacts/widget/login/SocialLoginButton$2;->b:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-static {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a(Lcom/callapp/contacts/widget/login/SocialLoginButton;)Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton$Manager;->c()V

    return-void
.end method
