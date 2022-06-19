.class public final Lcom/facebook/internal/k;
.super Ljava/lang/Object;
.source "FetchedAppGateKeepersManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/k$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/facebook/internal/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-class v0, Lcom/facebook/internal/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/k;->a:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/facebook/internal/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/facebook/internal/k;->e:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Lcom/facebook/internal/k;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/facebook/internal/k;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 171
    if-nez p1, :cond_0

    sget-object v0, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 190
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/k;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 176
    if-nez v0, :cond_1

    .line 177
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    .line 181
    const-string/jumbo v2, "com.facebook.internal.APP_GATEKEEPERS.%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 183
    const-string/jumbo v3, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 186
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 187
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 188
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    invoke-static {p0, v0}, Lcom/facebook/internal/k;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method static a()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/k$a;)V

    .line 75
    return-void
.end method

.method static declared-synchronized a(Lcom/facebook/internal/k$a;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 78
    const-class v2, Lcom/facebook/internal/k;

    monitor-enter v2

    if-eqz p0, :cond_0

    .line 79
    :try_start_0
    sget-object v0, Lcom/facebook/internal/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    sget-object v0, Lcom/facebook/internal/k;->e:Ljava/lang/Long;

    invoke-static {v0}, Lcom/facebook/internal/k;->b(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-static {}, Lcom/facebook/internal/k;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    .line 87
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v3

    .line 88
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v4

    .line 89
    const-string/jumbo v0, "com.facebook.internal.APP_GATEKEEPERS.%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 91
    if-eqz v3, :cond_1

    .line 96
    const-string/jumbo v0, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-static {v6}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 106
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :goto_1
    if-eqz v0, :cond_3

    .line 111
    :try_start_3
    invoke-static {v4, v0}, Lcom/facebook/internal/k;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 115
    :cond_3
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 120
    sget-object v1, Lcom/facebook/internal/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    new-instance v1, Lcom/facebook/internal/k$1;

    invoke-direct {v1, v4, v3, v5}, Lcom/facebook/internal/k$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    :try_start_4
    const-string/jumbo v6, "FacebookSDK"

    invoke-static {v6, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/facebook/internal/k;->a()V

    .line 198
    if-eqz p1, :cond_0

    sget-object v0, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return p2

    :cond_1
    sget-object v0, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    const-string/jumbo v1, "platform"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string/jumbo v1, "sdk_version"

    invoke-static {}, Lcom/facebook/j;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v1, "fields"

    const-string/jumbo v2, "gatekeepers"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string/jumbo v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string/jumbo v3, "mobile_sdk_gk"

    aput-object v3, v2, v4

    .line 214
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v5, v1, v5}, Lcom/facebook/k;->a(Lcom/facebook/a;Ljava/lang/String;Lcom/facebook/k$b;)Lcom/facebook/k;

    move-result-object v1

    .line 216
    invoke-virtual {v1, v4}, Lcom/facebook/k;->a(Z)V

    .line 217
    invoke-virtual {v1, v0}, Lcom/facebook/k;->a(Landroid/os/Bundle;)V

    .line 219
    invoke-virtual {v1}, Lcom/facebook/k;->i()Lcom/facebook/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/n;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 226
    const-class v3, Lcom/facebook/internal/k;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    sget-object v0, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    .line 231
    :goto_0
    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 232
    const/4 v0, 0x0

    .line 233
    if-eqz v4, :cond_0

    .line 234
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 237
    :cond_0
    if-eqz v0, :cond_2

    const-string/jumbo v4, "gatekeepers"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 238
    const-string/jumbo v4, "gatekeepers"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 239
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v1, v0, :cond_2

    .line 241
    :try_start_1
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 242
    const-string/jumbo v5, "key"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 229
    :cond_1
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string/jumbo v5, "FacebookSDK"

    invoke-static {v5, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 249
    :cond_2
    :try_start_3
    sget-object v0, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    monitor-exit v3

    return-object v2
.end method

.method static synthetic b()V
    .locals 0

    .prologue
    .line 51
    invoke-static {}, Lcom/facebook/internal/k;->d()V

    return-void
.end method

.method private static b(Ljava/lang/Long;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 254
    if-nez p0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/facebook/internal/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static d()V
    .locals 3

    .prologue
    .line 147
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 149
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/internal/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    sget-object v0, Lcom/facebook/internal/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/k$a;

    .line 152
    if-eqz v0, :cond_0

    .line 153
    new-instance v2, Lcom/facebook/internal/k$2;

    invoke-direct {v2, v0}, Lcom/facebook/internal/k$2;-><init>(Lcom/facebook/internal/k$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method
