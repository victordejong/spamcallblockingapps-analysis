.class Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

.field final synthetic c:Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener$1;->c:Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;

    iput-object p2, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener$1;->b:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 7

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener$1;->c:Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;

    iget-object v0, v0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->viewMeAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener$1;->c:Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;

    iget-object v2, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v3, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener$1;->b:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    iget-object v4, v1, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->globalNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener$1;->c:Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;

    iget-object v5, v0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->fullName:Ljava/lang/String;

    iget-object v0, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener$1;->c:Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;

    iget-object v6, v0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->entrypoint:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->access$000(Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    :cond_0
    return-void
.end method
