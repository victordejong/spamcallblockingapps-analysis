.class public final Lcom/google/android/gms/internal/ads/d60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final e:Lcom/google/android/gms/ads/internal/util/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/e0<",
            "Lcom/google/android/gms/internal/ads/x40;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/ads/internal/util/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/e0<",
            "Lcom/google/android/gms/internal/ads/x40;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/internal/ads/c60;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/e0;Lcom/google/android/gms/ads/internal/util/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/util/e0<",
            "Lcom/google/android/gms/internal/ads/x40;",
            ">;",
            "Lcom/google/android/gms/ads/internal/util/e0<",
            "Lcom/google/android/gms/internal/ads/x40;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/d60;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/d60;->h:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/d60;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d60;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/d60;->d:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/d60;->e:Lcom/google/android/gms/ads/internal/util/e0;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/d60;->f:Lcom/google/android/gms/ads/internal/util/e0;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/d60;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d60;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;)Lcom/google/android/gms/internal/ads/c60;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d60;->g:Lcom/google/android/gms/internal/ads/c60;

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/d60;)Lcom/google/android/gms/internal/ads/c60;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d60;->g:Lcom/google/android/gms/internal/ads/c60;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/d60;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/d60;->h:I

    return p1
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/d60;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/d60;->h:I

    return p0
.end method


# virtual methods
.method protected final f(Lcom/google/android/gms/internal/ads/u;)Lcom/google/android/gms/internal/ads/c60;
    .locals 3

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/c60;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d60;->f:Lcom/google/android/gms/ads/internal/util/e0;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/c60;-><init>(Lcom/google/android/gms/ads/internal/util/e0;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/qi0;->e:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/h50;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/google/android/gms/internal/ads/h50;-><init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/c60;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/s50;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/s50;-><init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/t50;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/t50;-><init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/cj0;->b(Lcom/google/android/gms/internal/ads/zi0;Lcom/google/android/gms/internal/ads/xi0;)V

    return-object p1
.end method

.method public final g(Lcom/google/android/gms/internal/ads/u;)Lcom/google/android/gms/internal/ads/x50;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d60;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d60;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d60;->g:Lcom/google/android/gms/internal/ads/c60;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/ads/d60;->h:I

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/i50;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/i50;-><init>(Lcom/google/android/gms/internal/ads/d60;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/j50;->a:Lcom/google/android/gms/internal/ads/xi0;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/cj0;->b(Lcom/google/android/gms/internal/ads/zi0;Lcom/google/android/gms/internal/ads/xi0;)V

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d60;->g:Lcom/google/android/gms/internal/ads/c60;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cj0;->e()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/d60;->h:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d60;->g:Lcom/google/android/gms/internal/ads/c60;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c60;->f()Lcom/google/android/gms/internal/ads/x50;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iput v2, p0, Lcom/google/android/gms/internal/ads/d60;->h:I

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/d60;->f(Lcom/google/android/gms/internal/ads/u;)Lcom/google/android/gms/internal/ads/c60;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d60;->g:Lcom/google/android/gms/internal/ads/c60;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c60;->f()Lcom/google/android/gms/internal/ads/x50;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d60;->g:Lcom/google/android/gms/internal/ads/c60;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c60;->f()Lcom/google/android/gms/internal/ads/x50;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 9
    :cond_4
    :goto_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/d60;->h:I

    .line 10
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/d60;->f(Lcom/google/android/gms/internal/ads/u;)Lcom/google/android/gms/internal/ads/c60;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/d60;->g:Lcom/google/android/gms/internal/ads/c60;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c60;->f()Lcom/google/android/gms/internal/ads/x50;

    move-result-object v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_0
    move-exception v1

    .line 12
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v0

    .line 13
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method final synthetic h(Lcom/google/android/gms/internal/ads/x40;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/x40;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/d60;->h:I

    :cond_0
    return-void
.end method

.method final synthetic i(Lcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/c60;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d60;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d60;->d:Lcom/google/android/gms/internal/ads/zzcgz;

    new-instance v1, Lcom/google/android/gms/internal/ads/f50;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2, v2}, Lcom/google/android/gms/internal/ads/f50;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/ads/internal/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/google/android/gms/internal/ads/l50;

    .line 2
    invoke-direct {p1, p0, p2, v1}, Lcom/google/android/gms/internal/ads/l50;-><init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;Lcom/google/android/gms/internal/ads/x40;)V

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/x40;->J(Lcom/google/android/gms/internal/ads/w40;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/o50;

    .line 3
    invoke-direct {p1, p0, p2, v1}, Lcom/google/android/gms/internal/ads/o50;-><init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;Lcom/google/android/gms/internal/ads/x40;)V

    const-string v0, "/jsLoaded"

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/e60;->i0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    new-instance p1, Lcom/google/android/gms/ads/internal/util/e1;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/util/e1;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/p50;

    .line 4
    invoke-direct {v0, p0, v2, v1, p1}, Lcom/google/android/gms/internal/ads/p50;-><init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/x40;Lcom/google/android/gms/ads/internal/util/e1;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/util/e1;->b(Ljava/lang/Object;)V

    const-string p1, "/requestReload"

    .line 6
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/e60;->i0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d60;->c:Ljava/lang/String;

    const-string v0, ".js"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d60;->c:Ljava/lang/String;

    .line 8
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/x40;->y(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d60;->c:Ljava/lang/String;

    const-string v0, "<html>"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d60;->c:Ljava/lang/String;

    .line 11
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/x40;->O(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d60;->c:Ljava/lang/String;

    .line 12
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/x40;->p(Ljava/lang/String;)V

    .line 13
    :goto_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v0, Lcom/google/android/gms/internal/ads/r50;

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/r50;-><init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;Lcom/google/android/gms/internal/ads/x40;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Error creating webview."

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object v0

    const-string v1, "SdkJavascriptFactory.loadJavascriptEngine"

    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ph0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cj0;->d()V

    return-void
.end method

.method final synthetic j(Lcom/google/android/gms/internal/ads/c60;Lcom/google/android/gms/internal/ads/x40;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d60;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cj0;->e()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cj0;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cj0;->d()V

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/qi0;->e:Lcom/google/android/gms/internal/ads/s03;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/n50;->a(Lcom/google/android/gms/internal/ads/x40;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string p1, "Could not receive loaded message in a timely manner. Rejecting."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
