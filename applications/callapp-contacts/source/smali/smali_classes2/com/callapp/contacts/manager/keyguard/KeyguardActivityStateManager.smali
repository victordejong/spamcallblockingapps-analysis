.class public Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 137
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;->get()Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;

    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;->c()Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;

    invoke-static {v2}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;->a(Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method private e(Ljava/lang/String;)Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "no one is registered with this key: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;
    .locals 1

    .line 24
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getKeyguardActivityStateManager()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;->get()Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;->b()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;-><init>(Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;ZZLcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$1;)V

    .line 51
    iget-object v1, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 0

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->e(Ljava/lang/String;)Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;->b(Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;Z)V

    .line 101
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a()V

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a()V

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->e(Ljava/lang/String;)Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 80
    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;->a(Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;Z)V

    .line 81
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a()V

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->e(Ljava/lang/String;)Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 90
    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;->a(Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState;Z)V

    .line 91
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a()V

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method
