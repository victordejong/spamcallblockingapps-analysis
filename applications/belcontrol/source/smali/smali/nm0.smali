.class public final Lnm0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnm0$e;,
        Lnm0$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "nm0"

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmm0;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lnm0$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lnm0$e;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Z

.field public static g:Lorg/json/JSONArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const-string v0, "supports_implicit_sdk_logging"

    const-string v1, "gdpv4_nux_content"

    const-string v2, "gdpv4_nux_enabled"

    const-string v3, "android_dialog_configs"

    const-string v4, "android_sdk_error_categories"

    const-string v5, "app_events_session_timeout"

    const-string v6, "app_events_feature_bitmask"

    const-string v7, "auto_event_mapping_android"

    const-string v8, "seamless_login"

    const-string v9, "smart_login_bookmark_icon_url"

    const-string v10, "smart_login_menu_icon_url"

    const-string v11, "restrictive_data_filter_params"

    const-string v12, "aam_rules"

    const-string v13, "suggested_events_setting"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnm0;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnm0;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lnm0$d;->a:Lnm0$d;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lnm0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lnm0;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    sput-boolean v0, Lnm0;->f:Z

    const/4 v0, 0x0

    sput-object v0, Lnm0;->g:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lorg/json/JSONObject;)Lmm0;
    .locals 0

    invoke-static {p0, p1}, Lnm0;->l(Ljava/lang/String;Lorg/json/JSONObject;)Lmm0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lnm0;->i(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Z
    .locals 1

    sget-boolean v0, Lnm0;->f:Z

    return v0
.end method

.method public static synthetic d(Z)Z
    .locals 0

    sput-boolean p0, Lnm0;->f:Z

    return p0
.end method

.method public static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnm0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f()Ljava/util/Map;
    .locals 1

    sget-object v0, Lnm0;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic g()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    sget-object v0, Lnm0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static synthetic h()V
    .locals 0

    invoke-static {}, Lnm0;->n()V

    return-void
.end method

.method public static i(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lnm0;->b:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fields"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1, p0, v1}, Lcom/facebook/GraphRequest;->J(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$e;)Lcom/facebook/GraphRequest;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/GraphRequest;->a0(Z)V

    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequest;->Z(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->g()Laj0;

    move-result-object p0

    invoke-virtual {p0}, Laj0;->h()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;)Lmm0;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lnm0;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmm0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static k()V
    .locals 7

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lnm0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lnm0$d;->d:Lnm0$d;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {}, Lnm0;->n()V

    return-void

    :cond_0
    sget-object v2, Lnm0;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lnm0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lnm0$d;->c:Lnm0$d;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {}, Lnm0;->n()V

    return-void

    :cond_1
    sget-object v2, Lnm0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lnm0$d;->a:Lnm0$d;

    sget-object v4, Lnm0$d;->b:Lnm0$d;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_3

    sget-object v3, Lnm0$d;->d:Lnm0$d;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    invoke-static {}, Lnm0;->n()V

    return-void

    :cond_4
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const-string v3, "com.facebook.internal.APP_SETTINGS.%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lui0;->o()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lnm0$a;

    invoke-direct {v4, v0, v2, v1}, Lnm0$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static l(Ljava/lang/String;Lorg/json/JSONObject;)Lmm0;
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "android_sdk_error_categories"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lhm0;->c()Lhm0;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lhm0;->b(Lorg/json/JSONArray;)Lhm0;

    move-result-object v1

    :goto_0
    move-object v10, v1

    const-string v1, "app_events_feature_bitmask"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v2, v1, 0x8

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    :goto_4
    const-string v1, "auto_event_mapping_android"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    sput-object v15, Lnm0;->g:Lorg/json/JSONArray;

    if-eqz v15, :cond_5

    invoke-static {}, Lvm0;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpk0;->b(Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lmm0;

    move-object v2, v1

    const-string v3, "supports_implicit_sdk_logging"

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "gdpv4_nux_content"

    const-string v6, ""

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "gdpv4_nux_enabled"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {}, Lwk0;->a()I

    move-result v6

    const-string v7, "app_events_session_timeout"

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "seamless_login"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ldn0;->b(J)Ljava/util/EnumSet;

    move-result-object v7

    const-string v8, "android_dialog_configs"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lnm0;->m(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v8

    const-string v11, "smart_login_bookmark_icon_url"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "smart_login_menu_icon_url"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v1

    const-string v1, "sdk_update_message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "aam_rules"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "suggested_events_setting"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v1, "restrictive_data_filter_params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v2 .. v20}, Lmm0;-><init>(ZLjava/lang/String;ZILjava/util/EnumSet;Ljava/util/Map;ZLhm0;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnm0;->c:Ljava/util/Map;

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static m(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmm0$a;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_2

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lmm0$a;->e(Lorg/json/JSONObject;)Lmm0$a;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lmm0$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Lmm0$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static declared-synchronized n()V
    .locals 5

    const-class v0, Lnm0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnm0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnm0$d;

    sget-object v2, Lnm0$d;->a:Lnm0$d;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lnm0$d;->b:Lnm0$d;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnm0;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmm0;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v4, Lnm0$d;->d:Lnm0$d;

    invoke-virtual {v4, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    sget-object v1, Lnm0;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnm0$e;

    new-instance v2, Lnm0$b;

    invoke-direct {v2, v1}, Lnm0$b;-><init>(Lnm0$e;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    :try_start_1
    sget-object v1, Lnm0;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnm0$e;

    new-instance v4, Lnm0$c;

    invoke-direct {v4, v1, v2}, Lnm0$c;-><init>(Lnm0$e;Lmm0;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static o(Ljava/lang/String;Z)Lmm0;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lnm0;->c:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmm0;

    return-object p0

    :cond_0
    invoke-static {p0}, Lnm0;->i(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Lnm0;->l(Ljava/lang/String;Lorg/json/JSONObject;)Lmm0;

    move-result-object p1

    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lnm0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lnm0$d;->c:Lnm0$d;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {}, Lnm0;->n()V

    :cond_2
    return-object p1
.end method
