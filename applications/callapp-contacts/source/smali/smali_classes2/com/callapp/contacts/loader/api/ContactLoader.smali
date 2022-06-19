.class public Lcom/callapp/contacts/loader/api/ContactLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# static fields
.field private static final ALL_FIELDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIORITY_SYNC_LOADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field public static preferPhotosFromDevice:Ljava/lang/Boolean;


# instance fields
.field private final asyncLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lcom/callapp/contacts/event/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/Callback<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private contact:Lcom/callapp/contacts/model/contact/ContactData;

.field private final eagerLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/loader/EagerContactLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldsToLoad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/loader/api/LoaderFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final listenToFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;>;"
        }
    .end annotation
.end field

.field private loadContexts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            ">;"
        }
    .end annotation
.end field

.field private final loadContextsLock:Ljava/lang/Object;

.field private loadersWebViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private stoppedLoaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final syncLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final syncPriorityLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;"
        }
    .end annotation
.end field

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 89
    const-class v0, Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/api/ContactLoader;->ALL_FIELDS:Ljava/util/Set;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 91
    const-class v2, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/callapp/contacts/loader/api/IncognitoContactLoader;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/api/ContactLoader;->PRIORITY_SYNC_LOADERS:Ljava/util/List;

    const/4 v0, 0x0

    .line 113
    sput-object v0, Lcom/callapp/contacts/loader/api/ContactLoader;->preferPhotosFromDevice:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->asyncLoaders:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->syncPriorityLoaders:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->syncLoaders:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->eagerLoaders:Ljava/util/ArrayList;

    .line 97
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listenToFields:Ljava/util/Set;

    .line 98
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    .line 99
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->LOADER_FLAGSES_NONE:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    .line 101
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listeners:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->stoppedLoaders:Ljava/util/Set;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->loadContextsLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->loadContexts:Ljava/util/Set;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->loadersWebViews:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/loader/api/ContactLoader;)Ljava/util/HashMap;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->loadersWebViews:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/loader/api/ContactLoader;)Ljava/lang/Object;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->loadContextsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/loader/api/ContactLoader;)Ljava/util/Set;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->loadContexts:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/loader/api/ContactLoader;)Lcom/callapp/contacts/event/Callback;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->callback:Lcom/callapp/contacts/event/Callback;

    return-object p0
.end method

.method private doLoad(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 509
    iget-object v2, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->asyncLoaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 510
    iget-object v2, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->syncLoaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 513
    new-instance v2, Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v5, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    new-instance v7, Lcom/callapp/contacts/loader/api/CountDownCallback;

    iget-object v3, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->asyncLoaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->syncLoaders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Lcom/callapp/contacts/loader/api/ContactLoader$2;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/loader/api/ContactLoader$2;-><init>(Lcom/callapp/contacts/loader/api/ContactLoader;)V

    invoke-direct {v7, v3, v4}, Lcom/callapp/contacts/loader/api/CountDownCallback;-><init>(ILcom/callapp/contacts/event/Callback;)V

    move-object v3, v2

    move-object v4, p1

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/callapp/contacts/loader/api/LoadContext;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;Ljava/util/Set;Lcom/callapp/contacts/event/Callback;Lcom/callapp/contacts/loader/api/ContactLoader;)V

    .line 537
    iget-object v3, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->loadContextsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 538
    :try_start_0
    iget-object v4, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->loadContexts:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 539
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p2

    .line 542
    iget-object v3, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->eagerLoaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/callapp/contacts/loader/EagerContactLoader;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/callapp/contacts/loader/EagerContactLoader;

    .line 543
    invoke-direct {p0, v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->runEagerLoaders(Lcom/callapp/contacts/loader/api/LoadContext;[Lcom/callapp/contacts/loader/EagerContactLoader;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 549
    :cond_0
    iget-object v4, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->syncPriorityLoaders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/callapp/contacts/loader/api/ContactDataLoader;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/callapp/contacts/loader/api/ContactDataLoader;

    .line 550
    invoke-direct {p0, v2, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->runSyncLoaders(Lcom/callapp/contacts/loader/api/LoadContext;[Lcom/callapp/contacts/loader/api/ContactDataLoader;)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 554
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_4

    .line 556
    invoke-direct {p0, v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->updateEagerLoaders(Lcom/callapp/contacts/loader/api/LoadContext;[Lcom/callapp/contacts/loader/EagerContactLoader;)Z

    move-result v5

    if-nez v5, :cond_4

    return-void

    .line 561
    :cond_4
    iget-object v5, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->syncLoaders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/callapp/contacts/loader/api/ContactDataLoader;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/callapp/contacts/loader/api/ContactDataLoader;

    .line 562
    invoke-direct {p0, v2, v5}, Lcom/callapp/contacts/loader/api/ContactLoader;->runSyncLoaders(Lcom/callapp/contacts/loader/api/LoadContext;[Lcom/callapp/contacts/loader/api/ContactDataLoader;)Z

    move-result v5

    if-nez v5, :cond_5

    return-void

    :cond_5
    if-eqz v4, :cond_6

    .line 567
    invoke-direct {p0, v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->updateEagerLoaders(Lcom/callapp/contacts/loader/api/LoadContext;[Lcom/callapp/contacts/loader/EagerContactLoader;)Z

    move-result v3

    if-nez v3, :cond_6

    return-void

    :cond_6
    if-eqz p2, :cond_7

    .line 574
    iget-object p2, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    sget-object v3, Lcom/callapp/contacts/loader/api/LoaderFlags;->iterativeLoad:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 575
    iget-object p2, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listenToFields:Ljava/util/Set;

    invoke-virtual {p1, p0, p2}, Lcom/callapp/contacts/model/contact/ContactData;->addListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V

    .line 581
    :cond_7
    iget-object p1, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    sget-object p2, Lcom/callapp/contacts/loader/api/LoaderFlags;->loadOnlyFromCache:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 582
    invoke-direct {p0, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->runAsyncLoaders(Lcom/callapp/contacts/loader/api/LoadContext;)V

    .line 585
    :cond_8
    const-class p1, Lcom/callapp/contacts/loader/api/ContactLoader;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "ContactLoader.doLoad() took "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 539
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getPreferPhotosFromDevice()Z
    .locals 1

    .line 116
    sget-object v0, Lcom/callapp/contacts/loader/api/ContactLoader;->preferPhotosFromDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->i:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/callapp/contacts/loader/api/ContactLoader;->preferPhotosFromDevice:Ljava/lang/Boolean;

    .line 120
    :cond_0
    sget-object v0, Lcom/callapp/contacts/loader/api/ContactLoader;->preferPhotosFromDevice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private newListenerRegistry()Lcom/callapp/contacts/framework/event/FieldListenerRegistry;
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/loader/api/LoaderFlags;->disableContactEvents:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-static {}, Lcom/callapp/contacts/framework/event/NopListenerRegistry;->get()Lcom/callapp/contacts/framework/event/NopListenerRegistry;

    move-result-object v0

    return-object v0

    .line 593
    :cond_0
    new-instance v0, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/framework/event/DelayedListenerRegistry;-><init>(Lcom/callapp/contacts/loader/api/ContactLoader;)V

    return-object v0
.end method

.method private runAsyncLoaders(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 8

    .line 614
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->asyncLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/callapp/contacts/loader/api/ContactDataLoader;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/loader/api/ContactDataLoader;

    .line 615
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 616
    iget-object v4, p1, Lcom/callapp/contacts/loader/api/LoadContext;->c:Ljava/util/Set;

    invoke-virtual {p0, v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->shouldLoad(Lcom/callapp/contacts/loader/api/ContactDataLoader;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 617
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->isStopped()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 621
    :cond_0
    instance-of v4, v3, Lcom/callapp/contacts/loader/api/NetworkDataLoader;

    if-eqz v4, :cond_1

    invoke-static {}, Lkotlinx/coroutines/az;->c()Lkotlinx/coroutines/af;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/az;->a()Lkotlinx/coroutines/af;

    move-result-object v4

    .line 622
    :goto_1
    sget-object v5, Lb/a;->a:Lb/a$a;

    const-string v5, "coroutineContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "loader"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "loadContext"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    sget-object v5, Lkotlinx/coroutines/bo;->a:Lkotlinx/coroutines/bo;

    check-cast v5, Lkotlinx/coroutines/ak;

    new-instance v6, Lb/a$a$b;

    const/4 v7, 0x0

    invoke-direct {v6, v3, p1, v7}, Lb/a$a$b;-><init>(Lcom/callapp/contacts/loader/api/ContactDataLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lkotlin/c/d;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v4, v6}, Lkotlinx/coroutines/h;->a(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/bv;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private runEagerLoaders(Lcom/callapp/contacts/loader/api/LoadContext;[Lcom/callapp/contacts/loader/EagerContactLoader;)Z
    .locals 8

    .line 628
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 629
    iget-object v4, p1, Lcom/callapp/contacts/loader/api/LoadContext;->c:Ljava/util/Set;

    invoke-virtual {p0, v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->shouldLoad(Lcom/callapp/contacts/loader/api/ContactDataLoader;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 630
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->isStopped()Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    .line 634
    :cond_0
    instance-of v4, v3, Lcom/callapp/contacts/loader/api/NetworkDataLoader;

    if-eqz v4, :cond_1

    invoke-static {}, Lkotlinx/coroutines/az;->c()Lkotlinx/coroutines/af;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/az;->a()Lkotlinx/coroutines/af;

    move-result-object v4

    .line 635
    :goto_1
    sget-object v5, Lb/a;->a:Lb/a$a;

    const-string v5, "coroutineContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "loader"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "loadContext"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    sget-object v5, Lkotlinx/coroutines/bo;->a:Lkotlinx/coroutines/bo;

    check-cast v5, Lkotlinx/coroutines/ak;

    new-instance v6, Lb/a$a$c;

    const/4 v7, 0x0

    invoke-direct {v6, v3, p1, v7}, Lb/a$a$c;-><init>(Lcom/callapp/contacts/loader/EagerContactLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lkotlin/c/d;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v4, v6}, Lkotlinx/coroutines/h;->a(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/bv;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private runSyncLoaders(Lcom/callapp/contacts/loader/api/LoadContext;[Lcom/callapp/contacts/loader/api/ContactDataLoader;)Z
    .locals 10

    .line 597
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    aget-object v4, p2, v2

    .line 598
    iget-object v5, p1, Lcom/callapp/contacts/loader/api/LoadContext;->c:Ljava/util/Set;

    invoke-virtual {p0, v4, v5}, Lcom/callapp/contacts/loader/api/ContactLoader;->shouldLoad(Lcom/callapp/contacts/loader/api/ContactDataLoader;Ljava/util/Set;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 600
    invoke-interface {v4, p1, v3}, Lcom/callapp/contacts/loader/api/ContactDataLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Z)V

    .line 601
    const-class v3, Lcom/callapp/contacts/loader/api/ContactLoader;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".load() took "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 603
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private updateEagerLoaders(Lcom/callapp/contacts/loader/api/LoadContext;[Lcom/callapp/contacts/loader/EagerContactLoader;)Z
    .locals 8

    .line 643
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 644
    iget-object v4, p1, Lcom/callapp/contacts/loader/api/LoadContext;->c:Ljava/util/Set;

    invoke-virtual {p0, v3, v4}, Lcom/callapp/contacts/loader/api/ContactLoader;->shouldLoad(Lcom/callapp/contacts/loader/api/ContactDataLoader;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 645
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->isStopped()Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    .line 649
    :cond_0
    instance-of v4, v3, Lcom/callapp/contacts/loader/api/NetworkDataLoader;

    if-eqz v4, :cond_1

    invoke-static {}, Lkotlinx/coroutines/az;->c()Lkotlinx/coroutines/af;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/az;->a()Lkotlinx/coroutines/af;

    move-result-object v4

    .line 650
    :goto_1
    sget-object v5, Lb/a;->a:Lb/a$a;

    const-string v5, "coroutineContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "loader"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "loadContext"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    sget-object v5, Lkotlinx/coroutines/bo;->a:Lkotlinx/coroutines/bo;

    check-cast v5, Lkotlinx/coroutines/ak;

    new-instance v6, Lb/a$a$i;

    const/4 v7, 0x0

    invoke-direct {v6, v3, p1, v7}, Lb/a$a$i;-><init>(Lcom/callapp/contacts/loader/EagerContactLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lkotlin/c/d;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v4, v6}, Lkotlinx/coroutines/h;->a(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/bv;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addAllFields()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1

    .line 367
    sget-object v0, Lcom/callapp/contacts/loader/api/ContactLoader;->ALL_FIELDS:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    return-object v0
.end method

.method public addBirthdayStack()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 5

    .line 238
    new-instance v0, Lcom/callapp/contacts/loader/CompoundSyncLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/CompoundSyncLoader;-><init>()V

    .line 240
    new-instance v1, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;-><init>()V

    .line 241
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    .line 243
    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 244
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 245
    new-instance v0, Lcom/callapp/contacts/loader/CompoundAsyncLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;-><init>()V

    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/UserMediaLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/UserMediaLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/IMExtractorLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/IMExtractorLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 246
    new-instance v0, Lcom/callapp/contacts/loader/CompoundAsyncLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;-><init>()V

    new-instance v1, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/external/NotificationViberLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/external/NotificationViberLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 247
    new-instance v0, Lcom/callapp/contacts/loader/CompoundAsyncLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/callapp/contacts/loader/SimpleContactLoader;

    new-instance v3, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;-><init>(Z[Lcom/callapp/contacts/loader/SimpleContactLoader;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 248
    new-instance v0, Lcom/callapp/contacts/loader/CompoundAsyncLoader;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/callapp/contacts/loader/SimpleContactLoader;

    new-instance v3, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;-><init>()V

    aput-object v3, v2, v4

    new-instance v3, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lcom/callapp/contacts/loader/vk/VKLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/vk/VKLoader;-><init>()V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;-><init>(Z[Lcom/callapp/contacts/loader/SimpleContactLoader;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableSpecificCaches()Lcom/callapp/contacts/loader/api/ContactLoader;

    return-object p0
.end method

.method public addContactDetailsStack(Z)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 3

    .line 180
    invoke-static {}, Lcom/callapp/contacts/loader/api/ContactLoader;->getPreferPhotosFromDevice()Z

    move-result v0

    .line 181
    new-instance v1, Lcom/callapp/contacts/loader/CompoundSyncLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/CompoundSyncLoader;-><init>()V

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;-><init>()V

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;-><init>()V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    :goto_0
    if-eqz p1, :cond_1

    .line 189
    new-instance p1, Lcom/callapp/contacts/loader/device/UserProfileLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/device/UserProfileLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 191
    :cond_1
    new-instance p1, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 192
    new-instance p1, Lcom/callapp/contacts/loader/api/IncognitoContactLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/api/IncognitoContactLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 193
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 194
    new-instance p1, Lcom/callapp/contacts/loader/CompoundAsyncLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;-><init>()V

    new-instance v0, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;-><init>()V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/loader/UserSpamLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/UserSpamLoader;-><init>()V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/loader/UserMediaLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/UserMediaLoader;-><init>()V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/loader/IMExtractorLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/IMExtractorLoader;-><init>()V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 196
    new-instance p1, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addEagerLoader(Lcom/callapp/contacts/loader/EagerContactLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 198
    new-instance p1, Lcom/callapp/contacts/loader/BlockedNumberLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/BlockedNumberLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 199
    new-instance p1, Lcom/callapp/contacts/loader/external/NotificationViberLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/external/NotificationViberLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 200
    new-instance p1, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 202
    new-instance p1, Lcom/callapp/contacts/loader/device/CallHistoryLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/device/CallHistoryLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 203
    new-instance p1, Lcom/callapp/contacts/loader/device/SmsLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/device/SmsLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 204
    new-instance p1, Lcom/callapp/contacts/loader/device/NoteLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/device/NoteLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 205
    new-instance p1, Lcom/callapp/contacts/loader/device/NumberGeocodingLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/device/NumberGeocodingLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 207
    new-instance p1, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 208
    new-instance p1, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 209
    new-instance p1, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 210
    new-instance p1, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 211
    new-instance p1, Lcom/callapp/contacts/loader/vk/VKLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/vk/VKLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 212
    new-instance p1, Lcom/callapp/contacts/loader/external/GravatarLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/external/GravatarLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 214
    new-instance p1, Lcom/callapp/contacts/loader/GoogleStaticMapLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/GoogleStaticMapLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 215
    new-instance p1, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 216
    new-instance p1, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/business/FacebookPlacesLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 217
    new-instance p1, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/business/HuaweiPlacesLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 219
    new-instance p1, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/TwilioTrustedCommLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 221
    new-instance p1, Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/WebsitesSocialIDParsingLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 222
    new-instance p1, Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;-><init>(Lcom/callapp/contacts/loader/api/ContactLoader;)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 223
    new-instance p1, Lcom/callapp/contacts/loader/external/CHLocalLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/external/CHLocalLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 224
    new-instance p1, Lcom/callapp/contacts/loader/external/person/lookup/AuPersonLookupLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/external/person/lookup/AuPersonLookupLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 226
    new-instance p1, Lcom/callapp/contacts/loader/im/SkypeLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/im/SkypeLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 227
    new-instance p1, Lcom/callapp/contacts/loader/im/YahooLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/im/YahooLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 228
    new-instance p1, Lcom/callapp/contacts/loader/GmailLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/GmailLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 229
    new-instance p1, Lcom/callapp/contacts/loader/SuggestionLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/SuggestionLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 232
    new-instance p1, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader;

    invoke-direct {p1}, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    return-object p0
.end method

.method public addDeviceDataAndFastPhotoNameLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1

    .line 261
    new-instance v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 262
    new-instance v0, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 263
    new-instance v0, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 264
    new-instance v0, Lcom/callapp/contacts/loader/UserMediaLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/UserMediaLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 265
    new-instance v0, Lcom/callapp/contacts/loader/api/IncognitoContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/IncognitoContactLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 268
    invoke-static {}, Lcom/callapp/contacts/loader/api/ContactLoader;->getPreferPhotosFromDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 271
    new-instance v0, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 274
    new-instance v0, Lcom/callapp/contacts/loader/device/DevicePhotoLoaderIfNoOtherPhotoYet;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DevicePhotoLoaderIfNoOtherPhotoYet;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 277
    :goto_0
    new-instance v0, Lcom/callapp/contacts/loader/IMExtractorLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/IMExtractorLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    return-object p0
.end method

.method public addDeviceIdAndDataLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1

    .line 254
    new-instance v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 255
    new-instance v0, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 256
    new-instance v0, Lcom/callapp/contacts/loader/api/IncognitoContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/IncognitoContactLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    return-object p0
.end method

.method public addDeviceIdAndPhotoLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1

    .line 282
    new-instance v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 283
    new-instance v0, Lcom/callapp/contacts/loader/UserMediaLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/UserMediaLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 284
    new-instance v0, Lcom/callapp/contacts/loader/api/IncognitoContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/IncognitoContactLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 287
    invoke-static {}, Lcom/callapp/contacts/loader/api/ContactLoader;->getPreferPhotosFromDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 290
    new-instance v0, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    goto :goto_0

    .line 292
    :cond_0
    new-instance v0, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 293
    new-instance v0, Lcom/callapp/contacts/loader/device/DevicePhotoLoaderIfNoOtherPhotoYet;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DevicePhotoLoaderIfNoOtherPhotoYet;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 296
    :goto_0
    new-instance v0, Lcom/callapp/contacts/loader/IMExtractorLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/IMExtractorLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    return-object p0
.end method

.method public addEagerLoader(Lcom/callapp/contacts/loader/EagerContactLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->eagerLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listenToFields:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/callapp/contacts/loader/EagerContactLoader;->getListenFields()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addFields(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)",
            "Lcom/callapp/contacts/loader/api/ContactLoader;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)Z"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->addListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->asyncLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listenToFields:Ljava/util/Set;

    invoke-interface {p1}, Lcom/callapp/contacts/loader/api/ContactDataLoader;->getListenFields()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addLoader([Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 3

    .line 302
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 303
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addSelfContactStack()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 3

    .line 150
    invoke-static {}, Lcom/callapp/contacts/loader/api/ContactLoader;->getPreferPhotosFromDevice()Z

    move-result v0

    .line 151
    new-instance v1, Lcom/callapp/contacts/loader/CompoundSyncLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/CompoundSyncLoader;-><init>()V

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;-><init>()V

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    .line 154
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;-><init>()V

    .line 158
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    .line 161
    :goto_0
    new-instance v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 162
    new-instance v0, Lcom/callapp/contacts/loader/api/IncognitoContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/IncognitoContactLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 163
    new-instance v0, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 164
    new-instance v0, Lcom/callapp/contacts/loader/UserMediaLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/UserMediaLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 165
    new-instance v0, Lcom/callapp/contacts/loader/device/UserProfileLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 166
    new-instance v0, Lcom/callapp/contacts/loader/CompoundAsyncLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 168
    new-instance v0, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 169
    new-instance v0, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 170
    new-instance v0, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 171
    new-instance v0, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 172
    new-instance v0, Lcom/callapp/contacts/loader/vk/VKLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/vk/VKLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    return-object p0
.end method

.method public addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 2

    .line 336
    sget-object v0, Lcom/callapp/contacts/loader/api/ContactLoader;->PRIORITY_SYNC_LOADERS:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->syncPriorityLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->syncLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listenToFields:Ljava/util/Set;

    invoke-interface {p1}, Lcom/callapp/contacts/loader/api/ContactDataLoader;->getListenFields()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addSyncLoader([Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 3

    .line 309
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 310
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addWebview(Lcom/callapp/contacts/loader/api/ContactDataLoader;Landroid/webkit/WebView;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->loadersWebViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getContact()Lcom/callapp/contacts/model/contact/ContactData;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object v0
.end method

.method public getFieldsToLoad()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    return-object v0
.end method

.method public getListenersCount()I
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getLoaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;"
        }
    .end annotation

    .line 714
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->asyncLoaders:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 715
    iget-object v1, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->syncLoaders:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 716
    iget-object v1, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->eagerLoaders:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 764
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->values:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 767
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isAnyLoaderStopped()Z
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->stoppedLoaders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isAnyLoaderStopped(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;>;)Z"
        }
    .end annotation

    .line 740
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 742
    iget-object v1, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->stoppedLoaders:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isLoaderStopped(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;)Z"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->stoppedLoaders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public load(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/loader/api/LoaderFlags;->inSync:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 490
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->setInSync(Z)V

    .line 493
    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 495
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 497
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p1, v2, v1}, Lcom/callapp/contacts/model/contact/ContactData;->addListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 501
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->doLoad(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    return-object p1
.end method

.method public load(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 9

    .line 469
    new-instance v8, Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v4, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    invoke-direct {p0}, Lcom/callapp/contacts/loader/api/ContactLoader;->newListenerRegistry()Lcom/callapp/contacts/framework/event/FieldListenerRegistry;

    move-result-object v5

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/model/contact/ContactData;-><init>(Lcom/callapp/framework/phone/Phone;JLjava/util/Set;Lcom/callapp/contacts/framework/event/FieldListenerRegistry;ZLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    invoke-virtual {p0, v8}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    return-object p1
.end method

.method public load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 9

    .line 473
    new-instance v8, Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v4, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    invoke-direct {p0}, Lcom/callapp/contacts/loader/api/ContactLoader;->newListenerRegistry()Lcom/callapp/contacts/framework/event/FieldListenerRegistry;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/model/contact/ContactData;-><init>(Lcom/callapp/framework/phone/Phone;JLjava/util/Set;Lcom/callapp/contacts/framework/event/FieldListenerRegistry;ZLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    invoke-virtual {p0, v8}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    return-object p1
.end method

.method public load(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 9

    .line 477
    new-instance v8, Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v4, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    invoke-direct {p0}, Lcom/callapp/contacts/loader/api/ContactLoader;->newListenerRegistry()Lcom/callapp/contacts/framework/event/FieldListenerRegistry;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p1

    move-wide v2, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/model/contact/ContactData;-><init>(Lcom/callapp/framework/phone/Phone;JLjava/util/Set;Lcom/callapp/contacts/framework/event/FieldListenerRegistry;ZLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    invoke-virtual {p0, v8}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    return-object p1
.end method

.method public load(Lcom/callapp/framework/phone/Phone;JZ)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 9

    .line 481
    new-instance v8, Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v4, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    invoke-direct {p0}, Lcom/callapp/contacts/loader/api/ContactLoader;->newListenerRegistry()Lcom/callapp/contacts/framework/event/FieldListenerRegistry;

    move-result-object v5

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/model/contact/ContactData;-><init>(Lcom/callapp/framework/phone/Phone;JLjava/util/Set;Lcom/callapp/contacts/framework/event/FieldListenerRegistry;ZLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    invoke-virtual {p0, v8}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 9

    .line 465
    new-instance v8, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-object v4, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    invoke-direct {p0}, Lcom/callapp/contacts/loader/api/ContactLoader;->newListenerRegistry()Lcom/callapp/contacts/framework/event/FieldListenerRegistry;

    move-result-object v5

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/model/contact/ContactData;-><init>(Lcom/callapp/framework/phone/Phone;JLjava/util/Set;Lcom/callapp/contacts/framework/event/FieldListenerRegistry;ZLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    invoke-virtual {p0, v8}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    return-object p1
.end method

.method public loadSelfContact(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/SelfContactData;
    .locals 4

    .line 485
    new-instance v0, Lcom/callapp/contacts/model/SelfContactData;

    iget-object v1, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    invoke-direct {p0}, Lcom/callapp/contacts/loader/api/ContactLoader;->newListenerRegistry()Lcom/callapp/contacts/framework/event/FieldListenerRegistry;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/callapp/contacts/model/SelfContactData;-><init>(Lcom/callapp/framework/phone/Phone;Ljava/util/Set;Lcom/callapp/contacts/framework/event/FieldListenerRegistry;Z)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/SelfContactData;

    return-object p1
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 710
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/loader/api/ContactLoader;->doLoad(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    return-void
.end method

.method public removeField(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public removeFields(Ljava/util/Set;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)",
            "Lcom/callapp/contacts/loader/api/ContactLoader;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->fieldsToLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public removeListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)I
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->removeListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object p1, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    return p1
.end method

.method public removeWebview(Lcom/callapp/contacts/loader/api/ContactDataLoader;)V
    .locals 2

    .line 128
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/api/ContactLoader$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader$1;-><init>(Lcom/callapp/contacts/loader/api/ContactLoader;Lcom/callapp/contacts/loader/api/ContactDataLoader;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/loader/api/LoaderFlags;->disableContactEvents:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDisableSpecificCaches()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/loader/api/LoaderFlags;->disableSpecificCaches:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setForceRefresh()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/loader/api/LoaderFlags;->forceRefresh:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setIgnoreQuotaException()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/loader/api/LoaderFlags;->ignoreQuotaException:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setInSync()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/loader/api/LoaderFlags;->inSync:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setIterativeLoad()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/loader/api/LoaderFlags;->iterativeLoad:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)",
            "Lcom/callapp/contacts/loader/api/ContactLoader;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setLoadCallback(Lcom/callapp/contacts/event/Callback;)Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/event/Callback<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;)",
            "Lcom/callapp/contacts/loader/api/ContactLoader;"
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->callback:Lcom/callapp/contacts/event/Callback;

    return-object p0
.end method

.method public setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->flags:Ljava/util/Set;

    sget-object v1, Lcom/callapp/contacts/loader/api/LoaderFlags;->loadOnlyFromCache:Lcom/callapp/contacts/loader/api/LoaderFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->values:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 775
    monitor-enter p0

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->values:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 777
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->values:Ljava/util/Map;

    .line 779
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 781
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldLoad(Lcom/callapp/contacts/loader/api/ContactDataLoader;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)Z"
        }
    .end annotation

    .line 657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->isLoaderStopped(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 661
    invoke-interface {p1}, Lcom/callapp/contacts/loader/api/ContactDataLoader;->getListenFields()Ljava/util/Set;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    .line 664
    :cond_2
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 665
    const-class p2, Lcom/callapp/contacts/loader/api/ContactLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldLoad=false because loader is stopped for loader="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v0
.end method

.method stopLoader(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;)V"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->stoppedLoaders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public stopLoading(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 3

    .line 675
    const-class v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopLoading("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 678
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    .line 679
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/ContactData;->removeListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    goto :goto_0

    .line 683
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->loadersWebViews:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 684
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/loader/api/ContactLoader$3;-><init>(Lcom/callapp/contacts/loader/api/ContactLoader;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 700
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->loadContextsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader;->loadContexts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/loader/api/LoadContext;

    const/4 v2, 0x1

    .line 1092
    iput-boolean v2, v1, Lcom/callapp/contacts/loader/api/LoadContext;->f:Z

    .line 703
    invoke-virtual {v1}, Lcom/callapp/contacts/loader/api/LoadContext;->c()V

    goto :goto_1

    .line 705
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
