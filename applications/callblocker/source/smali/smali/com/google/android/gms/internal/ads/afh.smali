.class public abstract Lcom/google/android/gms/internal/ads/afh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aig;


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/afh;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "AppComponent.class"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/afh;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5
    const-class v1, Lcom/google/android/gms/internal/ads/afh;

    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/afh;->a:Lcom/google/android/gms/internal/ads/afh;

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/afh;->a:Lcom/google/android/gms/internal/ads/afh;

    monitor-exit v1

    .line 10
    :goto_0
    return-object v0

    .line 8
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/yd;

    const v1, 0xbfb13e0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/yd;-><init>(IIZZ)V

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/agc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/agc;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/ads/afh;->a(Lcom/google/android/gms/internal/ads/yd;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ahf$a;)Lcom/google/android/gms/internal/ads/afh;

    move-result-object v0

    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/afh;
    .locals 2

    .prologue
    .line 2
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/afh;->a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/afh;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afh;->f()Lcom/google/android/gms/internal/ads/bfg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/bfg;->a(Lcom/google/android/gms/internal/ads/ko;)V

    .line 4
    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/yd;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ahf$a;)Lcom/google/android/gms/internal/ads/afh;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11
    const-class v1, Lcom/google/android/gms/internal/ads/afh;

    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/afh;->a:Lcom/google/android/gms/internal/ads/afh;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/agw;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/agw;-><init>(Lcom/google/android/gms/internal/ads/age;)V

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/afk$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/afk$a;-><init>()V

    .line 15
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/afk$a;->a(Lcom/google/android/gms/internal/ads/yd;)Lcom/google/android/gms/internal/ads/afk$a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/afk$a;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/afk$a;

    move-result-object v2

    .line 16
    new-instance v3, Lcom/google/android/gms/internal/ads/afk;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/afk;-><init>(Lcom/google/android/gms/internal/ads/afk$a;Lcom/google/android/gms/internal/ads/afj;)V

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/agw;->a(Lcom/google/android/gms/internal/ads/afk;)Lcom/google/android/gms/internal/ads/agw;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/ahf;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/ahf;-><init>(Lcom/google/android/gms/internal/ads/ahf$a;)V

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/agw;->a(Lcom/google/android/gms/internal/ads/ahf;)Lcom/google/android/gms/internal/ads/agw;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/agw;->a()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/afh;->a:Lcom/google/android/gms/internal/ads/afh;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/edi;->a(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/internal/ads/ug;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)V

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->i()Lcom/google/android/gms/internal/ads/dvl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dvl;->a(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;)Z

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/content/Context;)Z

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/us;->a(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->f()Lcom/google/android/gms/internal/ads/due;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/due;->a(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->x()Lcom/google/android/gms/internal/ads/xn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xn;->a(Landroid/content/Context;)V

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->da:Lcom/google/android/gms/internal/ads/ect;

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/bmr;

    new-instance v2, Lcom/google/android/gms/internal/ads/dwi;

    new-instance v3, Lcom/google/android/gms/internal/ads/dwn;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/dwn;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/dwi;-><init>(Lcom/google/android/gms/internal/ads/dwn;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/bma;

    new-instance v4, Lcom/google/android/gms/internal/ads/bly;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/ads/bly;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/afh;->a:Lcom/google/android/gms/internal/ads/afh;

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/afh;->d()Lcom/google/android/gms/internal/ads/crs;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/bma;-><init>(Lcom/google/android/gms/internal/ads/bly;Lcom/google/android/gms/internal/ads/crs;)V

    invoke-direct {v0, p1, p0, v2, v3}, Lcom/google/android/gms/internal/ads/bmr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/bma;)V

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bmr;->a()V

    .line 34
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/afh;->a:Lcom/google/android/gms/internal/ads/afh;

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/ads/cck;)Lcom/google/android/gms/internal/ads/cba;
.end method

.method public final a(Lcom/google/android/gms/internal/ads/pw;I)Lcom/google/android/gms/internal/ads/cba;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/cck;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/cck;-><init>(Lcom/google/android/gms/internal/ads/pw;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/afh;->a(Lcom/google/android/gms/internal/ads/cck;)Lcom/google/android/gms/internal/ads/cba;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()Ljava/util/concurrent/Executor;
.end method

.method public abstract b()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract c()Ljava/util/concurrent/Executor;
.end method

.method public abstract d()Lcom/google/android/gms/internal/ads/crs;
.end method

.method public abstract e()Lcom/google/android/gms/internal/ads/arz;
.end method

.method public abstract f()Lcom/google/android/gms/internal/ads/bfg;
.end method

.method public abstract g()Lcom/google/android/gms/internal/ads/ahl;
.end method

.method public abstract h()Lcom/google/android/gms/internal/ads/alg;
.end method

.method public abstract i()Lcom/google/android/gms/internal/ads/ajx;
.end method

.method public abstract j()Lcom/google/android/gms/internal/ads/cdo;
.end method

.method public abstract k()Lcom/google/android/gms/internal/ads/awp;
.end method

.method public abstract l()Lcom/google/android/gms/internal/ads/axn;
.end method

.method public abstract m()Lcom/google/android/gms/internal/ads/bdx;
.end method

.method public abstract n()Lcom/google/android/gms/internal/ads/cgi;
.end method

.method public abstract o()Lcom/google/android/gms/internal/ads/btu;
.end method

.method public abstract p()Lcom/google/android/gms/internal/ads/chr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/chr",
            "<",
            "Lcom/google/android/gms/internal/ads/bcy;",
            ">;"
        }
    .end annotation
.end method
