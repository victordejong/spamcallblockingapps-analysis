.class public final Lcom/google/android/gms/internal/ads/vc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final e:Lcom/google/android/gms/ads/internal/util/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/r<",
            "Lcom/google/android/gms/internal/ads/pb;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/ads/uc;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/r;Lcom/google/android/gms/ads/internal/util/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzbbq;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/util/r<",
            "Lcom/google/android/gms/internal/ads/pb;",
            ">;",
            "Lcom/google/android/gms/ads/internal/util/r<",
            "Lcom/google/android/gms/internal/ads/pb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vc;->a:Ljava/lang/Object;

    const/4 p4, 0x1

    iput p4, p0, Lcom/google/android/gms/internal/ads/vc;->g:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vc;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vc;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vc;->d:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/vc;->e:Lcom/google/android/gms/ads/internal/util/r;

    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/vc;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vc;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/vc;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/vc;->g:I

    return p1
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/vc;)Lcom/google/android/gms/internal/ads/uc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vc;->f:Lcom/google/android/gms/internal/ads/uc;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;)Lcom/google/android/gms/internal/ads/uc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vc;->f:Lcom/google/android/gms/internal/ads/uc;

    return-object p1
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/vc;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/vc;->g:I

    return p0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/zh2;)Lcom/google/android/gms/internal/ads/uc;
    .locals 3

    new-instance p1, Lcom/google/android/gms/internal/ads/uc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc;->e:Lcom/google/android/gms/ads/internal/util/r;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/uc;-><init>(Lcom/google/android/gms/ads/internal/util/r;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zo;->e:Lcom/google/android/gms/internal/ads/sz1;

    new-instance v1, Lcom/google/android/gms/internal/ads/zb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/google/android/gms/internal/ads/zb;-><init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/internal/ads/uc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/kc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/kc;-><init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/lc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/lc;-><init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/mp;->a(Lcom/google/android/gms/internal/ads/jp;Lcom/google/android/gms/internal/ads/hp;)V

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zh2;)Lcom/google/android/gms/internal/ads/pc;
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vc;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vc;->f:Lcom/google/android/gms/internal/ads/uc;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/ads/vc;->g:I

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/ac;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/ac;-><init>(Lcom/google/android/gms/internal/ads/vc;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/bc;->a:Lcom/google/android/gms/internal/ads/hp;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/mp;->a(Lcom/google/android/gms/internal/ads/jp;Lcom/google/android/gms/internal/ads/hp;)V

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc;->f:Lcom/google/android/gms/internal/ads/uc;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mp;->d()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/vc;->g:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc;->f:Lcom/google/android/gms/internal/ads/uc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uc;->f()Lcom/google/android/gms/internal/ads/pc;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iput v2, p0, Lcom/google/android/gms/internal/ads/vc;->g:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/zh2;)Lcom/google/android/gms/internal/ads/uc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc;->f:Lcom/google/android/gms/internal/ads/uc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uc;->f()Lcom/google/android/gms/internal/ads/pc;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc;->f:Lcom/google/android/gms/internal/ads/uc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uc;->f()Lcom/google/android/gms/internal/ads/pc;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_4
    :goto_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/vc;->g:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/vc;->a(Lcom/google/android/gms/internal/ads/zh2;)Lcom/google/android/gms/internal/ads/uc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vc;->f:Lcom/google/android/gms/internal/ads/uc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uc;->f()Lcom/google/android/gms/internal/ads/pc;

    move-result-object v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/pb;)V
    .locals 0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/pb;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/vc;->g:I

    :cond_0
    return-void
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/internal/ads/uc;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vc;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc;->d:Lcom/google/android/gms/internal/ads/zzbbq;

    new-instance v1, Lcom/google/android/gms/internal/ads/xb;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2, v2}, Lcom/google/android/gms/internal/ads/xb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/ads/internal/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/google/android/gms/internal/ads/cc;

    invoke-direct {p1, p0, p2, v1}, Lcom/google/android/gms/internal/ads/cc;-><init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pb;)V

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/pb;->h0(Lcom/google/android/gms/internal/ads/ob;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/gc;

    invoke-direct {p1, p0, p2, v1}, Lcom/google/android/gms/internal/ads/gc;-><init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pb;)V

    const-string v0, "/jsLoaded"

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/wc;->H0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    new-instance p1, Lcom/google/android/gms/ads/internal/util/n0;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/util/n0;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/hc;

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/google/android/gms/internal/ads/hc;-><init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/internal/ads/pb;Lcom/google/android/gms/ads/internal/util/n0;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/util/n0;->b(Ljava/lang/Object;)V

    const-string p1, "/requestReload"

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/wc;->H0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vc;->c:Ljava/lang/String;

    const-string v0, ".js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vc;->c:Ljava/lang/String;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/pb;->x(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vc;->c:Ljava/lang/String;

    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vc;->c:Ljava/lang/String;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/pb;->T(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vc;->c:Ljava/lang/String;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/pb;->s(Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v0, Lcom/google/android/gms/internal/ads/jc;

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/jc;-><init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pb;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Error creating webview."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->h()Lcom/google/android/gms/internal/ads/zn;

    move-result-object v0

    const-string v1, "SdkJavascriptFactory.loadJavascriptEngine"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zn;->g(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mp;->c()V

    return-void
.end method

.method final synthetic e(Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pb;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/mp;->d()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/mp;->d()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/mp;->c()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zo;->e:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/fc;->a(Lcom/google/android/gms/internal/ads/pb;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string p1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
