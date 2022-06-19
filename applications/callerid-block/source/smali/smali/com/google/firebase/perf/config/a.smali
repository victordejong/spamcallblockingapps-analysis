.class public Lcom/google/firebase/perf/config/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final d:Lcom/google/firebase/perf/f/a;

.field private static volatile e:Lcom/google/firebase/perf/config/a;


# instance fields
.field private a:Lcom/google/firebase/perf/util/b;

.field private b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

.field private c:Lcom/google/firebase/perf/config/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/f/a;->e()Lcom/google/firebase/perf/f/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/config/a;->d:Lcom/google/firebase/perf/f/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/internal/RemoteConfigManager;Lcom/google/firebase/perf/util/b;Lcom/google/firebase/perf/config/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->getInstance()Lcom/google/firebase/perf/internal/RemoteConfigManager;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    if-nez p2, :cond_1

    new-instance p2, Lcom/google/firebase/perf/util/b;

    invoke-direct {p2}, Lcom/google/firebase/perf/util/b;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/util/b;

    if-nez p3, :cond_2

    invoke-static {}, Lcom/google/firebase/perf/config/t;->d()Lcom/google/firebase/perf/config/t;

    move-result-object p3

    :cond_2
    iput-object p3, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    return-void
.end method

.method private F(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private G(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/perf/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private H(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private J(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private K(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private L(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/s<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/firebase/perf/util/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/s;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/t;->a(Ljava/lang/String;)Lcom/google/firebase/perf/util/c;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/s<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/firebase/perf/util/c<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/s;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/t;->c(Ljava/lang/String;)Lcom/google/firebase/perf/util/c;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/s<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/perf/util/c<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/s;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/t;->e(Ljava/lang/String;)Lcom/google/firebase/perf/util/c;

    move-result-object p1

    return-object p1
.end method

.method private e(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/s<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/util/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/s;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/t;->f(Ljava/lang/String;)Lcom/google/firebase/perf/util/c;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized f()Lcom/google/firebase/perf/config/a;
    .locals 3

    const-class v0, Lcom/google/firebase/perf/config/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/a;->e:Lcom/google/firebase/perf/config/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/perf/config/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/google/firebase/perf/config/a;-><init>(Lcom/google/firebase/perf/internal/RemoteConfigManager;Lcom/google/firebase/perf/util/b;Lcom/google/firebase/perf/config/t;)V

    sput-object v1, Lcom/google/firebase/perf/config/a;->e:Lcom/google/firebase/perf/config/a;

    :cond_0
    sget-object v1, Lcom/google/firebase/perf/config/a;->e:Lcom/google/firebase/perf/config/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private i()Z
    .locals 4

    invoke-static {}, Lcom/google/firebase/perf/config/i;->e()Lcom/google/firebase/perf/config/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->s(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {v2}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/t;->k(Ljava/lang/String;Z)Z

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->b(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/i;->d()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method private j()Z
    .locals 4

    invoke-static {}, Lcom/google/firebase/perf/config/h;->e()Lcom/google/firebase/perf/config/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->v(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/t;->j(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->G(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->e(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/h;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private l(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/s<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/firebase/perf/util/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/util/b;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/b;->b(Ljava/lang/String;)Lcom/google/firebase/perf/util/c;

    move-result-object p1

    return-object p1
.end method

.method private m(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/s<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/firebase/perf/util/c<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/util/b;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/b;->c(Ljava/lang/String;)Lcom/google/firebase/perf/util/c;

    move-result-object p1

    return-object p1
.end method

.method private n(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/s<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/perf/util/c<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/util/b;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/b;->e(Ljava/lang/String;)Lcom/google/firebase/perf/util/c;

    move-result-object p1

    return-object p1
.end method

.method private s(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/s<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/firebase/perf/util/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/s;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->getBoolean(Ljava/lang/String;)Lcom/google/firebase/perf/util/c;

    move-result-object p1

    return-object p1
.end method

.method private t(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/s<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/firebase/perf/util/c<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/s;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->getFloat(Ljava/lang/String;)Lcom/google/firebase/perf/util/c;

    move-result-object p1

    return-object p1
.end method

.method private u(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/s<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/perf/util/c<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/s;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->getLong(Ljava/lang/String;)Lcom/google/firebase/perf/util/c;

    move-result-object p1

    return-object p1
.end method

.method private v(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/s<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/util/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/s;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->getString(Ljava/lang/String;)Lcom/google/firebase/perf/util/c;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/n;->e()Lcom/google/firebase/perf/config/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->n(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/t;->i(Ljava/lang/String;J)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/n;->d()Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method public B()F
    .locals 4

    invoke-static {}, Lcom/google/firebase/perf/config/o;->e()Lcom/google/firebase/perf/config/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->m(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/firebase/perf/config/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->t(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/config/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/t;->h(Ljava/lang/String;F)Z

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->c(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/config/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/o;->d()Ljava/lang/Float;

    move-result-object v0

    goto :goto_1
.end method

.method public C()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/p;->e()Lcom/google/firebase/perf/config/p;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/t;->i(Ljava/lang/String;J)Z

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/p;->d()Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method public D()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/q;->e()Lcom/google/firebase/perf/config/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/t;->i(Ljava/lang/String;J)Z

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/q;->d()Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method public E()F
    .locals 4

    invoke-static {}, Lcom/google/firebase/perf/config/r;->e()Lcom/google/firebase/perf/config/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->t(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/config/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/t;->h(Ljava/lang/String;F)Z

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->c(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/config/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/r;->d()Ljava/lang/Float;

    move-result-object v0

    goto :goto_1
.end method

.method public I()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->h()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public M(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/firebase/perf/config/a;->d:Lcom/google/firebase/perf/f/a;

    invoke-static {p1}, Lcom/google/firebase/perf/util/f;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/f/a;->h(Z)V

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/t;->g(Landroid/content/Context;)V

    return-void
.end method

.method public N(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/config/a;->M(Landroid/content/Context;)V

    return-void
.end method

.method public O(Lcom/google/firebase/perf/util/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/perf/config/a;->a:Lcom/google/firebase/perf/util/b;

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->e()Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/perf/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->c()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/firebase/perf/config/a;->b:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->getRemoteConfigValueOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->g(J)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v3}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->f(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/config/t;->j(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v2

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->e(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lcom/google/firebase/perf/config/b;->e()Lcom/google/firebase/perf/config/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->l(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/b;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/config/c;->d()Lcom/google/firebase/perf/config/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->b(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->l(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_2
    sget-object v0, Lcom/google/firebase/perf/config/a;->d:Lcom/google/firebase/perf/f/a;

    const-string v1, "CollectionEnabled metadata key unknown or value not found in manifest."

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/f/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/config/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/perf/config/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/d;->e()Lcom/google/firebase/perf/config/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/t;->i(Ljava/lang/String;J)Z

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/d;->d()Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method public p()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/e;->e()Lcom/google/firebase/perf/config/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/t;->i(Ljava/lang/String;J)Z

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/e;->d()Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method public q()F
    .locals 4

    invoke-static {}, Lcom/google/firebase/perf/config/f;->e()Lcom/google/firebase/perf/config/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->t(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/config/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/t;->h(Ljava/lang/String;F)Z

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->c(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/config/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/f;->d()Ljava/lang/Float;

    move-result-object v0

    goto :goto_1
.end method

.method public r()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/g;->e()Lcom/google/firebase/perf/config/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/t;->i(Ljava/lang/String;J)Z

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->L(J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/g;->d()Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method public w()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/j;->e()Lcom/google/firebase/perf/config/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->n(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/t;->i(Ljava/lang/String;J)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/j;->d()Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method public x()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/k;->e()Lcom/google/firebase/perf/config/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->n(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/t;->i(Ljava/lang/String;J)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/k;->d()Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method public y()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/l;->e()Lcom/google/firebase/perf/config/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->n(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->K(J)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->K(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/t;->i(Ljava/lang/String;J)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->K(J)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/l;->d()Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method public z()J
    .locals 5

    invoke-static {}, Lcom/google/firebase/perf/config/m;->e()Lcom/google/firebase/perf/config/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->n(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->u(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/config/a;->c:Lcom/google/firebase/perf/config/t;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/t;->i(Ljava/lang/String;J)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/a;->d(Lcom/google/firebase/perf/config/s;)Lcom/google/firebase/perf/util/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/m;->d()Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method
