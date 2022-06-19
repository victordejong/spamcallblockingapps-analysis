.class Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->refreshData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;->a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;->a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->access$000(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;->a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->access$100(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;->a:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->access$200(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c()V

    .line 177
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6$1;-><init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
