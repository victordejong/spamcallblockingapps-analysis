.class public Lcom/callapp/contacts/wearable/WearableClientHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;
.implements Lcom/google/android/gms/tasks/d;
.implements Lcom/google/android/gms/wearable/b$a;
.implements Lcom/google/android/gms/wearable/l$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;",
        "Lcom/callapp/contacts/manager/ManagedLifecycle;",
        "Lcom/callapp/contacts/manager/phone/CallStateListener;",
        "Lcom/google/android/gms/tasks/d<",
        "Lcom/google/android/gms/wearable/c;",
        ">;",
        "Lcom/google/android/gms/wearable/b$a;",
        "Lcom/google/android/gms/wearable/l$a;"
    }
.end annotation


# instance fields
.field public a:[B

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private e:Lcom/google/android/gms/wearable/b;

.field private final f:Ljava/lang/Object;

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/wearable/n;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/gms/wearable/l;

.field private i:I

.field private j:Lcom/callapp/contacts/model/call/CallState;

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->f:Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    iput-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->j:Lcom/callapp/contacts/model/call/CallState;

    .line 94
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->l:Ljava/util/List;

    .line 104
    new-instance v0, Lcom/callapp/contacts/wearable/WearableClientHandler$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/wearable/WearableClientHandler$1;-><init>(Lcom/callapp/contacts/wearable/WearableClientHandler;)V

    iput-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->m:Ljava/lang/Runnable;

    .line 98
    const-class v0, Lcom/callapp/contacts/wearable/WearableClientHandler;

    const-string v1, "Init WearableClientHandler"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/p;->b(Landroid/content/Context;)Lcom/google/android/gms/wearable/b;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->e:Lcom/google/android/gms/wearable/b;

    const-string v1, "watch_client"

    .line 100
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/b;->a(Lcom/google/android/gms/wearable/b$a;Ljava/lang/String;)Lcom/google/android/gms/tasks/h;

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->e:Lcom/google/android/gms/wearable/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/b;->a(Ljava/lang/String;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/wearable/WearableClientHandler;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 407
    iget p1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->i:I

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const-string p1, "/callapp/state_path"

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/wearable/WearableClientHandler;Ljava/lang/String;[B)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method private static a(Z)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 399
    invoke-static {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->b(Z)B

    move-result p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method private static b(Z)B
    .locals 0

    int-to-byte p0, p0

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/wearable/WearableClientHandler;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->f:Ljava/lang/Object;

    return-object p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->k:Z

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->m:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/wearable/WearableClientHandler;)Ljava/util/Set;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->g:Ljava/util/Set;

    return-object p0
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->k:Z

    .line 131
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/wearable/WearableClientHandler;)Lcom/google/android/gms/wearable/l;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->h:Lcom/google/android/gms/wearable/l;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 154
    :goto_0
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bi:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 155
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bi:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "/callapp/quick_sms_array"

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->h:Lcom/google/android/gms/wearable/l;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/l;->a(Lcom/google/android/gms/wearable/l$a;)Lcom/google/android/gms/tasks/h;

    .line 164
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->a(Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;)V

    .line 165
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method private f()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->h:Lcom/google/android/gms/wearable/l;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/l;->b(Lcom/google/android/gms/wearable/l$a;)Lcom/google/android/gms/tasks/h;

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->h:Lcom/google/android/gms/wearable/l;

    .line 175
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b(Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;)V

    .line 176
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method private static g()V
    .locals 3

    .line 233
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ci:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Wearable"

    const-string v2, "Showing wearable notification"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ci:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getAllSupportedAudioNames()Ljava/lang/String;
    .locals 7

    .line 454
    iget-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 455
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    .line 456
    sget-object v1, Lcom/callapp/contacts/inCallService/AudioModeProvider;->c:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, v1, v3

    .line 457
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v5

    and-int/2addr v5, v4

    if-eqz v5, :cond_3

    .line 458
    iget-object v5, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->l:Ljava/util/List;

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    const/16 v6, 0x8

    if-eq v4, v6, :cond_0

    const-string v4, ""

    goto :goto_1

    .line 2476
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const v6, 0x7f1200cb

    invoke-virtual {v4, v6}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2474
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const v6, 0x7f1200c9

    invoke-virtual {v4, v6}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2472
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const v6, 0x7f1200ca

    invoke-virtual {v4, v6}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 458
    :goto_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 461
    :cond_4
    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedBluetoothDevices()Ljava/util/Collection;

    move-result-object v0

    .line 462
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 463
    iget-object v2, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->l:Ljava/util/List;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 465
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->l:Ljava/util/List;

    const-string v1, ", "

    invoke-static {v1, v0}, L$r8$backportedMethods$utility$String$2$joinIterable;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 2

    .line 283
    invoke-direct {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->c()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    const-string v1, "/callapp/end_overlay_path"

    .line 284
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->a:[B

    .line 286
    iput-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->b:Ljava/lang/String;

    .line 287
    iget-object v1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 288
    iput-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->c:Ljava/lang/String;

    return-void
.end method

.method private i()V
    .locals 2

    .line 392
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    const-string v1, "/callapp/quick_hang_failed"

    .line 394
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->isWearConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Z)[B

    move-result-object v0

    const-string v1, "/callapp/default_dialer_path"

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/c;)V
    .locals 3

    .line 136
    const-class v0, Lcom/callapp/contacts/wearable/WearableClientHandler;

    iget-object v1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/wearable/c;->getNodes()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->g:Ljava/util/Set;

    .line 138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->isWearConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/wearable/p;->a(Landroid/content/Context;)Lcom/google/android/gms/wearable/l;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->h:Lcom/google/android/gms/wearable/l;

    .line 142
    invoke-static {}, Lcom/callapp/contacts/wearable/WearableClientHandler;->g()V

    .line 143
    invoke-direct {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->e()V

    .line 144
    invoke-direct {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->d()V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCapabilityChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->g:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->f()V

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCapabilityChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no connections"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 138
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/wearable/m;)V
    .locals 10

    if-eqz p1, :cond_13

    .line 293
    invoke-interface {p1}, Lcom/google/android/gms/wearable/m;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_13

    .line 294
    invoke-interface {p1}, Lcom/google/android/gms/wearable/m;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 295
    new-instance v1, Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/wearable/m;->getData()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v2, "/callapp/command_path"

    .line 297
    invoke-static {v2, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "/callapp/multi_bluetooth_connections"

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-string v9, "Wearable"

    if-eqz v2, :cond_9

    .line 298
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v4, -0x1

    goto :goto_1

    :sswitch_0
    const-string v2, "Answer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_1
    const-string v2, "is_default_dialer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :sswitch_2
    const-string v2, "set_default_dialer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "Hang"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_4
    const-string v2, "watch_resumed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_5
    const-string v2, "speaker_toggle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_6

    .line 313
    :pswitch_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "answer"

    invoke-virtual {v2, v9, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->c()Z

    goto/16 :goto_6

    .line 317
    :pswitch_1
    invoke-virtual {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a()V

    goto/16 :goto_6

    .line 320
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "extra_default_phone_app_from_watch"

    .line 321
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 323
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "start default dialer flow on phone"

    invoke-virtual {v2, v9, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 300
    :pswitch_3
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "hang call"

    invoke-virtual {v2, v9, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->i()V

    goto/16 :goto_6

    .line 326
    :pswitch_4
    iget-object v2, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->j:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallState;->isIdle()Z

    move-result v2

    if-nez v2, :cond_12

    new-array v2, v7, [B

    const-string v3, "/callapp/start_overlay_path"

    .line 328
    invoke-virtual {p0, v3, v2}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    .line 330
    iget-object v2, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    iget-object v2, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "/callapp/name_path"

    invoke-virtual {p0, v3, v2}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    .line 333
    :cond_6
    iget-object v2, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->a:[B

    if-eqz v2, :cond_7

    const-string v3, "/callapp/image_path"

    .line 334
    invoke-virtual {p0, v3, v2}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    .line 337
    :cond_7
    iget-object v2, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->j:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(I)V

    new-array v2, v7, [B

    const-string v3, "/callapp/end_activity_path"

    .line 338
    invoke-virtual {p0, v3, v2}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    .line 340
    iget-boolean v2, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->k:Z

    if-nez v2, :cond_12

    .line 341
    invoke-direct {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->b()V

    goto/16 :goto_6

    .line 304
    :pswitch_5
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->isMoreThenOneBluetoothDevices()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 305
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v4, "toggle audio multi bluetooth"

    invoke-virtual {v2, v9, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->getAllSupportedAudioNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    goto/16 :goto_6

    .line 308
    :cond_8
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "toggle audio mode"

    invoke-virtual {v2, v9, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->b(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 346
    :cond_9
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 347
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_2
    const/4 v5, -0x1

    goto :goto_3

    :sswitch_6
    const-string v2, "/callapp/draw_permission_path"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_2

    :sswitch_7
    const-string v2, "/callapp/end_call_with_sms_path"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_a
    const/4 v5, 0x1

    goto :goto_3

    :sswitch_8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    const/4 v5, 0x0

    :cond_c
    :goto_3
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_6

    .line 376
    :pswitch_6
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "overlay permission granted"

    invoke-virtual {v2, v9, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 349
    :pswitch_7
    iget-object v2, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 350
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "end call with sms"

    invoke-virtual {v2, v9, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/callapp/contacts/util/SmsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    .line 352
    invoke-direct {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->i()V

    goto/16 :goto_6

    .line 357
    :pswitch_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_12

    .line 358
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 359
    iget-object v3, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->l:Ljava/util/List;

    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 360
    iget-object v3, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1482
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    const v7, 0x7f1200ca

    invoke-virtual {v5, v7}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v4, 0x1

    goto :goto_4

    .line 1484
    :cond_d
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    const v6, 0x7f1200c9

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_4

    .line 1486
    :cond_e
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const v5, 0x7f1200cb

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v4, 0x8

    goto :goto_4

    :cond_f
    const/4 v4, -0x1

    :goto_4
    if-ne v4, v8, :cond_11

    .line 361
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v3, v5, :cond_11

    .line 363
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/CallAudioState;->getSupportedBluetoothDevices()Ljava/util/Collection;

    move-result-object v3

    .line 364
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 365
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->l:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 366
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_5

    .line 370
    :cond_11
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->setAudioRoute(I)V

    .line 382
    :cond_12
    :goto_6
    const-class v2, Lcom/callapp/contacts/wearable/WearableClientHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onMessageReceived() A message from watch was received:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-interface {p1}, Lcom/google/android/gms/wearable/m;->getRequestId()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Message "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-static {v2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_13
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72a6d46c -> :sswitch_5
        -0x3cf89599 -> :sswitch_4
        0x223492 -> :sswitch_3
        0x1557e958 -> :sswitch_2
        0x28e4ef90 -> :sswitch_1
        0x752f2bde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x362544dd -> :sswitch_8
        0x6d0878e2 -> :sswitch_7
        0x76f5b6d5 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->isWearConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lcom/callapp/contacts/wearable/WearableClientHandler$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/wearable/WearableClientHandler$2;-><init>(Lcom/callapp/contacts/wearable/WearableClientHandler;Ljava/lang/String;[B)V

    .line 264
    invoke-virtual {v0}, Lcom/callapp/contacts/wearable/WearableClientHandler$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->e:Lcom/google/android/gms/wearable/b;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/b;->a(Lcom/google/android/gms/wearable/b$a;)Lcom/google/android/gms/tasks/h;

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->h:Lcom/google/android/gms/wearable/l;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/l;->b(Lcom/google/android/gms/wearable/l$a;)Lcom/google/android/gms/tasks/h;

    .line 276
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b(Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;)V

    .line 277
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 279
    invoke-direct {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->h()V

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isWearConnected()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->g:Ljava/util/Set;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAudioMode(I)V
    .locals 0

    .line 412
    iput p1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->i:I

    .line 413
    iget-object p1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->j:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(I)V

    return-void
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 3

    .line 423
    const-class v0, Lcom/callapp/contacts/wearable/WearableClientHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallStateChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->j:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 426
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->j:Lcom/callapp/contacts/model/call/CallState;

    .line 428
    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isRinging()Z

    move-result v0

    const-string v1, "Wearable"

    if-eqz v0, :cond_1

    .line 429
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->j:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallState;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "incoming call"

    goto :goto_0

    :cond_0
    const-string v2, "outgoing call"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [B

    const-string v0, "/callapp/start_overlay_path"

    .line 431
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    .line 432
    iget-boolean p1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->k:Z

    if-nez p1, :cond_1

    .line 433
    invoke-direct {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->b()V

    .line 438
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->j:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 439
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "call end"

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-direct {p0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->h()V

    goto :goto_1

    .line 441
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->j:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isDisconnected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 443
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getLastCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 445
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->j:Lcom/callapp/contacts/model/call/CallState;

    .line 448
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/wearable/WearableClientHandler;->j:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(I)V

    :cond_4
    return-void
.end method

.method public onComplete(Lcom/google/android/gms/tasks/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/android/gms/wearable/c;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/c;

    .line 118
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Lcom/google/android/gms/wearable/c;)V

    return-void

    .line 120
    :cond_0
    const-class p1, Lcom/callapp/contacts/wearable/WearableClientHandler;

    const-string v0, "Capability request failed to return any results."

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onMute(Z)V
    .locals 0

    return-void
.end method
