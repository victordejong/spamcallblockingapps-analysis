.class Lcom/callapp/contacts/popup/FollowCallAppPopup$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/FollowCallAppPopup$1;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/FollowCallAppPopup$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/FollowCallAppPopup$1;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$1$1;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup$1;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$1$1;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup$1;

    iget-object v0, v0, Lcom/callapp/contacts/popup/FollowCallAppPopup$1;->b:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {v0}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->a(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to follow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$1$1;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup$1;

    iget-object v2, v2, Lcom/callapp/contacts/popup/FollowCallAppPopup$1;->b:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {v2}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->a(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed"

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$1$1;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup$1;

    iget-object v0, v0, Lcom/callapp/contacts/popup/FollowCallAppPopup$1;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Agreed to follow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/popup/FollowCallAppPopup$1$1;->a:Lcom/callapp/contacts/popup/FollowCallAppPopup$1;

    iget-object v2, v2, Lcom/callapp/contacts/popup/FollowCallAppPopup$1;->b:Lcom/callapp/contacts/popup/FollowCallAppPopup;

    invoke-static {v2}, Lcom/callapp/contacts/popup/FollowCallAppPopup;->a(Lcom/callapp/contacts/popup/FollowCallAppPopup;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Registration"

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
