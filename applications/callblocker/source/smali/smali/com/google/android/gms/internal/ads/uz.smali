.class public final Lcom/google/android/gms/internal/ads/uz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uw;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<*>;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/dui;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private f:Landroid/content/SharedPreferences;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private g:Landroid/content/SharedPreferences$Editor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private h:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private i:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private l:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private n:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private o:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private p:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private q:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private r:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private t:Lorg/json/JSONObject;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private u:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private v:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private w:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private x:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->c:Ljava/util/List;

    .line 4
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/uz;->e:Lcom/google/android/gms/internal/ads/dui;

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/uz;->h:Z

    .line 6
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/uz;->i:Z

    .line 7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/uz;->l:Z

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->m:Ljava/lang/String;

    .line 9
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/uz;->n:J

    .line 10
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/uz;->o:J

    .line 11
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/uz;->p:J

    .line 12
    iput v3, p0, Lcom/google/android/gms/internal/ads/uz;->q:I

    .line 13
    iput v1, p0, Lcom/google/android/gms/internal/ads/uz;->r:I

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->s:Ljava/util/Set;

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->t:Lorg/json/JSONObject;

    .line 17
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/uz;->u:Z

    .line 18
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/uz;->v:Z

    .line 19
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/uz;->w:Ljava/lang/String;

    .line 20
    iput v3, p0, Lcom/google/android/gms/internal/ads/uz;->x:I

    .line 21
    return-void
.end method

.method private final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/vb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/vb;-><init>(Lcom/google/android/gms/internal/ads/uz;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method private final o()V
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->d:Lcom/google/android/gms/internal/ads/crt;

    if-nez v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->d:Lcom/google/android/gms/internal/ads/crt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/crt;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->d:Lcom/google/android/gms/internal/ads/crt;

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/crt;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 41
    const-string/jumbo v1, "Interrupted while waiting for preferences loaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 43
    :catch_1
    move-exception v0

    .line 44
    :goto_1
    const-string/jumbo v1, "Fail to initialize AdSharedPreferenceManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 43
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private final p()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string/jumbo v0, "listener_registration_bundle"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 49
    :try_start_0
    const-string/jumbo v0, "use_https"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/uz;->i:Z

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    const-string/jumbo v0, "content_url_opted_out"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/uz;->u:Z

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    const-string/jumbo v0, "content_vertical_opted_out"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/uz;->v:Z

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    const-string/jumbo v0, "auto_collect_location"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/uz;->l:Z

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    const-string/jumbo v0, "version_code"

    iget v3, p0, Lcom/google/android/gms/internal/ads/uz;->r:I

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string/jumbo v3, "never_pool_slots"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->s:Ljava/util/Set;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "app_settings_json"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uz;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v0, "app_settings_last_update_ms"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uz;->n:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 57
    const-string/jumbo v0, "app_last_background_time_ms"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uz;->o:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 58
    const-string/jumbo v0, "request_in_session_count"

    iget v3, p0, Lcom/google/android/gms/internal/ads/uz;->q:I

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string/jumbo v0, "first_ad_req_time_ms"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uz;->p:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 60
    const-string/jumbo v0, "native_advanced_settings"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uz;->t:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "display_cutout"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uz;->w:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "app_measurement_npa"

    iget v3, p0, Lcom/google/android/gms/internal/ads/uz;->x:I

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v0, "content_url_hashes"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uz;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 66
    const-string/jumbo v0, "content_vertical_hashes"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uz;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    monitor-exit v2

    .line 68
    return-object v1

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dui;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uz;->b:Z

    if-nez v0, :cond_0

    move-object v0, v1

    .line 84
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/uz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/uz;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/ak;->b:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 78
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_3

    .line 79
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->e:Lcom/google/android/gms/internal/ads/dui;

    if-nez v0, :cond_4

    .line 81
    new-instance v0, Lcom/google/android/gms/internal/ads/dui;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dui;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->e:Lcom/google/android/gms/internal/ads/dui;

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->e:Lcom/google/android/gms/internal/ads/dui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dui;->a()V

    .line 83
    const-string/jumbo v0, "start fetching content..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->e:Lcom/google/android/gms/internal/ads/dui;

    monitor-exit v2

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 169
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/uz;->r:I

    if-ne v0, p1, :cond_0

    .line 171
    monitor-exit v1

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/uz;->r:I

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "version_code"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    const-string/jumbo v2, "version_code"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 179
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(J)V
    .locals 5

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 210
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uz;->o:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    .line 212
    monitor-exit v1

    .line 220
    :goto_0
    return-void

    .line 213
    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/uz;->o:J

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "app_last_background_time_ms"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 216
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    const-string/jumbo v2, "app_last_background_time_ms"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 219
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 220
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 321
    .line 323
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 324
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 325
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 326
    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    .line 327
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    .line 329
    invoke-static {}, Lcom/google/android/gms/common/util/m;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 331
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/uz;->h:Z

    .line 332
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "use_https"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/uz;->i:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/uz;->i:Z

    .line 333
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "content_url_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/uz;->u:Z

    .line 334
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/uz;->u:Z

    .line 335
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "content_url_hashes"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uz;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->j:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "auto_collect_location"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/uz;->l:Z

    .line 337
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/uz;->l:Z

    .line 338
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "content_vertical_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/uz;->v:Z

    .line 339
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/uz;->v:Z

    .line 340
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "content_vertical_hashes"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uz;->k:Ljava/lang/String;

    .line 341
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->k:Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "version_code"

    iget v2, p0, Lcom/google/android/gms/internal/ads/uz;->r:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/uz;->r:I

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "app_settings_json"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uz;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->m:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "app_settings_last_update_ms"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uz;->n:J

    .line 345
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/uz;->n:J

    .line 346
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "app_last_background_time_ms"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uz;->o:J

    .line 347
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/uz;->o:J

    .line 348
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "request_in_session_count"

    iget v2, p0, Lcom/google/android/gms/internal/ads/uz;->q:I

    .line 349
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/uz;->q:I

    .line 350
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "first_ad_req_time_ms"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uz;->p:J

    .line 351
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/uz;->p:J

    .line 352
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "never_pool_slots"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uz;->s:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->s:Ljava/util/Set;

    .line 353
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "display_cutout"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uz;->w:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->w:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "app_measurement_npa"

    iget v2, p0, Lcom/google/android/gms/internal/ads/uz;->x:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/uz;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "native_advanced_settings"

    const-string/jumbo v4, "{}"

    .line 356
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->t:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->p()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 361
    monitor-exit v3

    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    const-string/jumbo v1, "Could not convert native advanced settings to json object"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 24
    monitor-exit v1

    .line 32
    :goto_0
    return-void

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-nez p2, :cond_1

    .line 27
    const-string/jumbo v0, "admob"

    .line 29
    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v2, Lcom/google/android/gms/internal/ads/uy;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/uy;-><init>(Lcom/google/android/gms/internal/ads/uz;Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->d:Lcom/google/android/gms/internal/ads/crt;

    .line 31
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/uz;->b:Z

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 28
    :cond_1
    const-string/jumbo v0, "admob__"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    monitor-exit v1

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uz;->j:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "content_url_hashes"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    const-string/jumbo v2, "content_url_hashes"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 114
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 258
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->t:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 260
    if-nez v1, :cond_5

    .line 261
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v1

    .line 262
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 263
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 264
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 265
    if-nez v4, :cond_0

    .line 266
    monitor-exit v3

    .line 290
    :goto_2
    return-void

    .line 267
    :cond_0
    const-string/jumbo v5, "template_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 268
    if-eqz p3, :cond_3

    .line 269
    const-string/jumbo v1, "uses_media_view"

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 270
    if-eqz v1, :cond_3

    .line 271
    monitor-exit v3

    goto :goto_2

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 275
    :cond_3
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 276
    const-string/jumbo v4, "template_id"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string/jumbo v4, "uses_media_view"

    invoke-virtual {v1, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 278
    const-string/jumbo v4, "timestamp_ms"

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 279
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->t:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "native_advanced_settings"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uz;->t:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    const-string/jumbo v1, "native_advanced_settings"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uz;->t:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 290
    monitor-exit v3

    goto :goto_2

    .line 282
    :catch_0
    move-exception v0

    .line 283
    const-string/jumbo v1, "Could not update native advanced settings"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_5
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 87
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uz;->u:Z

    if-ne v0, p1, :cond_0

    .line 89
    monitor-exit v1

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/uz;->u:Z

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "content_url_opted_out"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string/jumbo v2, "content_url_opted_out"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/uz;->u:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    const-string/jumbo v2, "content_vertical_opted_out"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/uz;->v:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 98
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 226
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/uz;->q:I

    if-ne v0, p1, :cond_0

    .line 228
    monitor-exit v1

    .line 236
    :goto_0
    return-void

    .line 229
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/uz;->q:I

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "request_in_session_count"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    const-string/jumbo v2, "request_in_session_count"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 236
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(J)V
    .locals 5

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 242
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uz;->p:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    .line 244
    monitor-exit v1

    .line 252
    :goto_0
    return-void

    .line 245
    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/uz;->p:J

    .line 246
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "first_ad_req_time_ms"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    const-string/jumbo v2, "first_ad_req_time_ms"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 251
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 252
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 137
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    monitor-exit v1

    .line 147
    :goto_0
    return-void

    .line 140
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uz;->k:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "content_vertical_hashes"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    const-string/jumbo v2, "content_vertical_hashes"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 147
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Z)V
    .locals 4

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 120
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uz;->v:Z

    if-ne v0, p1, :cond_0

    .line 122
    monitor-exit v1

    .line 131
    :goto_0
    return-void

    .line 123
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/uz;->v:Z

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "content_vertical_opted_out"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string/jumbo v2, "content_url_opted_out"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/uz;->u:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    const-string/jumbo v2, "content_vertical_opted_out"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/uz;->v:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 131
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uz;->u:Z

    monitor-exit v1

    return v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 116
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->j:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 185
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    .line 187
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/uz;->n:J

    .line 188
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    monitor-exit v1

    .line 202
    :goto_0
    return-void

    .line 190
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uz;->m:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "app_settings_json"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "app_settings_last_update_ms"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    const-string/jumbo v4, "app_settings_json"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v4, "app_settings_last_update_ms"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 200
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 3

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 153
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uz;->l:Z

    if-ne v0, p1, :cond_0

    .line 155
    monitor-exit v1

    .line 163
    :goto_0
    return-void

    .line 156
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/uz;->l:Z

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "auto_collect_location"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    const-string/jumbo v2, "auto_collect_location"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 163
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 310
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->w:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    monitor-exit v1

    .line 320
    :goto_0
    return-void

    .line 313
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uz;->w:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "display_cutout"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 316
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 318
    const-string/jumbo v2, "display_cutout"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 320
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 133
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uz;->v:Z

    monitor-exit v1

    return v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 149
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->k:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 165
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uz;->l:Z

    monitor-exit v1

    return v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()I
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 181
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/uz;->r:I

    monitor-exit v1

    return v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/uh;
    .locals 6

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 204
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/uh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uz;->m:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uz;->n:J

    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/gms/internal/ads/uh;-><init>(Ljava/lang/String;J)V

    monitor-exit v1

    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i()J
    .locals 4

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 222
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uz;->o:J

    monitor-exit v1

    return-wide v2

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j()I
    .locals 2

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 238
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/uz;->q:I

    monitor-exit v1

    return v0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final k()J
    .locals 4

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 254
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uz;->p:J

    monitor-exit v1

    return-wide v2

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 292
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->t:Lorg/json/JSONObject;

    monitor-exit v1

    return-object v0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final m()V
    .locals 4

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 296
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->t:Lorg/json/JSONObject;

    .line 298
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "native_advanced_settings"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    const-string/jumbo v2, "native_advanced_settings"

    const-string/jumbo v3, "{}"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uz;->a(Landroid/os/Bundle;)V

    .line 304
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz;->o()V

    .line 306
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->w:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
