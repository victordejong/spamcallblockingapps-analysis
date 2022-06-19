.class Lcom/callapp/contacts/popup/FollowCallAppPopup$3$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/FollowCallAppPopup$3;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/FollowCallAppPopup$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/FollowCallAppPopup$3;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$3$1;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup$3;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$3$1;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup$3;

    iget-object v0, v0, Lcom/callapp/contacts/popup/FollowCallAppPopup$3;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    .line 113
    iget-object v1, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$3$1;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup$3;

    iget-object v1, v1, Lcom/callapp/contacts/popup/FollowCallAppPopup$3;->b:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {v1}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->c(Lcom/callapp/contacts/popup/FollowCallAppPopup;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 114
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v1

    const v3, 0x7f1207e5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 2030
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2031
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->n(Ljava/lang/String;)Z

    move-result v2

    :cond_0
    const-string v1, "Registration"

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    .line 118
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Posted to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$3$1;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup$3;

    iget-object v4, v4, Lcom/callapp/contacts/popup/FollowCallAppPopup$3;->b:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {v4}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->a(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to posted to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$3$1;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup$3;

    iget-object v4, v4, Lcom/callapp/contacts/popup/FollowCallAppPopup$3;->b:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {v4}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->a(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$3$1;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup$3;

    iget-object v2, v2, Lcom/callapp/contacts/popup/FollowCallAppPopup$3;->b:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {v2}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->a(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->i()Z

    move-result v2

    if-nez v2, :cond_3

    .line 126
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$3$1;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup$3;

    iget-object v3, v3, Lcom/callapp/contacts/popup/FollowCallAppPopup$3;->b:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {v3}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->a(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed"

    const-string v5, "Failed to follow"

    invoke-virtual {v2, v4, v5, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 129
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Agreed to follow "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$3$1;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup$3;

    iget-object v3, v3, Lcom/callapp/contacts/popup/FollowCallAppPopup$3;->b:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {v3}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->a(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
