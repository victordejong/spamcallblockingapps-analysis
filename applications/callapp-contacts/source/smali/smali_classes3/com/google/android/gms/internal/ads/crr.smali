.class public final Lcom/google/android/gms/internal/ads/crr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Lcom/google/android/gms/internal/ads/anp;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/ads/crx;

.field b:Lcom/google/android/gms/internal/ads/dcc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dcc<",
            "Lcom/google/android/gms/internal/ads/crj<",
            "TAdT;>;>;"
        }
    .end annotation
.end field

.field c:I

.field final d:Lcom/google/android/gms/internal/ads/cqz;

.field final e:Lcom/google/android/gms/internal/ads/cru;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cru<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/cqs;

.field private g:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/crj<",
            "TAdT;>;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/crx;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/internal/ads/dbi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbi<",
            "Lcom/google/android/gms/internal/ads/crj<",
            "TAdT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cqz;Lcom/google/android/gms/internal/ads/cqs;Lcom/google/android/gms/internal/ads/cru;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cqz;",
            "Lcom/google/android/gms/internal/ads/cqs;",
            "Lcom/google/android/gms/internal/ads/cru<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/crw;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/crr;->c:I

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/crs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/crs;-><init>(Lcom/google/android/gms/internal/ads/crr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/crr;->i:Lcom/google/android/gms/internal/ads/dbi;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/crr;->d:Lcom/google/android/gms/internal/ads/cqz;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/crr;->f:Lcom/google/android/gms/internal/ads/cqs;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/crr;->e:Lcom/google/android/gms/internal/ads/cru;

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/crr;->h:Ljava/util/LinkedList;

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/ads/crt;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/crt;-><init>(Lcom/google/android/gms/internal/ads/crr;)V

    .line 1011
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/cqs;->a:Lcom/google/android/gms/internal/ads/cqv;

    return-void
.end method

.method private final a()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crr;->g:Lcom/google/android/gms/internal/ads/dbt;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dbt;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/crj;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/crv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/crr;->a:Lcom/google/android/gms/internal/ads/crx;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/crv;-><init>(Lcom/google/android/gms/internal/ads/crj;Lcom/google/android/gms/internal/ads/crx;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/crx;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crr;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/crx;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crx;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/crv<",
            "TAdT;>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 13
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/crr;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 14
    monitor-exit p0

    return-object v1

    .line 15
    :cond_0
    :try_start_1
    sget v0, Lcom/google/android/gms/internal/ads/crw;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/crr;->c:I

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crr;->a:Lcom/google/android/gms/internal/ads/crx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/crx;->b()Lcom/google/android/gms/internal/ads/cri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/crx;->b()Lcom/google/android/gms/internal/ads/cri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crr;->a:Lcom/google/android/gms/internal/ads/crx;

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/crx;->b()Lcom/google/android/gms/internal/ads/cri;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/crx;->b()Lcom/google/android/gms/internal/ads/cri;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/cri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/crw;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/crr;->c:I

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crr;->b:Lcom/google/android/gms/internal/ads/dcc;

    new-instance v1, Lcom/google/android/gms/internal/ads/crq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/crq;-><init>(Lcom/google/android/gms/internal/ads/crr;)V

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/crx;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 1019
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    monitor-exit p0

    return-object p1

    .line 19
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final c(Lcom/google/android/gms/internal/ads/crx;)V
    .locals 2

    .line 24
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/crr;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crr;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crr;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/crr;->h:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/crx;

    .line 32
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/crx;->b()Lcom/google/android/gms/internal/ads/cri;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crr;->d:Lcom/google/android/gms/internal/ads/cqz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/crx;->b()Lcom/google/android/gms/internal/ads/cri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cqz;->b(Lcom/google/android/gms/internal/ads/cri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/crx;->c()Lcom/google/android/gms/internal/ads/crx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/crr;->a:Lcom/google/android/gms/internal/ads/crx;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/dcc;->h()Lcom/google/android/gms/internal/ads/dcc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/crr;->b:Lcom/google/android/gms/internal/ads/dcc;

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/crr;->e:Lcom/google/android/gms/internal/ads/cru;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/crr;->a:Lcom/google/android/gms/internal/ads/crx;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cru;->a(Lcom/google/android/gms/internal/ads/crx;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/crr;->g:Lcom/google/android/gms/internal/ads/dbt;

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/crr;->i:Lcom/google/android/gms/internal/ads/dbi;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/crx;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_4
    const/4 p1, 0x0

    goto :goto_0
.end method
