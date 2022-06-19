.class public final Lcom/google/android/gms/internal/ads/cfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cjd;


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/cfb;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/cnk;

.field private final d:Lcom/google/android/gms/internal/ads/cnr;

.field private final e:Lcom/google/android/gms/internal/ads/dii;

.field private final f:Lcom/google/android/gms/internal/ads/clq;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lcom/google/android/gms/internal/ads/dkc;

.field private volatile i:J

.field private final j:Ljava/lang/Object;

.field private volatile k:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/cnk;Lcom/google/android/gms/internal/ads/cnr;Lcom/google/android/gms/internal/ads/dii;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/dkc;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cfb;->i:J

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->j:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cfb;->b:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cfb;->f:Lcom/google/android/gms/internal/ads/clq;

    .line 29
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cfb;->c:Lcom/google/android/gms/internal/ads/cnk;

    .line 30
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cfb;->d:Lcom/google/android/gms/internal/ads/cnr;

    .line 31
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cfb;->e:Lcom/google/android/gms/internal/ads/dii;

    .line 32
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cfb;->g:Ljava/util/concurrent/Executor;

    .line 33
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/cfb;->h:Lcom/google/android/gms/internal/ads/dkc;

    .line 34
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/clu;)Lcom/google/android/gms/internal/ads/cfb;
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 13
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/cfb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/clu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/cfb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/clu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/cfb;
    .locals 8

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/cmh;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/cmh;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/clu;)V

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/dil;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/dil;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v2, Lcom/google/android/gms/internal/ads/diu;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/diu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dil;)V

    .line 19
    new-instance v5, Lcom/google/android/gms/internal/ads/dii;

    invoke-direct {v5, p2, v0, v2, v1}, Lcom/google/android/gms/internal/ads/dii;-><init>(Lcom/google/android/gms/internal/ads/clu;Lcom/google/android/gms/internal/ads/cmh;Lcom/google/android/gms/internal/ads/diu;Lcom/google/android/gms/internal/ads/dil;)V

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/cmx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cmx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/clq;)V

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmx;->a()Lcom/google/android/gms/internal/ads/dkc;

    move-result-object v7

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/cfb;

    new-instance v3, Lcom/google/android/gms/internal/ads/cnk;

    invoke-direct {v3, p0, v7}, Lcom/google/android/gms/internal/ads/cnk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dkc;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/cnr;

    invoke-direct {v4, p0, v5, p1}, Lcom/google/android/gms/internal/ads/cnr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cnt;Lcom/google/android/gms/internal/ads/clq;)V

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/cfb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/cnk;Lcom/google/android/gms/internal/ads/cnr;Lcom/google/android/gms/internal/ads/dii;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/dkc;)V

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/cfb;
    .locals 4

    .prologue
    .line 1
    const-class v1, Lcom/google/android/gms/internal/ads/cfb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cfb;->a:Lcom/google/android/gms/internal/ads/cfb;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/clu;->d()Lcom/google/android/gms/internal/ads/clt;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/clt;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/clt;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/clt;->a(Z)Lcom/google/android/gms/internal/ads/clt;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/clt;->a()Lcom/google/android/gms/internal/ads/clu;

    move-result-object v0

    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 7
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/clq;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/clq;

    move-result-object v3

    .line 8
    invoke-static {p1, v3, v0, v2}, Lcom/google/android/gms/internal/ads/cfb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/clu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/cfb;

    move-result-object v0

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/cfb;->a:Lcom/google/android/gms/internal/ads/cfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cfb;->a()V

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/cfb;->a:Lcom/google/android/gms/internal/ads/cfb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cfb;->d()V

    .line 11
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cfb;->a:Lcom/google/android/gms/internal/ads/cfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cfb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cfb;Z)Z
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/cfb;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cfb;)Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cfb;->k:Z

    return v0
.end method

.method private final c()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cfb;->c:Lcom/google/android/gms/internal/ads/cnk;

    sget v2, Lcom/google/android/gms/internal/ads/cnp;->a:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cnk;->a(I)Lcom/google/android/gms/internal/ads/cng;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_a

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cng;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cng;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dki;->b()Ljava/lang/String;

    move-result-object v4

    .line 53
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->b:Landroid/content/Context;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cfb;->h:Lcom/google/android/gms/internal/ads/dkc;

    const-string/jumbo v5, "1"

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/cfb;->f:Lcom/google/android/gms/internal/ads/clq;

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cmc;->a(Landroid/content/Context;ILcom/google/android/gms/internal/ads/dkc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/clq;)Lcom/google/android/gms/internal/ads/cno;

    move-result-object v0

    .line 55
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cno;->a:[B

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cno;->a:[B

    array-length v1, v1

    if-nez v1, :cond_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->f:Lcom/google/android/gms/internal/ads/clq;

    const/16 v1, 0x1391

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/clq;->a(IJ)Lcom/google/android/gms/tasks/g;

    .line 94
    :goto_1
    return-void

    .line 60
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cno;->a:[B

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->b()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dke;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dke;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dke;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dke;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dki;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dke;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v8

    .line 77
    :goto_2
    if-nez v0, :cond_8

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->f:Lcom/google/android/gms/internal/ads/clq;

    const/16 v1, 0x1392

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/clq;->a(IJ)Lcom/google/android/gms/tasks/g;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cfb;->f:Lcom/google/android/gms/internal/ads/clq;

    const/16 v2, 0xfa2

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    .line 93
    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    goto :goto_1

    .line 69
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->c:Lcom/google/android/gms/internal/ads/cnk;

    sget v2, Lcom/google/android/gms/internal/ads/cnp;->a:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/cnk;->a(I)Lcom/google/android/gms/internal/ads/cng;

    move-result-object v0

    .line 70
    if-nez v0, :cond_4

    move v0, v7

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cng;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v0

    .line 73
    if-nez v0, :cond_5

    move v0, v7

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dke;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dke;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dki;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dki;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    move v0, v7

    goto :goto_2

    :cond_7
    move v0, v8

    goto :goto_2

    .line 82
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->c:Lcom/google/android/gms/internal/ads/cnk;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cnk;->a(Lcom/google/android/gms/internal/ads/dke;Lcom/google/android/gms/internal/ads/cnq;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->f:Lcom/google/android/gms/internal/ads/clq;

    const/16 v1, 0xfa9

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    .line 85
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/clq;->a(IJ)Lcom/google/android/gms/tasks/g;

    goto/16 :goto_1

    .line 87
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->d:Lcom/google/android/gms/internal/ads/cnr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cfb;->c:Lcom/google/android/gms/internal/ads/cnk;

    sget v2, Lcom/google/android/gms/internal/ads/cnp;->a:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cnk;->a(I)Lcom/google/android/gms/internal/ads/cng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnr;->a(Lcom/google/android/gms/internal/ads/cng;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cfb;->i:J
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_a
    move-object v4, v0

    move-object v3, v0

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/cfb;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cfb;->c()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/cfb;)Lcom/google/android/gms/internal/ads/clq;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->f:Lcom/google/android/gms/internal/ads/clq;

    return-object v0
.end method

.method private final d()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xe10

    .line 138
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cfb;->k:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cfb;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cfb;->k:Z

    if-nez v0, :cond_3

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/cfb;->i:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    .line 142
    monitor-exit v1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->d:Lcom/google/android/gms/internal/ads/cnr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cnr;->b()Lcom/google/android/gms/internal/ads/cng;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_2

    .line 145
    const-wide/16 v2, 0xe10

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/cng;->a(J)Z

    move-result v0

    .line 146
    if-eqz v0, :cond_3

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cfb;->b()V

    .line 148
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 128
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cfb;->d()V

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->d:Lcom/google/android/gms/internal/ads/cnr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cnr;->a()Lcom/google/android/gms/internal/ads/clw;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 132
    invoke-interface {v0, p1, v5}, Lcom/google/android/gms/internal/ads/clw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->f:Lcom/google/android/gms/internal/ads/clq;

    const/16 v1, 0x1389

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 135
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/g;

    .line 137
    :goto_0
    return-object v4

    :cond_0
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cfb;->d()V

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->d:Lcom/google/android/gms/internal/ads/cnr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cnr;->a()Lcom/google/android/gms/internal/ads/clw;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 122
    invoke-interface {v0, p1, v5, p2, p3}, Lcom/google/android/gms/internal/ads/clw;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->f:Lcom/google/android/gms/internal/ads/clq;

    const/16 v1, 0x138a

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/g;

    .line 127
    :goto_0
    return-object v4

    :cond_0
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/cfb;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cfb;->d()V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->d:Lcom/google/android/gms/internal/ads/cnr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cnr;->a()Lcom/google/android/gms/internal/ads/clw;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 108
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/clw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v8

    .line 109
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cfb;->f:Lcom/google/android/gms/internal/ads/clq;

    const/16 v5, 0x1388

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v6, v0, v6

    move-object v9, v2

    .line 111
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/g;

    .line 113
    :goto_0
    return-object v8

    :cond_0
    const-string/jumbo v8, ""

    goto :goto_0
.end method

.method final declared-synchronized a()V
    .locals 6

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 36
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cfb;->c:Lcom/google/android/gms/internal/ads/cnk;

    sget v3, Lcom/google/android/gms/internal/ads/cnp;->a:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/cnk;->a(I)Lcom/google/android/gms/internal/ads/cng;

    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cng;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->d:Lcom/google/android/gms/internal/ads/cnr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/cnr;->a(Lcom/google/android/gms/internal/ads/cng;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cfb;->f:Lcom/google/android/gms/internal/ads/clq;

    const/16 v3, 0xfad

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 41
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/clq;->a(IJ)Lcom/google/android/gms/tasks/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(III)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->d:Lcom/google/android/gms/internal/ads/cnr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cnr;->a()Lcom/google/android/gms/internal/ads/clw;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/clw;->a(Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdnk; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cfb;->f:Lcom/google/android/gms/internal/ads/clq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnk;->a()I

    move-result v2

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->e:Lcom/google/android/gms/internal/ads/dii;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dii;->a(Landroid/view/View;)V

    .line 116
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfb;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/cic;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cic;-><init>(Lcom/google/android/gms/internal/ads/cfb;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method
