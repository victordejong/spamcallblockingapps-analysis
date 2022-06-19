.class public final Lcom/google/android/gms/internal/ads/id;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/yd;

.field private e:Lcom/google/android/gms/internal/ads/wj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wj",
            "<",
            "Lcom/google/android/gms/internal/ads/hp;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/ads/wj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/wj",
            "<",
            "Lcom/google/android/gms/internal/ads/hp;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/internal/ads/iu;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/id;->a:Ljava/lang/Object;

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/id;->h:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/id;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/id;->b:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/id;->d:Lcom/google/android/gms/internal/ads/yd;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/ir;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ir;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/id;->e:Lcom/google/android/gms/internal/ads/wj;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/ir;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ir;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/id;->f:Lcom/google/android/gms/internal/ads/wj;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/wj;Lcom/google/android/gms/internal/ads/wj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/yd;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/wj",
            "<",
            "Lcom/google/android/gms/internal/ads/hp;",
            ">;",
            "Lcom/google/android/gms/internal/ads/wj",
            "<",
            "Lcom/google/android/gms/internal/ads/hp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/id;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;)V

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/id;->e:Lcom/google/android/gms/internal/ads/wj;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/id;->f:Lcom/google/android/gms/internal/ads/wj;

    .line 13
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/id;I)I
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/google/android/gms/internal/ads/id;->h:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;)Lcom/google/android/gms/internal/ads/iu;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/id;->g:Lcom/google/android/gms/internal/ads/iu;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/id;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/id;)Lcom/google/android/gms/internal/ads/iu;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->g:Lcom/google/android/gms/internal/ads/iu;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/id;)Lcom/google/android/gms/internal/ads/wj;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->e:Lcom/google/android/gms/internal/ads/wj;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/id;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/android/gms/internal/ads/id;->h:I

    return v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/ctl;)Lcom/google/android/gms/internal/ads/iu;
    .locals 3

    .prologue
    .line 14
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/iu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/id;->f:Lcom/google/android/gms/internal/ads/wj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/iu;-><init>(Lcom/google/android/gms/internal/ads/wj;)V

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    new-instance v2, Lcom/google/android/gms/internal/ads/ic;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/ic;-><init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/iu;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 20
    new-instance v1, Lcom/google/android/gms/internal/ads/im;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/im;-><init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/ip;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/ip;-><init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yv;->a(Lcom/google/android/gms/internal/ads/ys;Lcom/google/android/gms/internal/ads/yq;)V

    .line 21
    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/iu;)V
    .locals 6

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/id;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/id;->d:Lcom/google/android/gms/internal/ads/yd;

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/ads/bc;->c:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/hb;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/ih;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/gms/internal/ads/ih;-><init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/hp;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/hp;->a(Lcom/google/android/gms/internal/ads/hs;)V

    .line 59
    const-string/jumbo v1, "/jsLoaded"

    new-instance v2, Lcom/google/android/gms/internal/ads/ii;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/gms/internal/ads/ii;-><init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/hp;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hp;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 60
    new-instance v1, Lcom/google/android/gms/internal/ads/xg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/xg;-><init>()V

    .line 61
    new-instance v2, Lcom/google/android/gms/internal/ads/il;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/il;-><init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/hp;Lcom/google/android/gms/internal/ads/xg;)V

    .line 62
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/xg;->a(Ljava/lang/Object;)V

    .line 63
    const-string/jumbo v1, "/requestReload"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hp;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/id;->c:Ljava/lang/String;

    const-string/jumbo v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/id;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/hp;->a(Ljava/lang/String;)V

    .line 69
    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v2, Lcom/google/android/gms/internal/ads/ik;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/gms/internal/ads/ik;-><init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/hp;)V

    sget v0, Lcom/google/android/gms/internal/ads/io;->a:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/cnz;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    :goto_2
    return-void

    .line 49
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/hr;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/hr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/ads/internal/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string/jumbo v1, "Error creating webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "SdkJavascriptFactory.loadJavascriptEngine"

    .line 55
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/yv;->d()V

    goto :goto_2

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/id;->c:Ljava/lang/String;

    const-string/jumbo v2, "<html>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/id;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/hp;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/id;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/hp;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/hp;)V
    .locals 1

    .prologue
    .line 43
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/hp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/id;->h:I

    .line 45
    :cond_0
    return-void
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/hp;)V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/id;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yv;->e()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yv;->e()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 74
    :cond_0
    monitor-exit v1

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yv;->d()V

    .line 76
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ij;->a(Lcom/google/android/gms/internal/ads/hp;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 77
    const-string/jumbo v0, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 78
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ctl;)Lcom/google/android/gms/internal/ads/iq;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/id;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/id;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->g:Lcom/google/android/gms/internal/ads/iu;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/id;->h:I

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->g:Lcom/google/android/gms/internal/ads/iu;

    new-instance v3, Lcom/google/android/gms/internal/ads/if;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/if;-><init>(Lcom/google/android/gms/internal/ads/id;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/ie;->a:Lcom/google/android/gms/internal/ads/yq;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/yv;->a(Lcom/google/android/gms/internal/ads/ys;Lcom/google/android/gms/internal/ads/yq;)V

    .line 27
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->g:Lcom/google/android/gms/internal/ads/iu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->g:Lcom/google/android/gms/internal/ads/iu;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yv;->e()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 30
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/id;->h:I

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/ctl;)Lcom/google/android/gms/internal/ads/iu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/id;->g:Lcom/google/android/gms/internal/ads/iu;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->g:Lcom/google/android/gms/internal/ads/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iu;->a()Lcom/google/android/gms/internal/ads/iq;

    move-result-object v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    :goto_0
    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 42
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 33
    :cond_2
    :try_start_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/id;->h:I

    if-nez v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->g:Lcom/google/android/gms/internal/ads/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iu;->a()Lcom/google/android/gms/internal/ads/iq;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 35
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/id;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/id;->h:I

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/ctl;)Lcom/google/android/gms/internal/ads/iu;

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->g:Lcom/google/android/gms/internal/ads/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iu;->a()Lcom/google/android/gms/internal/ads/iq;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 39
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/id;->h:I

    if-ne v0, v5, :cond_5

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->g:Lcom/google/android/gms/internal/ads/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iu;->a()Lcom/google/android/gms/internal/ads/iq;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 41
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->g:Lcom/google/android/gms/internal/ads/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iu;->a()Lcom/google/android/gms/internal/ads/iq;

    move-result-object v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method
