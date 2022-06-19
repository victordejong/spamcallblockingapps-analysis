.class public final Lcom/google/android/gms/internal/ads/bij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Z

.field private b:Z

.field private final c:J

.field private final d:Lcom/google/android/gms/internal/ads/yo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yo",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/bfg;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Ljava/util/concurrent/ScheduledExecutorService;

.field private final k:Lcom/google/android/gms/internal/ads/bht;

.field private final l:Lcom/google/android/gms/internal/ads/yd;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/gb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bfg;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/bht;Lcom/google/android/gms/internal/ads/yd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/bfg;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/bht;",
            "Lcom/google/android/gms/internal/ads/yd;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/bij;->a:Z

    .line 3
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/bij;->b:Z

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->d:Lcom/google/android/gms/internal/ads/yo;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->m:Ljava/util/Map;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bij;->g:Lcom/google/android/gms/internal/ads/bfg;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bij;->e:Landroid/content/Context;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bij;->f:Ljava/lang/ref/WeakReference;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bij;->h:Ljava/util/concurrent/Executor;

    .line 12
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bij;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bij;->i:Ljava/util/concurrent/Executor;

    .line 14
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bij;->k:Lcom/google/android/gms/internal/ads/bht;

    .line 15
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bij;->l:Lcom/google/android/gms/internal/ads/yd;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bij;->c:J

    .line 17
    const-string/jumbo v0, "com.google.android.gms.ads.MobileAds"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/bij;->a(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bij;)J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/bij;->c:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bij;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bij;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bij;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/bij;->a(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 20

    .prologue
    .line 63
    :try_start_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "initializer_settings"

    .line 65
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 66
    const-string/jumbo v3, "config"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 67
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v19

    .line 68
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 70
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v6, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 73
    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->aO:Lcom/google/android/gms/internal/ads/ect;

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v2

    .line 76
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bij;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 77
    invoke-static {v6, v2, v3, v4, v8}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v2

    .line 78
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bij;->k:Lcom/google/android/gms/internal/ads/bht;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/bht;->a(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v8

    .line 80
    new-instance v3, Lcom/google/android/gms/internal/ads/bin;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/bin;-><init>(Lcom/google/android/gms/internal/ads/bij;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/yo;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bij;->h:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 81
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v10, Lcom/google/android/gms/internal/ads/bit;

    move-object/from16 v11, p0

    move-object v12, v5

    move-object v13, v7

    move-wide v14, v8

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/bit;-><init>(Lcom/google/android/gms/internal/ads/bij;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/yo;)V

    .line 83
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 84
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 85
    if-eqz v2, :cond_0

    .line 86
    :try_start_1
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 87
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 88
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 89
    const-string/jumbo v5, "format"

    const-string/jumbo v8, ""

    invoke-virtual {v2, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    const-string/jumbo v8, "data"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 91
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 92
    if-eqz v8, :cond_1

    .line 93
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 94
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    const-string/jumbo v12, ""

    invoke-virtual {v8, v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 104
    :cond_0
    const/4 v2, 0x0

    :try_start_2
    const-string/jumbo v3, ""

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bij;->a(Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 106
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bij;->g:Lcom/google/android/gms/internal/ads/bfg;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/internal/ads/bfg;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/chs;

    move-result-object v4

    .line 107
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bij;->i:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/bip;

    move-object/from16 v3, p0

    move-object v5, v10

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/bip;-><init>(Lcom/google/android/gms/internal/ads/bij;Lcom/google/android/gms/internal/ads/chs;Lcom/google/android/gms/internal/ads/gd;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzdhk; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_1
    move-exception v2

    .line 110
    :try_start_4
    const-string/jumbo v2, "Failed to create Adapter."

    invoke-interface {v10, v2}, Lcom/google/android/gms/internal/ads/gd;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 112
    :catch_2
    move-exception v2

    .line 113
    :try_start_5
    const-string/jumbo v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 119
    :catch_3
    move-exception v2

    .line 120
    const-string/jumbo v3, "Malformed CLD response"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    :goto_3
    return-void

    .line 100
    :cond_1
    :try_start_6
    new-instance v2, Lcom/google/android/gms/internal/ads/gl;

    invoke-direct {v2, v5, v9}, Lcom/google/android/gms/internal/ads/gl;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 101
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    .line 116
    :cond_2
    :try_start_7
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/crg;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/crm;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/biq;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/biq;-><init>(Lcom/google/android/gms/internal/ads/bij;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bij;->h:Ljava/util/concurrent/Executor;

    .line 117
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/crm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3
.end method

.method private final a(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->m:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/ads/gb;

    invoke-direct {v1, p1, p2, p4, p3}, Lcom/google/android/gms/internal/ads/gb;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bij;Z)Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bij;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/bij;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->h:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/bij;)Lcom/google/android/gms/internal/ads/yo;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->d:Lcom/google/android/gms/internal/ads/yo;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/bij;)Lcom/google/android/gms/internal/ads/bht;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->k:Lcom/google/android/gms/internal/ads/bht;

    return-object v0
.end method

.method private final declared-synchronized f()Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->h()Lcom/google/android/gms/internal/ads/uh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uh;->c()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 62
    :goto_0
    monitor-exit p0

    return-object v0

    .line 57
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 59
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bil;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/bil;-><init>(Lcom/google/android/gms/internal/ads/bij;Lcom/google/android/gms/internal/ads/yo;)V

    .line 61
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/uw;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aM:Lcom/google/android/gms/internal/ads/ect;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/as;->a:Lcom/google/android/gms/internal/ads/ab;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->l:Lcom/google/android/gms/internal/ads/yd;

    iget v1, v0, Lcom/google/android/gms/internal/ads/yd;->c:I

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aN:Lcom/google/android/gms/internal/ads/ect;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 28
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.MobileAds"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v4, v1, v3}, Lcom/google/android/gms/internal/ads/bij;->a(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->d:Lcom/google/android/gms/internal/ads/yo;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z

    .line 47
    :cond_1
    :goto_0
    return-void

    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bij;->a:Z

    if-nez v0, :cond_1

    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bij;->a:Z

    if-eqz v0, :cond_3

    .line 35
    monitor-exit p0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 36
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->k:Lcom/google/android/gms/internal/ads/bht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bht;->a()V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->d:Lcom/google/android/gms/internal/ads/yo;

    new-instance v1, Lcom/google/android/gms/internal/ads/bim;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bim;-><init>(Lcom/google/android/gms/internal/ads/bij;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bij;->h:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bij;->a:Z

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bij;->f()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bij;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/google/android/gms/internal/ads/bio;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/bio;-><init>(Lcom/google/android/gms/internal/ads/bij;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aP:Lcom/google/android/gms/internal/ads/ect;

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 45
    invoke-interface {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/ads/bir;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bir;-><init>(Lcom/google/android/gms/internal/ads/bij;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bij;->h:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    .line 47
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/chs;Lcom/google/android/gms/internal/ads/gd;Ljava/util/List;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/chs;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/gd;Ljava/util/List;)V

    .line 133
    :goto_1
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->e:Landroid/content/Context;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdhk; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    :try_start_1
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "Failed to initialize adapter. "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " does not implement the initialize() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/gd;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 131
    :catch_1
    move-exception v0

    .line 132
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/gi;)V
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->d:Lcom/google/android/gms/internal/ads/yo;

    new-instance v1, Lcom/google/android/gms/internal/ads/bii;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bii;-><init>(Lcom/google/android/gms/internal/ads/bij;Lcom/google/android/gms/internal/ads/gi;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bij;->i:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 20
    return-void
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/yo;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/bis;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bis;-><init>(Lcom/google/android/gms/internal/ads/bij;Lcom/google/android/gms/internal/ads/yo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/yo;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 136
    monitor-enter p1

    .line 137
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/yo;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    const-string/jumbo v1, "Timeout."

    .line 139
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    sub-long/2addr v2, p4

    long-to-int v2, v2

    .line 140
    invoke-direct {p0, p3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/bij;->a(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->k:Lcom/google/android/gms/internal/ads/bht;

    const-string/jumbo v1, "timeout"

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/internal/ads/bht;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/gb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bij;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/gb;

    .line 51
    new-instance v4, Lcom/google/android/gms/internal/ads/gb;

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/gb;->b:Z

    iget v6, v1, Lcom/google/android/gms/internal/ads/gb;->c:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/gb;->d:Ljava/lang/String;

    invoke-direct {v4, v0, v5, v6, v1}, Lcom/google/android/gms/internal/ads/gb;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_0
    return-object v2
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/gi;)V
    .locals 2

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bij;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/gi;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final synthetic c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->d:Lcom/google/android/gms/internal/ads/yo;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method final synthetic d()V
    .locals 8

    .prologue
    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bij;->b:Z

    if-eqz v0, :cond_0

    .line 146
    monitor-exit p0

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.MobileAds"

    const/4 v1, 0x0

    const-string/jumbo v2, "Timeout."

    .line 148
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/bij;->c:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    .line 149
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bij;->a(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->d:Lcom/google/android/gms/internal/ads/yo;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    .line 151
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic e()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bij;->k:Lcom/google/android/gms/internal/ads/bht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bht;->b()V

    return-void
.end method
