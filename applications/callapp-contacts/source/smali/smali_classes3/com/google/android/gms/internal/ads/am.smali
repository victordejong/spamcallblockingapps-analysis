.class public final Lcom/google/android/gms/internal/ads/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Landroid/os/ConditionVariable;

.field volatile c:Z

.field volatile d:Z

.field e:Landroid/content/SharedPreferences;

.field f:Landroid/os/Bundle;

.field g:Landroid/content/Context;

.field private h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/am;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/am;->b:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/am;->c:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/am;->d:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/am;->e:Landroid/content/SharedPreferences;

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/am;->f:Landroid/os/Bundle;

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/am;->h:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/am;)Landroid/content/SharedPreferences;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/am;->e:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/af<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/am;->b:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/am;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/am;->d:Z

    if-eqz v1, :cond_0

    .line 51
    monitor-exit v0

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Flags.initialize() was not called!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 52
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/am;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/am;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_4

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/am;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/am;->c:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/am;->e:Landroid/content/SharedPreferences;

    if-nez v1, :cond_3

    goto :goto_1

    .line 56
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1017
    :cond_4
    iget v0, p1, Lcom/google/android/gms/internal/ads/af;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/am;->f:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 2008
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/af;->c:Ljava/lang/Object;

    return-object p1

    .line 60
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/af;->a(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2017
    :cond_6
    iget v0, p1, Lcom/google/android/gms/internal/ads/af;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/am;->h:Lorg/json/JSONObject;

    .line 3007
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/af;->b:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/am;->h:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/af;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 63
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/ap;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ap;-><init>(Lcom/google/android/gms/internal/ads/am;Lcom/google/android/gms/internal/ads/af;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbr;->zza(Lcom/google/android/gms/internal/ads/cyn;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1008
    :cond_8
    :goto_1
    :try_start_2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/af;->c:Ljava/lang/Object;

    .line 55
    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method final a()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/am;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ao;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ao;-><init>(Lcom/google/android/gms/internal/ads/am;)V

    .line 70
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbr;->zza(Lcom/google/android/gms/internal/ads/cyn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/am;->h:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/am;->e:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/af;->a(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "flag_configuration"

    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/am;->a()V

    :cond_0
    return-void
.end method
