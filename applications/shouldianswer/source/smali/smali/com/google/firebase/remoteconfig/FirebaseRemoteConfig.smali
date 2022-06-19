.class public Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_VALUE_FOR_BOOLEAN:Z = false

.field public static final DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

.field public static final DEFAULT_VALUE_FOR_DOUBLE:D = 0.0

.field public static final DEFAULT_VALUE_FOR_LONG:J = 0x0L

.field public static final DEFAULT_VALUE_FOR_STRING:Ljava/lang/String; = ""

.field public static final LAST_FETCH_STATUS_FAILURE:I = 0x1

.field public static final LAST_FETCH_STATUS_NO_FETCH_YET:I = 0x0

.field public static final LAST_FETCH_STATUS_SUCCESS:I = -0x1

.field public static final LAST_FETCH_STATUS_THROTTLED:I = 0x2

.field public static final VALUE_SOURCE_DEFAULT:I = 0x1

.field public static final VALUE_SOURCE_REMOTE:I = 0x2

.field public static final VALUE_SOURCE_STATIC:I


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzja:Landroid/content/Context;

.field private final zzjb:Lcom/google/firebase/FirebaseApp;

.field private final zzjc:Lcom/google/firebase/abt/FirebaseABTesting;

.field private final zzjd:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

.field private final zzje:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

.field private final zzjf:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

.field private final zzjg:Lcom/google/android/gms/internal/firebase_remote_config/zzes;

.field private final zzjh:Lcom/google/android/gms/internal/firebase_remote_config/zzew;

.field private final zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 171
    sput-object v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/abt/FirebaseABTesting;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/firebase_remote_config/zzei;Lcom/google/android/gms/internal/firebase_remote_config/zzei;Lcom/google/android/gms/internal/firebase_remote_config/zzei;Lcom/google/android/gms/internal/firebase_remote_config/zzes;Lcom/google/android/gms/internal/firebase_remote_config/zzew;Lcom/google/android/gms/internal/firebase_remote_config/zzev;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzja:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjb:Lcom/google/firebase/FirebaseApp;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjc:Lcom/google/firebase/abt/FirebaseABTesting;

    .line 9
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjd:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    .line 11
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzje:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    .line 12
    iput-object p7, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjf:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    .line 13
    iput-object p8, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjg:Lcom/google/android/gms/internal/firebase_remote_config/zzes;

    .line 14
    iput-object p9, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjh:Lcom/google/android/gms/internal/firebase_remote_config/zzew;

    .line 15
    iput-object p10, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 1

    .line 2
    const-class v0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    const-string v0, "firebase"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->get(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lorg/json/JSONArray;)V
    .locals 8

    const-string v0, "FirebaseRemoteConfig"

    .line 103
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjc:Lcom/google/firebase/abt/FirebaseABTesting;

    if-nez v1, :cond_0

    return-void

    .line 106
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 107
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 108
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 110
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 111
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 113
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 115
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjc:Lcom/google/firebase/abt/FirebaseABTesting;

    invoke-virtual {p1, v1}, Lcom/google/firebase/abt/FirebaseABTesting;->replaceAllExperiments(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/firebase/abt/AbtException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v1, "Could not update ABT experiments."

    .line 125
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception p1

    const-string v1, "Could not parse ABT experiments from the JSON response."

    .line 122
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_remote_config/zzen;Lcom/google/android/gms/internal/firebase_remote_config/zzen;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_remote_config/zzen;->zzcr()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzen;->zzcr()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zza(Lcom/google/android/gms/tasks/Task;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/firebase_remote_config/zzen;",
            ">;)Z"
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjd:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->clear()V

    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzen;->zzcs()Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zza(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_0
    const-string p1, "FirebaseRemoteConfig"

    const-string v0, "Activated configs are null."

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzb(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_remote_config/zzen;->zzct()Lcom/google/android/gms/internal/firebase_remote_config/zzep;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzep;->zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/firebase_remote_config/zzep;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzep;->zzcv()Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjf:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzb(Lcom/google/android/gms/internal/firebase_remote_config/zzen;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "The provided defaults map could not be processed."

    .line 93
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final zzc(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 95
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_remote_config/zzen;->zzct()Lcom/google/android/gms/internal/firebase_remote_config/zzep;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzep;->zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/firebase_remote_config/zzep;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzep;->zzcv()Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjf:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zza(Lcom/google/android/gms/internal/firebase_remote_config/zzen;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 102
    sget-object v0, Lcom/google/firebase/remoteconfig/zze;->zzjk:Lcom/google/android/gms/tasks/SuccessContinuation;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "The provided defaults map could not be processed."

    .line 98
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 99
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public activate()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjd:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzcp()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzje:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzcp()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/tasks/Task;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 37
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->whenAllComplete([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/remoteconfig/zzi;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/firebase/remoteconfig/zzi;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    .line 38
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public activateFetched()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjd:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzco()Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzje:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzco()Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    move-result-object v2

    .line 29
    invoke-static {v0, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zza(Lcom/google/android/gms/internal/firebase_remote_config/zzen;Lcom/google/android/gms/internal/firebase_remote_config/zzen;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzje:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    .line 32
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzb(Lcom/google/android/gms/internal/firebase_remote_config/zzen;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/remoteconfig/zzf;

    invoke-direct {v2, p0}, Lcom/google/firebase/remoteconfig/zzf;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    const/4 v0, 0x1

    return v0
.end method

.method public ensureInitialized()Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzje:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzcp()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjf:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzcp()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjd:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzcp()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/remoteconfig/zza;

    invoke-direct {v4, p0}, Lcom/google/firebase/remoteconfig/zza;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    invoke-static {v3, v4}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/android/gms/tasks/Task;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    .line 21
    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->whenAllComplete([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/remoteconfig/zzc;

    invoke-direct {v2, v3}, Lcom/google/firebase/remoteconfig/zzc;-><init>(Lcom/google/android/gms/tasks/Task;)V

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public fetch()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjg:Lcom/google/android/gms/internal/firebase_remote_config/zzes;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->isDeveloperModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zza(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/remoteconfig/zzh;

    invoke-direct {v2, p0}, Lcom/google/firebase/remoteconfig/zzh;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 42
    sget-object v1, Lcom/google/firebase/remoteconfig/zzk;->zzjk:Lcom/google/android/gms/tasks/SuccessContinuation;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public fetch(J)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjg:Lcom/google/android/gms/internal/firebase_remote_config/zzes;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->isDeveloperModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/firebase_remote_config/zzes;->zza(ZJ)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/firebase/remoteconfig/zzj;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/zzj;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 46
    sget-object p2, Lcom/google/firebase/remoteconfig/zzm;->zzjk:Lcom/google/android/gms/tasks/SuccessContinuation;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public fetchAndActivate()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetch()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/remoteconfig/zzg;

    invoke-direct {v2, p0}, Lcom/google/firebase/remoteconfig/zzg;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjh:Lcom/google/android/gms/internal/firebase_remote_config/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzew;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjh:Lcom/google/android/gms/internal/firebase_remote_config/zzew;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzew;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjh:Lcom/google/android/gms/internal/firebase_remote_config/zzew;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzew;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjh:Lcom/google/android/gms/internal/firebase_remote_config/zzew;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzew;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInfo()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->getInfo()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method public getKeysByPrefix(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjh:Lcom/google/android/gms/internal/firebase_remote_config/zzew;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzew;->getKeysByPrefix(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjh:Lcom/google/android/gms/internal/firebase_remote_config/zzew;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzew;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjh:Lcom/google/android/gms/internal/firebase_remote_config/zzew;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzew;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjh:Lcom/google/android/gms/internal/firebase_remote_config/zzew;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzew;->getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public reset()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/remoteconfig/zzb;

    invoke-direct {v1, p0}, Lcom/google/firebase/remoteconfig/zzb;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setConfigSettings(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zzb(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V

    .line 57
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->isDeveloperModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    const-class p1, Lcom/google/android/gms/internal/firebase_remote_config/zzag;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    :cond_0
    return-void
.end method

.method public setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/remoteconfig/zzl;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/remoteconfig/zzl;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setDefaults(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzja:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzfa;->zza(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzb(Ljava/util/Map;)V

    return-void
.end method

.method public setDefaults(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzb(Ljava/util/Map;)V

    return-void
.end method

.method public setDefaultsAsync(I)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzja:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzfa;->zza(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzc(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultsAsync(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzc(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 137
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    .line 140
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 141
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    .line 142
    invoke-static {p1, p2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zza(Lcom/google/android/gms/internal/firebase_remote_config/zzen;Lcom/google/android/gms/internal/firebase_remote_config/zzen;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 143
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 144
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzje:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    const/4 p3, 0x1

    .line 146
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zza(Lcom/google/android/gms/internal/firebase_remote_config/zzen;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 147
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/firebase/remoteconfig/zzd;

    invoke-direct {p3, p0}, Lcom/google/firebase/remoteconfig/zzd;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    .line 148
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 138
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Ljava/lang/Void;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->setConfigSettings(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V

    .line 134
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->isDeveloperModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    const-class p1, Lcom/google/android/gms/internal/firebase_remote_config/zzag;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/firebase_remote_config/zzen;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjd:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->clear()V

    .line 151
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzen;->zzcs()Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zza(Lorg/json/JSONArray;)V

    return-void
.end method

.method final synthetic zzb(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 154
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "FirebaseRemoteConfig"

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zzm(I)V

    .line 156
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_remote_config/zzet;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzet;->zzcx()Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzen;->zzcr()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zzf(Ljava/util/Date;)V

    :cond_0
    const-string p1, "Fetch succeeded!"

    .line 159
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 161
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Fetch was cancelled... This should never covfefe"

    .line 163
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_2
    instance-of v0, p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zzm(I)V

    const-string v0, "Fetch was throttled!"

    .line 167
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->zzm(I)V

    const-string v0, "Fetch failed!"

    .line 169
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/tasks/Task;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zza(Lcom/google/android/gms/tasks/Task;)Z

    move-result p1

    return p1
.end method

.method final zzcm()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzje:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzcp()Lcom/google/android/gms/tasks/Task;

    .line 79
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjf:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzcp()Lcom/google/android/gms/tasks/Task;

    .line 80
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjd:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zzcp()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method final synthetic zzcn()Ljava/lang/Void;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzje:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->clear()V

    .line 129
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjd:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->clear()V

    .line 130
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzjf:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->clear()V

    .line 131
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->zzji:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzev;->clear()V

    const/4 v0, 0x0

    return-object v0
.end method
