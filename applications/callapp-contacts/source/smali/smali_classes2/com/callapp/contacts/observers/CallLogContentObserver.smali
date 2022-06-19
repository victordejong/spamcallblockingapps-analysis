.class public Lcom/callapp/contacts/observers/CallLogContentObserver;
.super Lcom/callapp/contacts/observers/CallAppContentObserver;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/callapp/contacts/observers/CallLogContentObserver;

.field private static c:Landroid/os/HandlerThread;

.field private static h:Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/callapp/contacts/model/contact/ContactData;

.field private j:Lcom/callapp/contacts/model/contact/ContactData;

.field private k:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

.field private final l:Ljava/lang/Object;

.field private m:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

.field private final n:Ljava/lang/Object;

.field private o:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

.field private p:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x3

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/av;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->a:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 415
    invoke-direct {p0, p1}, Lcom/callapp/contacts/observers/CallAppContentObserver;-><init>(Landroid/os/Handler;)V

    .line 51
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->d:Ljava/lang/Object;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->e:Ljava/util/List;

    .line 53
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->f:Ljava/lang/Object;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->g:Ljava/util/List;

    .line 161
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->l:Ljava/lang/Object;

    .line 163
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->n:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->o:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

    .line 166
    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->p:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

    .line 168
    new-instance p1, Lcom/callapp/contacts/observers/CallLogContentObserver$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/observers/CallLogContentObserver$2;-><init>(Lcom/callapp/contacts/observers/CallLogContentObserver;)V

    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->q:Ljava/lang/Runnable;

    return-void
.end method

.method public static a()V
    .locals 5

    .line 61
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CallApp.CallLogObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 63
    sput-object v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    sget-object v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 65
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/callapp/contacts/observers/CallLogContentObserver;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    new-instance v1, Lcom/callapp/contacts/observers/CallLogContentObserver;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/observers/CallLogContentObserver;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/callapp/contacts/observers/CallLogContentObserver;->b:Lcom/callapp/contacts/observers/CallLogContentObserver;

    .line 68
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    sget-object v4, Lcom/callapp/contacts/observers/CallLogContentObserver;->b:Lcom/callapp/contacts/observers/CallLogContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    new-instance v1, Lcom/callapp/contacts/observers/CallLogContentObserver$1;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/observers/CallLogContentObserver$1;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/callapp/contacts/observers/CallLogContentObserver;->h:Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;

    .line 85
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/observers/CallLogContentObserver;->h:Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/observers/CallLogContentObserver;Lcom/callapp/framework/phone/Phone;)V
    .locals 6

    .line 2091
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2092
    iget-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 2093
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->e:Ljava/util/List;

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2094
    iget-object v2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    .line 2095
    iget-object v4, v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v4, v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-static {v4, p1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2096
    iget-object v4, v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v4, v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->g:Ljava/lang/Long;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v4, v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->g:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/date/DateUtils;->a(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2097
    :cond_1
    iget-object v3, v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2102
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2103
    invoke-direct {p0, v0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    .line 2102
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/callapp/contacts/observers/CallLogContentObserver;Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;",
            ">;)V"
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->b:Lcom/callapp/contacts/observers/CallLogContentObserver;

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {v0, p0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;",
            ">;",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;",
            ")V"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 377
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    .line 379
    iget-object v3, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    return-void

    :catchall_0
    move-exception p1

    .line 382
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;",
            ">;",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")V"
        }
    .end annotation

    .line 424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    .line 425
    invoke-virtual {v1, p3}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->setContactData(Lcom/callapp/contacts/model/contact/ContactData;)V

    goto :goto_0

    .line 427
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;",
            ">;Z)V"
        }
    .end annotation

    .line 301
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0, v2, v2}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    .line 304
    invoke-static {v1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Z)V

    return-void

    .line 308
    :cond_0
    new-instance v0, Lcom/callapp/contacts/observers/CallLogContentObserver$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/observers/CallLogContentObserver$5;-><init>(Lcom/callapp/contacts/observers/CallLogContentObserver;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 316
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    .line 317
    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v4

    iget-object v5, v3, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/framework/phone/Phone;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 318
    new-instance v4, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    invoke-direct {v4, v3}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;-><init>(Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_2
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 324
    invoke-direct {p0, v2, v2}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    .line 325
    invoke-static {v1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Z)V

    return-void

    .line 329
    :cond_3
    invoke-static {v0}, Lcom/callapp/contacts/util/MissedCallUtils;->a(Ljava/util/List;)Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

    move-result-object p1

    if-nez p2, :cond_4

    .line 330
    iget-object p2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->o:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 334
    :cond_4
    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->o:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

    .line 336
    iget-boolean p2, p1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->a:Z

    if-eqz p2, :cond_5

    .line 338
    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    return-void

    .line 339
    :cond_5
    iget p2, p1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->b:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_8

    .line 341
    iget-object p2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->l:Ljava/lang/Object;

    monitor-enter p2

    .line 342
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->e()V

    .line 343
    new-instance v2, Lcom/callapp/contacts/observers/CallLogContentObserver$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/callapp/contacts/observers/CallLogContentObserver$6;-><init>(Lcom/callapp/contacts/observers/CallLogContentObserver;Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    iput-object v2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->k:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    .line 355
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    iget-object v1, v1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v4, v1, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->k:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    sget-object v8, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_AND_NAME_FIELDS:Ljava/util/EnumSet;

    invoke-virtual/range {v3 .. v8}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v1

    .line 356
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/model/contact/ContactData;

    iput-object v2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->i:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v2, :cond_6

    .line 357
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v2

    if-nez v2, :cond_6

    .line 358
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0, v0, p1, v2}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 361
    :cond_6
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 362
    iget-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->k:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    if-eqz p1, :cond_7

    .line 363
    iget-object v0, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->i:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/model/contact/ContactDataChangeListener;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 366
    :cond_7
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 369
    :cond_8
    invoke-static {v0}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->a(Ljava/util/List;)V

    .line 370
    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    return-void
.end method

.method public static a(Z)V
    .locals 9

    .line 147
    sget-object v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->b:Lcom/callapp/contacts/observers/CallLogContentObserver;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1438
    iput-object v1, v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->o:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

    .line 1439
    invoke-direct {v0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->e()V

    .line 1440
    iget-object v1, v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 1441
    :try_start_0
    iget-object v2, v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->g:Ljava/util/List;

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1442
    iget-object v2, v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    .line 1443
    invoke-virtual {v3}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->getSourcePhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const/4 v6, 0x3

    if-eqz p0, :cond_0

    iget-object v3, v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v3, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v3, v3, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    goto :goto_1

    :cond_0
    const-wide/16 v7, 0x0

    :goto_1
    invoke-static {v4, v5, v6, v7, v8}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    goto :goto_0

    .line 1447
    :cond_1
    iget-object p0, v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 1448
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method private static a(Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;)Z
    .locals 7

    .line 401
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    iget v3, p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/common/collect/av;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a(Lcom/callapp/framework/phone/Phone;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 402
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DONT_SHOW:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getDeleteTimeStamp()J

    move-result-wide v2

    iget-object p0, p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long p0, v2, v5

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v4
.end method

.method static synthetic b(Lcom/callapp/contacts/observers/CallLogContentObserver;Lcom/callapp/framework/phone/Phone;)V
    .locals 6

    .line 2107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2108
    iget-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 2109
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->g:Ljava/util/List;

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2110
    iget-object v2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    .line 2111
    iget-object v4, v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v4, v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-static {v4, p1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2112
    iget-object v4, v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v4, v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->g:Ljava/lang/Long;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v4, v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->g:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/date/DateUtils;->a(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2113
    :cond_1
    iget-object v3, v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2118
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 2119
    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Ljava/util/List;Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 2118
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic b(Lcom/callapp/contacts/observers/CallLogContentObserver;Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;",
            ">;)V"
        }
    .end annotation

    .line 226
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0, v2, v2}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    .line 229
    invoke-static {v1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Z)V

    return-void

    .line 233
    :cond_0
    new-instance v0, Lcom/callapp/contacts/observers/CallLogContentObserver$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/observers/CallLogContentObserver$3;-><init>(Lcom/callapp/contacts/observers/CallLogContentObserver;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    .line 242
    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v4

    iget-object v5, v3, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/framework/phone/Phone;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 243
    new-instance v4, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    invoke-direct {v4, v3}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;-><init>(Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_2
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 249
    invoke-direct {p0, v2, v2}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    .line 250
    invoke-static {v1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Z)V

    return-void

    .line 254
    :cond_3
    invoke-static {v0}, Lcom/callapp/contacts/util/MissedCallUtils;->a(Ljava/util/List;)Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

    move-result-object p1

    .line 255
    iget-object v2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->p:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 259
    :cond_4
    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->p:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

    .line 261
    iget-boolean v2, p1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->a:Z

    if-eqz v2, :cond_5

    .line 263
    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    return-void

    .line 264
    :cond_5
    iget v2, p1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 266
    iget-object v2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->n:Ljava/lang/Object;

    monitor-enter v2

    .line 267
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->f()V

    .line 268
    new-instance v3, Lcom/callapp/contacts/observers/CallLogContentObserver$4;

    invoke-direct {v3, p0, v0, p1}, Lcom/callapp/contacts/observers/CallLogContentObserver$4;-><init>(Lcom/callapp/contacts/observers/CallLogContentObserver;Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    iput-object v3, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->m:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    .line 280
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    iget-object v1, v1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v5, v1, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->m:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    sget-object v9, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_AND_NAME_FIELDS:Ljava/util/EnumSet;

    invoke-virtual/range {v4 .. v9}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v1

    .line 281
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/callapp/contacts/model/contact/ContactData;

    iput-object v3, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->j:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v3, :cond_6

    .line 282
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v3

    if-nez v3, :cond_6

    .line 283
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0, v0, p1, v3}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 286
    :cond_6
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 287
    iget-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->m:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    if-eqz p1, :cond_7

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->j:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/model/contact/ContactDataChangeListener;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 291
    :cond_7
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 294
    :cond_8
    invoke-static {v0}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->a(Ljava/util/List;)V

    .line 295
    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    return-void
.end method

.method private b(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;",
            ">;",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;",
            ")V"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 390
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    .line 392
    iget-object v3, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/manager/NotificationManager;->b(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    return-void

    :catchall_0
    move-exception p1

    .line 395
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private b(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;",
            ">;",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")V"
        }
    .end annotation

    .line 431
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    .line 432
    invoke-virtual {v1, p3}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->setContactData(Lcom/callapp/contacts/model/contact/ContactData;)V

    goto :goto_0

    .line 434
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V

    return-void
.end method

.method public static b(Z)V
    .locals 9

    .line 153
    sget-object v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->b:Lcom/callapp/contacts/observers/CallLogContentObserver;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1452
    iput-object v1, v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->p:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

    .line 1453
    invoke-direct {v0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->f()V

    .line 1454
    iget-object v1, v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 1455
    :try_start_0
    iget-object v2, v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->e:Ljava/util/List;

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1456
    iget-object v2, v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    .line 1457
    invoke-virtual {v3}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->getSourcePhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const/16 v6, 0x28

    if-eqz p0, :cond_0

    iget-object v3, v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v3, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v3, v3, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    goto :goto_1

    :cond_0
    const-wide/16 v7, 0x0

    :goto_1
    invoke-static {v4, v5, v6, v7, v8}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    goto :goto_0

    .line 1461
    :cond_1
    iget-object p0, v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 1462
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public static c()V
    .locals 3

    .line 123
    sget-object v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->b:Lcom/callapp/contacts/observers/CallLogContentObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/observers/CallLogContentObserver;->b:Lcom/callapp/contacts/observers/CallLogContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 125
    sput-object v1, Lcom/callapp/contacts/observers/CallLogContentObserver;->b:Lcom/callapp/contacts/observers/CallLogContentObserver;

    .line 127
    :cond_0
    sget-object v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 129
    sput-object v1, Lcom/callapp/contacts/observers/CallLogContentObserver;->c:Landroid/os/HandlerThread;

    .line 131
    :cond_1
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/observers/CallLogContentObserver;->h:Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;)V
    .locals 1

    .line 135
    sget-object v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->b:Lcom/callapp/contacts/observers/CallLogContentObserver;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;)V

    :cond_0
    return-void
.end method

.method static synthetic d()Lcom/callapp/contacts/observers/CallLogContentObserver;
    .locals 1

    .line 48
    sget-object v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->b:Lcom/callapp/contacts/observers/CallLogContentObserver;

    return-object v0
.end method

.method public static d(Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;)V
    .locals 1

    .line 141
    sget-object v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->b:Lcom/callapp/contacts/observers/CallLogContentObserver;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->i:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->k:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    if-eqz v1, :cond_0

    .line 468
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->i:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v3, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->k:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    const/4 v1, 0x0

    .line 469
    iput-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->i:Lcom/callapp/contacts/model/contact/ContactData;

    .line 470
    iput-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->k:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    .line 472
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private f()V
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->j:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->m:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    if-eqz v1, :cond_0

    .line 478
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->j:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v3, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->m:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    const/4 v1, 0x0

    .line 479
    iput-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->j:Lcom/callapp/contacts/model/contact/ContactData;

    .line 480
    iput-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->m:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    .line 482
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected final b()Ljava/lang/Runnable;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/callapp/contacts/observers/CallLogContentObserver;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final c(Z)V
    .locals 7

    if-nez p1, :cond_0

    .line 179
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->a()V

    .line 180
    invoke-direct {p0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->e()V

    .line 181
    invoke-direct {p0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->f()V

    .line 184
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x28

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->af:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->ae:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {v0}, Lcom/callapp/contacts/util/MissedCallUtils;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 192
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    .line 196
    iget v6, v5, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    if-eq v6, v2, :cond_3

    if-eq v6, v1, :cond_2

    goto :goto_0

    .line 202
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_4
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    .line 209
    invoke-direct {p0, v3, p1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Ljava/util/List;Z)V

    :cond_5
    if-nez p1, :cond_6

    .line 213
    invoke-static {v4}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Ljava/util/Set;)V

    .line 214
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
