.class final Lcom/google/android/gms/internal/ads/dpx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dry;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/gms/internal/ads/drp;

.field private final c:Lcom/google/android/gms/internal/ads/dqa;

.field private final d:Lcom/google/android/gms/internal/ads/dsb;

.field private final e:Lcom/google/android/gms/internal/ads/dnn;

.field private volatile f:Z

.field private g:Z

.field private h:J

.field private i:J

.field private final synthetic j:Lcom/google/android/gms/internal/ads/dpt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dpt;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/drp;Lcom/google/android/gms/internal/ads/dqa;Lcom/google/android/gms/internal/ads/dsb;)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpx;->j:Lcom/google/android/gms/internal/ads/dpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/drz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpx;->a:Landroid/net/Uri;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/drz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/drp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpx;->b:Lcom/google/android/gms/internal/ads/drp;

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/drz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqa;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpx;->c:Lcom/google/android/gms/internal/ads/dqa;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/dpx;->d:Lcom/google/android/gms/internal/ads/dsb;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/dnn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dnn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpx;->e:Lcom/google/android/gms/internal/ads/dnn;

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpx;->g:Z

    .line 8
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dpx;->i:J

    .line 9
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dpx;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dpx;->i:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpx;->f:Z

    .line 15
    return-void
.end method

.method public final a(JJ)V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpx;->e:Lcom/google/android/gms/internal/ads/dnn;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/dnn;->a:J

    .line 11
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/dpx;->h:J

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpx;->g:Z

    .line 13
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpx;->f:Z

    return v0
.end method

.method public final c()V
    .locals 10

    .prologue
    .line 17
    const/4 v8, 0x0

    .line 18
    :goto_0
    if-nez v8, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dpx;->f:Z

    if-nez v0, :cond_6

    .line 19
    const/4 v7, 0x0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpx;->e:Lcom/google/android/gms/internal/ads/dnn;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/dnn;->a:J

    .line 21
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/dpx;->b:Lcom/google/android/gms/internal/ads/drp;

    new-instance v0, Lcom/google/android/gms/internal/ads/drq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpx;->a:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dpx;->j:Lcom/google/android/gms/internal/ads/dpt;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/dpt;->f(Lcom/google/android/gms/internal/ads/dpt;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/drq;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/ads/drp;->a(Lcom/google/android/gms/internal/ads/drq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dpx;->i:J

    .line 22
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dpx;->i:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 23
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dpx;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dpx;->i:J

    .line 24
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dne;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpx;->b:Lcom/google/android/gms/internal/ads/drp;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dpx;->i:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dne;-><init>(Lcom/google/android/gms/internal/ads/drp;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpx;->c:Lcom/google/android/gms/internal/ads/dqa;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dpx;->b:Lcom/google/android/gms/internal/ads/drp;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/drp;->a()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/ads/dqa;->a(Lcom/google/android/gms/internal/ads/dng;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v5

    .line 26
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/dpx;->g:Z

    if-eqz v1, :cond_1

    .line 27
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/dpx;->h:J

    invoke-interface {v5, v2, v3, v6, v7}, Lcom/google/android/gms/internal/ads/dnh;->a(JJ)V

    .line 28
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dpx;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    move v1, v8

    .line 29
    :goto_1
    if-nez v1, :cond_2

    :try_start_2
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/dpx;->f:Z

    if-nez v4, :cond_2

    .line 30
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dpx;->d:Lcom/google/android/gms/internal/ads/dsb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dsb;->c()V

    .line 31
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dpx;->e:Lcom/google/android/gms/internal/ads/dnn;

    invoke-interface {v5, v0, v4}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dng;Lcom/google/android/gms/internal/ads/dnn;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v4

    .line 32
    :try_start_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dng;->b()J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpx;->j:Lcom/google/android/gms/internal/ads/dpt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dpt;->g(Lcom/google/android/gms/internal/ads/dpt;)J

    move-result-wide v8

    add-long/2addr v8, v2

    cmp-long v1, v6, v8

    if-lez v1, :cond_7

    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dng;->b()J

    move-result-wide v2

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpx;->d:Lcom/google/android/gms/internal/ads/dsb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsb;->b()Z

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpx;->j:Lcom/google/android/gms/internal/ads/dpt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dpt;->i(Lcom/google/android/gms/internal/ads/dpt;)Lcom/google/android/gms/internal/ads/cnz;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dpx;->j:Lcom/google/android/gms/internal/ads/dpt;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/dpt;->h(Lcom/google/android/gms/internal/ads/dpt;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v1, v4

    goto :goto_1

    .line 36
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpx;->b:Lcom/google/android/gms/internal/ads/drp;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dsn;->a(Lcom/google/android/gms/internal/ads/drp;)V

    move v8, v0

    .line 40
    goto/16 :goto_0

    .line 38
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dpx;->e:Lcom/google/android/gms/internal/ads/dnn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dng;->b()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/dnn;->a:J

    move v0, v1

    goto :goto_2

    .line 41
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v7

    move v4, v8

    :goto_3
    const/4 v0, 0x1

    if-ne v4, v0, :cond_5

    .line 45
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpx;->b:Lcom/google/android/gms/internal/ads/drp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsn;->a(Lcom/google/android/gms/internal/ads/drp;)V

    .line 46
    throw v2

    .line 43
    :cond_5
    if-eqz v3, :cond_4

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpx;->e:Lcom/google/android/gms/internal/ads/dnn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dng;->b()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/dnn;->a:J

    goto :goto_4

    .line 47
    :cond_6
    return-void

    .line 41
    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    move v4, v8

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v3, v0

    move v4, v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_3

    :cond_7
    move v1, v4

    goto :goto_1
.end method
