.class Lcom/google/firebase/perf/g/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final k:Lcom/google/firebase/perf/f/a;

.field private static final l:J


# instance fields
.field private a:J

.field private b:D

.field private c:Lcom/google/firebase/perf/util/Timer;

.field private d:J

.field private final e:Lcom/google/firebase/perf/util/a;

.field private f:D

.field private g:J

.field private h:D

.field private i:J

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/firebase/perf/f/a;->e()Lcom/google/firebase/perf/f/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/g/d$a;->k:Lcom/google/firebase/perf/f/a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/perf/g/d$a;->l:J

    return-void
.end method

.method constructor <init>(DJLcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/config/a;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/firebase/perf/g/d$a;->e:Lcom/google/firebase/perf/util/a;

    iput-wide p3, p0, Lcom/google/firebase/perf/g/d$a;->a:J

    iput-wide p1, p0, Lcom/google/firebase/perf/g/d$a;->b:D

    iput-wide p3, p0, Lcom/google/firebase/perf/g/d$a;->d:J

    invoke-virtual {p5}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/g/d$a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {p0, p6, p7, p8}, Lcom/google/firebase/perf/g/d$a;->g(Lcom/google/firebase/perf/config/a;Ljava/lang/String;Z)V

    iput-boolean p8, p0, Lcom/google/firebase/perf/g/d$a;->j:Z

    return-void
.end method

.method private static c(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J
    .locals 1

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->C()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->o()J

    move-result-wide p0

    return-wide p0
.end method

.method private static d(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J
    .locals 1

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->r()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->r()J

    move-result-wide p0

    return-wide p0
.end method

.method private static e(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J
    .locals 1

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->D()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->p()J

    move-result-wide p0

    return-wide p0
.end method

.method private static f(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J
    .locals 1

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->r()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->r()J

    move-result-wide p0

    return-wide p0
.end method

.method private g(Lcom/google/firebase/perf/config/a;Ljava/lang/String;Z)V
    .locals 10

    invoke-static {p1, p2}, Lcom/google/firebase/perf/g/d$a;->f(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, p2}, Lcom/google/firebase/perf/g/d$a;->e(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v4, v2

    long-to-double v0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v0

    iput-wide v4, p0, Lcom/google/firebase/perf/g/d$a;->f:D

    iput-wide v2, p0, Lcom/google/firebase/perf/g/d$a;->g:J

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p3, :cond_0

    sget-object v6, Lcom/google/firebase/perf/g/d$a;->k:Lcom/google/firebase/perf/f/a;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p2, v7, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v7, v1

    iget-wide v4, p0, Lcom/google/firebase/perf/g/d$a;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v0

    const-string v4, "Foreground %s logging rate:%f, burst capacity:%d"

    invoke-virtual {v6, v4, v7}, Lcom/google/firebase/perf/f/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1, p2}, Lcom/google/firebase/perf/g/d$a;->d(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {p1, p2}, Lcom/google/firebase/perf/g/d$a;->c(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v8, v6

    long-to-double v4, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v4

    iput-wide v8, p0, Lcom/google/firebase/perf/g/d$a;->h:D

    iput-wide v6, p0, Lcom/google/firebase/perf/g/d$a;->i:J

    if-eqz p3, :cond_1

    sget-object p1, Lcom/google/firebase/perf/g/d$a;->k:Lcom/google/firebase/perf/f/a;

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p2, p3, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, p3, v1

    iget-wide v1, p0, Lcom/google/firebase/perf/g/d$a;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "Background %s logging rate:%f, capacity:%d"

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/perf/f/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/google/firebase/perf/g/d$a;->f:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/firebase/perf/g/d$a;->h:D

    :goto_0
    iput-wide v0, p0, Lcom/google/firebase/perf/g/d$a;->b:D

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/google/firebase/perf/g/d$a;->g:J

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/g/d$a;->i:J

    :goto_1
    iput-wide v0, p0, Lcom/google/firebase/perf/g/d$a;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b(Lcom/google/firebase/perf/v1/g;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/google/firebase/perf/g/d$a;->e:Lcom/google/firebase/perf/util/a;

    invoke-virtual {p1}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/perf/g/d$a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/Timer;->c(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/firebase/perf/g/d$a;->b:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    :try_start_1
    sget-wide v2, Lcom/google/firebase/perf/g/d$a;->l:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x0

    :try_start_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/firebase/perf/g/d$a;->d:J

    add-long/2addr v4, v0

    iget-wide v0, p0, Lcom/google/firebase/perf/g/d$a;->a:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/g/d$a;->d:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/perf/g/d$a;->d:J

    iput-object p1, p0, Lcom/google/firebase/perf/g/d$a;->c:Lcom/google/firebase/perf/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    :try_start_3
    iget-boolean p1, p0, Lcom/google/firebase/perf/g/d$a;->j:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/firebase/perf/g/d$a;->k:Lcom/google/firebase/perf/f/a;

    const-string v0, "Exceeded log rate limit, dropping the log."

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/f/a;->i(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
