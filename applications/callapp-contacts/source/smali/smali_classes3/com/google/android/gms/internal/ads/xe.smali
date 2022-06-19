.class public abstract Lcom/google/android/gms/internal/ads/xe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/xe;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/xe;
    .locals 9

    const-class v0, Lcom/google/android/gms/internal/ads/xe;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/xe;->a:Lcom/google/android/gms/internal/ads/xe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/aq;->a(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v1

    .line 7
    invoke-interface {v1, p0}, Lcom/google/android/gms/ads/internal/util/zzf;->initialize(Landroid/content/Context;)V

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/wm;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/wm;-><init>(Lcom/google/android/gms/internal/ads/wi;)V

    .line 10
    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/ads/xd;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/xd;

    move-result-object p0

    .line 11
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/xd;->a(Lcom/google/android/gms/ads/internal/util/zzf;)Lcom/google/android/gms/internal/ads/xd;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlt()Lcom/google/android/gms/internal/ads/wo;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/xd;->a(Lcom/google/android/gms/internal/ads/wo;)Lcom/google/android/gms/internal/ads/xd;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/xd;->a()Lcom/google/android/gms/internal/ads/xe;

    move-result-object p0

    .line 14
    sput-object p0, Lcom/google/android/gms/internal/ads/xe;->a:Lcom/google/android/gms/internal/ads/xe;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xe;->a()Lcom/google/android/gms/internal/ads/wd;

    move-result-object p0

    .line 1008
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wd;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1009
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wd;->a:Landroid/content/SharedPreferences;

    const-string v2, "IABTCF_PurposeConsents"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/wd;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 15
    sget-object p0, Lcom/google/android/gms/internal/ads/xe;->a:Lcom/google/android/gms/internal/ads/xe;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xe;->b()Lcom/google/android/gms/internal/ads/wh;

    move-result-object p0

    .line 1011
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wh;->a:Lcom/google/android/gms/internal/ads/wf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wf;->a()V

    .line 16
    sget-object p0, Lcom/google/android/gms/internal/ads/xe;->a:Lcom/google/android/gms/internal/ads/xe;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xe;->c()Lcom/google/android/gms/internal/ads/xf;

    move-result-object p0

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->aj:Lcom/google/android/gms/internal/ads/af;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->ak:Lcom/google/android/gms/internal/ads/af;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :try_start_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 32
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 33
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v7, 0x0

    .line 35
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 36
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 38
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 40
    :cond_3
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/xf;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 45
    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/ads/xi;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/xi;-><init>(Lcom/google/android/gms/internal/ads/xf;Ljava/util/Map;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/xf;->a(Lcom/google/android/gms/internal/ads/xk;)V

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v1, "Failed to parse listening list"

    .line 28
    invoke-static {v1, p0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    :cond_6
    :goto_3
    sget-object p0, Lcom/google/android/gms/internal/ads/xe;->a:Lcom/google/android/gms/internal/ads/xe;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method abstract a()Lcom/google/android/gms/internal/ads/wd;
.end method

.method abstract b()Lcom/google/android/gms/internal/ads/wh;
.end method

.method abstract c()Lcom/google/android/gms/internal/ads/xf;
.end method
