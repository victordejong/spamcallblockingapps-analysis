.class public Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    .line 74
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/model/OBPrefsManager;->getPrefs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 77
    invoke-static {v1}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 78
    const-class v2, Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 79
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 82
    :goto_0
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/OBPref;

    .line 84
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/OBPref;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/OBPref;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/OBPref;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/OBPref;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p2, :cond_0

    sget-object p2, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->a:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static get()Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;
    .locals 1

    .line 65
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getPrefsStore()Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    sget-object v0, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    :cond_0
    monitor-enter v0

    .line 52
    :try_start_0
    invoke-static {p1, p2}, Lcom/callapp/contacts/model/OBPrefsManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->a()V

    return-void
.end method
