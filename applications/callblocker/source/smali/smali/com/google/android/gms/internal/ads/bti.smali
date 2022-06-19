.class public final Lcom/google/android/gms/internal/ads/bti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/btm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/btm",
            "<",
            "Lcom/google/android/gms/internal/ads/amh;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:Lcom/google/android/gms/internal/ads/eav;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private d:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/btm;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/btm",
            "<",
            "Lcom/google/android/gms/internal/ads/amh;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bti;->d:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bti;->a:Lcom/google/android/gms/internal/ads/btm;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bti;->b:Ljava/lang/String;

    .line 5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bti;Lcom/google/android/gms/internal/ads/eav;)Lcom/google/android/gms/internal/ads/eav;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bti;->c:Lcom/google/android/gms/internal/ads/eav;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bti;Z)Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bti;->d:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dya;I)V
    .locals 4

    .prologue
    .line 7
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bti;->c:Lcom/google/android/gms/internal/ads/eav;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/btn;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/btn;-><init>(I)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bti;->a:Lcom/google/android/gms/internal/ads/btm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bti;->b:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/bth;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/bth;-><init>(Lcom/google/android/gms/internal/ads/bti;)V

    .line 10
    invoke-interface {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/btm;->a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/btl;Lcom/google/android/gms/internal/ads/bto;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bti;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 7
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 6
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bti;->a:Lcom/google/android/gms/internal/ads/btm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/btm;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 12
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bti;->c:Lcom/google/android/gms/internal/ads/eav;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bti;->c:Lcom/google/android/gms/internal/ads/eav;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/eav;->a()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 13
    :catch_0
    move-exception v1

    .line 14
    :try_start_1
    const-string/jumbo v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 16
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bti;->c:Lcom/google/android/gms/internal/ads/eav;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bti;->c:Lcom/google/android/gms/internal/ads/eav;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/eav;->a()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 17
    :catch_0
    move-exception v1

    .line 18
    :try_start_1
    const-string/jumbo v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
