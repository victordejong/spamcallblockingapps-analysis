.class public final Lcom/google/android/gms/ads/internal/util/zzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/util/zzf;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzcmn:Landroid/content/SharedPreferences;

.field private zzdvu:Z

.field private zzdxs:Z

.field private zzdyd:Z

.field private zzefv:Z

.field private final zzefw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzefx:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "*>;"
        }
    .end annotation
.end field

.field private zzefy:Lcom/google/android/gms/internal/ads/efb;

.field private zzefz:Landroid/content/SharedPreferences$Editor;

.field private zzega:Z

.field private zzegb:Ljava/lang/String;

.field private zzegc:Ljava/lang/String;

.field private zzegd:Z

.field private zzege:Lcom/google/android/gms/internal/ads/ye;

.field private zzegf:J

.field private zzegg:J

.field private zzegh:I

.field private zzegi:I

.field private zzegj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzegk:Lorg/json/JSONObject;

.field private zzegl:Ljava/lang/String;

.field private zzegm:I

.field private zzegn:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefw:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefy:Lcom/google/android/gms/internal/ads/efb;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzega:Z

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdvu:Z

    .line 7
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegd:Z

    .line 8
    new-instance v3, Lcom/google/android/gms/internal/ads/ye;

    const-string v4, ""

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/ye;-><init>(Ljava/lang/String;J)V

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzege:Lcom/google/android/gms/internal/ads/ye;

    .line 9
    iput-wide v5, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegf:J

    .line 10
    iput-wide v5, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegg:J

    const/4 v3, -0x1

    .line 11
    iput v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegh:I

    .line 12
    iput v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegi:I

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegj:Ljava/util/Set;

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegk:Lorg/json/JSONObject;

    .line 16
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdxs:Z

    .line 17
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdyd:Z

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegl:Ljava/lang/String;

    .line 19
    iput v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegm:I

    .line 20
    iput v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegn:I

    return-void
.end method

.method private final zzzo()V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefx:Lcom/google/android/gms/internal/ads/dbt;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dbt;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 35
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefx:Lcom/google/android/gms/internal/ads/dbt;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dbt;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    const-string v1, "Fail to initialize AdSharedPreferenceManager."

    .line 42
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_3
    move-exception v0

    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "Interrupted while waiting for preferences loaded."

    .line 39
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzzp()V
    .locals 2

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/util/zzk;-><init>(Lcom/google/android/gms/ads/internal/util/zzi;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 24
    monitor-exit v0

    return-void

    .line 25
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "admob"

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v2, Lcom/google/android/gms/ads/internal/util/zzh;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/ads/internal/util/zzh;-><init>(Lcom/google/android/gms/ads/internal/util/zzi;Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dbs;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefx:Lcom/google/android/gms/internal/ads/dbt;

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefv:Z

    return-void

    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 213
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegk:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 217
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 218
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 219
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 220
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    .line 222
    monitor-exit v0

    return-void

    :cond_1
    const-string v6, "template_id"

    .line 223
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p3, :cond_2

    const-string v2, "uses_media_view"

    .line 225
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 231
    :cond_4
    :goto_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "template_id"

    .line 232
    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "uses_media_view"

    .line 233
    invoke-virtual {v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "timestamp_ms"

    .line 234
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v4

    invoke-virtual {v3, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 235
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 236
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegk:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Could not update native advanced settings"

    .line 239
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_5

    const-string p2, "native_advanced_settings"

    .line 241
    iget-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegk:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 244
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzas(Z)V
    .locals 3

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdxs:Z

    if-ne v1, p1, :cond_0

    .line 64
    monitor-exit v0

    return-void

    .line 65
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdxs:Z

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_url_opted_out"

    .line 67
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 70
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzat(Z)V
    .locals 3

    .line 89
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdyd:Z

    if-ne v1, p1, :cond_0

    .line 92
    monitor-exit v0

    return-void

    .line 93
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdyd:Z

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_vertical_opted_out"

    .line 95
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 98
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzau(Z)V
    .locals 3

    .line 117
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegd:Z

    if-ne p1, v1, :cond_0

    .line 120
    monitor-exit v0

    return-void

    .line 121
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegd:Z

    .line 122
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "gad_idless"

    .line 123
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Runnable;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzdi(I)V
    .locals 3

    .line 135
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegi:I

    if-ne v1, p1, :cond_0

    .line 138
    monitor-exit v0

    return-void

    .line 139
    :cond_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegi:I

    .line 140
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "version_code"

    .line 141
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 142
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 144
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzdj(I)V
    .locals 3

    .line 185
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegh:I

    if-ne v1, p1, :cond_0

    .line 188
    monitor-exit v0

    return-void

    .line 189
    :cond_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegh:I

    .line 190
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "request_in_session_count"

    .line 191
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 192
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 194
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzdk(I)V
    .locals 3

    .line 271
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 272
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegn:I

    if-ne v1, p1, :cond_0

    .line 274
    monitor-exit v0

    return-void

    .line 275
    :cond_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegn:I

    .line 276
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "sd_app_measure_npa"

    .line 277
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 280
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzee(Ljava/lang/String;)V
    .locals 3

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegb:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegb:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_url_hashes"

    .line 81
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 84
    monitor-exit v0

    return-void

    .line 78
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzef(Ljava/lang/String;)V
    .locals 3

    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegc:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_vertical_hashes"

    .line 109
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 112
    monitor-exit v0

    return-void

    .line 106
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzeg(Ljava/lang/String;)V
    .locals 5

    .line 149
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v1

    if-eqz p1, :cond_3

    .line 152
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzege:Lcom/google/android/gms/internal/ads/ye;

    .line 1064
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ye;->c:Ljava/lang/String;

    .line 152
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ads/ye;

    invoke-direct {v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ye;-><init>(Ljava/lang/String;J)V

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzege:Lcom/google/android/gms/internal/ads/ye;

    .line 156
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_1

    const-string v4, "app_settings_json"

    .line 157
    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    const-string v3, "app_settings_last_update_ms"

    invoke-interface {p1, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 161
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefw:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 162
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 164
    :cond_2
    monitor-exit v0

    return-void

    .line 153
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzege:Lcom/google/android/gms/internal/ads/ye;

    .line 2060
    iput-wide v1, p1, Lcom/google/android/gms/internal/ads/ye;->d:J

    .line 154
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzeh(Ljava/lang/String;)V
    .locals 3

    .line 261
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegl:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    monitor-exit v0

    return-void

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegl:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "display_cutout"

    .line 267
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 270
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzfa(J)V
    .locals 4

    .line 171
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegf:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 174
    monitor-exit v0

    return-void

    .line 175
    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegf:J

    .line 176
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "app_last_background_time_ms"

    .line 177
    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 178
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 180
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzfb(J)V
    .locals 4

    .line 199
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegg:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 202
    monitor-exit v0

    return-void

    .line 203
    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegg:J

    .line 204
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "first_ad_req_time_ms"

    .line 205
    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 206
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 208
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic zzo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 284
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 285
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    .line 287
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-static {}, Lcom/google/android/gms/common/util/n;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 290
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 291
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzega:Z

    .line 292
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "use_https"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdvu:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdvu:Z

    .line 293
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "content_url_opted_out"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdxs:Z

    .line 294
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdxs:Z

    .line 295
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "content_url_hashes"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegb:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegb:Ljava/lang/String;

    .line 296
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "gad_idless"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegd:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegd:Z

    .line 297
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "content_vertical_opted_out"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdyd:Z

    .line 298
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdyd:Z

    .line 299
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "content_vertical_hashes"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegc:Ljava/lang/String;

    .line 300
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegc:Ljava/lang/String;

    .line 301
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "version_code"

    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegi:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegi:I

    .line 302
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "app_settings_json"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzege:Lcom/google/android/gms/internal/ads/ye;

    .line 2064
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ye;->c:Ljava/lang/String;

    .line 304
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string v0, "app_settings_last_update_ms"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzege:Lcom/google/android/gms/internal/ads/ye;

    .line 3062
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/ye;->d:J

    .line 307
    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 308
    new-instance p2, Lcom/google/android/gms/internal/ads/ye;

    invoke-direct {p2, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ye;-><init>(Ljava/lang/String;J)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzege:Lcom/google/android/gms/internal/ads/ye;

    .line 309
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "app_last_background_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegf:J

    .line 310
    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegf:J

    .line 311
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "request_in_session_count"

    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegh:I

    .line 312
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegh:I

    .line 313
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "first_ad_req_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegg:J

    .line 314
    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegg:J

    .line 315
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "never_pool_slots"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegj:Ljava/util/Set;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegj:Ljava/util/Set;

    .line 316
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "display_cutout"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegl:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegl:Ljava/lang/String;

    .line 317
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "app_measurement_npa"

    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegm:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegm:I

    .line 318
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string p2, "sd_app_measure_npa"

    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegn:I

    .line 319
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegn:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzcmn:Landroid/content/SharedPreferences;

    const-string v0, "native_advanced_settings"

    const-string v2, "{}"

    .line 321
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegk:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Could not convert native advanced settings to json object"

    .line 324
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 326
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzza()Lcom/google/android/gms/internal/ads/efb;
    .locals 4

    .line 46
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefv:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzd()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 50
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/cj;->b:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_3

    .line 54
    monitor-exit v0

    return-object v1

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefy:Lcom/google/android/gms/internal/ads/efb;

    if-nez v1, :cond_4

    .line 56
    new-instance v1, Lcom/google/android/gms/internal/ads/efb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/efb;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefy:Lcom/google/android/gms/internal/ads/efb;

    .line 57
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefy:Lcom/google/android/gms/internal/ads/efb;

    .line 1037
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/efb;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1038
    :try_start_1
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/efb;->a:Z

    if-eqz v3, :cond_5

    const-string v1, "Content hash thread already started, quiting..."

    .line 1039
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 1040
    monitor-exit v2

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    .line 1041
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/efb;->a:Z

    .line 1042
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1043
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/efb;->start()V

    :goto_0
    const-string v1, "start fetching content..."

    .line 58
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefy:Lcom/google/android/gms/internal/ads/efb;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_0
    move-exception v1

    .line 1042
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public final zzzb()Z
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdxs:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzc()Ljava/lang/String;
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegb:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzd()Z
    .locals 2

    .line 99
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdyd:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzze()Ljava/lang/String;
    .locals 2

    .line 113
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegc:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzf()I
    .locals 2

    .line 145
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegi:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzg()Lcom/google/android/gms/internal/ads/ye;
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzege:Lcom/google/android/gms/internal/ads/ye;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzh()J
    .locals 3

    .line 181
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 182
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegf:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzi()I
    .locals 2

    .line 195
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegh:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzj()J
    .locals 3

    .line 209
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegg:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzk()Lorg/json/JSONObject;
    .locals 2

    .line 245
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 246
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegk:Lorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 248
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzl()V
    .locals 3

    .line 249
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 250
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegk:Lorg/json/JSONObject;

    .line 252
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    const-string v2, "native_advanced_settings"

    .line 253
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzefz:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzp()V

    .line 256
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzm()Ljava/lang/String;
    .locals 2

    .line 257
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegl:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 260
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzzn()Z
    .locals 2

    .line 127
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->al:Lcom/google/android/gms/internal/ads/af;

    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzzo()V

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzegd:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
