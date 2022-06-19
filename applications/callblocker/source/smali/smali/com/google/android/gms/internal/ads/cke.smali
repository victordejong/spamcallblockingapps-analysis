.class final Lcom/google/android/gms/internal/ads/cke;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/chc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/chc;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cke;->a:Lcom/google/android/gms/internal/ads/chc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cke;->a:Lcom/google/android/gms/internal/ads/chc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chc;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 21
    :goto_0
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/chc;->b()Landroid/os/ConditionVariable;

    move-result-object v2

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cke;->a:Lcom/google/android/gms/internal/ads/chc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chc;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 6
    monitor-exit v2

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aU:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 11
    :goto_1
    if-eqz v0, :cond_2

    .line 12
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/dwn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cke;->a:Lcom/google/android/gms/internal/ads/chc;

    .line 13
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/chc;->a(Lcom/google/android/gms/internal/ads/chc;)Lcom/google/android/gms/internal/ads/din;

    move-result-object v4

    .line 14
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/din;->a:Landroid/content/Context;

    .line 15
    const-string/jumbo v5, "ADSHIELD"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/dwn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/internal/ads/chc;->a:Lcom/google/android/gms/internal/ads/dwn;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :cond_2
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cke;->a:Lcom/google/android/gms/internal/ads/chc;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/chc;->b:Ljava/lang/Boolean;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/chc;->b()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 21
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 18
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2
.end method
