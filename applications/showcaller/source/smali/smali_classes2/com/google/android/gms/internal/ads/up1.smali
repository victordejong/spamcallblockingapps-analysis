.class final Lcom/google/android/gms/internal/ads/up1;
.super Lcom/google/android/gms/internal/ads/z30;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:Lcom/google/android/gms/internal/ads/vi0;

.field final synthetic h:Lcom/google/android/gms/internal/ads/vp1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vp1;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/vi0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/up1;->h:Lcom/google/android/gms/internal/ads/vp1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/up1;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/up1;->e:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/up1;->f:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/up1;->g:Lcom/google/android/gms/internal/ads/vi0;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/z30;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/up1;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/up1;->h:Lcom/google/android/gms/internal/ads/vp1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/up1;->e:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/up1;->f:J

    sub-long/2addr v5, v7

    long-to-int v6, v5

    .line 2
    invoke-static {v1, v2, v3, v4, v6}, Lcom/google/android/gms/internal/ads/vp1;->l(Lcom/google/android/gms/internal/ads/vp1;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/up1;->h:Lcom/google/android/gms/internal/ads/vp1;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vp1;->e(Lcom/google/android/gms/internal/ads/vp1;)Lcom/google/android/gms/internal/ads/ao1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/up1;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ao1;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/up1;->h:Lcom/google/android/gms/internal/ads/vp1;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vp1;->f(Lcom/google/android/gms/internal/ads/vp1;)Lcom/google/android/gms/internal/ads/u91;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/up1;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/u91;->r(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/up1;->g:Lcom/google/android/gms/internal/ads/vi0;

    .line 5
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/vi0;->c(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final p(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/up1;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/up1;->h:Lcom/google/android/gms/internal/ads/vp1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/up1;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/up1;->f:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    .line 2
    invoke-static {v1, v2, v3, p1, v5}, Lcom/google/android/gms/internal/ads/vp1;->l(Lcom/google/android/gms/internal/ads/vp1;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/up1;->h:Lcom/google/android/gms/internal/ads/vp1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vp1;->e(Lcom/google/android/gms/internal/ads/vp1;)Lcom/google/android/gms/internal/ads/ao1;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/up1;->e:Ljava/lang/String;

    const-string v2, "error"

    .line 3
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/ao1;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/up1;->h:Lcom/google/android/gms/internal/ads/vp1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vp1;->f(Lcom/google/android/gms/internal/ads/vp1;)Lcom/google/android/gms/internal/ads/u91;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/up1;->e:Ljava/lang/String;

    const-string v2, "error"

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/u91;->U(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/up1;->g:Lcom/google/android/gms/internal/ads/vi0;

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/vi0;->c(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
