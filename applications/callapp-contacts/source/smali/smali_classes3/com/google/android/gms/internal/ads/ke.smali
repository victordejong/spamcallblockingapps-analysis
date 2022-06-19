.class public final Lcom/google/android/gms/internal/ads/ke;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Landroid/content/Context;

.field final c:Ljava/lang/String;

.field final d:Lcom/google/android/gms/internal/ads/zzbar;

.field e:Lcom/google/android/gms/ads/internal/util/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzar<",
            "Lcom/google/android/gms/internal/ads/ju;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/google/android/gms/internal/ads/kz;

.field g:I

.field private h:Lcom/google/android/gms/ads/internal/util/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzar<",
            "Lcom/google/android/gms/internal/ads/ju;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ke;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/ke;->g:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ke;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ke;->b:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ke;->d:Lcom/google/android/gms/internal/ads/zzbar;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/ks;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ke;->e:Lcom/google/android/gms/ads/internal/util/zzar;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/ks;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ke;->h:Lcom/google/android/gms/ads/internal/util/zzar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzar;Lcom/google/android/gms/ads/internal/util/zzar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/util/zzar<",
            "Lcom/google/android/gms/internal/ads/ju;",
            ">;",
            "Lcom/google/android/gms/ads/internal/util/zzar<",
            "Lcom/google/android/gms/internal/ads/ju;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ke;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Ljava/lang/String;)V

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ke;->e:Lcom/google/android/gms/ads/internal/util/zzar;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ke;->h:Lcom/google/android/gms/ads/internal/util/zzar;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/kv;
    .locals 5

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ke;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ke;->f:Lcom/google/android/gms/internal/ads/kz;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/google/android/gms/internal/ads/ke;->g:I

    if-nez v3, :cond_0

    .line 26
    new-instance v3, Lcom/google/android/gms/internal/ads/kg;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/kg;-><init>(Lcom/google/android/gms/internal/ads/ke;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/kj;->a:Lcom/google/android/gms/internal/ads/zr;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zs;->a(Lcom/google/android/gms/internal/ads/zt;Lcom/google/android/gms/internal/ads/zr;)V

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ke;->f:Lcom/google/android/gms/internal/ads/kz;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_5

    .line 1018
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zs;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 33
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/ke;->g:I

    if-nez v1, :cond_2

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ke;->f:Lcom/google/android/gms/internal/ads/kz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/kz;->a()Lcom/google/android/gms/internal/ads/kv;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_2
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 36
    iput v3, p0, Lcom/google/android/gms/internal/ads/ke;->g:I

    .line 37
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/ke;->a(Lcom/google/android/gms/internal/ads/die;)Lcom/google/android/gms/internal/ads/kz;

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ke;->f:Lcom/google/android/gms/internal/ads/kz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/kz;->a()Lcom/google/android/gms/internal/ads/kv;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_3
    if-ne v1, v3, :cond_4

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ke;->f:Lcom/google/android/gms/internal/ads/kz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/kz;->a()Lcom/google/android/gms/internal/ads/kv;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 41
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ke;->f:Lcom/google/android/gms/internal/ads/kz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/kz;->a()Lcom/google/android/gms/internal/ads/kv;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 30
    :cond_5
    :goto_0
    iput v3, p0, Lcom/google/android/gms/internal/ads/ke;->g:I

    .line 31
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/ke;->a(Lcom/google/android/gms/internal/ads/die;)Lcom/google/android/gms/internal/ads/kz;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ke;->f:Lcom/google/android/gms/internal/ads/kz;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/kz;->a()Lcom/google/android/gms/internal/ads/kv;

    move-result-object v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_0
    move-exception v2

    .line 27
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    .line 42
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/die;)Lcom/google/android/gms/internal/ads/kz;
    .locals 3

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/kz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ke;->h:Lcom/google/android/gms/ads/internal/util/zzar;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/kz;-><init>(Lcom/google/android/gms/ads/internal/util/zzar;)V

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v2, Lcom/google/android/gms/internal/ads/kh;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/kh;-><init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/kz;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/kr;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/kr;-><init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/kz;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/kq;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/kq;-><init>(Lcom/google/android/gms/internal/ads/ke;Lcom/google/android/gms/internal/ads/kz;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zs;->a(Lcom/google/android/gms/internal/ads/zt;Lcom/google/android/gms/internal/ads/zr;)V

    return-object v0
.end method
