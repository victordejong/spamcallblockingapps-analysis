.class final Lcom/google/android/gms/internal/ads/eak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ecn;


# instance fields
.field a:J

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/android/gms/internal/ads/ecb;

.field private final d:Lcom/google/android/gms/internal/ads/ean;

.field private final e:Lcom/google/android/gms/internal/ads/ect;

.field private final f:Lcom/google/android/gms/internal/ads/dyb;

.field private volatile g:Z

.field private h:Z

.field private i:J

.field private final synthetic j:Lcom/google/android/gms/internal/ads/eah;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/eah;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/ecb;Lcom/google/android/gms/internal/ads/ean;Lcom/google/android/gms/internal/ads/ect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eak;->j:Lcom/google/android/gms/internal/ads/eah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ecr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eak;->b:Landroid/net/Uri;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/ecr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ecb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eak;->c:Lcom/google/android/gms/internal/ads/ecb;

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/ecr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eak;->d:Lcom/google/android/gms/internal/ads/ean;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/eak;->e:Lcom/google/android/gms/internal/ads/ect;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/dyb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dyb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eak;->f:Lcom/google/android/gms/internal/ads/dyb;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/eak;->h:Z

    const-wide/16 p1, -0x1

    .line 8
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/eak;->a:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eak;->g:Z

    return-void
.end method

.method public final a(JJ)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eak;->f:Lcom/google/android/gms/internal/ads/dyb;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/dyb;->a:J

    .line 11
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/eak;->i:J

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/eak;->h:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eak;->g:Z

    return v0
.end method

.method public final c()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    .line 18
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/eak;->g:Z

    if-nez v2, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 20
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eak;->f:Lcom/google/android/gms/internal/ads/dyb;

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/dyb;->a:J

    .line 21
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eak;->c:Lcom/google/android/gms/internal/ads/ecb;

    new-instance v14, Lcom/google/android/gms/internal/ads/ecf;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eak;->b:Landroid/net/Uri;

    const-wide/16 v9, -0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eak;->j:Lcom/google/android/gms/internal/ads/eah;

    .line 1264
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/eah;->c:Ljava/lang/String;

    move-object v5, v14

    move-wide v7, v12

    .line 21
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/ecf;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v4, v14}, Lcom/google/android/gms/internal/ads/ecb;->a(Lcom/google/android/gms/internal/ads/ecf;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/eak;->a:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    add-long/2addr v4, v12

    .line 23
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/eak;->a:J

    .line 24
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/dxr;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eak;->c:Lcom/google/android/gms/internal/ads/ecb;

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/eak;->a:J

    move-object v5, v4

    move-wide v7, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/dxr;-><init>(Lcom/google/android/gms/internal/ads/ecb;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eak;->d:Lcom/google/android/gms/internal/ads/ean;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eak;->c:Lcom/google/android/gms/internal/ads/ecb;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/ecb;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/ean;->a(Lcom/google/android/gms/internal/ads/dxt;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/dxv;

    move-result-object v2

    .line 26
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/eak;->h:Z

    if-eqz v5, :cond_1

    .line 27
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/eak;->i:J

    invoke-interface {v2, v12, v13, v5, v6}, Lcom/google/android/gms/internal/ads/dxv;->a(JJ)V

    .line 28
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eak;->h:Z

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 29
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/eak;->g:Z

    if-nez v5, :cond_2

    .line 30
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eak;->e:Lcom/google/android/gms/internal/ads/ect;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ect;->c()V

    .line 31
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eak;->f:Lcom/google/android/gms/internal/ads/dyb;

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/ads/dxv;->a(Lcom/google/android/gms/internal/ads/dxt;Lcom/google/android/gms/internal/ads/dyb;)I

    move-result v1

    .line 32
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dxt;->b()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/eak;->j:Lcom/google/android/gms/internal/ads/eah;

    .line 1265
    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/eah;->d:J

    add-long/2addr v7, v12

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 33
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dxt;->b()J

    move-result-wide v12

    .line 34
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eak;->e:Lcom/google/android/gms/internal/ads/ect;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ect;->b()Z

    .line 35
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/eak;->j:Lcom/google/android/gms/internal/ads/eah;

    .line 1267
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/eah;->i:Landroid/os/Handler;

    .line 35
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/eak;->j:Lcom/google/android/gms/internal/ads/eah;

    .line 2266
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/eah;->h:Ljava/lang/Runnable;

    .line 35
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    .line 38
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eak;->f:Lcom/google/android/gms/internal/ads/dyb;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dxt;->b()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/dyb;->a:J

    .line 39
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eak;->c:Lcom/google/android/gms/internal/ads/ecb;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ecb;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eq v1, v3, :cond_4

    if-eqz v2, :cond_4

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eak;->f:Lcom/google/android/gms/internal/ads/dyb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dxt;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/dyb;->a:J

    .line 45
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eak;->c:Lcom/google/android/gms/internal/ads/ecb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ecb;)V

    .line 46
    throw v0

    :cond_5
    return-void
.end method
