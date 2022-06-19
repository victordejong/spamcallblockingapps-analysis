.class public Lcom/callapp/contacts/manager/ContactLoaderManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# instance fields
.field private cancelTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/callapp/framework/phone/Phone;",
            "Lcom/callapp/contacts/manager/task/Task;",
            ">;"
        }
    .end annotation
.end field

.field private contactLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/callapp/framework/phone/Phone;",
            "Lcom/callapp/contacts/loader/api/ContactLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final contactLoadersLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoadersLock:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoaders:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->cancelTasks:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/manager/ContactLoaderManager;Lcom/callapp/framework/phone/Phone;JZLcom/callapp/contacts/model/objectbox/ExtractedInfo;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/callapp/contacts/manager/ContactLoaderManager;->createContactLoaderAndLoad(Lcom/callapp/framework/phone/Phone;JZLcom/callapp/contacts/model/objectbox/ExtractedInfo;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/manager/ContactLoaderManager;)Ljava/lang/Object;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoadersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/manager/ContactLoaderManager;)Ljava/util/HashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoaders:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/manager/ContactLoaderManager;)Ljava/util/HashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->cancelTasks:Ljava/util/HashMap;

    return-object p0
.end method

.method private cancelContactLoaderCancelTask(Lcom/callapp/framework/phone/Phone;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->cancelTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/task/Task;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/task/Task;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/task/Task;->cancel()V

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->cancelTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static checkIfWeHaveNameForNonContact(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private createContactLoaderAndLoad(Lcom/callapp/framework/phone/Phone;JZLcom/callapp/contacts/model/objectbox/ExtractedInfo;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoadersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoaders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/loader/api/ContactLoader;

    if-nez v1, :cond_1

    .line 81
    const-class v1, Lcom/callapp/contacts/manager/ContactLoaderManager;

    const-string v2, "Create new unbounded ContactLoader for phone: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p4}, Lcom/callapp/contacts/manager/ContactLoaderManager;->createFullContactDetailsStackLoader(Z)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoaders:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 86
    invoke-virtual {v1, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->loadSelfContact(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/SelfContactData;

    move-result-object p1

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v1, p1, p2, p3, p5}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/manager/ContactLoaderManager;->scheduleCancelingContactLoader(Lcom/callapp/contacts/model/contact/ContactData;Z)V

    .line 94
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private createFullContactDetailsStackLoader(Z)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1

    .line 65
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addAllFields()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addContactDetailsStack(Z)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->setForceRefresh()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->setIterativeLoad()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p1

    return-object p1
.end method

.method public static get()Lcom/callapp/contacts/manager/ContactLoaderManager;
    .locals 1

    .line 46
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    return-object v0
.end method

.method private registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;Z)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "Lcom/callapp/contacts/model/objectbox/ExtractedInfo;",
            "J",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;Z)",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;>;"
        }
    .end annotation

    .line 161
    const-class v0, Lcom/callapp/contacts/manager/ContactLoaderManager;

    iget-object v1, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoadersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoaders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/loader/api/ContactLoader;

    if-nez v2, :cond_0

    const-string v2, "Create new ContactLoader for phone: "

    .line 164
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move v6, p7

    move-object v7, p2

    .line 165
    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/manager/ContactLoaderManager;->createContactLoaderAndLoad(Lcom/callapp/framework/phone/Phone;JZLcom/callapp/contacts/model/objectbox/ExtractedInfo;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhoneOrigin()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object p3

    if-eq p3, p2, :cond_1

    .line 169
    invoke-virtual {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setPhoneOrigin(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    .line 170
    invoke-virtual {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/model/contact/ContactData;->setRecognized(Z)V

    :cond_1
    if-eqz p5, :cond_2

    .line 174
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/ContactLoaderManager;->cancelContactLoaderCancelTask(Lcom/callapp/framework/phone/Phone;)V

    :cond_2
    const-string p2, "Reusing ContactLoader for phone: "

    .line 176
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    if-eqz p5, :cond_3

    .line 180
    invoke-virtual {v2, p5, p6}, Lcom/callapp/contacts/loader/api/ContactLoader;->addListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Z

    .line 182
    :cond_3
    sget-object p1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    invoke-virtual {v2, p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Z

    move-result p1

    .line 184
    new-instance p2, Landroid/util/Pair;

    invoke-virtual {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p3

    invoke-virtual {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p4

    invoke-virtual {p4}, Lcom/callapp/contacts/model/contact/ContactData;->getPastChangedFields()Ljava/util/Set;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 185
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p1, :cond_4

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 187
    sget-object p1, Lb/a;->a:Lb/a$a;

    new-instance p1, Lcom/callapp/contacts/manager/ContactLoaderManager$3;

    invoke-direct {p1, p0, p2}, Lcom/callapp/contacts/manager/ContactLoaderManager$3;-><init>(Lcom/callapp/contacts/manager/ContactLoaderManager;Landroid/util/Pair;)V

    invoke-static {p1}, Lb/a$a;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 196
    :cond_4
    monitor-exit v1

    return-object p2

    :catchall_0
    move-exception p1

    .line 197
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private scheduleCancelingContactLoader(Lcom/callapp/contacts/model/contact/ContactData;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoadersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/ContactLoaderManager;->cancelContactLoaderCancelTask(Lcom/callapp/framework/phone/Phone;)V

    .line 111
    new-instance v1, Lcom/callapp/contacts/manager/ContactLoaderManager$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/manager/ContactLoaderManager$2;-><init>(Lcom/callapp/contacts/manager/ContactLoaderManager;Lcom/callapp/contacts/model/contact/ContactData;)V

    if-eqz p2, :cond_0

    const/16 p2, 0x2710

    .line 138
    invoke-virtual {v1, p2}, Lcom/callapp/contacts/manager/task/Task;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    .line 140
    iget-object p2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->cancelTasks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/task/Task;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 144
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public asyncCreateContactLoaderAndLoad(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    .locals 7

    .line 69
    new-instance v6, Lcom/callapp/contacts/manager/ContactLoaderManager$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/manager/ContactLoaderManager$1;-><init>(Lcom/callapp/contacts/manager/ContactLoaderManager;Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    .line 74
    invoke-virtual {v6}, Lcom/callapp/contacts/manager/ContactLoaderManager$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public createSelfContactStackLoader()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 2

    .line 61
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addAllFields()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSelfContactStack()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setForceRefresh()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setIterativeLoad()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->suggestions:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->removeField(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getContactDataOnlyIfAlreadyLoaded(Lcom/callapp/framework/phone/Phone;J)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "J)",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;>;"
        }
    .end annotation

    .line 50
    iget-object p2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoadersLock:Ljava/lang/Object;

    monitor-enter p2

    .line 51
    :try_start_0
    iget-object p3, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoaders:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/loader/api/ContactLoader;

    if-eqz p1, :cond_0

    .line 53
    new-instance p3, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPastChangedFields()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p2

    return-object p3

    :cond_0
    const/4 p1, 0x0

    .line 55
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhoneOrigin()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 204
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 205
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    sget-object v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    if-eq v2, v5, :cond_0

    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    sget-object v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->MISSED_CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    if-ne v2, v5, :cond_1

    .line 206
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/manager/BlockManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    sget-object v2, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v5, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v6, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SPAM_CALL_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 1091
    invoke-virtual {v2, v5, v6, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 212
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/contact/ContactData;->isSpamReported()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    sget-object v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    if-eq v2, v5, :cond_2

    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    sget-object v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->TEXT:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    if-ne v2, v5, :cond_3

    .line 213
    :cond_2
    invoke-virtual {v0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->setSpamReported(Z)V

    .line 214
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v5, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Spam"

    const-string v7, "IdentifySpam"

    invoke-virtual {v2, v6, v7, v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/contact/ContactData;->isRecognized()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 222
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/manager/ContactLoaderManager;->checkIfWeHaveNameForNonContact(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 224
    invoke-virtual {v0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->setRecognized(Z)V

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 227
    invoke-static {v1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 230
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 231
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/RefreshSearchListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v5, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REFRESH_SEARCH:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 2091
    invoke-virtual {v0, v2, v5, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 232
    invoke-static {}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->get()Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    move-result-object v0

    iget-object v1, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 3062
    iget-boolean v1, v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->showsRecognizedNotification:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ce:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_7

    .line 3065
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->getDataSinceLastCheck()Ljava/util/List;

    move-result-object v1

    .line 3066
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3067
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 3068
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_e

    .line 3070
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 3094
    sget-object v8, Lcom/callapp/contacts/manager/preferences/Prefs;->p:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 4088
    :cond_6
    iget-object v8, v0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v9

    iget-object v10, v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v9

    iget-object v10, v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_8

    goto :goto_1

    .line 3101
    :cond_8
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v8

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v9

    iget-object v10, v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    goto :goto_5

    .line 3105
    :cond_9
    new-instance v8, Ljava/util/Date;

    iget-wide v9, v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->firstSeen:J

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 3106
    new-instance v9, Ljava/util/Date;

    iget-wide v10, v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->lastNotificationShowed:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 3107
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 3109
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const-wide/32 v15, 0x19bfcc00

    sub-long/2addr v13, v15

    cmp-long v8, v11, v13

    if-ltz v8, :cond_a

    .line 3111
    invoke-static {v9, v10}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_3

    .line 3117
    :cond_a
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-wide/32 v12, 0x240c8400

    sub-long/2addr v10, v12

    cmp-long v12, v8, v10

    if-gtz v12, :cond_b

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_c

    .line 3124
    iget v9, v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->seenCount:I

    add-int/2addr v9, v4

    iput v9, v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->seenCount:I

    .line 3125
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    iput-wide v9, v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->lastNotificationShowed:J

    :cond_c
    :goto_5
    if-eqz v8, :cond_d

    .line 3073
    new-instance v8, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    invoke-direct {v8, v7}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;-><init>(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3075
    :cond_d
    iput-boolean v4, v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->disableNotification:Z

    .line 3078
    :goto_6
    invoke-static {v7}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 3081
    :cond_e
    invoke-static {v5}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3082
    invoke-virtual {v0, v5}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a(Ljava/util/List;)V

    .line 233
    :cond_f
    :goto_7
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    :cond_10
    return-void
.end method

.method public registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "J",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    .line 153
    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;Z)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "Lcom/callapp/contacts/model/objectbox/ExtractedInfo;",
            "J",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;>;"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 157
    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;Z)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public registerForContactDetailsStackForSelfContact(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "J",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    .line 149
    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;Z)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 244
    invoke-virtual {p0, p1, p2, v0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Z)V

    return-void
.end method

.method public unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Z)V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoadersLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 250
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/callapp/contacts/manager/ContactLoaderManager;->contactLoaders:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/loader/api/ContactLoader;

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {v2, p2}, Lcom/callapp/contacts/loader/api/ContactLoader;->removeListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)I

    move-result p2

    const/4 v3, 0x1

    if-gt p2, v3, :cond_0

    .line 255
    invoke-virtual {v2, p0}, Lcom/callapp/contacts/loader/api/ContactLoader;->removeListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)I

    move-result p2

    if-nez p2, :cond_0

    .line 257
    const-class p2, Lcom/callapp/contacts/manager/ContactLoaderManager;

    const-string v2, "Scheduling stopping ContactLoader task for phone: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, p1, p3}, Lcom/callapp/contacts/manager/ContactLoaderManager;->scheduleCancelingContactLoader(Lcom/callapp/contacts/model/contact/ContactData;Z)V

    .line 263
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
