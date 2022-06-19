.class public final Lcom/facebook/internal/m;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/m$b;,
        Lcom/facebook/internal/m$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/l;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/internal/m$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/facebook/internal/m$b;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Z

.field private static g:Z

.field private static h:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    const-class v0, Lcom/facebook/internal/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/m;->a:Ljava/lang/String;

    .line 104
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "supports_implicit_sdk_logging"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "gdpv4_nux_content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "gdpv4_nux_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "android_dialog_configs"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "android_sdk_error_categories"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "app_events_session_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "app_events_feature_bitmask"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "auto_event_mapping_android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "seamless_login"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "smart_login_bookmark_icon_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "smart_login_menu_icon_url"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "restrictive_data_filter_params"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "aam_rules"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "suggested_events_setting"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/internal/m;->b:[Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/m;->c:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/internal/m$a;->a:Lcom/facebook/internal/m$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/internal/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/facebook/internal/m;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 129
    sput-boolean v3, Lcom/facebook/internal/m;->f:Z

    .line 131
    sput-boolean v3, Lcom/facebook/internal/m;->g:Z

    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/internal/m;->h:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/internal/l;
    .locals 1

    .prologue
    .line 217
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/internal/m;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/l;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/l;
    .locals 1

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/facebook/internal/m;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/facebook/internal/l;
    .locals 3

    .prologue
    .line 277
    if-nez p1, :cond_1

    sget-object v0, Lcom/facebook/internal/m;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    sget-object v0, Lcom/facebook/internal/m;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/l;

    .line 293
    :cond_0
    :goto_0
    return-object v0

    .line 281
    :cond_1
    invoke-static {p0}, Lcom/facebook/internal/m;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 282
    if-nez v0, :cond_2

    .line 283
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :cond_2
    invoke-static {p0, v0}, Lcom/facebook/internal/m;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/l;

    move-result-object v0

    .line 288
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    sget-object v1, Lcom/facebook/internal/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/facebook/internal/m$a;->c:Lcom/facebook/internal/m$a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 290
    invoke-static {}, Lcom/facebook/internal/m;->g()V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/l$a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 382
    if-eqz p0, :cond_2

    .line 383
    const-string/jumbo v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 384
    if-eqz v3, :cond_2

    .line 385
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 388
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 387
    invoke-static {v0}, Lcom/facebook/internal/l$a;->a(Lorg/json/JSONObject;)Lcom/facebook/internal/l$a;

    move-result-object v4

    .line 389
    if-nez v4, :cond_0

    .line 385
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/internal/l$a;->a()Ljava/lang/String;

    move-result-object v5

    .line 395
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 396
    if-nez v0, :cond_1

    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 398
    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/internal/l$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 405
    :cond_2
    return-object v2
.end method

.method public static a()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v3

    .line 136
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-static {v4}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/facebook/internal/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/internal/m$a;->d:Lcom/facebook/internal/m$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Lcom/facebook/internal/m;->g()V

    .line 212
    :goto_0
    return-void

    .line 142
    :cond_0
    sget-object v0, Lcom/facebook/internal/m;->c:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    sget-object v0, Lcom/facebook/internal/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/internal/m$a;->c:Lcom/facebook/internal/m$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 144
    invoke-static {}, Lcom/facebook/internal/m;->g()V

    goto :goto_0

    .line 148
    :cond_1
    sget-object v0, Lcom/facebook/internal/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lcom/facebook/internal/m$a;->a:Lcom/facebook/internal/m$a;

    sget-object v6, Lcom/facebook/internal/m$a;->b:Lcom/facebook/internal/m$a;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/facebook/internal/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lcom/facebook/internal/m$a;->d:Lcom/facebook/internal/m$a;

    sget-object v6, Lcom/facebook/internal/m$a;->b:Lcom/facebook/internal/m$a;

    .line 149
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    .line 151
    :goto_1
    if-nez v0, :cond_4

    .line 152
    invoke-static {}, Lcom/facebook/internal/m;->g()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 149
    goto :goto_1

    .line 156
    :cond_4
    const-string/jumbo v0, "com.facebook.internal.APP_SETTINGS.%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/internal/m$1;

    invoke-direct {v2, v3, v0, v4}, Lcom/facebook/internal/m$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 62
    sput-boolean p0, Lcom/facebook/internal/m;->f:Z

    return p0
.end method

.method private static b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/l;
    .locals 21

    .prologue
    .line 299
    const-string/jumbo v2, "android_sdk_error_categories"

    .line 300
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 301
    if-nez v2, :cond_1

    .line 303
    invoke-static {}, Lcom/facebook/internal/g;->a()Lcom/facebook/internal/g;

    move-result-object v10

    .line 307
    :goto_0
    const-string/jumbo v2, "app_events_feature_bitmask"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 308
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_2

    const/4 v9, 0x1

    .line 310
    :goto_1
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_3

    const/4 v13, 0x1

    .line 312
    :goto_2
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_4

    const/4 v14, 0x1

    .line 314
    :goto_3
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_5

    const/16 v17, 0x1

    .line 316
    :goto_4
    const-string/jumbo v2, "auto_event_mapping_android"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 318
    sput-object v15, Lcom/facebook/internal/m;->h:Lorg/json/JSONArray;

    .line 319
    sget-object v2, Lcom/facebook/internal/m;->h:Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/facebook/internal/p;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/a/b/a/e;->a(Ljava/lang/String;)V

    .line 323
    :cond_0
    new-instance v2, Lcom/facebook/internal/l;

    const-string/jumbo v3, "supports_implicit_sdk_logging"

    const/4 v4, 0x0

    .line 324
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v4, "gdpv4_nux_content"

    const-string/jumbo v5, ""

    .line 325
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gdpv4_nux_enabled"

    const/4 v6, 0x0

    .line 326
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v6, "app_events_session_timeout"

    .line 329
    invoke-static {}, Lcom/facebook/a/d/e;->a()I

    move-result v7

    .line 327
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "seamless_login"

    .line 330
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/facebook/internal/w;->a(J)Ljava/util/EnumSet;

    move-result-object v7

    const-string/jumbo v8, "android_dialog_configs"

    .line 331
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/internal/m;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v8

    const-string/jumbo v11, "smart_login_bookmark_icon_url"

    .line 334
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "smart_login_menu_icon_url"

    .line 335
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "sdk_update_message"

    .line 339
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v18, "aam_rules"

    .line 341
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "suggested_events_setting"

    .line 342
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "restrictive_data_filter_params"

    .line 343
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v2 .. v20}, Lcom/facebook/internal/l;-><init>(ZLjava/lang/String;ZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/g;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v3, Lcom/facebook/internal/m;->c:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    return-object v2

    .line 304
    :cond_1
    invoke-static {v2}, Lcom/facebook/internal/g;->a(Lorg/json/JSONArray;)Lcom/facebook/internal/g;

    move-result-object v10

    goto/16 :goto_0

    .line 308
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 310
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 312
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 314
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_4
.end method

.method static synthetic b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 62
    invoke-static {p0}, Lcom/facebook/internal/m;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/facebook/internal/m;->f:Z

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/internal/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/internal/m;->b:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 368
    const-string/jumbo v2, "fields"

    const-string/jumbo v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {v4, p0, v4}, Lcom/facebook/k;->a(Lcom/facebook/a;Ljava/lang/String;Lcom/facebook/k$b;)Lcom/facebook/k;

    move-result-object v1

    .line 371
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/k;->a(Z)V

    .line 372
    invoke-virtual {v1, v0}, Lcom/facebook/k;->a(Landroid/os/Bundle;)V

    .line 374
    invoke-virtual {v1}, Lcom/facebook/k;->i()Lcom/facebook/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/n;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/internal/m;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/internal/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 62
    invoke-static {}, Lcom/facebook/internal/m;->g()V

    return-void
.end method

.method private static declared-synchronized g()V
    .locals 5

    .prologue
    .line 236
    const-class v2, Lcom/facebook/internal/m;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/facebook/internal/m;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/m$a;

    .line 237
    sget-object v1, Lcom/facebook/internal/m$a;->a:Lcom/facebook/internal/m$a;

    invoke-virtual {v1, v0}, Lcom/facebook/internal/m$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/internal/m$a;->b:Lcom/facebook/internal/m$a;

    invoke-virtual {v1, v0}, Lcom/facebook/internal/m$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    :cond_0
    monitor-exit v2

    return-void

    .line 241
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v1

    .line 242
    sget-object v3, Lcom/facebook/internal/m;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/l;

    .line 243
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 245
    sget-object v4, Lcom/facebook/internal/m$a;->d:Lcom/facebook/internal/m$a;

    invoke-virtual {v4, v0}, Lcom/facebook/internal/m$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    :goto_0
    sget-object v0, Lcom/facebook/internal/m;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    sget-object v0, Lcom/facebook/internal/m;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/m$b;

    .line 248
    new-instance v1, Lcom/facebook/internal/m$2;

    invoke-direct {v1, v0}, Lcom/facebook/internal/m$2;-><init>(Lcom/facebook/internal/m$b;)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 258
    :cond_2
    :goto_1
    :try_start_2
    sget-object v0, Lcom/facebook/internal/m;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    sget-object v0, Lcom/facebook/internal/m;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/m$b;

    .line 260
    new-instance v4, Lcom/facebook/internal/m$3;

    invoke-direct {v4, v0, v1}, Lcom/facebook/internal/m$3;-><init>(Lcom/facebook/internal/m$b;Lcom/facebook/internal/l;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
