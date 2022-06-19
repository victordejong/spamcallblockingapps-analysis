.class public Lcom/callapp/contacts/service/jobs/ConnectionChangedService;
.super Landroidx/core/app/SafeJobIntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/service/jobs/ConnectionChangedService$ConnectionChangedListener;
    }
.end annotation


# static fields
.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/service/jobs/ConnectionChangedService$ConnectionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/callapp/contacts/service/jobs/ConnectionChangedService;->j:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/service/jobs/ConnectionChangedService;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/core/app/SafeJobIntentService;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/service/jobs/ConnectionChangedService$ConnectionChangedListener;)V
    .locals 2

    .line 28
    sget-object v0, Lcom/callapp/contacts/service/jobs/ConnectionChangedService;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/service/jobs/ConnectionChangedService;->j:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Lcom/callapp/contacts/service/jobs/ConnectionChangedService$ConnectionChangedListener;)V
    .locals 2

    .line 34
    sget-object v0, Lcom/callapp/contacts/service/jobs/ConnectionChangedService;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/service/jobs/ConnectionChangedService;->j:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2

    .line 41
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gz:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    const-string v0, "networkInfo"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-nez p1, :cond_0

    .line 45
    const-class p1, Lcom/callapp/contacts/service/jobs/ConnectionChangedService;

    const-string v0, "No EXTRA_NETWORK_INFO on CONNECTIVITY_ACTION intent"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 51
    invoke-static {}, Lcom/callapp/contacts/manager/messaging/FcmManager;->get()Lcom/callapp/contacts/manager/messaging/FcmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/messaging/FcmManager;->a()V

    .line 53
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bn:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    invoke-static {}, Lcom/callapp/contacts/sync/service/RealSyncService;->d()V

    .line 59
    :cond_2
    sget-object v0, Lcom/callapp/contacts/service/jobs/ConnectionChangedService;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/service/jobs/ConnectionChangedService$ConnectionChangedListener;

    .line 60
    invoke-interface {v1, p1}, Lcom/callapp/contacts/service/jobs/ConnectionChangedService$ConnectionChangedListener;->a(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method
