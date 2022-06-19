.class public Lm6/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final k:Lg6/a;

.field public static final l:J


# instance fields
.field public final a:Lb0/a;

.field public final b:Z

.field public c:Ln6/e;

.field public d:Ln6/c;

.field public e:J

.field public f:J

.field public g:Ln6/c;

.field public h:Ln6/c;

.field public i:J

.field public j:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v0

    sput-object v0, Lm6/c$a;->k:Lg6/a;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lm6/c$a;->l:J

    return-void
.end method

.method public constructor <init>(Ln6/c;JLb0/a;Le6/a;Ljava/lang/String;Z)V
    .locals 19

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v0, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p4

    .line 2
    iput-object v6, v1, Lm6/c$a;->a:Lb0/a;

    .line 3
    iput-wide v2, v1, Lm6/c$a;->e:J

    move-object/from16 v7, p1

    .line 4
    iput-object v7, v1, Lm6/c$a;->d:Ln6/c;

    .line 5
    iput-wide v2, v1, Lm6/c$a;->f:J

    .line 6
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Ln6/e;

    invoke-direct {v2}, Ln6/e;-><init>()V

    .line 8
    iput-object v2, v1, Lm6/c$a;->c:Ln6/e;

    const-string v2, "Trace"

    if-ne v4, v2, :cond_0

    .line 9
    invoke-virtual/range {p5 .. p5}, Le6/a;->i()J

    move-result-wide v2

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual/range {p5 .. p5}, Le6/a;->i()J

    move-result-wide v2

    :goto_0
    move-wide v9, v2

    const-string v2, "Trace"

    if-ne v4, v2, :cond_4

    .line 11
    const-class v2, Le6/r;

    monitor-enter v2

    .line 12
    :try_start_0
    sget-object v3, Le6/r;->a:Le6/r;

    if-nez v3, :cond_1

    .line 13
    new-instance v3, Le6/r;

    invoke-direct {v3}, Le6/r;-><init>()V

    sput-object v3, Le6/r;->a:Le6/r;

    .line 14
    :cond_1
    sget-object v3, Le6/r;->a:Le6/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 15
    invoke-virtual {v0, v3}, Le6/a;->k(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ln6/b;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Le6/a;->l(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 17
    iget-object v3, v0, Le6/a;->c:Le6/t;

    const-string v6, "com.google.firebase.perf.TraceEventCountForeground"

    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, v3, v6, v2}, Lcom/google/android/gms/internal/ads/a;->g(Ljava/lang/Long;Le6/t;Ljava/lang/String;Ln6/b;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_1

    .line 19
    :cond_2
    invoke-virtual {v0, v3}, Le6/a;->c(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ln6/b;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Le6/a;->l(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 21
    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_1

    :cond_3
    const-wide/16 v2, 0x12c

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 24
    monitor-exit v2

    throw v0

    .line 25
    :cond_4
    const-class v2, Le6/f;

    monitor-enter v2

    .line 26
    :try_start_1
    sget-object v3, Le6/f;->a:Le6/f;

    if-nez v3, :cond_5

    .line 27
    new-instance v3, Le6/f;

    invoke-direct {v3}, Le6/f;-><init>()V

    sput-object v3, Le6/f;->a:Le6/f;

    .line 28
    :cond_5
    sget-object v3, Le6/f;->a:Le6/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit v2

    .line 29
    invoke-virtual {v0, v3}, Le6/a;->k(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ln6/b;->c()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Le6/a;->l(J)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 31
    iget-object v3, v0, Le6/a;->c:Le6/t;

    const-string v6, "com.google.firebase.perf.NetworkEventCountForeground"

    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, v3, v6, v2}, Lcom/google/android/gms/internal/ads/a;->g(Ljava/lang/Long;Le6/t;Ljava/lang/String;Ln6/b;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    .line 33
    :cond_6
    invoke-virtual {v0, v3}, Le6/a;->c(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ln6/b;->c()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Le6/a;->l(J)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 35
    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_7
    const-wide/16 v2, 0x2bc

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 38
    :goto_1
    new-instance v12, Ln6/c;

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v6, v12

    move-wide v7, v2

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v11}, Ln6/c;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    iput-object v12, v1, Lm6/c$a;->g:Ln6/c;

    .line 39
    iput-wide v2, v1, Lm6/c$a;->i:J

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz v5, :cond_8

    .line 40
    sget-object v10, Lm6/c$a;->k:Lg6/a;

    const-string v11, "Foreground %s logging rate:%f, burst capacity:%d"

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v4, v13, v8

    aput-object v12, v13, v7

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v13, v6

    .line 42
    iget-boolean v2, v10, Lg6/a;->b:Z

    if-eqz v2, :cond_8

    .line 43
    iget-object v2, v10, Lg6/a;->a:Lg6/b;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v2, "Trace"

    if-ne v4, v2, :cond_9

    .line 44
    invoke-virtual/range {p5 .. p5}, Le6/a;->i()J

    move-result-wide v2

    goto :goto_2

    .line 45
    :cond_9
    invoke-virtual/range {p5 .. p5}, Le6/a;->i()J

    move-result-wide v2

    :goto_2
    move-wide/from16 v16, v2

    const-string v2, "Trace"

    if-ne v4, v2, :cond_d

    .line 46
    const-class v2, Le6/q;

    monitor-enter v2

    .line 47
    :try_start_2
    sget-object v3, Le6/q;->a:Le6/q;

    if-nez v3, :cond_a

    .line 48
    new-instance v3, Le6/q;

    invoke-direct {v3}, Le6/q;-><init>()V

    sput-object v3, Le6/q;->a:Le6/q;

    .line 49
    :cond_a
    sget-object v3, Le6/q;->a:Le6/q;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 50
    invoke-virtual {v0, v3}, Le6/a;->k(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ln6/b;->c()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Le6/a;->l(J)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 52
    iget-object v0, v0, Le6/a;->c:Le6/t;

    const-string v3, "com.google.firebase.perf.TraceEventCountBackground"

    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-static {v10, v0, v3, v2}, Lcom/google/android/gms/internal/ads/a;->g(Ljava/lang/Long;Le6/t;Ljava/lang/String;Ln6/b;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_3

    .line 54
    :cond_b
    invoke-virtual {v0, v3}, Le6/a;->c(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ln6/b;->c()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Le6/a;->l(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 56
    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_3

    :cond_c
    const-wide/16 v2, 0x1e

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 59
    monitor-exit v2

    throw v0

    .line 60
    :cond_d
    const-class v2, Le6/e;

    monitor-enter v2

    .line 61
    :try_start_3
    sget-object v3, Le6/e;->a:Le6/e;

    if-nez v3, :cond_e

    .line 62
    new-instance v3, Le6/e;

    invoke-direct {v3}, Le6/e;-><init>()V

    sput-object v3, Le6/e;->a:Le6/e;

    .line 63
    :cond_e
    sget-object v3, Le6/e;->a:Le6/e;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v2

    .line 64
    invoke-virtual {v0, v3}, Le6/a;->k(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ln6/b;->c()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Le6/a;->l(J)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 66
    iget-object v0, v0, Le6/a;->c:Le6/t;

    const-string v3, "com.google.firebase.perf.NetworkEventCountBackground"

    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-static {v10, v0, v3, v2}, Lcom/google/android/gms/internal/ads/a;->g(Ljava/lang/Long;Le6/t;Ljava/lang/String;Ln6/b;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_3

    .line 68
    :cond_f
    invoke-virtual {v0, v3}, Le6/a;->c(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ln6/b;->c()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Le6/a;->l(J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 70
    invoke-virtual {v2}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_3

    :cond_10
    const-wide/16 v2, 0x46

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 73
    :goto_3
    new-instance v0, Ln6/c;

    move-object v13, v0

    move-wide v14, v2

    invoke-direct/range {v13 .. v18}, Ln6/c;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    iput-object v0, v1, Lm6/c$a;->h:Ln6/c;

    .line 74
    iput-wide v2, v1, Lm6/c$a;->j:J

    if-eqz v5, :cond_11

    .line 75
    sget-object v10, Lm6/c$a;->k:Lg6/a;

    const-string v11, "Background %s logging rate:%f, capacity:%d"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v8

    aput-object v0, v9, v7

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v6

    .line 77
    iget-boolean v0, v10, Lg6/a;->b:Z

    if-eqz v0, :cond_11

    .line 78
    iget-object v0, v10, Lg6/a;->a:Lg6/b;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2, v11, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_11
    iput-boolean v5, v1, Lm6/c$a;->b:Z

    return-void

    :catchall_2
    move-exception v0

    .line 80
    monitor-exit v2

    throw v0

    :catchall_3
    move-exception v0

    .line 81
    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lm6/c$a;->g:Ln6/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm6/c$a;->h:Ln6/c;

    :goto_0
    iput-object v0, p0, Lm6/c$a;->d:Ln6/c;

    if-eqz p1, :cond_1

    .line 2
    iget-wide v0, p0, Lm6/c$a;->i:J

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lm6/c$a;->j:J

    :goto_1
    iput-wide v0, p0, Lm6/c$a;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Z
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lm6/c$a;->a:Lb0/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lm6/c$a;->c:Ln6/e;

    .line 5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v2, Ln6/e;->b:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 6
    iget-object v2, p0, Lm6/c$a;->d:Ln6/c;

    .line 7
    invoke-virtual {v2}, Ln6/c;->a()D

    move-result-wide v2

    mul-double v0, v0, v2

    sget-wide v2, Lm6/c$a;->l:J

    long-to-double v4, v2

    div-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/16 v4, 0x0

    .line 8
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 9
    iget-wide v6, p0, Lm6/c$a;->f:J

    add-long/2addr v6, v0

    iget-wide v8, p0, Lm6/c$a;->e:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lm6/c$a;->f:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 10
    new-instance v6, Ln6/e;

    iget-object v7, p0, Lm6/c$a;->c:Ln6/e;

    .line 11
    iget-wide v7, v7, Ln6/e;->a:J

    mul-long v0, v0, v2

    long-to-double v0, v0

    .line 12
    iget-object v2, p0, Lm6/c$a;->d:Ln6/c;

    .line 13
    invoke-virtual {v2}, Ln6/c;->a()D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    add-long/2addr v7, v0

    invoke-direct {v6, v7, v8}, Ln6/e;-><init>(J)V

    iput-object v6, p0, Lm6/c$a;->c:Ln6/e;

    .line 14
    :cond_0
    iget-wide v0, p0, Lm6/c$a;->f:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 15
    iput-wide v0, p0, Lm6/c$a;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 16
    monitor-exit p0

    return v0

    .line 17
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lm6/c$a;->b:Z

    if-eqz v0, :cond_2

    .line 18
    sget-object v0, Lm6/c$a;->k:Lg6/a;

    const-string v1, "Exceeded log rate limit, dropping the log."

    .line 19
    iget-boolean v2, v0, Lg6/a;->b:Z

    if-eqz v2, :cond_2

    .line 20
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirebasePerformance"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 v0, 0x0

    .line 22
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
