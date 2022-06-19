.class public final Lcom/google/android/gms/internal/ads/ede;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/os/ConditionVariable;

.field private volatile c:Z

.field private volatile d:Z

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/os/Bundle;

.field private g:Landroid/content/Context;

.field private h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->b:Landroid/os/ConditionVariable;

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ede;->c:Z

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ede;->d:Z

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->e:Landroid/content/SharedPreferences;

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->f:Landroid/os/Bundle;

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->h:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ede;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private final b()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/edg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/edg;-><init>(Lcom/google/android/gms/internal/ads/ede;)V

    .line 70
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xj;->a(Lcom/google/android/gms/internal/ads/cov;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ede;->h:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/ect",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->b:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ede;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ede;->d:Z

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Flags.initialize() was not called!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ede;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_5

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ede;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ede;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_4

    .line 55
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ect;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    .line 63
    :goto_0
    return-object v0

    .line 56
    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ect;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->f:Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ect;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 56
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 60
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->f:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ect;->a(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ect;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->h:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ect;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->h:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ect;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/edd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/edd;-><init>(Lcom/google/android/gms/internal/ads/ede;Lcom/google/android/gms/internal/ads/ect;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xj;->a(Lcom/google/android/gms/internal/ads/cov;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method final synthetic a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "flag_configuration"

    const-string/jumbo v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ede;->c:Z

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ede;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 12
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ede;->c:Z

    if-eqz v0, :cond_1

    .line 13
    monitor-exit v1

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 14
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ede;->d:Z

    if-nez v0, :cond_2

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ede;->d:Z

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->g:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->g:Landroid/content/Context;

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ede;->g:Landroid/content/Context;

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/c/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->f:Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/google/android/gms/common/h;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 24
    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 26
    if-nez v0, :cond_4

    .line 27
    :goto_3
    if-nez p1, :cond_5

    .line 28
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ede;->d:Z

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v1

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object p1, v0

    .line 26
    goto :goto_3

    .line 32
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->c()Lcom/google/android/gms/internal/ads/edb;

    .line 33
    const-string/jumbo v0, "google_ads_flags"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->e:Landroid/content/SharedPreferences;

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_6

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 37
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/edf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/edf;-><init>(Lcom/google/android/gms/internal/ads/ede;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/be;->a(Lcom/google/android/gms/internal/ads/bb;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ede;->b()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ede;->c:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 40
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ede;->d:Z

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 46
    monitor-exit v1

    goto/16 :goto_0

    .line 43
    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/ede;->d:Z

    .line 44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ede;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 45
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_7
    move-object p1, v0

    goto :goto_3
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ede;->e:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ect;->a(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "flag_configuration"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ede;->b()V

    .line 66
    :cond_0
    return-void
.end method
