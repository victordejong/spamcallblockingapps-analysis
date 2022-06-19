.class Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WhoViewedMyProfileContactDataChangerListener"
.end annotation


# instance fields
.field final entrypoint:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

.field final fullName:Ljava/lang/String;

.field final globalNumber:Ljava/lang/String;

.field final incognitoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final photoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final viewMeAdded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->viewMeAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->incognitoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->photoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    iput-object p1, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->globalNumber:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->fullName:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->entrypoint:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V
    .locals 0

    .line 126
    invoke-direct/range {p0 .. p5}, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->addViewMeAndCancelWhoViewedMyContactDataListener(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    return-void
.end method

.method private addViewMeAndCancelWhoViewedMyContactDataListener(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V
    .locals 1

    .line 173
    invoke-static {}, Lcom/callapp/contacts/manager/ContactLoaderManager;->get()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    .line 174
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/BlockManager;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 175
    invoke-static {p3, p4, p5}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 143
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->incognitoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    iget-object v1, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->photoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->viewMeAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v7, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->globalNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->fullName:Ljava/lang/String;

    iget-object v9, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->entrypoint:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->addViewMeAndCancelWhoViewedMyContactDataListener(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    :cond_0
    new-array v1, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 151
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->photoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    iget-object v1, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->incognitoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->viewMeAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    iget-object v7, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->globalNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->fullName:Ljava/lang/String;

    iget-object v9, p0, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->entrypoint:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;->addViewMeAndCancelWhoViewedMyContactDataListener(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    :cond_1
    new-array v0, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 159
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 161
    new-instance p2, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener$1;

    invoke-direct {p2, p0, p1, p0}, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener$1;-><init>(Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    const/16 p1, 0x2710

    .line 168
    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener$1;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    :cond_2
    return-void
.end method
