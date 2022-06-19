.class final Lcom/google/android/gms/internal/ads/eez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/efa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/efa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eez;->a:Lcom/google/android/gms/internal/ads/efa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eez;->a:Lcom/google/android/gms/internal/ads/efa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/efa;->a(Lcom/google/android/gms/internal/ads/efa;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eez;->a:Lcom/google/android/gms/internal/ads/efa;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/efa;->b(Lcom/google/android/gms/internal/ads/efa;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eez;->a:Lcom/google/android/gms/internal/ads/efa;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/efa;->c(Lcom/google/android/gms/internal/ads/efa;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eez;->a:Lcom/google/android/gms/internal/ads/efa;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/efa;->d(Lcom/google/android/gms/internal/ads/efa;)Z

    const-string v1, "App went background"

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eez;->a:Lcom/google/android/gms/internal/ads/efa;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/efa;->e(Lcom/google/android/gms/internal/ads/efa;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/efc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 7
    :try_start_1
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/efc;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, ""

    .line 10
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v1, "App is still foreground"

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 13
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
