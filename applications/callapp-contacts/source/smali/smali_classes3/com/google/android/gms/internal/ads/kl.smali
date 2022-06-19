.class final synthetic Lcom/google/android/gms/internal/ads/kl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ke;

.field private final b:Lcom/google/android/gms/internal/ads/kz;

.field private final c:Lcom/google/android/gms/internal/ads/ju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/kz;Lcom/google/android/gms/internal/ads/ju;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kl;->a:Lcom/google/android/gms/internal/ads/ke;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kl;->b:Lcom/google/android/gms/internal/ads/kz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/kl;->c:Lcom/google/android/gms/internal/ads/ju;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kl;->a:Lcom/google/android/gms/internal/ads/ke;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kl;->b:Lcom/google/android/gms/internal/ads/kz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kl;->c:Lcom/google/android/gms/internal/ads/ju;

    .line 1069
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2018
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zs;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 3018
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zs;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 1073
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zs;->d()V

    .line 1074
    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4000
    new-instance v3, Lcom/google/android/gms/internal/ads/kk;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/kk;-><init>(Lcom/google/android/gms/internal/ads/ju;)V

    .line 1074
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    .line 1075
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 1076
    monitor-exit v0

    return-void

    .line 1072
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 1076
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
