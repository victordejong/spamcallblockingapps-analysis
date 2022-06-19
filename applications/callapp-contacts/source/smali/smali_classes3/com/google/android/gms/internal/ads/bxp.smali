.class final Lcom/google/android/gms/internal/ads/bxp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/asx;


# instance fields
.field private a:Z

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bsn;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/zp;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/bxj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bxj;Lcom/google/android/gms/internal/ads/bsn;Lcom/google/android/gms/internal/ads/zp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bxp;->d:Lcom/google/android/gms/internal/ads/bxj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bxp;->b:Lcom/google/android/gms/internal/ads/bsn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bxp;->c:Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/bxp;->a:Z

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 3

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->de:Lcom/google/android/gms/internal/ads/af;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/cqj;->zzhox:Lcom/google/android/gms/internal/ads/cqj;

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bxp;->c:Lcom/google/android/gms/internal/ads/zp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzctd;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzctd;-><init>(Lcom/google/android/gms/internal/ads/cqj;Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxp;->c:Lcom/google/android/gms/internal/ads/zp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 7

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bxp;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxp;->b:Lcom/google/android/gms/internal/ads/bsn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bsn;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/bxj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvh;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "undefined"

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bxp;->b(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method

.method public final declared-synchronized a(ILjava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 8
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bxp;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 9
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 10
    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bxp;->a:Z

    if-nez p2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bxp;->b:Lcom/google/android/gms/internal/ads/bsn;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/bsn;->a:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/bxj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v2, p2

    .line 13
    new-instance p2, Lcom/google/android/gms/internal/ads/zzvh;

    const-string v3, "undefined"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;Landroid/os/IBinder;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/bxp;->b(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 15
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bxp;->a:Z

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bxp;->b(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
