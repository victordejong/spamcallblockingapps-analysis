.class public Lcom/callapp/contacts/manager/messaging/FcmManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# instance fields
.field private final a:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/messaging/FcmManager;->a:Ljava/util/Random;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/messaging/FcmManager;Ljava/lang/String;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/messaging/FcmManager;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 14

    .line 91
    const-class v0, Lcom/callapp/contacts/manager/messaging/FcmManager;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "registerOnServer(%s)"

    invoke-static {v0, v4, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "Not registering because of no internet"

    .line 94
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v3

    .line 1177
    :cond_0
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1178
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1179
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->getGroupDimension()I

    move-result v5

    .line 1181
    new-instance v6, Lcom/callapp/common/model/message/ClientData;

    invoke-direct {v6}, Lcom/callapp/common/model/message/ClientData;-><init>()V

    sget-object v7, Lcom/callapp/common/model/message/CallAppClient;->ANDROID:Lcom/callapp/common/model/message/CallAppClient;

    .line 1182
    invoke-virtual {v6, v7}, Lcom/callapp/common/model/message/ClientData;->setClient(Lcom/callapp/common/model/message/CallAppClient;)Lcom/callapp/common/model/message/ClientData;

    move-result-object v6

    .line 1183
    invoke-virtual {v6, p1}, Lcom/callapp/common/model/message/ClientData;->setRegistrationId(Ljava/lang/String;)Lcom/callapp/common/model/message/ClientData;

    move-result-object v6

    .line 1184
    invoke-virtual {v6, v2}, Lcom/callapp/common/model/message/ClientData;->setPhoneNumber(Ljava/lang/String;)Lcom/callapp/common/model/message/ClientData;

    move-result-object v2

    .line 1185
    invoke-virtual {v2, v4}, Lcom/callapp/common/model/message/ClientData;->setToken(Ljava/lang/String;)Lcom/callapp/common/model/message/ClientData;

    move-result-object v2

    .line 1186
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callapp/common/model/message/ClientData;->setGroup(Ljava/lang/Integer;)Lcom/callapp/common/model/message/ClientData;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 103
    iget-object v4, p0, Lcom/callapp/contacts/manager/messaging/FcmManager;->a:Ljava/util/Random;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit16 v4, v4, 0x7d0

    int-to-long v4, v4

    const/4 v6, 0x1

    :goto_0
    const/16 v7, 0x50

    const/4 v8, 0x5

    if-gt v6, v8, :cond_3

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    .line 106
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    const-string v11, "Attempt %s/%s to register"

    invoke-static {v0, v11, v10}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v10

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v1

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1206
    invoke-virtual {v10, v11, v7}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    .line 110
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppServerHost()Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->b()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 111
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallappServerPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "ws/msg/register"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/common/model/message/Response;

    move-result-object v10

    .line 112
    invoke-virtual {v10}, Lcom/callapp/common/model/message/Response;->isOk()Z

    move-result v11

    if-eqz v11, :cond_2

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "Registered to server with id %s"

    .line 113
    invoke-static {v0, v4, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2206
    invoke-virtual {v0, p1, v7}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    return v1

    :cond_1
    const-string v10, "App server not reachable"

    .line 118
    invoke-static {v10}, Lcom/callapp/common/model/message/Response;->error(Ljava/lang/String;)Lcom/callapp/common/model/message/Response;

    move-result-object v10

    :cond_2
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 122
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v1

    aput-object v10, v11, v9

    const-string v9, "Failed to register on attempt %s/%s: %s"

    invoke-static {v0, v9, v11}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v6, v8, :cond_3

    :try_start_0
    const-string v7, "Sleeping for %s ms before retry"

    new-array v8, v1, [Ljava/lang/Object;

    .line 128
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v0, v7, v8}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v7, 0x2

    mul-long v4, v4, v7

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Thread interrupted: abort remaining retries!"

    .line 132
    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return v3

    .line 140
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "Failed to register after %s attempts"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3206
    invoke-virtual {p1, v2, v7}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    new-array p1, v1, [Ljava/lang/Object;

    .line 141
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {v0, v4, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v3
.end method

.method public static get()Lcom/callapp/contacts/manager/messaging/FcmManager;
    .locals 1

    .line 190
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getFcmManager()Lcom/callapp/contacts/manager/messaging/FcmManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 41
    const-class v0, Lcom/callapp/contacts/manager/messaging/FcmManager;

    const-string v1, "registerDevice()"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 42
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GooglePlayServices is not available"

    .line 48
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/b;->a(Landroid/content/Context;)Lcom/google/firebase/b;

    .line 55
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->a()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->b()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/messaging/FcmManager$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/messaging/FcmManager$1;-><init>(Lcom/callapp/contacts/manager/messaging/FcmManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method
