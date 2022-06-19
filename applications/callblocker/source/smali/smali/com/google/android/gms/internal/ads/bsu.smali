.class public final Lcom/google/android/gms/internal/ads/bsu;
.super Lcom/google/android/gms/internal/ads/mr;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/mn;

.field private c:Lcom/google/android/gms/internal/ads/yo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yo",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lorg/json/JSONObject;

.field private e:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/mn;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/mn;",
            "Lcom/google/android/gms/internal/ads/yo",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mr;-><init>()V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bsu;->d:Lorg/json/JSONObject;

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bsu;->e:Z

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bsu;->c:Lcom/google/android/gms/internal/ads/yo;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bsu;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bsu;->b:Lcom/google/android/gms/internal/ads/mn;

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsu;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "adapter_version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bsu;->b:Lcom/google/android/gms/internal/ads/mn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/mn;->a()Lcom/google/android/gms/internal/ads/nb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/nb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsu;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "sdk_version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bsu;->b:Lcom/google/android/gms/internal/ads/mn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/mn;->b()Lcom/google/android/gms/internal/ads/nb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/nb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsu;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bsu;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 14
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bsu;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 24
    :goto_0
    monitor-exit p0

    return-void

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    :try_start_1
    const-string/jumbo v0, "Adapter returned null signals"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/bsu;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 19
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsu;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "signals"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsu;->c:Lcom/google/android/gms/internal/ads/yo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bsu;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bsu;->e:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bsu;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 32
    :goto_0
    monitor-exit p0

    return-void

    .line 27
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsu;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "signal_error"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsu;->c:Lcom/google/android/gms/internal/ads/yo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bsu;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bsu;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
