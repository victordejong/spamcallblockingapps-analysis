.class Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;Landroid/app/Activity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;->b:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 155
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;->b:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;->b:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->clearDeviceId()V

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;->b:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->b:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->deviceIdChanged:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 160
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f12028a

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;->b:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->c:Lcom/callapp/contacts/action/ActionDoneListener;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;->b:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->c:Lcom/callapp/contacts/action/ActionDoneListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/action/ActionDoneListener;->a(Z)V

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;->b:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->c:Lcom/callapp/contacts/action/ActionDoneListener;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1$1;->b:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->c:Lcom/callapp/contacts/action/ActionDoneListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/action/ActionDoneListener;->a(Z)V

    :cond_1
    return-void
.end method
