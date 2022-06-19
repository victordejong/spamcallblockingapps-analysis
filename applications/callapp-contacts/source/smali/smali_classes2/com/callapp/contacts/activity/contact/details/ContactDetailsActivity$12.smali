.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:J

.field final synthetic c:Lcom/callapp/framework/phone/Phone;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Intent;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Z)V
    .locals 0

    .line 964
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->a:Landroid/content/Intent;

    iput-wide p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->b:J

    iput-object p5, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->c:Lcom/callapp/framework/phone/Phone;

    iput-object p6, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->d:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->e:Z

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 11

    .line 967
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->a:Landroid/content/Intent;

    const-class v2, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    const-string v3, "EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER"

    invoke-static {v0, v1, v3, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)V

    .line 968
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->a:Landroid/content/Intent;

    const-class v2, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;

    const-string v3, "EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER"

    invoke-static {v0, v1, v3, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)V

    .line 969
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->a:Landroid/content/Intent;

    iget-wide v6, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->b:J

    iget-object v8, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->c:Lcom/callapp/framework/phone/Phone;

    iget-object v9, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->d:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->e:Z

    invoke-static/range {v4 .. v10}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Intent;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Z)V

    .line 970
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->a:Landroid/content/Intent;

    const-string v1, "EXTRA_ASK_OPEN_RATE_US"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {}, Lcom/callapp/contacts/util/AppRater;->isRatedYet()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/util/AppRater;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;ZZ)Z

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->a:Landroid/content/Intent;

    const-string v1, "EXTRA_BLOCKED_CALL_NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->d()V

    :cond_1
    return-void
.end method
