.class final Lcom/google/android/gms/internal/ads/ehb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/egz;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/zzti;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/zp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/egz;Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ehb;->a:Lcom/google/android/gms/internal/ads/egz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ehb;->b:Lcom/google/android/gms/internal/ads/zzti;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ehb;->c:Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ehb;->a:Lcom/google/android/gms/internal/ads/egz;

    .line 1024
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/egz;->c:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ehb;->a:Lcom/google/android/gms/internal/ads/egz;

    .line 1025
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/egz;->b:Z

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ehb;->a:Lcom/google/android/gms/internal/ads/egz;

    const/4 v2, 0x1

    .line 1026
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/egz;->b:Z

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ehb;->a:Lcom/google/android/gms/internal/ads/egz;

    .line 1027
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/egz;->a:Lcom/google/android/gms/internal/ads/egu;

    if-nez v1, :cond_1

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v3, Lcom/google/android/gms/internal/ads/ehe;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ehb;->b:Lcom/google/android/gms/internal/ads/zzti;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ehb;->c:Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/ehe;-><init>(Lcom/google/android/gms/internal/ads/ehb;Lcom/google/android/gms/internal/ads/egu;Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zp;)V

    .line 10
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/dbs;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ehb;->c:Lcom/google/android/gms/internal/ads/zp;

    new-instance v3, Lcom/google/android/gms/internal/ads/ehd;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/ads/ehd;-><init>(Lcom/google/android/gms/internal/ads/zp;Ljava/util/concurrent/Future;)V

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 13
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zp;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method
