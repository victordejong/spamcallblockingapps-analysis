.class public Lcom/callapp/contacts/manager/ProximityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;
    }
.end annotation


# instance fields
.field public a:Lcom/callapp/contacts/model/call/CallData;

.field private b:Landroid/os/PowerManager$WakeLock;

.field private c:Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/callapp/contacts/model/call/CallData;Ljava/lang/Boolean;Z)V
    .locals 9

    .line 83
    invoke-static {}, Lcom/callapp/contacts/manager/ProximityManager;->get()Lcom/callapp/contacts/manager/ProximityManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/callapp/contacts/manager/ProximityManager;->isProximitySensorModeEnabled()Z

    move-result v0

    .line 84
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isSpeakerOn()Z

    move-result v1

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "updateProximitySensorMode: proximityEnabled: %s, callState: %s, speakerOn: %s, headsetConnected: %s, usingBT: %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 88
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    if-nez p1, :cond_0

    const-string v5, "CALL_DATA_NULL"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v5

    :goto_0
    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    .line 89
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v5

    .line 86
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/manager/ProximityManager;->b:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 93
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getConnectingOrActiveCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    if-eqz p1, :cond_3

    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 94
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    sget-object v2, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    .line 95
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    if-nez p3, :cond_5

    .line 1057
    invoke-direct {p0}, Lcom/callapp/contacts/manager/ProximityManager;->isProximitySensorModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1058
    iget-object p1, p0, Lcom/callapp/contacts/manager/ProximityManager;->b:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1059
    :try_start_1
    iget-object p2, p0, Lcom/callapp/contacts/manager/ProximityManager;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1060
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "acquireProximityLock: acquiring..."

    invoke-static {p2, p3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1061
    iget-object p2, p0, Lcom/callapp/contacts/manager/ProximityManager;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_3

    .line 1063
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "acquireProximityLock: lock already held."

    invoke-static {p2, p3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1065
    :goto_3
    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2

    .line 98
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/ProximityManager;->a()V

    .line 100
    :cond_6
    :goto_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_7
    return-void
.end method

.method public static get()Lcom/callapp/contacts/manager/ProximityManager;
    .locals 1

    .line 27
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getProximityManager()Lcom/callapp/contacts/manager/ProximityManager;

    move-result-object v0

    return-object v0
.end method

.method private isProximitySensorModeEnabled()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/manager/ProximityManager;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 70
    invoke-direct {p0}, Lcom/callapp/contacts/manager/ProximityManager;->isProximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/manager/ProximityManager;->b:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/ProximityManager;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "releaseProximityLock: releasing..."

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/callapp/contacts/manager/ProximityManager;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "releaseProximityLock: lock already released."

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 78
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/manager/ProximityManager;->a:Lcom/callapp/contacts/model/call/CallData;

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isHeadsetConnected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isUsingBT()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/callapp/contacts/manager/ProximityManager;->a(Lcom/callapp/contacts/model/call/CallData;Ljava/lang/Boolean;Z)V

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/manager/ProximityManager;->c:Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;->a()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/ProximityManager;->a()V

    .line 49
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method public init()V
    .locals 4

    const-string v0, "power"

    .line 33
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0x20

    :try_start_0
    const-string v2, "ProximityManager.proximityWakeLock"

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/ProximityManager;->b:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    const-class v1, Lcom/callapp/contacts/manager/ProximityManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "ignoring exception for newWakeLock: "

    invoke-static {v1, v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/callapp/contacts/manager/ProximityManager;->b:Landroid/os/PowerManager$WakeLock;

    .line 42
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 107
    iput-object p1, p0, Lcom/callapp/contacts/manager/ProximityManager;->a:Lcom/callapp/contacts/model/call/CallData;

    .line 108
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bm:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isTalking()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/ProximityManager;->b()V

    :cond_2
    return-void
.end method

.method public setAudioModeChangedListener(Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/callapp/contacts/manager/ProximityManager;->c:Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;

    return-void
.end method
