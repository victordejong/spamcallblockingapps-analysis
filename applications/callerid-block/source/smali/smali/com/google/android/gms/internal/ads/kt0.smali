.class final Lcom/google/android/gms/internal/ads/kt0;
.super Lcom/google/android/gms/internal/ads/sa;
.source ""


# instance fields
.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Lcom/google/android/gms/internal/ads/fp;

.field final synthetic f:Lcom/google/android/gms/internal/ads/lt0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lt0;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kt0;->f:Lcom/google/android/gms/internal/ads/lt0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kt0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/kt0;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/kt0;->d:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/kt0;->e:Lcom/google/android/gms/internal/ads/fp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kt0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kt0;->f:Lcom/google/android/gms/internal/ads/lt0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kt0;->c:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/kt0;->d:J

    sub-long/2addr v5, v7

    long-to-int v6, v5

    invoke-static {v1, v2, v4, v3, v6}, Lcom/google/android/gms/internal/ads/lt0;->n(Lcom/google/android/gms/internal/ads/lt0;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kt0;->f:Lcom/google/android/gms/internal/ads/lt0;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/lt0;->r(Lcom/google/android/gms/internal/ads/lt0;)Lcom/google/android/gms/internal/ads/sr0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kt0;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/sr0;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kt0;->f:Lcom/google/android/gms/internal/ads/lt0;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/lt0;->s(Lcom/google/android/gms/internal/ads/lt0;)Lcom/google/android/gms/internal/ads/zd0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kt0;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zd0;->u(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kt0;->e:Lcom/google/android/gms/internal/ads/fp;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/fp;->c(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kt0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kt0;->f:Lcom/google/android/gms/internal/ads/lt0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kt0;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/kt0;->d:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    invoke-static {v1, v2, v3, p1, v5}, Lcom/google/android/gms/internal/ads/lt0;->n(Lcom/google/android/gms/internal/ads/lt0;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kt0;->f:Lcom/google/android/gms/internal/ads/lt0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/lt0;->r(Lcom/google/android/gms/internal/ads/lt0;)Lcom/google/android/gms/internal/ads/sr0;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kt0;->c:Ljava/lang/String;

    const-string v2, "error"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/sr0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kt0;->f:Lcom/google/android/gms/internal/ads/lt0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/lt0;->s(Lcom/google/android/gms/internal/ads/lt0;)Lcom/google/android/gms/internal/ads/zd0;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kt0;->c:Ljava/lang/String;

    const-string v2, "error"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zd0;->N(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kt0;->e:Lcom/google/android/gms/internal/ads/fp;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/fp;->c(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
