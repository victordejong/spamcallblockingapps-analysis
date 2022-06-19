.class final Lcom/google/android/gms/internal/ads/dug;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/duh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/duh;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dug;->a:Lcom/google/android/gms/internal/ads/duh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dug;->a:Lcom/google/android/gms/internal/ads/duh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/duh;->a(Lcom/google/android/gms/internal/ads/duh;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dug;->a:Lcom/google/android/gms/internal/ads/duh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/duh;->b(Lcom/google/android/gms/internal/ads/duh;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dug;->a:Lcom/google/android/gms/internal/ads/duh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/duh;->c(Lcom/google/android/gms/internal/ads/duh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dug;->a:Lcom/google/android/gms/internal/ads/duh;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/duh;->a(Lcom/google/android/gms/internal/ads/duh;Z)Z

    .line 5
    const-string/jumbo v0, "App went background"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dug;->a:Lcom/google/android/gms/internal/ads/duh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/duh;->d(Lcom/google/android/gms/internal/ads/duh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/duj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/duj;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    :try_start_2
    const-string/jumbo v3, ""

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 12
    :cond_0
    :try_start_3
    const-string/jumbo v0, "App is still foreground"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 13
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
