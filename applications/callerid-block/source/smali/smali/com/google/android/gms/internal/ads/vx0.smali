.class public final Lcom/google/android/gms/internal/ads/vx0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/be0;


# instance fields
.field private b:Z

.field private c:Z

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/internal/ads/aq1;

.field private final f:Lcom/google/android/gms/ads/internal/util/a1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/aq1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vx0;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vx0;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vx0;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vx0;->e:Lcom/google/android/gms/internal/ads/aq1;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->h()Lcom/google/android/gms/internal/ads/zn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zn;->l()Lcom/google/android/gms/ads/internal/util/a1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vx0;->f:Lcom/google/android/gms/ads/internal/util/a1;

    return-void
.end method

.method private final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zp1;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vx0;->f:Lcom/google/android/gms/ads/internal/util/a1;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/a1;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vx0;->d:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zp1;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zp1;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v1

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tms"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zp1;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zp1;

    const-string v1, "tid"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zp1;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zp1;

    return-object p1
.end method


# virtual methods
.method public final N(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vx0;->e:Lcom/google/android/gms/internal/ads/aq1;

    const-string v1, "adapter_init_finished"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/vx0;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zp1;

    move-result-object v1

    const-string v2, "ancn"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zp1;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zp1;

    const-string p1, "rqe"

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zp1;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zp1;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/aq1;->b(Lcom/google/android/gms/internal/ads/zp1;)V

    return-void
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vx0;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vx0;->e:Lcom/google/android/gms/internal/ads/aq1;

    const-string v1, "init_finished"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/vx0;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zp1;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/aq1;->b(Lcom/google/android/gms/internal/ads/zp1;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vx0;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vx0;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vx0;->e:Lcom/google/android/gms/internal/ads/aq1;

    const-string v1, "init_started"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/vx0;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zp1;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/aq1;->b(Lcom/google/android/gms/internal/ads/zp1;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vx0;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vx0;->e:Lcom/google/android/gms/internal/ads/aq1;

    const-string v1, "adapter_init_started"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/vx0;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zp1;

    move-result-object v1

    const-string v2, "ancn"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zp1;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zp1;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/aq1;->b(Lcom/google/android/gms/internal/ads/zp1;)V

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vx0;->e:Lcom/google/android/gms/internal/ads/aq1;

    const-string v1, "adapter_init_finished"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/vx0;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zp1;

    move-result-object v1

    const-string v2, "ancn"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zp1;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zp1;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/aq1;->b(Lcom/google/android/gms/internal/ads/zp1;)V

    return-void
.end method
