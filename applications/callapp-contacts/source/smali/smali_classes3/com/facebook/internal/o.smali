.class public final Lcom/facebook/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/o$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u00012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\"\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00042\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020\u001fH\u0007J\u001c\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001f0#2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0004J\u0017\u0010$\u001a\u00020\u001f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0002\u0010%J\u0006\u0010&\u001a\u00020\'J\u0012\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010\u0012H\u0007J\u001a\u0010)\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00042\u0008\u0010*\u001a\u0004\u0018\u00010\u0015H\u0007J\u0008\u0010+\u001a\u00020\'H\u0002J\u0018\u0010,\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u001fH\u0007J\u0008\u0010.\u001a\u00020\'H\u0007J\u001a\u0010/\u001a\u00020\'2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00042\u0006\u00100\u001a\u000201H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001b\u00a8\u00063"
    }
    d2 = {
        "Lcom/facebook/internal/FetchedAppGateKeepersManager;",
        "",
        "()V",
        "APPLICATION_FIELDS",
        "",
        "APPLICATION_GATEKEEPER_CACHE_TIMEOUT",
        "",
        "APPLICATION_GATEKEEPER_EDGE",
        "APPLICATION_GATEKEEPER_FIELD",
        "APPLICATION_GRAPH_DATA",
        "APPLICATION_PLATFORM",
        "APPLICATION_SDK_VERSION",
        "APP_GATEKEEPERS_PREFS_KEY_FORMAT",
        "APP_GATEKEEPERS_PREFS_STORE",
        "APP_PLATFORM",
        "TAG",
        "callbacks",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;",
        "fetchedAppGateKeepers",
        "",
        "Lorg/json/JSONObject;",
        "gateKeeperRuntimeCache",
        "Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;",
        "isLoading",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "timestamp",
        "Ljava/lang/Long;",
        "getAppGateKeepersQueryResponse",
        "applicationId",
        "getGateKeeperForKey",
        "",
        "name",
        "defaultValue",
        "getGateKeepersForApplication",
        "",
        "isTimestampValid",
        "(Ljava/lang/Long;)Z",
        "loadAppGateKeepersAsync",
        "",
        "callback",
        "parseAppGateKeepersFromJSON",
        "gateKeepersJSON",
        "pollCallbacks",
        "queryAppGateKeepers",
        "forceRequery",
        "resetRuntimeGateKeeperCache",
        "setRuntimeGateKeeper",
        "gateKeeper",
        "Lcom/facebook/internal/gatekeeper/GateKeeper;",
        "Callback",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/o;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/facebook/internal/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Long;

.field private static g:Lcom/facebook/internal/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/facebook/internal/o;

    invoke-direct {v0}, Lcom/facebook/internal/o;-><init>()V

    sput-object v0, Lcom/facebook/internal/o;->a:Lcom/facebook/internal/o;

    .line 47
    const-class v0, Lcom/facebook/internal/o;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/c;->an_()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/o;->b:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/facebook/internal/o;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/facebook/internal/o;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "applicationId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-static {p0}, Lcom/facebook/internal/o;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    .line 147
    sget-object v2, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "com.facebook.internal.APP_GATEKEEPERS.%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    .line 149
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 150
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    sget-object v1, Lcom/facebook/internal/o;->a:Lcom/facebook/internal/o;

    invoke-virtual {v1, p0, v0}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a()V
    .locals 0

    .line 46
    invoke-static {}, Lcom/facebook/internal/o;->c()V

    return-void
.end method

.method public static final declared-synchronized a(Lcom/facebook/internal/o$a;)V
    .locals 8

    const-class v0, Lcom/facebook/internal/o;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 75
    :try_start_0
    sget-object v1, Lcom/facebook/internal/o;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object p0

    .line 78
    sget-object v1, Lcom/facebook/internal/o;->f:Ljava/lang/Long;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 78
    sget-object v1, Lcom/facebook/internal/o;->e:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-static {}, Lcom/facebook/internal/o;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v0

    return-void

    .line 82
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    .line 83
    sget-object v4, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    const-string v4, "com.facebook.internal.APP_GATEKEEPERS.%s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    .line 85
    monitor-exit v0

    return-void

    :cond_3
    :try_start_2
    const-string v5, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    .line 90
    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const/4 v6, 0x0

    .line 91
    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-static {v5}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_4

    .line 95
    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v7

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_4
    const-string v7, "FacebookSDK"

    .line 97
    check-cast v5, Ljava/lang/Exception;

    invoke-static {v7, v5}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    if-eqz v6, :cond_4

    .line 100
    sget-object v5, Lcom/facebook/internal/o;->a:Lcom/facebook/internal/o;

    const-string v7, "applicationId"

    invoke-static {p0, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, p0, v6}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 103
    :cond_4
    invoke-static {}, Lcom/facebook/g;->f()Ljava/util/concurrent/Executor;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_5

    monitor-exit v0

    return-void

    .line 104
    :cond_5
    :try_start_5
    sget-object v6, Lcom/facebook/internal/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_6

    .line 105
    monitor-exit v0

    return-void

    .line 107
    :cond_6
    :try_start_6
    new-instance v2, Lcom/facebook/internal/o$b;

    invoke-direct {v2, p0, v1, v4}, Lcom/facebook/internal/o$b;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v5, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final synthetic a(Ljava/lang/Long;)V
    .locals 0

    .line 46
    sput-object p0, Lcom/facebook/internal/o;->f:Ljava/lang/Long;

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3068
    invoke-static {v0}, Lcom/facebook/internal/o;->a(Lcom/facebook/internal/o$a;)V

    if-eqz p1, :cond_8

    .line 2162
    sget-object v1, Lcom/facebook/internal/o;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 2165
    :cond_0
    sget-object v2, Lcom/facebook/internal/o;->g:Lcom/facebook/internal/a/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/facebook/internal/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    .line 2167
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2168
    check-cast v0, Ljava/lang/Iterable;

    .line 2268
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/a/a;

    .line 2168
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    .line 4003
    iget-object v3, v1, Lcom/facebook/internal/a/a;->a:Ljava/lang/String;

    .line 5003
    iget-boolean v1, v1, Lcom/facebook/internal/a/a;->b:Z

    .line 2168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2169
    :cond_2
    check-cast p1, Ljava/util/Map;

    goto/16 :goto_4

    .line 2171
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 2172
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    if-nez v1, :cond_4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2173
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 2174
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2175
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "key"

    .line 2176
    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2178
    :cond_5
    sget-object v1, Lcom/facebook/internal/o;->g:Lcom/facebook/internal/a/b;

    if-nez v1, :cond_6

    new-instance v1, Lcom/facebook/internal/a/b;

    invoke-direct {v1}, Lcom/facebook/internal/a/b;-><init>()V

    .line 2270
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 2271
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2179
    new-instance v5, Lcom/facebook/internal/a/a;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v5, v6, v4}, Lcom/facebook/internal/a/a;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2273
    :cond_7
    check-cast v2, Ljava/util/List;

    .line 2179
    invoke-virtual {v1, p1, v2}, Lcom/facebook/internal/a/b;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 2180
    sput-object v1, Lcom/facebook/internal/o;->g:Lcom/facebook/internal/a/b;

    move-object p1, v0

    goto :goto_4

    .line 2163
    :cond_8
    :goto_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 188
    :goto_4
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return p2

    .line 190
    :cond_9
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_a
    return p2
.end method

.method public static final synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 46
    sget-object v0, Lcom/facebook/internal/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/facebook/internal/o;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "platform"

    const-string v2, "android"

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/facebook/g;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fields"

    const-string v2, "gatekeepers"

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v1, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    const-string v3, "mobile_sdk_gk"

    aput-object v3, v2, p0

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s/%s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-static {p0}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->a()V

    const-string v1, "request"

    .line 231
    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->b()Lcom/facebook/j;

    move-result-object p0

    const-string v0, "request.executeAndWait()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/j;->b()Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object p0
.end method

.method private static c()V
    .locals 3

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 127
    :cond_0
    :goto_0
    sget-object v1, Lcom/facebook/internal/o;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/o$a;

    if-eqz v1, :cond_0

    .line 131
    new-instance v2, Lcom/facebook/internal/o$c;

    invoke-direct {v2, v1}, Lcom/facebook/internal/o$c;-><init>(Lcom/facebook/internal/o$a;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "applicationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/facebook/internal/o;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const-string v2, "data"

    .line 240
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    const-string v2, "gatekeepers"

    .line 242
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 243
    :cond_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-ge v1, v2, :cond_4

    .line 245
    :try_start_1
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "key"

    .line 246
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "FacebookSDK"

    .line 248
    check-cast v3, Ljava/lang/Exception;

    invoke-static {v4, v3}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_4
    sget-object p2, Lcom/facebook/internal/o;->e:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
