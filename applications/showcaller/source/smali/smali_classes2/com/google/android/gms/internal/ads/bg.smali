.class final Lcom/google/android/gms/internal/ads/bg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zh;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/gms/internal/ads/qh;

.field private final c:Lcom/google/android/gms/internal/ads/cg;

.field private final d:Lcom/google/android/gms/internal/ads/ei;

.field private final e:Lcom/google/android/gms/internal/ads/sd;

.field private volatile f:Z

.field private g:Z

.field private h:J

.field private i:J

.field final synthetic j:Lcom/google/android/gms/internal/ads/eg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/eg;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/qh;Lcom/google/android/gms/internal/ads/cg;Lcom/google/android/gms/internal/ads/ei;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bg;->j:Lcom/google/android/gms/internal/ads/eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bg;->a:Landroid/net/Uri;

    .line 4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bg;->b:Lcom/google/android/gms/internal/ads/qh;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bg;->c:Lcom/google/android/gms/internal/ads/cg;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bg;->d:Lcom/google/android/gms/internal/ads/ei;

    new-instance p1, Lcom/google/android/gms/internal/ads/sd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/sd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bg;->e:Lcom/google/android/gms/internal/ads/sd;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/bg;->g:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/bg;->i:J

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/bg;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/bg;->i:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 20

    move-object/from16 v1, p0

    .line 1
    :cond_0
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/bg;->f:Z

    if-nez v0, :cond_8

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bg;->e:Lcom/google/android/gms/internal/ads/sd;

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/sd;->a:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bg;->b:Lcom/google/android/gms/internal/ads/qh;

    new-instance v13, Lcom/google/android/gms/internal/ads/rh;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/bg;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    const-wide/16 v11, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v4, v13

    move-wide v7, v14

    move-wide v9, v14

    move-object v2, v13

    move-object/from16 v13, v16

    move-wide/from16 v18, v14

    move/from16 v14, v17

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/internal/ads/rh;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 2
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/qh;->d(Lcom/google/android/gms/internal/ads/rh;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/bg;->i:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    move-wide/from16 v10, v18

    add-long/2addr v4, v10

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/bg;->i:J

    goto :goto_0

    :cond_1
    move-wide/from16 v10, v18

    :goto_0
    move-wide v8, v4

    new-instance v2, Lcom/google/android/gms/internal/ads/md;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/bg;->b:Lcom/google/android/gms/internal/ads/qh;

    move-object v4, v2

    move-wide v6, v10

    .line 3
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/md;-><init>(Lcom/google/android/gms/internal/ads/qh;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bg;->c:Lcom/google/android/gms/internal/ads/cg;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/bg;->b:Lcom/google/android/gms/internal/ads/qh;

    .line 4
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/qh;->c()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/ads/cg;->b(Lcom/google/android/gms/internal/ads/md;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/bg;->g:Z

    if-eqz v4, :cond_2

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/bg;->h:J

    .line 5
    invoke-interface {v0, v10, v11, v4, v5}, Lcom/google/android/gms/internal/ads/nd;->d(JJ)V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/bg;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    move-wide v14, v10

    const/4 v4, 0x0

    :cond_3
    :goto_1
    if-nez v4, :cond_5

    :try_start_2
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/bg;->f:Z

    if-nez v5, :cond_4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/bg;->d:Lcom/google/android/gms/internal/ads/ei;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ei;->c()V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/bg;->e:Lcom/google/android/gms/internal/ads/sd;

    .line 7
    invoke-interface {v0, v2, v5}, Lcom/google/android/gms/internal/ads/nd;->e(Lcom/google/android/gms/internal/ads/md;Lcom/google/android/gms/internal/ads/sd;)I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/md;->h()J

    move-result-wide v5

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/bg;->j:Lcom/google/android/gms/internal/ads/eg;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/eg;->w(Lcom/google/android/gms/internal/ads/eg;)J

    move-result-wide v7

    add-long/2addr v7, v14

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/md;->h()J

    move-result-wide v14

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/bg;->d:Lcom/google/android/gms/internal/ads/ei;

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ei;->b()Z

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/bg;->j:Lcom/google/android/gms/internal/ads/eg;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/eg;->y(Lcom/google/android/gms/internal/ads/eg;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/bg;->j:Lcom/google/android/gms/internal/ads/eg;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/eg;->x(Lcom/google/android/gms/internal/ads/eg;)Ljava/lang/Runnable;

    move-result-object v6

    .line 9
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    move v3, v4

    goto :goto_4

    :cond_5
    :goto_2
    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    goto :goto_3

    .line 10
    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bg;->e:Lcom/google/android/gms/internal/ads/sd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/md;->h()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/sd;->a:J

    move v3, v4

    .line 11
    :goto_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bg;->b:Lcom/google/android/gms/internal/ads/qh;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/si;->c(Lcom/google/android/gms/internal/ads/qh;)V

    if-eqz v3, :cond_0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    :goto_4
    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    if-eqz v2, :cond_7

    .line 13
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bg;->e:Lcom/google/android/gms/internal/ads/sd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/md;->h()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/sd;->a:J

    .line 14
    :cond_7
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/bg;->b:Lcom/google/android/gms/internal/ads/qh;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/si;->c(Lcom/google/android/gms/internal/ads/qh;)V

    .line 15
    throw v0

    :cond_8
    :goto_5
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bg;->f:Z

    return-void
.end method

.method public final d(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bg;->e:Lcom/google/android/gms/internal/ads/sd;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/sd;->a:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/bg;->h:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/bg;->g:Z

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bg;->f:Z

    return v0
.end method
