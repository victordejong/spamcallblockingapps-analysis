.class public final Lcom/google/android/gms/internal/ads/zn1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Lcom/google/android/gms/internal/ads/u30;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zm1;

.field private b:Lcom/google/android/gms/internal/ads/yn1;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private c:Lcom/google/android/gms/internal/ads/a02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/a02<",
            "Lcom/google/android/gms/internal/ads/ln1<",
            "TAdT;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private d:Lcom/google/android/gms/internal/ads/rz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/ln1<",
            "TAdT;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/dn1;

.field private final f:Lcom/google/android/gms/internal/ads/xn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/xn1<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/yn1;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this.pendingTopOffs"
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/gz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/gz1<",
            "Lcom/google/android/gms/internal/ads/ln1<",
            "TAdT;>;>;"
        }
    .end annotation
.end field

.field private i:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dn1;Lcom/google/android/gms/internal/ads/zm1;Lcom/google/android/gms/internal/ads/xn1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dn1;",
            "Lcom/google/android/gms/internal/ads/zm1;",
            "Lcom/google/android/gms/internal/ads/xn1<",
            "TAdT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zn1;->i:I

    new-instance v0, Lcom/google/android/gms/internal/ads/vn1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/vn1;-><init>(Lcom/google/android/gms/internal/ads/zn1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zn1;->h:Lcom/google/android/gms/internal/ads/gz1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zn1;->e:Lcom/google/android/gms/internal/ads/dn1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zn1;->a:Lcom/google/android/gms/internal/ads/zm1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zn1;->f:Lcom/google/android/gms/internal/ads/xn1;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zn1;->g:Ljava/util/LinkedList;

    new-instance p1, Lcom/google/android/gms/internal/ads/un1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/un1;-><init>(Lcom/google/android/gms/internal/ads/zn1;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zm1;->a(Lcom/google/android/gms/internal/ads/ym1;)V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/zn1;)Lcom/google/android/gms/internal/ads/xn1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zn1;->f:Lcom/google/android/gms/internal/ads/xn1;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/zn1;)Lcom/google/android/gms/internal/ads/yn1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zn1;->b:Lcom/google/android/gms/internal/ads/yn1;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/zn1;)Lcom/google/android/gms/internal/ads/dn1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zn1;->e:Lcom/google/android/gms/internal/ads/dn1;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/zn1;Lcom/google/android/gms/internal/ads/yn1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zn1;->l(Lcom/google/android/gms/internal/ads/yn1;)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/zn1;)Lcom/google/android/gms/internal/ads/a02;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zn1;->c:Lcom/google/android/gms/internal/ads/a02;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/zn1;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zn1;->i:I

    return p0
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/zn1;I)I
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zn1;->i:I

    return p1
.end method

.method private final l(Lcom/google/android/gms/internal/ads/yn1;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn1;->g:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/m3;->S3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->h()Lcom/google/android/gms/internal/ads/zn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zn;->l()Lcom/google/android/gms/ads/internal/util/a1;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/a1;->p()Lcom/google/android/gms/internal/ads/vn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vn;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zn1;->g:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zn1;->m()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn1;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn1;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :cond_5
    :goto_1
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zn1;->g:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/yn1;

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/yn1;->b()Lcom/google/android/gms/internal/ads/mn1;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn1;->e:Lcom/google/android/gms/internal/ads/dn1;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/yn1;->b()Lcom/google/android/gms/internal/ads/mn1;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dn1;->c(Lcom/google/android/gms/internal/ads/mn1;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/yn1;->c()Lcom/google/android/gms/internal/ads/yn1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zn1;->b:Lcom/google/android/gms/internal/ads/yn1;

    invoke-static {}, Lcom/google/android/gms/internal/ads/a02;->E()Lcom/google/android/gms/internal/ads/a02;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zn1;->c:Lcom/google/android/gms/internal/ads/a02;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn1;->f:Lcom/google/android/gms/internal/ads/xn1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn1;->b:Lcom/google/android/gms/internal/ads/yn1;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/xn1;->b(Lcom/google/android/gms/internal/ads/yn1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zn1;->d:Lcom/google/android/gms/internal/ads/rz1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn1;->h:Lcom/google/android/gms/internal/ads/gz1;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/yn1;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/kz1;->o(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/gz1;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_7
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zn1;->l(Lcom/google/android/gms/internal/ads/yn1;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final m()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn1;->d:Lcom/google/android/gms/internal/ads/rz1;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

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
.method public final a(Lcom/google/android/gms/internal/ads/yn1;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn1;->g:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn1;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/yn1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/yn1;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/wn1<",
            "TAdT;>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zn1;->m()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zn1;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn1;->b:Lcom/google/android/gms/internal/ads/yn1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yn1;->b()Lcom/google/android/gms/internal/ads/mn1;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/yn1;->b()Lcom/google/android/gms/internal/ads/mn1;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn1;->b:Lcom/google/android/gms/internal/ads/yn1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yn1;->b()Lcom/google/android/gms/internal/ads/mn1;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/yn1;->b()Lcom/google/android/gms/internal/ads/mn1;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/mn1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/google/android/gms/internal/ads/zn1;->i:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn1;->c:Lcom/google/android/gms/internal/ads/a02;

    new-instance v1, Lcom/google/android/gms/internal/ads/tn1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/tn1;-><init>(Lcom/google/android/gms/internal/ads/zn1;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/yn1;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/kz1;->h(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/uy1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x3

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zn1;->i:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn1;->b:Lcom/google/android/gms/internal/ads/yn1;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zn1;->l(Lcom/google/android/gms/internal/ads/yn1;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/ln1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/wn1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn1;->b:Lcom/google/android/gms/internal/ads/yn1;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/wn1;-><init>(Lcom/google/android/gms/internal/ads/ln1;Lcom/google/android/gms/internal/ads/yn1;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
